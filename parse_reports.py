import re
import os
import csv
from dataclasses import dataclass
from typing import Dict, List, Optional

@dataclass
class TimingStats:
    clock_freq: float  # MHz
    clock_period: float  # ns
    wns: float  # ns
    tns: float  # ns
    failing_endpoints: int
    total_endpoints: int

@dataclass
class ResourceStats:
    luts: int
    registers: int
    block_ram: int
    dsp: int
    io: int

@dataclass
class AlgorithmStats:
    name: str
    timing: TimingStats
    resources: ResourceStats

def parse_timing_report(file_path: str) -> TimingStats:
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Find clock information
    clock_section = re.search(r'Clock\s+Waveform\(ns\)\s+Period\(ns\)\s+Frequency\(MHz\)\n[-\ ]+\n([\w\s\.{}]+)', content)
    if not clock_section:
        raise ValueError("Could not find clock information")
    print(clock_section.group(1))
    # Extract clock values
    clock_values = re.findall(r'\d+\.?\d*', clock_section.group(1))
    if len(clock_values) < 3:
        raise ValueError("Could not extract clock values")
    
    clock_period = float(clock_values[1])
    clock_freq = float(clock_values[2])
    
    # Find timing summary
    timing_section = re.search(r'Design Timing Summary.*?WNS\(ns\)\s+TNS\(ns\)\s+TNS Failing Endpoints\s+TNS Total Endpoints\s+WHS\(ns\)\s+THS\(ns\)\s+THS Failing Endpoints\s+THS Total Endpoints\s+WPWS\(ns\)\s+TPWS\(ns\)\s+TPWS Failing Endpoints\s+TPWS Total Endpoints\s+-+\s+([\d\s\.-]+)', 
                             content, re.DOTALL)
    if not timing_section:
        raise ValueError("Could not find timing summary section")
    
    # Extract timing values
    values = re.findall(r'-?\d+\.?\d*', timing_section.group(1))
    if len(values) < 4:
        raise ValueError("Could not extract timing values")
    
    return TimingStats(
        clock_freq=clock_freq,
        clock_period=clock_period,
        wns=float(values[0]),
        tns=float(values[1]),
        failing_endpoints=int(values[2]),
        total_endpoints=int(values[3])
    )

def parse_utilization_report(file_path: str) -> ResourceStats:
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Extract LUTs
    luts_match = re.search(r'Slice LUTs\s+\|\s+(\d+)', content)
    luts = int(luts_match.group(1)) if luts_match else 0
    
    # Extract Registers
    regs_match = re.search(r'Slice Registers\s+\|\s+(\d+)', content)
    registers = int(regs_match.group(1)) if regs_match else 0
    
    # Extract Block RAM
    bram_match = re.search(r'Block RAM Tile\s+\|\s+(\d+)', content)
    block_ram = int(bram_match.group(1)) if bram_match else 0
    
    # Extract DSP
    dsp_match = re.search(r'DSPs\s+\|\s+(\d+)', content)
    dsp = int(dsp_match.group(1)) if dsp_match else 0
    
    # Extract IO
    io_match = re.search(r'Bonded IOPADs\s+\|\s+(\d+)', content)
    io = int(io_match.group(1)) if io_match else 0
    
    return ResourceStats(
        luts=luts,
        registers=registers,
        block_ram=block_ram,
        dsp=dsp,
        io=io
    )

def parse_reports(base_dir: str) -> Dict[str, AlgorithmStats]:
    stats = {}
    
    # Find all report files
    for file in os.listdir(base_dir):
        if file.endswith('_utilization.rpt') or file.endswith('_timing.rpt'):
            # Extract algorithm name and type (encrypt/decrypt)
            match = re.match(r'(\w+)_(encrypt|decrypt)_(utilization|timing)\.rpt', file)
            if match:
                algo_name, algo_type, report_type = match.groups()
                key = f"{algo_name}_{algo_type}"
                
                if key not in stats:
                    stats[key] = AlgorithmStats(
                        name=key,
                        timing=None,
                        resources=None
                    )
                
                if report_type == 'timing':
                    stats[key].timing = parse_timing_report(os.path.join(base_dir, file))
                else:
                    stats[key].resources = parse_utilization_report(os.path.join(base_dir, file))
    
    return stats

def print_summary(stats: Dict[str, AlgorithmStats]):
    print("\nAlgorithm Implementation Summary")
    print("=" * 80)
    
    for key, algo_stats in sorted(stats.items()):
        print(f"\n{algo_stats.name.upper()}")
        print("-" * 40)
        
        if algo_stats.timing:
            print("Timing:")
            print(f"  Clock Frequency: {algo_stats.timing.clock_freq:.2f} MHz")
            print(f"  Clock Period: {algo_stats.timing.clock_period:.2f} ns")
            print(f"  WNS: {algo_stats.timing.wns:.3f} ns")
            print(f"  TNS: {algo_stats.timing.tns:.3f} ns")
            print(f"  Failing Endpoints: {algo_stats.timing.failing_endpoints}")
            print(f"  Total Endpoints: {algo_stats.timing.total_endpoints}")
        
        if algo_stats.resources:
            print("\nResources:")
            print(f"  LUTs: {algo_stats.resources.luts}")
            print(f"  Registers: {algo_stats.resources.registers}")
            print(f"  Block RAM: {algo_stats.resources.block_ram}")
            print(f"  DSP: {algo_stats.resources.dsp}")
            print(f"  IO: {algo_stats.resources.io}")

def export_to_csv(stats: Dict[str, AlgorithmStats], output_file: str):
    # Define CSV headers
    headers = [
        'Algorithm',
        'Clock Frequency (MHz)',
        'Clock Period (ns)',
        'WNS (ns)',
        'TNS (ns)',
        'Failing Endpoints',
        'Total Endpoints',
        'LUTs',
        'Registers',
        'Block RAM',
        'DSP',
        'IO'
    ]
    
    # Write to CSV
    with open(output_file, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        
        for key, algo_stats in sorted(stats.items()):
            row = [
                algo_stats.name,
                f"{algo_stats.timing.clock_freq:.2f}" if algo_stats.timing else "N/A",
                f"{algo_stats.timing.clock_period:.2f}" if algo_stats.timing else "N/A",
                f"{algo_stats.timing.wns:.3f}" if algo_stats.timing else "N/A",
                f"{algo_stats.timing.tns:.3f}" if algo_stats.timing else "N/A",
                algo_stats.timing.failing_endpoints if algo_stats.timing else "N/A",
                algo_stats.timing.total_endpoints if algo_stats.timing else "N/A",
                algo_stats.resources.luts if algo_stats.resources else "N/A",
                algo_stats.resources.registers if algo_stats.resources else "N/A",
                algo_stats.resources.block_ram if algo_stats.resources else "N/A",
                algo_stats.resources.dsp if algo_stats.resources else "N/A",
                algo_stats.resources.io if algo_stats.resources else "N/A"
            ]
            writer.writerow(row)

def main():
    # Assuming reports are in the 'results' directory
    base_dir = 'results'
    stats = parse_reports(base_dir)
    
    # Print summary to console
    print_summary(stats)
    
    # Export to CSV
    output_file = 'algorithm_stats.csv'
    export_to_csv(stats, output_file)
    print(f"\nResults exported to {output_file}")

if __name__ == "__main__":
    main() 