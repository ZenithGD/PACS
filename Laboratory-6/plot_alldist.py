import pandas as pd
import matplotlib.pyplot as plt

import os, sys, re

def read_total(csv_file):

    # Read the CSV file into a DataFrame
    df = pd.read_csv(csv_file, delimiter=';')
    steps_column = df.columns[0]
    cpu_column = df.columns[1]
    gpu_column = df.columns[2]
    # Extract the CPU and GPU columns
    steps_data = df[steps_column]
    cpu_data = df[cpu_column]
    gpu_data = df[gpu_column]

    return steps_data, cpu_data, gpu_data

def num_from_str(s):
    # Using regular expression to find the numeric part
    match = re.search(r'(\d+)', s)
    
    if match:
        return int(match.group(0)), int(match.group(1))
    else:
        return None

for csv_file in sys.argv[1:]:
    labels, cpu_data, gpu_data = read_total(csv_file)
    imgs, step = num_from_str(csv_file)

    print(labels)
    print(cpu_data)
    print(gpu_data)
    
    plt.plot(labels.values, cpu_data, label=f"CPU {step}")
    plt.plot(labels.values, gpu_data, label=f"GPU {step}")


# Set labels and title
plt.xlabel('Proportion')
plt.ylabel('Total Time (ms)')
plt.title('Static Scheduling')

# Set legend
plt.legend(title="Number of images")

# Save the plot as a PNG file with the same base filename
plt.savefig('totals.png')