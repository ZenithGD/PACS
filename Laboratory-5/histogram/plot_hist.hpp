#pragma once

#include <vector>
#include <array>

template <unsigned int N = 256>
class Histogram
{
public:
    Histogram(const float v[N])
        : _hist(N) {
        for (int i = 0; i < N; i++)
        {
            _hist[i] = v[i];
        }
    }

    void display(CImg<unsigned char>& canvas, const unsigned int width, const unsigned int height, const unsigned char colour[3]) const
    {
        const int ancho_barra = 50;
        
        // Definir los valores en los ejes x e y
        float valores_x[N];

        // const float valores_y[N];
        for (int i = 0; i < N; i++)
        {
            valores_x[i] = i;
        }

        int sum = width / 256;
        float x2 = valores_x[0];
        // Dibujar la gráfica
        for (int i = 0; i < N; ++i)
        {
            const float x1 = x2;
            const float y1 = height * (1 - _hist[i]);
            x2 = x2 + sum;
            const float y2 = height * (1 - _hist[i + 1]);

            // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
            // cin.get();
            canvas.draw_line(x1, y1, x2, y2, colour);
        }
    }

private:
    std::vector<float> _hist;
};
