#define cimg_use_jpeg
#include <iostream>
#include "CImg.h"
using namespace cimg_library;


int main(){
  CImg<unsigned char> img("image.jpg");  // Load image file "image.jpg" at object img

  std::cout << "Image width: " << img.width() << "Image height: " << img.height() << "Number of slices: " << img.depth() << "Number of channels: " << img.spectrum() << std::endl;  //dump some characteristics of the loaded image

//   int i = 100;
//   int j = 100;
//   std::cout << std::hex << (int) img(i, j, 0, 0) << std::endl;  //print pixel value for channel 0 (red) 
//   std::cout << std::hex << (int) img(i, j, 0, 1) << std::endl;  //print pixel value for channel 1 (green) 
//   std::cout << std::hex << (int) img(i, j, 0, 2) << std::endl;  //print pixel value for channel 2 (blue) 
    
    const int ancho = img.width();
    const int alto = img.height();
    const int x_inicio = 0;
    const int y_inicio = alto / 2;
    const int x_fin = ancho - 1;
    const int y_fin = alto / 2;

    unsigned char blue[] = { 0,0,255 };  
    img.draw_line(x_inicio, y_inicio, x_fin, y_fin, blue);

    CImgDisplay ventana(img, "Imagen");

    

    while (!ventana.is_closed()) {
        // Esperar a eventos en la ventana
        ventana.wait();

        // Verificar si se hizo clic en un píxel
        if (ventana.button()) {
            // Obtener las coordenadas del clic
            int x = ventana.mouse_x();
            int y = ventana.mouse_y();

            // Imprimir el valor de los canales RGB del píxel clickeado
            unsigned char r = img(x, y, 0);
            unsigned char g = img(x, y, 1);
            unsigned char b = img(x, y, 2);

            printf("Valor del píxel en la posición (%d, %d): R=%d, G=%d, B=%d\n", x, y, r, g, b);
        }
    }

  return 0;

}