#define cimg_use_jpeg
#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"

#include <chrono>

using namespace cimg_library;
using namespace std;

#include <iostream>
#include <fstream>

#include <schedulers/static_scheduler.hpp>

struct Arguments {
    std::string image_path;
    unsigned int repl;
    // proportion that goes into the first device (between 0 and 1)
    double prop;
    std::string kernel_path, kernel_name;
};

Arguments parse_args(int argc, char** argv) {

    if ( argc < 2 ) {
        std::cerr << "Usage: main <kernel_path> <kernel_name> <image_path> (N)" << std::endl;
        exit(1);
    }

    // get kernel arg
    Arguments args;
    args.kernel_path = std::string(argv[1]);
    args.kernel_name = std::string(argv[2]);
    args.image_path = std::string(argv[3]);
    args.prop = std::stod(argv[4]);
    if ( argc > 4 ) {
        args.repl = std::stoul(argv[5]);
    }

    std::cout << "[kernel_path]> " << args.kernel_path << std::endl;
    std::cout << "[kernel_name]> " << args.kernel_name << std::endl;
    std::cout << "[image_path]> " << args.image_path << " x " << args.repl << ::endl;

    return args;
}

int main(int argc, char** argv) {

    Arguments args = parse_args(argc, argv);
    CImg<unsigned char> img(args.image_path.c_str());

    const unsigned int N = 20;
    std::vector<std::vector<double>> exec_info;

    // perform experiment with different balancing proportions
    for ( int i = 0; i <= N; i++ ) {    
        double pr = (double)i / (double)N;
        std::vector<double> dist = { pr, 1 - pr };
        StaticScheduler sched(args.kernel_path, args.kernel_name, dist);

        auto iv = sched.run(img, args.repl);

        std::vector<double> info;

        for ( int j = 0; j < iv.size(); j++ ) {
            info.push_back(iv[j].total_time);
        }
        exec_info.push_back(info);

        std::cout << "done " << pr << std::endl;
    }

    // write csv to stdout
    std::cout << "gpu_prop;gpu;cpu" << std::endl;
    int i = 0;
    for ( auto& info : exec_info ) {
        std::cout << (double)i++ / (double)N << ";" << info[0] << ";" << info[1] << std::endl;
    }
}