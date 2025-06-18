"""
A tiny benchmark tool
"""
import argparse
import timeit
import pathlib
import sys
import time
import csv
from types import FunctionType
try:
    from statistics import fmean, stdev
except ImportError: # Python 3.6-3.7 doesn't have fmean
    from statistics import mean as fmean, stdev 
from rich.console import Console
from rich.table import Table
from rich.text import Text
from rich.box import Box, HEAVY_HEAD, MARKDOWN

DEFAULT_REPEAT = 5
DEFAULT_TIMES = 5


def format_delta(a: float, b: float, d: float, perc: bool = False) -> Text:
    if a < b:
        if d < 10:
            col = "medium_spring_green"
        elif 10 <= d < 20:  
            col = "spring_green1"
        elif 20 <= d < 40:
            col = "spring_green2"
        else:
            col = "green1"
        x = b / a
        if perc:
            return Text(f"{a:.3f} ({d:.1f}%)", style=col)
        else:
            return Text(f"{a:.3f} ({x:.1f}x)", style=col)
    else:
        x = a / b
        if perc:
            return Text(f"{a:.3f} (-{d:.1f}%)", style="red")
        else:
            return Text(f"{a:.3f} (-{x:.1f}x)", style="red")


def benchmark_function(setup_func, setup_args, breakdown, func1, func2,test_vectors, desc, repeat: int, times: int):
    # Call setup function once with the provided arguments
    setup_result = setup_func(*setup_args)
    
    # Create wrapper functions that include the test vectors
    def wrapper1():
        return func1(test_vectors)
    
    def wrapper2():
        return func2(test_vectors)
    
    # Run the benchmarks
    result1 = timeit.repeat(wrapper1, repeat=repeat, number=times)
    result2 = timeit.repeat(wrapper2, repeat=repeat, number=times)
    
    breakdown()
    
    return result1, result2

def export_to_csv(results, filename):
    """Export benchmark results to a CSV file."""
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        # Write header
        writer.writerow(['Benchmark', 'Args', 'Min', 'Max', 'Mean', 'Stdev', 'Min (+)', 'Max (+)', 'Mean (+)', 'Stdev (+)'])
        # Write data
        for row in results:
            writer.writerow(row)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--percentage', action='store_true', help="Show percentage of improvement instead of multiplier")
    parser.add_argument('--benchmark', nargs='?', default=None, help="Run specific benchmark")
    parser.add_argument('--repeat', type=int, default=DEFAULT_REPEAT, help="Repeat benchmark this many times")
    parser.add_argument('--times', type=int, default=DEFAULT_TIMES, help="Run benchmark this many times")
    parser.add_argument('--csv', nargs='?', default=None, help="Export results to CSV file")
    parser.add_argument('target', nargs="+", type=str)

    args = parser.parse_args()

    box = HEAVY_HEAD
    table = Table(title=f"Benchmarks, repeat={args.repeat}, number={args.times}", box=box)

    table.add_column("Benchmark", justify="right", style="cyan", no_wrap=True)
    table.add_column("Args", justify="right", style="cyan", no_wrap=True)
    table.add_column("Min", width=7)
    table.add_column("Max", width=7)
    table.add_column("Mean", width=7)
    table.add_column("Stdev", width=7)
    table.add_column("Min (+)", style="blue", width=15)
    table.add_column("Max (+)", style="blue", width=15)
    table.add_column("Mean (+)", style="blue", width=15)
    table.add_column("Stdev (+)", style="blue", width=15)

    start = time.time()
    
    results = []  # Store results for CSV export
    n = 0
    for target in args.target:
        bench_dir = pathlib.Path(target)
        for f in bench_dir.glob("bench_*.py"):
            if args.benchmark and f.stem != f"bench_{args.benchmark}":
                continue
            sys.path.append(str(bench_dir.absolute()))
            i = __import__(f.stem, globals(), locals(), level=0)
            if hasattr(i, "__benchmarks_thies__"):
                for benchmark in i.__benchmarks_thies__:
                    n += 1
                    setup_func, setup_args, breakdown, func1, func2, test_vectors, desc = benchmark
                    print("starting", desc, setup_args)
                    without_result, with_result = benchmark_function(
                        setup_func, setup_args, breakdown, func1, func2, test_vectors,desc,
                        args.repeat, args.times
                    )

                    delta_mean = (abs(fmean(with_result) - fmean(without_result)) / fmean(without_result)) * 100.0
                    delta_min = (abs(min(with_result) - min(without_result)) / min(without_result)) * 100.0
                    delta_max = (abs(max(with_result) - max(without_result)) / max(without_result)) * 100.0

                    fdelta_min = format_delta(min(with_result), min(without_result), delta_min, args.percentage)
                    fdelta_max = format_delta(max(with_result), max(without_result), delta_max, args.percentage)
                    fdelta_mean = format_delta(fmean(with_result), fmean(without_result), delta_mean, args.percentage)

                    # Store results for CSV export
                    results.append([
                        desc,
                        str(setup_args),
                        f"{min(without_result):.3f}",
                        f"{max(without_result):.3f}",
                        f"{fmean(without_result):.3f}",
                        f"{stdev(without_result):.3f}",
                        f"{min(with_result):.3f}",
                        f"{max(with_result):.3f}",
                        f"{fmean(with_result):.3f}",
                        f"{stdev(with_result):.3f}"
                    ])

                    table.add_row(
                        desc,
                        str(setup_args),
                        "{:.3f}".format(min(without_result)),
                        "{:.3f}".format(max(without_result)),
                        "{:.3f}".format(fmean(without_result)),
                        "{:.3f}".format(stdev(without_result)),
                        fdelta_min,
                        fdelta_max,
                        fdelta_mean,
                        "{:.3f}".format(stdev(with_result)),
                                )

    console = Console(width=150)
    console.print(table)

    # Export to CSV if requested
    if args.csv:
        export_to_csv(results, args.csv)
        console.print(f"\nResults exported to {args.csv}")

    print(f"Completed in {(time.time() - start):.2f} seconds.")
        
if __name__ == "__main__":
    main()