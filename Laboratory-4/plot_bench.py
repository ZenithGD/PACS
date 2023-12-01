import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def main():
    df1 = pd.read_csv("./times-bench.csv", delimiter=';')
    
    plt.figure()
    plt.plot(df1['n'], df1['ms(b)'], marker='o', linestyle='-', color="red", label="Blocking queue impl.")
    plt.plot(df1['n'], df1['ms(nb)'], marker='o', linestyle='-', color="blue", label="Non-blocking queue impl.")

    plt.xlabel('Number of elements')
    plt.ylabel('time (ms)')
    plt.title('Benchmark execution time')
    plt.grid(True)
    plt.legend()
    plt.plot()
    

    plt.show()

if __name__ == '__main__':
    main()