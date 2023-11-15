#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <string>
#include <thread>
#include <utility>
#include <chrono>
#include <vector>
#include <cmath>

using my_float = float;
using namespace std;

void
pi_taylor_chunk(std::vector<my_float> &output,
        size_t thread_id, size_t start_step, size_t stop_step, std::vector<float> &microseconds) {
            auto start = std::chrono::steady_clock::now();
            int sign = start_step & 0x1 ? -1 : 1;
            my_float res = 0;
            for(size_t i = start_step; i < stop_step; i++){
                res += sign/static_cast<my_float>(2*i + 1);
                sign = -sign;
            }
            res = res * 4;
            output[thread_id] = res;
            auto fin = std::chrono::steady_clock::now();
            microseconds[thread_id] = std::chrono::duration_cast<std::chrono::microseconds>(fin - start).count();
}

std::pair<size_t, size_t>
usage(int argc, const char *argv[]) {
    // read the number of steps from the command line
    if (argc != 3) {
        std::cerr << "Invalid syntax: pi_taylor <steps> <threads>" << std::endl;
        exit(1);
    }

    size_t steps = std::stoll(argv[1]);
    size_t threads = std::stoll(argv[2]);

    if (steps < threads ){
        std::cerr << "The number of steps should be larger than the number of threads" << std::endl;
        exit(1);

    }
    return std::make_pair(steps, threads);
}

int main(int argc, const char *argv[]) {


    auto ret_pair = usage(argc, argv);
    auto steps = ret_pair.first;
    auto threads = ret_pair.second;

    my_float pi = 0;

    vector<thread> ths;
    vector<my_float> outputs(threads, 0.0f);
    vector<float> times(threads, 0.0f);
    size_t steps_per_thread = steps/threads;


    auto start = std::chrono::steady_clock::now();
    for(long unsigned int i = 0; i < threads; i++){
        cout << "Thread dispatched " << i <<" " <<i*steps_per_thread << " "<<  (i+1)*steps_per_thread << endl;
        ths.push_back(thread(pi_taylor_chunk, ref(outputs), i, i*steps_per_thread, (i+1)*steps_per_thread, ref(times)));
    }

    for(auto &t : ths){
        t.join();
        cout << "Thread finished: "  << endl;
    }
    float count = 0;
    for(size_t i = 0; i < outputs.size(); i++){
        pi += outputs[i];
        count += times[i];
        std::cout << "T " << i << " took " << (times[i]/1000000.0) << " s." << std::endl;
    }
    float mean = count/threads;
    float var = 0.0;
    for(size_t i = 0; i < times.size(); i++){
        float aux = mean - times[i];
        var += aux*aux;
    }
    std::cout << "mean exec time: " << ((mean)/1000000.0) << " s." << std::endl;
    std::cout << "stddev: " << ((sqrt(var))/1000000.0) << " s." << std::endl;
    std::cout << "cv: " << ((sqrt(var)/mean))  << std::endl;
    auto fin = std::chrono::steady_clock::now();


    std::cout << "For " << steps << ", pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << std::endl;
    double seconds = std::chrono::duration_cast<std::chrono::nanoseconds>(fin - start).count();
    std::cout << "execution time: " << seconds / 1000.0 << " us."<< std::endl;
}

