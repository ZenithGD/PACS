import matplotlib.pyplot as plt
import numpy as np

def q2_plot():
    q2x = [16, 128, 1024, 1048576, 4294967295]
    q2y = [1, 1, 3, 2386, 5163349]
    
    plt.figure()
    plt.loglog(q2x, q2y, marker='o', linestyle='-')
    plt.xlabel('steps')
    plt.ylabel('time')
    plt.title('log-log plot of steps vs execution')
    plt.grid(True)
    plt.show()

def q4_plot():
    q4x = [1, 2, 4, 8, 16]
    q4y = np.array([
        [19.061326, 9.530585, 4.766030, 2.383218, 1.192036],
        [19.061901, 9.531767, 4.766162, 2.383289, 1.192309],
        [19.047155, 9.530111, 4.765270, 2.382929, 1.192248]
    ])

    q4_mean = np.mean(q4y, axis=0)
    q4_std = np.std(q4y, axis=0)
    q4_cv = q4_mean / q4_std
    
    plt.figure()
    plt.plot(q4x, q4_mean, marker='o', linestyle='-')
    plt.xlabel('steps')
    plt.ylabel('time')
    plt.title('plot of threads vs execution')
    plt.grid(True)
    plt.show()

    print(q4_mean)
    print(q4_std)
    print(q4_cv)

def main():
    #
    q2_plot()
    q4_plot()

if __name__ == '__main__':
    main()