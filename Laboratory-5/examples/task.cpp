#include <iostream>
#include "CImg.h"
using namespace cimg_library;


int main(){
  CImg<unsigned char> img("pomni.jpg");  // Load image file "image.jpg" at object img

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
    unsigned char* ptrImagen = img.data(); // YA tenemos el puntero a la imagen
    unsigned char* imgOUT = new unsigned char[sizeof(unsigned char) * alto * ancho * 3];
    for(int i = 0; i < 9; i++){
      printf("COLOR:%d\n", ptrImagen[i]);
    } 
    int fils = alto;
    int cols = ancho;
    unsigned char blue[] = { 0,0,255 };  
    img.draw_line(x_inicio, y_inicio, x_fin, y_fin, blue);
    
    

    for(int i = 0; i < alto; i++){
      for(int j = 0; j < ancho/2; j++){
        for(int k=0; k < 3; k++){
          imgOUT[fils*cols*k +  i * cols + j ] = ptrImagen[fils*cols*k +  i * cols + cols -j -1 ];
          imgOUT[fils*cols*k +  i * cols + cols -j -1  ] = ptrImagen[fils*cols*k +  i * cols + j ];
        }
      }
    }
    for (int i = 0; i < ancho * alto*3; ++i) {
        ptrImagen[i] = static_cast<unsigned char>(imgOUT[i]);
    }


    CImgDisplay ventana(img, "Imagen");
    

    while (!ventana.is_closed()) {
        // Esperar a eventos en la ventana
        ventana.wait();
    }

  return 0;

}