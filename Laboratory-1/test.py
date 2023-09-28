import subprocess
import argparse
import time

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def run_test(cmd : list, size : int, reps : int = 1) -> float:
    """Run test of given size and return time.

    Args:
        size (int): The input size of the test data

    Returns:
        float: The time it took to run the test
    """
    times = np.zeros(reps)

    # Use subprocess to run the command and redirect output to DEVNULL
    for r in range(reps):
        start_time = time.time()
        subprocess.run(cmd, 
            stdout=subprocess.DEVNULL, 
            stderr=subprocess.DEVNULL, 
            check=True)   
        times[r] = time.time() - start_time

    # compute mean and std
    mean, std = np.mean(times), np.std(times)
    print(f"  [{cmd[0]}] mean = {mean}, std = {std}")
    return mean, std

def main(args):
    # dataframe 
    
    sizes = np.round(np.linspace(args.start, args.end, args.num)).astype(int)

    times = pd.DataFrame(index=pd.Index(sizes), columns=['Manual', 'Vectorized', 'Non Vectorized'])
    stds = pd.DataFrame(index=pd.Index(sizes), columns=['Manual', 'Vectorized', 'Non Vectorized'])
    for i, size in enumerate(sizes):
        print(f"({i})> Running test of size {size}")
        # set commands
        mult_command  = [ "bin/mat_mult_noopt" if args.unoptimized else "bin/mat_mult", str(size) ]
        vec_command   = [ "bin/eigen_mult_noopt" if args.unoptimized else "bin/eigen_mult", str(size) ]
        novec_command = [ "bin/eigen_novec_noopt" if args.unoptimized else "bin/eigen_novec", str(size) ]

        # set times
        times.at[size, 'Manual'], stds.at[size, 'Manual'] = run_test(mult_command, size, args.reps)
        times.at[size, 'Vectorized'], stds.at[size, 'Vectorized'] = run_test(vec_command, size, args.reps)
        times.at[size, 'Non Vectorized'], stds.at[size, 'Non Vectorized'] = run_test(novec_command, size, args.reps)

    # plot the lines from dataframe
    plt.figure(figsize=(10, 8))  # Adjust the figure size as needed

    for column in times.columns:
        plt.plot(times.index, times[column], label=column)

    plt.xlabel('rows')
    plt.ylabel('time (s)')
    plt.title('Mean time for each experiment')
    
    # Customize legend
    plt.legend(loc='upper right')

    # Customize grid
    plt.grid(True, linestyle='--', alpha=0.7)

    # Show the plot
    plt.savefig("plot.png")

    # plot the lines from std dataframe
    plt.figure(figsize=(10, 8))  # Adjust the figure size as needed

    for column in stds.columns:
        plt.plot(stds.index, stds[column], label=column)

    plt.xlabel('rows')
    plt.ylabel('time (s)')
    plt.title('Standard deviation for each experiment')
    
    # Customize legend
    plt.legend(loc='upper right')

    # Customize grid
    plt.grid(True, linestyle='--', alpha=0.7)

    # Show the plot
    plt.savefig("stds.png")

    # save time dataframes as csv
    times.to_csv("times.csv")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="test runs")
    parser.add_argument("-s", "--start", type=int, help="start size")
    parser.add_argument("-e", "--end", type=int, help="end size")
    parser.add_argument("-n", "--num", type=int, help="number of experiments")
    parser.add_argument("-r", "--reps", type=int, help="number of repetitions per experiment")
    parser.add_argument("--unoptimized", action="store_true", help="use unoptimized executables")

    args = parser.parse_args()
    main(args)