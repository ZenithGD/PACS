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
    std::unordered_map<std::string, unsigned int> image_paths;
    std::string kernel;
};

Arguments parse_args(int argc, char** argv) {

    if ( argc < 2 ) {
        std::cerr << "Usage: main <kernel> [<image_path> (N)]" << std::endl;
        exit(1);
    }

    // get kernel arg
    Arguments args;
    args.kernel = std::string(argv[1]);
    for ( unsigned int i = 2; i < argc; i++ ) {
        std::string _path(argv[i]);
        if ( i < argc ) {
            try {
                // repeat path N times
                unsigned int times = std::stoul(argv[i + 1]);
                if ( !args.image_paths[_path] )
                    args.image_paths[_path] = times;
                else {
                    args.image_paths[_path] += times;
                }
                i++;
            }
            catch ( std::exception& e ) {
                // if argument is not a number we only push once
                if ( !args.image_paths[_path] )
                    args.image_paths[_path] = 1;
                else {
                    args.image_paths[_path]++;
                }
            }
        }
    }

    std::cout << "[kernel]> " << args.kernel << "" << std::endl;
    std::cout << "[loaded paths]> " << std::endl;

    for ( auto& [key, val] : args.image_paths ) {
        std::cout << "  '" << key << "': " << val << std::endl;
    }

    return args;
}

int main(int argc, char** argv) {

    Arguments args = parse_args(argc, argv);
    
    std::vector<unsigned int> cores = {384, 24};
    StaticScheduler sched(cores);

    
}