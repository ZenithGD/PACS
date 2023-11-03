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
TODO

## Q4: Run pi_taylor_parallel for 4294967295 steps and 1, 2, 4, 8, and 16 threads, and perform an scalability analysis, including a plot and some measurement of the variability of the program, such as the coefficient of variation.

- 1: 4.898.156 us -> 4.9 s
- 2: 2.564.452 us -> 2.56 s
- 4: 1.749.417 us -> 1.75 s
- 8: 1.388.754 us -> 1.38 s
-16: 1.431.493 us -> 1.43 s
