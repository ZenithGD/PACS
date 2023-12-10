#define cimg_use_jpeg
#include <iostream>
#include <math.h>
#include "CImg.h"
using namespace cimg_library;
using namespace std;


int main(){
  CImg<unsigned char> image("../pomni.jpg");  // Load image file "image.jpg" at object img

//   std::cout << "Image width: " << img.width() << "Image height: " << img.height() << "Number of slices: " << img.depth() << "Number of channels: " << img.spectrum() << std::endl;  //dump some characteristics of the loaded image

const int kernel_size = 3;
    int kernel[kernel_size][kernel_size] = {{-1, 0, 1},
                                            {-2, 0, 2},
                                            {-1, 0, 1}};

    // Crear una nueva imagen para almacenar el resultado de la convolución
    CImg<unsigned char> result(image.width(), image.height(), 1, image.spectrum());

    // Aplicar la convolución manualmente
    for (int y = 1; y < image.height() - 1; ++y) {
        for (int x = 1; x < image.width() - 1; ++x) {
            for (int c = 0; c < image.spectrum(); ++c) {
                int sum = 0;
                for (int i = -1; i <= 1; ++i) {
                    for (int j = -1; j <= 1; ++j) {
                        sum += image(x + i, y + j, 0, c) * kernel[i + 1][j + 1];
                    }
                }
                result(x, y, 0, c) = (unsigned char)sum;
            }
        }
    }

    // Visualizar la imagen original y la imagen después de la convolución
    CImgDisplay original_disp(image, "Imagen original");
    CImgDisplay result_disp(result, "Imagen después de la convolución");

    // Esperar hasta que se cierre la ventana
    while (!original_disp.is_closed() && !result_disp.is_closed()) {
        original_disp.wait();
    }

  return 0;

}