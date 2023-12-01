// optional alpha task
#include <iostream>
#include <string>

#include <CImg.h>

using namespace cimg_library;

#include <thread_pool_term.hpp>

struct processing_opts {
    std::string input_img;
    std::string output_img;
    unsigned int xdivs, ydivs;
    bool parallel;
};

processing_opts parse_opts(int argc, char** argv) {
    processing_opts opts{
        .input_img = "",
        .output_img = "",
        .xdivs = 8,
        .ydivs = 8,
        .parallel = false
    };

    bool has_input = false;
    for ( int i = 1; i < argc; i++ ) {

        if ( strcmp(argv[i], "-i" ) == 0 ) {
            opts.input_img = std::string(argv[i + 1]);
            has_input = true;
            i++;
        }
        else if ( strcmp(argv[i], "-o") == 0 ) {
            opts.output_img = std::string(argv[i + 1]);
            i++;
        }
        else if ( strcmp(argv[i], "-x") == 0 ) {
            opts.xdivs = std::stoul(argv[i + 1]);
            i++;
        }
        else if ( strcmp(argv[i], "-y") == 0 ) {
            opts.ydivs = std::stoul(argv[i + 1]);
            i++;
        }
        else if ( strcmp(argv[i], "--parallel") == 0 ) {
            opts.parallel = true;
        }
    }

    if ( !has_input ) {
        std::cerr << "No input image specified! Use option -i <file path>" << std::endl;
        exit(1);
    }
    return opts;
}

void apply_gaussian(const CImg<unsigned char>& in, CImg<unsigned char>& out, float stddev, int x0, int x1, int y0, int y1, int K = 5) {

    float d = static_cast<float>(1 << sizeof(unsigned char) * 8);
    for ( int c = 0; c < in.spectrum(); c++ ) {
        for ( int i = y0; i < y1; i++ ) {
            for ( int j = x0; j < x1; j++ ) {
                // apply gaussian kernel centered at i, j
                int ly = std::max(0, i - K / 2);
                int hy = std::min(i + K / 2, out.height());
                int lx = std::max(0, j - K / 2);
                int hx = std::min(j + K / 2, out.width());
                float v = 0;
                float sum = 0.0;
                for ( int ni = ly; ni < hy; ni++ ) {
                    for ( int nj = lx; nj < hx; nj++ ) {
                        float xdiff = static_cast<float>(ly - i);
                        float ydiff = static_cast<float>(lx - j);
                        float coeff = exp(-(xdiff * xdiff + ydiff * ydiff) / (2 * stddev));
                        v += static_cast<float>(in(nj, ni, 0, c)) * coeff;
                        sum += coeff;
                    }
                }
                
                out(j, i, 0, c) = static_cast<unsigned char>(std::min(static_cast<float>(d - 1), v / sum));
            }
        }
    }
}

inline float get_luminance(float r, float g, float b) {
    // Photometric/digital ITU BT.709 0.2126 R + 0.7152 G + 0.0722 B
    return 0.2126 * r + 0.7152 * g + 0.0722 * b;
}

void apply_canny_edge(const CImg<unsigned char>& in, CImg<unsigned char>& out, int x0, int x1, int y0, int y1, float thr1, float thr2) {

    for ( int i = y0; i < y1; i++ ) {
        for ( int j = x0; j < x1; j++ ) {
            if ( ( i == in.height() - 1 ) || ( j == in.width() - 1 ) ) {
                for ( int c = 0; c < in.spectrum(); c++ ) {
                    out(j, i, 0, c) = 0;
                }
            }
            else {
                float lc = get_luminance(in(j, i, 0, 0), in(j, i, 0, 1), in(j, i, 0, 2));
                float lx = get_luminance(in(j + 1, i, 0, 0), in(j + 1, i, 0, 1), in(j + 1, i, 0, 2));
                float ly = get_luminance(in(j, i + 1, 0, 0), in(j, i + 1, 0, 1), in(j, i + 1, 0, 2)); 
                float gx = lc - lx;
                float gy = lc - ly;
                
                float grad = sqrt(gx * gx + gy * gy);
                for ( int c = 0; c < in.spectrum(); c++ ) {
                    out(j, i, 0, c) = sqrt(gx * gx + gy * gy) > thr1 
                        ? sqrt(gx * gx + gy * gy) > thr2 ? 255 : 127
                        : 0;
                }
            }
        }
    }
}

int main(int argc, char** argv) {

    processing_opts opts = parse_opts(argc, argv);

    std::cout << "input img : '" << opts.input_img << "'" << std::endl;
    std::cout << "output img : '" << opts.output_img << "'" << std::endl;
    std::cout << "xdivs = " << opts.xdivs << ", ydivs = " << opts.ydivs << std::endl;
    
    CImg<unsigned char> img(opts.input_img.c_str());
    CImg<unsigned char> img2(img.width(), img.height(), 1, img.spectrum());
    CImg<unsigned char> img3(img.width(), img.height(), 1, img.spectrum());
    img.display("Input image");
    
    if ( opts.parallel ) {
        std::cout << "Parallel computation" << std::endl;
        // create a thread pool
        thread_pool_term tp;
        // launch the tasks
        const int width_x = img.width() / opts.xdivs;
        const int height_y = img.height() / opts.ydivs;
        const int ntasks = opts.xdivs * opts.ydivs;

        std::atomic<int> tasks_completed(0);

        auto ini = std::chrono::steady_clock::now();

        for ( int i = 0; i < opts.xdivs; i++ ) {
            for ( int j = 0; j < opts.ydivs; j++ ) {
                size_t lx = i * width_x;
                size_t ly = j * height_y;

                size_t hx = i == opts.xdivs - 1 ? img.width() : lx + width_x;
                size_t hy = j == opts.ydivs - 1 ? img.height() : ly + height_y;
                std::cout << lx << ", " << hx << "; " << ly << ", " << hy << std::endl; 

                tp.submit([=, &img, &img2, &img3, &tp, &tasks_completed](){
                    // push gaussian kernel task
                    
                    apply_gaussian(img, img2, 10, lx, hx, ly, hy, 5);
                    tp.submit([=, &img2, &img3, &tp, &tasks_completed](){
                        // push task
                        // apply_gaussian(img2, img3, 10, lx, hx, ly, hy, 5);
                        apply_canny_edge(img2, img3, lx, hx, ly, hy, 10, 15);
                        int cur = tasks_completed.fetch_add(1);
                        if ( cur + 1 >= ntasks ) {
                            tp.finish();
                        } 
                    });
                });
            }
        }
        tp.wait();
        auto end = std::chrono::steady_clock::now();
        double ms = static_cast<double>(std::chrono::duration_cast<std::chrono::nanoseconds>(end - ini).count()) / 1000000.0;
        
        std::cout << "done. (" << ms << " ms)" << std::endl;
        // join_threads will call its destructor at the end of this scope
    }
    else {
        auto ini = std::chrono::steady_clock::now();
        std::cout << "Sequential computation" << std::endl;
        apply_gaussian(img, img2, 10, 0, img.width(), 0, img.height(), 5);
        std::cout << "applied gaussian filter." << std::endl;
        apply_canny_edge(img2, img3, 0, img.width(), 0, img.height(), 10, 15);
        auto end = std::chrono::steady_clock::now();
        double ms = static_cast<double>(std::chrono::duration_cast<std::chrono::nanoseconds>(end - ini).count()) / 1000000.0;
        
        std::cout << "done. (" << ms << " ms)" << std::endl;
    }
    
    img2.display("Output image (after gaussian)");
    img3.display("Output image (after canny edge detector)");
    
    return 0;
}