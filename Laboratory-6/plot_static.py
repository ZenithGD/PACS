import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file into a DataFrame
df = pd.read_csv('static.csv', delimiter=';')

# Extract the 'gpu' and 'cpu' columns
gpu_data = df['gpu']
cpu_data = df['cpu']

# Create a plot
plt.plot(df['gpu_prop'], gpu_data, color='red', label='GPU')
plt.plot(df['gpu_prop'], cpu_data, color='blue', label='CPU')

# Set labels and title
plt.xlabel('Proportion')
plt.ylabel('Total Time')
plt.title('Static Scheduling')

# Set legend
plt.legend()

# Set the x-axis range from 0 to 1
plt.xlim(0, 1)

# Show the plot
plt.show()