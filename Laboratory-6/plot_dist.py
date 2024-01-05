import pandas as pd
import matplotlib.pyplot as plt

import os, sys

# Read the CSV file into a DataFrame
df = pd.read_csv(sys.argv[1], delimiter=';')

steps_column = df.columns[0]

cpu_column = df.columns[1]
gpu_column = df.columns[2]

# Extract the CPU and GPU columns
steps_data = df[steps_column]
cpu_data = df[cpu_column]
gpu_data = df[gpu_column]

# Create a plot
plt.plot(steps_data, gpu_data, color='red', linestyle="--", label='GPU')
plt.plot(steps_data, cpu_data, color='blue', linestyle="--", label='CPU')

# Set labels and title
plt.xlabel('CPU Proportion')
plt.ylabel('Total Time (ms)')
plt.title('Static Scheduling')

# Set legend
plt.legend(title="Device")

# Show the plot
plt.show()