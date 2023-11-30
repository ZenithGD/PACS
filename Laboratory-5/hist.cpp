#define cimg_use_jpeg
#include <iostream>
#include "CImg.h"
using namespace cimg_library;
using namespace std;

int main()
{
    CImg<unsigned char> img("pomni.jpg"); // Load image file "image.jpg" at object img

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
    for(int i = 0; i < 10; i++){
        cout << "R[" << i << "]: " << r[i] << endl;
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


    const int ancho_ventana = 800;
    const int alto_ventana = 500;
    const int ancho_barra = 50;

    // Crear una imagen para las gráficas
    CImg<unsigned char> grafica(ancho_ventana, alto_ventana, 1, 3, 255);
    unsigned char blue[] = { 0,0,255 };  
    unsigned char red[] = { 255,0,0 };  
    unsigned char green[] = { 0,255,0 };  
    // Definir los valores en los ejes x e y
    const int num_puntos = 256;
    float valores_x[num_puntos];

    // const float valores_y[num_puntos];
    for(int i = 0; i < num_puntos; i++){
        valores_x[i] = i;
    }
    int sum = ancho_ventana/256;
    float x2 = valores_x[0];
    // Dibujar la gráfica
    for (int i = 0; i < num_puntos; ++i) {
        const float x1 = x2;
        const float y1 = alto_ventana * (1 - r[i]);
        x2 = x2 + sum;
        const float y2 = alto_ventana * (1 - r[i + 1]);

        // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
        // cin.get();
        grafica.draw_line(x1, y1, x2, y2, red);
    }
    x2 = 0;
    for (int i = 0; i < num_puntos; ++i) {
        const float x1 = x2;
        const float y1 = alto_ventana * (1 - g[i]);
        x2 = x2 + sum;
        const float y2 = alto_ventana * (1 - g[i + 1]);

        // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
        // cin.get();
        grafica.draw_line(x1, y1, x2, y2, green);
    }
    x2 = 0;
    for (int i = 0; i < num_puntos; ++i) {
        const float x1 = x2;
        const float y1 = alto_ventana * (1 - b[i]);
        x2 = x2 + sum;
        const float y2 = alto_ventana * (1 - b[i + 1]);

        // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
        // cin.get();
        grafica.draw_line(x1, y1, x2, y2, blue);
    }

    // Mostrar la imagen con la gráfica
    CImgDisplay ventanaGR(img, "Gráfica con CImg");
    // Mostrar la gráfica en una ventana
    CImgDisplay ventana(grafica, "Gráfica de Barras");

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