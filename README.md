# BScThesis

This repo was designed for use in Windows, with scripts being written for WSL.

## Workflow

1. Edit the file  `compile_all_designs_to_bitstream.tcl`, to enable/disable certain algorithms
2. Run `build-using-vivado.bat` in windows, to build the algorithms
3. Run `./scripts/collect.sh` in linux, to collect results
4. Run `python scripts/parse_reports.py` to sumarize reports into csv.
5. Transfer the bit files to your FPGA
6. Go to `http://192.168.2.99:9090`, and run some juypter notebooks!



## Scripts for Windows

The project contains several TCL scripts for automating the Vivado design process, they are in BScThesis.srcs/sources_1/bd:

- `generate_all_designs.tcl`: Generates block designs for all supported algorithms (SDES, DES, TDES, DESX, DESXL, DESL) and operations (encrypt/decrypt). This script creates the basic block design structure for each combination.

- `compile_all_designs_to_bitstream.tcl`: Compiles all generated block designs to bitstreams. It handles the synthesis, implementation, and bitstream generation process for each design. The script also extracts and saves utilization, timing, and power reports to the results directory.

- `create_generic_design.tcl`: A template script that creates the actual block design for a specific algorithm and operation. It sets up the AXI DMA, interconnect, and processing system components, and connects them to the algorithm-specific AXI wrapper module.

These scripts work together to automate the entire FPGA design flow, from block design creation to bitstream generation. They are designed to be run in sequence within the Vivado TCL console, or using a simple bat file, located in `build-using-vivado.bat`

## Scripts for WSL

### Collect
To collect all .bit and .hwh files, run
```bash
./scripts/collect.sh
```

### Test
To test an implementation using the provided test benches, run
```bash
./scripts/test.sh <Algorithm name>
```

### Axi Wrappers

To automatically generate the AXI wrappers for all encryption algorithms, run `
```bash
python scripts/generate_axi_wrapper.py
```

This will output all wrappers into BScThesis.srcs/sources_1/axi_wrappers

### Reports

To summarise all reports in 1 nice csv file, run:

```bash
python scripts/parse_reports.py
```