# Run all test benches
FROM ghdl/ghdl:6.0.0-dev-gcc-ubuntu-24.04

WORKDIR /ghdl-testbench
COPY BScThesis.srcs/**/* .

ARG algos=SDES

RUN IFS=',' read -ra ALGO <<< "$algos"; for algo in "${ALGO[@]}"; do \
    cd "$algo"; \
    NOT_TB_FILES=$(find -type f -name "*.vhd" ! -name "tb_*.vhd"); \
    TB_FILES=$(find -type f -name "tb_*.vhd"); \
    echo "Compiling files for $algo..."; \
    for file in $NOT_TB_FILES; do \
        file=${file:2} \ 
        FILE_WITHOUT_EXT="${file%.*}"; \
        echo "Compiling  ${file}..."; \
        ghdl -a --std=08 "${file}"; \
        ghdl -e --std=08 "$FILE_WITHOUT_EXT"; \
    done; \
    echo "Running test bench for $algo..."; \
    for tb_file in $TB_FILES; do \
        tb_file=${tb_file:2} \
        TB_FILE_WITHOUT_EXT="${tb_file%.*}"; \
        echo "Compiling  ${tb_file}..."; \
        ghdl -a --std=08 "${tb_file}" && \
        ghdl -e --std=08 "$TB_FILE_WITHOUT_EXT" && \
        echo "Running $TB_FILE_WITHOUT_EXT..." && \
        ghdl -r --std=08 "$TB_FILE_WITHOUT_EXT" && \
        echo "Done running $tb_file"; \
    done; \
done