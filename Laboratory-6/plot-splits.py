import sys
import pandas as pd
import matplotlib.pyplot as plt

# Check if the correct number of command-line arguments is provided
if len(sys.argv) != 2:
    print("Usage: python script.py <csv_file>")
    sys.exit(1)

# Get the CSV file name from the command-line argument
csv_file = sys.argv[1]

# Read the CSV file into a DataFrame
df = pd.read_csv(csv_file, delimiter=';')

# Extract NumPy arrays from columns
x_values = df['step'].values
y_values = df['time(ms)'].values

# Create a plot
plt.plot(x_values, y_values, marker='o', linestyle='-', color='blue')

# Set labels and title
plt.xlabel('Step')
plt.ylabel('Time (ms)')
plt.title('Time vs Step')

# Show the plot
plt.show()