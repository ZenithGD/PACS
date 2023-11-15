#include <iomanip>
#include <iostream>
#include <limits>
#include <chrono>

// Allow to change the floating point type
using my_float = long double;

my_float pi_taylor(size_t steps) {
    int sign = 1;
    my_float res = 0;
    for(size_t i = 0; i < steps; i++){
        res += sign/static_cast<my_float>(2.0*i + 1.0);
        sign = -sign;
    }
    res = res * 4;
    return res;
}

int main(int argc, const char *argv[]) {

    // read the number of steps from the command line
    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);

    }

    size_t steps = std::stoll(argv[1]);

    
    auto start = std::chrono::steady_clock::now();
    auto pi = pi_taylor(steps);
    
    auto fin = std::chrono::steady_clock::now();
    std::cout << "For " << steps << ", pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << std::endl;
    double seconds = std::chrono::duration_cast<std::chrono::nanoseconds>(fin - start).count();
    std::cout << "execution time: " << seconds / 1000.0 << " us."<< std::endl;
}
