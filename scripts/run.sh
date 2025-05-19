

# Script should:
# Run compile_all_designs_to_bitstream.tcl
#    Send output to results/compile_all_designs_to_bitstream.log
    # And tail the log file

# Source the Vivado batch script

# Windows troep
# C:\Xilinx\Vivado\2024.2\.settings64-Vivado.bat
# cd BScThesis.srcs/sources_1/bd
# vivado -mode batch -source compile_all_designs_to_bitstream.tcl
mkdir results -p

rm results/*.hwh
rm results/*.bit


ALGORITHMS="sdes des tdes desx desxl desl"
OPERATIONS="encrypt decrypt"

for algorithm in $ALGORITHMS; do
    for operation in $OPERATIONS; do
        echo "Processing $algorithm $operation"
        cp BScThesis.runs/impl_${algorithm}_${operation}/${algorithm}_${operation}_bd_wrapper.bit results/${algorithm}_${operation}.bit
        cp BScThesis.gen/sources_1/bd/${algorithm}_${operation}_bd/hw_handoff/${algorithm}_${operation}_bd.hwh results/${algorithm}_${operation}.hwh
    done
done






