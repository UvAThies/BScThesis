

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

# Copy all the bitstream to the results directory
find BScThesis.runs/impl_1 -name \*.bit -exec cp {} results/ \;
find BScThesis.gen/sources_1/bd/ -name \*.hwh -exec cp {} results/ \;

# Rename the hwh files to include wrapper in the name
for file in results/*.hwh; do
    mv "$file" "${file%.hwh}_wrapper.hwh"
done






