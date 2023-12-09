#define cimg_use_jpeg
#include <iostream>
#include "CImg.h"
using namespace cimg_library;
using namespace std;

#include "plot_hist.hpp"

int main(int argc, char** argv)
{
    if ( argc < 2 ) {
        std::cout << "Usage: hist_display <image_path>" << std::endl;
    }
    CImg<unsigned char> img(argv[1]); // Load image file "image.jpg" at object img

    std::cout << "Image width: " << img.width() << "Image height: " << img.height() << "Number of slices: " << img.depth() << "Number of channels: " << img.spectrum() << std::endl; // dump some characteristics of the loaded image

    float r[256] = {0.0};
    float g[256] = {0.0};
    float b[256] = {0.0};
    //   int i = 100;
    //   int j = 100;
    //   std::cout << std::hex << (int) img(i, j, 0, 0) << std::endl;  //print pixel value for channel 0 (red)
    //   std::cout << std::hex << (int) img(i, j, 0, 1) << std::endl;  //print pixel value for channel 1 (green)
    //   std::cout << std::hex << (int) img(i, j, 0, 2) << std::endl;  //print pixel value for channel 2 (blue)

    const int ancho = img.width();
    const int alto = img.height();
    

    for(int i = 0; i < alto; i++){
        for(int j = 0; j < alto; j++){
            unsigned char r_ = img(i, j, 0);
            unsigned char g_ = img(i, j, 1);
            unsigned char b_ = img(i, j, 2);
            r[int(r_)]++;
            g[int(g_)]++;
            b[int(b_)]++;
        }   
    }


    float rmax = 0;
    float gmax = 0;
    float bmax = 0;
    for(int i = 0; i < 256; i++){
        if(r[i] > rmax){
            rmax = r[i];
        } 
        if(g[i] > gmax){
            gmax = g[i];
        }
        if(b[i] > bmax){
            bmax = b[i];
        }
    }
    for(int i = 0; i < 256; i++){
        r[i] /= rmax;
        g[i] /= gmax;
        b[i] /= bmax;
    }

    std::cout << "display" << std::endl;

    Histogram hist_r(r), hist_g(g), hist_b(b);

    unsigned int width = 800, height = 600;
    CImg<unsigned char> canvas(width, height, 1, 3, 255);
    
    unsigned char red[] = {255, 0, 0}; 
    hist_r.display(canvas, width, height, red);

    unsigned char green[] = {0, 255, 0}; 
    hist_g.display(canvas, width, height, green);

    unsigned char blue[] = {0, 0, 255}; 
    hist_b.display(canvas, width, height, blue);

    // Mostrar la gráfica en una ventana
    CImgDisplay ventana(canvas, "Gráfica de Barras");

    while (!ventana.is_closed())
    {
        // Esperar a eventos en la ventana
        ventana.wait();

        // // Verificar si se hizo clic en un píxel
        // if (ventana.button())
        // {
        //     // Obtener las coordenadas del clic
        //     int x = ventana.mouse_x();
        //     int y = ventana.mouse_y();

        //     // Imprimir el valor de los canales RGB del píxel clickeado
        //     unsigned char r = img(x, y, 0);
        //     unsigned char g = img(x, y, 1);
        //     unsigned char b = img(x, y, 2);

        //     printf("Valor del píxel en la posición (%d, %d): R=%d, G=%d, B=%d\n", x, y, r, g, b);
        // }
    }

    return 0;
}