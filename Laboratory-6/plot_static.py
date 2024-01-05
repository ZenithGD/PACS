import pandas as pd
import matplotlib.pyplot as plt

import os, sys

# Read the CSV file into a DataFrame
df = pd.read_csv(sys.argv[1], delimiter=';')

# Extract the 'gpu' and 'cpu' columns
cpu_column = df.columns[1]
gpu_column = df.columns[2]
total_time = df['total']

# Extract the CPU and GPU columns
cpu_data = df[cpu_column]
gpu_data = df[gpu_column]

# Create a plot
plt.plot(df['gpu_prop'], gpu_data, color='red', linestyle="--", label='GPU')
plt.plot(df['gpu_prop'], cpu_data, color='blue', linestyle="--", label='CPU')
plt.plot(df['gpu_prop'], total_time, color='green', label='Total')

# Set labels and title
plt.xlabel('CPU Proportion')
plt.ylabel('Total Time (ms)')
plt.title('Static Scheduling')

# Set legend
plt.legend()

# Set the x-axis range from 0 to 1
plt.xlim(0, 1)

# Show the plot
plt.show()