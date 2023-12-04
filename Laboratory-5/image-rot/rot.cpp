#define cimg_use_jpeg
#include <iostream>
#include <math.h>
#include <CImg.h>
using namespace cimg_library;
using namespace std;


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
    unsigned char* ptrImagen = img.data(); 

    float angle = 0;
    int x0 = alto/2;
    int y0 = ancho/2;

    unsigned char* imgOUT = new unsigned char[sizeof(unsigned char) * alto * ancho * 3];
    for(int i = 0; i < alto; i++){
        for(int j = 0; j < ancho; j++){
            
            int x2 = cos(angle) * (i - x0) - sin(angle)*(j-y0) + x0;
            int y2 = sin(angle) * (i - x0) + cos(angle)*(j-y0) + y0;
            if(x2 == 0){
                x2 = x2 + 1;
            } else if(x2 == alto){
                x2 = x2 - 1;
            }
            if(y2 == 0){
                y2 = y2 + 1;
            } else if(y2 == ancho){
                y2 = y2 - 1;
            }
            for(int k = 0; k < 3; k++){
                imgOUT[alto*ancho*k +  i * ancho + j ] = img[alto*ancho*k +  x2 * ancho + y2];
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