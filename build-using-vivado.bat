@echo off
call "C:\Xilinx\Vivado\2024.2\.settings64-Vivado.bat"
cd BScThesis.srcs/sources_1/bd
vivado -mode batch -source compile_all_designs_to_bitstream.tcl
cd ../../..