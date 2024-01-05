#pragma once
#define cimg_use_jpeg
#include <vector>
#include <array>
#include "CImg.h"
using namespace cimg_library;
using namespace std;

template <unsigned int N = 256>
class Histogram
{
public:

    /**
     * Initialize a histogram display
    */
    Histogram(const float v[N])
        : _hist(N) {

        for (int i = 0; i < N; i++)
        { 
            _hist[i] = v[i];
        }
    }

    /**
     * Display histogram in an image canvas
    */
    void display(CImg<unsigned char>& canvas, const unsigned int width, const unsigned int height, const unsigned char colour[3]) const
    {
        // x axis values
        float values_x[N];
        for (int i = 0; i < N; i++)
        {
            values_x[i] = i;
        }

        int sum = width / 256;
        float x2 = values_x[0];
        
        // y axis values per slot
        for (int i = 0; i < N; ++i)
        {
            const float x1 = x2;
            const float y1 = height * (1 - _hist[i]);
            x2 = x2 + sum;
            const float y2 = height * (1 - _hist[i + 1]);

            canvas.draw_line(x1, y1, x2, y2, colour);
        }
    }

private:
    std::vector<float> _hist;
};
