#define cimg_use_jpeg
#include <iostream>
#include <math.h>
#include "CImg.h"
using namespace cimg_library;
using namespace std;


int main(){
  CImg<unsigned char> img("../pomni.jpg");  // Load image file "image.jpg" at object img

  std::cout << "Image width: " << img.width() << "Image height: " << img.height() << "Number of slices: " << img.depth() << "Number of channels: " << img.spectrum() << std::endl;  //dump some characteristics of the loaded image

//   int i = 100;
//   int j = 100;
//   std::cout << std::hex << (int) img(i, j, 0, 0) << std::endl;  //print pixel value for channel 0 (red) 
//   std::cout << std::hex << (int) img(i, j, 0, 1) << std::endl;  //print pixel value for channel 1 (green) 
//   std::cout << std::hex << (int) img(i, j, 0, 2) << std::endl;  //print pixel value for channel 2 (blue) 
    
    const int ancho = img.width();
    const int alto = img.height();
    
    // int alto = 9;
    // int ancho = 9;
    int TS = 9;
    int stride = 1;

    float kernel[TS][TS];
    for(int i = 0; i < TS; i++){
        for(int j = 0; j < TS; j++){
            kernel[i][j] = 1.0;
        }
    }
    float norm = 0;
    for(int i = 0; i < TS; i++){
        for(int j = 0; j < TS; j++){
            norm+= kernel[i][j];
        }
    }
    for(int i = 0; i < TS; i++){
        for(int j = 0; j < TS; j++){
            kernel[i][j] /= norm;
        }
    }


    

    unsigned char* ptrImagen = img.data(); 
    int sizeOUTx = float(alto)/float(stride) + 0.5;
    int sizeOUTy = float(ancho)/float(stride) + 0.5;

    std::cout << "sizeOUTx: " <<  sizeOUTx << std::endl;

    unsigned char* imgOUT = new unsigned char[sizeof(unsigned char) * sizeOUTx * sizeOUTy * 3];
    for(int k = 0; k < 3; k++){
        for(int i = 0; i < alto; i += stride){
            for(int j = 0; j < ancho; j += stride){
                int sum = 0;
                int ki = 0;
                for(int ii = i - TS/2; ii <= i + TS/2; ii++){
                    // std::cout << "ii: " <<  ii <<   ", i + TS/2: " <<  (i + TS/2) << std::endl;
                    if(ii < 0){
                        continue;
                    }
                    int kj = 0;
                    for(int jj = j - TS/2; jj <= j + TS/2; jj++){
                        // std::cout << "jj: " <<  jj <<   ", j + TS/2: " <<  (j + TS/2) << std::endl;
                        if(jj < 0){
                            continue;
                        }
                        // std::cout << "ki: " <<  ki <<   ", kj: " <<  kj << std::endl;
                        // std::cout << "ii: " <<  ii <<   ", jj: " <<  jj << std::endl;
                        // std::cout << "sum: " <<  sum <<  std::endl;
                        // std::cout << "valorimg: " <<  int(img[alto*ancho*k +  ii * ancho + jj ]) <<  std::endl;
                        // cin.get();
                        sum += img[alto*ancho*k +  ii * ancho + jj ] * kernel[ki][kj];
                        kj++;
                    }
                    ki++;
                }
                int outIDx = i/stride;
                int outIDy = j/stride;
                // std::cout << "outIDx: " <<  outIDx <<   ", outIDy: " <<  outIDy << std::endl;
                // std::cout << "sum: " <<  sum  <<   ", sum%256: " <<  sum%256 <<   std::endl;
                // cin.get();
                imgOUT[alto*ancho*k +  outIDx * ancho + outIDy] = sum;
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