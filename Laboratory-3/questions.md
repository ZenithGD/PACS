# Questions
## Q1: What is the goal of the std::stoll function?
Transforms a `string` to a `long long` variable

## Q2: Once you have completed the function, please copy the time measurement code from any of the code snippets that uses std::chrono and run the program for 16, 128, 1024, 1048576, and 4294967295 steps. Does the execution time scales linearly with the number of steps?

- 16:           1 us
- 128:          1 us
- 1024:         3 us
- 1048576:      2386 us
- 4294967295:   5.163.349 us -> 5.16 s

It does scale linearly because every step of the summatory takes the same amount of time, independently of the value of n.

## Q3: Please measure with perf the number of cycles, instructions and context-switches for the application with 4294967295 steps.
```
 11,954.27 msec task-clock:u              #    1.000 CPUs utilized            ( +-  0.02% )
                 0      context-switches:u        #    0.000 /sec
                 0      cpu-migrations:u          #    0.000 /sec
               115      page-faults:u             #    9.619 /sec                     ( +-  0.52% )
    52,305,609,980      cycles:u                  #    4.375 GHz                      ( +-  0.01% )
    64,427,505,387      instructions:u            #    1.23  insn per cycle           ( +-  0.00% )
     8,590,429,117      branches:u                #  718.568 M/sec                    ( +-  0.00% )
            15,789      branch-misses:u           #    0.00% of all branches          ( +-  0.69% )

          11.95566 +- 0.00234 seconds time elapsed  ( +-  0.02% )
```

## Q4: Run pi_taylor_parallel for 4294967295 steps and 1, 2, 4, 8, and 16 threads, and perform an scalability analysis, including a plot and some measurement of the variability of the program, such as the coefficient of variation.

- 1: 4.418.350 us -> 4.4 s
- 2: 2.260.823 us -> 2.26 s
- 4: 1.984.896 us -> 1.98 s
- 8: 1.330.268 us -> 1.33 s
-16: 1.153.513 us -> 1.15 s

PLOT y el coeficiente


## Q5
- 8 threads:    3.141592653 356509501
- sequential    3.141592653 820931336
---
> **Note** In some extreme cases, ◦(a + ◦(b + c)) can be drastically different from ◦(◦(a+b)+c). A simple example, in radix-β, precision-p arithmetic with round-to-nearest mode is a = β p+1 , b = −β p+1, and c = 1, since RN(a + RN(b + c)) = RN(β p+1 − β p+1) = 0, whereas RN(RN(a + b) + c) = RN(0 + 1) = 1.
---
## Qalpha

- Kahan sum 4: 4.141.615 us -> 4.14 s
- no kahan 4: 1.984.896  us -> 1.98 s

- kahan pi: 3.1415927   41012573242
- seq:      3.1415926   53820931336

## Q6

- 4 Threads
```
            5,459.91 msec task-clock:u              #    3.000 CPUs utilized            ( +-  3.06% )
                 0      context-switches:u        #    0.000 /sec
                 0      cpu-migrations:u          #    0.000 /sec
               123      page-faults:u             #   23.227 /sec                     ( +-  0.88% )
    22,936,319,310      cycles:u                  #    4.331 GHz                      ( +-  3.13% )
    64,427,535,939      instructions:u            #    2.90  insn per cycle           ( +-  0.00% )
     8,590,430,524      branches:u                #    1.622 G/sec                    ( +-  0.00% )
            17,486      branch-misses:u           #    0.00% of all branches          ( +-  0.21% )

             1.820 +- 0.165 seconds time elapsed  ( +-  9.09% )
```
- 8 Threads
```
6,709.24 msec task-clock:u              #    4.783 CPUs utilized            ( +-  3.81% )
                 0      context-switches:u        #    0.000 /sec
                 0      cpu-migrations:u          #    0.000 /sec
               134      page-faults:u             #   19.575 /sec                     ( +-  0.50% )
    27,502,614,055      cycles:u                  #    4.018 GHz                      ( +-  3.74% )
    64,427,565,785      instructions:u            #    2.29  insn per cycle           ( +-  0.00% )
     8,590,438,430      branches:u                #    1.255 G/sec                    ( +-  0.00% )
            17,579      branch-misses:u           #    0.00% of all branches          ( +-  0.25% )

            1.4027 +- 0.0373 seconds time elapsed  ( +-  2.66% )
```
## Qbeta

- 6 threads
Los threads han tardado 0.0002495 segundos DIAVOLIKOS como media DIAVOLIKA.
Con una desviacion DIAVOLIKA de 0.000153426 segundos DIAVOLIKOS.
Con una coeficiente DIAVOLIKO de variacion de 0.614933

- 48 threads
Los threads han tardado 3.21458e-05 segundos DIAVOLIKOS como media DIAVOLIKA.
Con una desviacion DIAVOLIKA de 9.36482e-05 segundos DIAVOLIKOS.
Con una coeficiente DIAVOLIKO de variacion de 2.91323



