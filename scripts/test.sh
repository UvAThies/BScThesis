#!/usr/bin/env bash
ALGO=$1

if [ -z "$ALGO" ]; then
    echo "Usage: $0 <algorithm>"
    exit 1
fi

if [ ! -d "./workspace" ]; then
    echo "Creating workspace directory..."
    mkdir ./workspace
else
    echo "Cleaning workspace directory..."
    rm -rf ./workspace/*
fi

shopt -s globstar

set +e # Ignore errors

cp BScThesis.srcs/**/*.vhd ./workspace
cd ./workspace
ls -lah
SUCCESS=1


TYPES=$(find . -type f -name "TYPES_*.vhd")
echo "Compiling types files..."
for file in $TYPES; do
    file=${file:2} # Remove ./ from find output
    FILE_WITHOUT_EXT="${file%.*}" # Remove the file extension
    echo "Compiling ${file}..."
    ghdl -a --std=08 "${file}"
done


echo "Compiling all vhd files"
NON_TB_FILES=$(find . -type f -name "*.vhd" -not -name "tb_*.vhd" -not -name "TYPES_*.vhd")
for file in $NON_TB_FILES; do
    file=${file:2}
    FILE_WITHOUT_EXT="${file%.*}"
    echo "Compiling ${file}..."
    ghdl -a --std=08 "${file}"
done

echo "Running test bench for $ALGO..."
TB_FILES=$(find . -type f -name "tb_${ALGO}_*.vhd")
for tb_file in $TB_FILES; do
    tb_file=${tb_file:2}
    TB_FILE_WITHOUT_EXT="${tb_file%.*}"
    echo "Compiling ${tb_file}..."
    ghdl -a --std=08 "${tb_file}"
    ghdl -e --std=08 "$TB_FILE_WITHOUT_EXT"
    echo "Running $TB_FILE_WITHOUT_EXT..."
    ghdl -r --std=08 "$TB_FILE_WITHOUT_EXT" --stop-time=1000ns
    if [ $? -ne 0 ]; then
        echo "Test bench $TB_FILE_WITHOUT_EXT failed."
        SUCCESS=0
    fi
    echo "Done running $tb_file"
done
if [ $SUCCESS -eq 0 ]; then
    echo "Some test benches failed."
    exit 1
else
    echo "All test benches passed."
fi