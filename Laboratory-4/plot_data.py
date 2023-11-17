import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def main():
    #
    df1 = pd.read_csv("./times-row.csv", delimiter=';')
    df2 = pd.read_csv("./times-col.csv", delimiter=';')
    df3 = pd.read_csv("./times-cell.csv", delimiter=';')
    
    plt.figure()
    plt.loglog(df1['divs'], df1['time (ms)'], marker='o', linestyle='-', color="red", label="By rows")
    
    plt.loglog(df2['divs'], df2['time (ms)'], marker='o', linestyle='-', color="blue", label="By columns")
    
    plt.loglog(df3['divs'], df3['time (ms)'], marker='o', linestyle='-', color="green", label="By rows and columns")
    
    ticks = [ 2**i for i in range(7) ]
    plt.xticks(ticks, ticks)
    plt.xlabel('divisions')
    plt.ylabel('time (ms)')
    plt.title('Number of divisions')
    plt.grid(True)
    plt.legend()
    plt.plot()
    

    plt.show()

if __name__ == '__main__':
    main()