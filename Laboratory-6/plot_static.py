import pandas as pd
import matplotlib.pyplot as plt

import os, sys

# Read the CSV file into a DataFrame
csv_file = sys.argv[1]
df = pd.read_csv(csv_file, delimiter=';')

print(df)

labels = df.index.values
cpu_column = df.columns[0]
gpu_column = df.columns[1]
total_column = df.columns[2]

# Extract the CPU and GPU columns
cpu_data = df[cpu_column].values
gpu_data = df[gpu_column].values
total_data = df[total_column].values

print(labels)
print(cpu_data)
print(gpu_data)

# Create a plot with dashed lines
plt.plot(labels, gpu_data, color='red', linestyle='--', label="GPU")
plt.plot(labels, cpu_data, color='blue', linestyle='--', label="CPU")
plt.plot(labels, total_data, color='green', label="CPU")

# Set labels and title
plt.xlabel('Proportion')
plt.ylabel('Total Time')
plt.title('Static Scheduling')

# Set legend
plt.legend()

# Set the x-axis range from 0 to 1
plt.xlim(0, 1)

# Get the base filename without extension
base_filename, _ = os.path.splitext(csv_file)

# Save the plot as a PNG file with the same base filename
plt.savefig(base_filename + '.png')