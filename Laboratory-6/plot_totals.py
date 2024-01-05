import sys, re
import matplotlib.pyplot as plt
import pandas as pd

def read_total(csv_file):

    # Read the CSV file into a DataFrame
    df = pd.read_csv(csv_file, delimiter=';')

    total_column = df.columns[2]
    total_data = df[total_column].values

    return df.index.values, total_data

def num_from_str(s):
    # Using regular expression to find the numeric part
    match = re.search(r'(\d+)', s)
    
    if match:
        return int(match.group(1))
    else:
        return None

for csv_file in sys.argv[1:]:
    labels, data = read_total(csv_file)

    plt.plot(labels, data, label=num_from_str(csv_file))


# Set labels and title
plt.xlabel('Proportion')
plt.ylabel('Total Time (ms)')
plt.title('Static Scheduling')

# Set legend
plt.legend(title="Number of images")

# Set the x-axis range from 0 to 1
plt.xlim(0, 1)

# Save the plot as a PNG file with the same base filename
plt.savefig('totals.png')