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
    if ( argc > 3 ) {
        args.repl = std::stoul(argv[4]);
    }

    std::cout << "[kernel_path]> " << args.kernel_path << std::endl;
    std::cout << "[kernel_name]> " << args.kernel_name << std::endl;
    std::cout << "[image_path]> " << args.image_path << " x " << args.repl << ::endl;

    return args;
}

int main(int argc, char** argv) {

    Arguments args = parse_args(argc, argv);
    
    std::vector<unsigned int> cores = { 5,5 };
    StaticScheduler sched(args.kernel_path, args.kernel_name, cores);

    CImg<unsigned char> img(args.image_path.c_str());
    sched.run(img, args.repl);

    sleep(2);
}