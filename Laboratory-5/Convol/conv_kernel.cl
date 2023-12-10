__kernel void conv(
  __global uchar *img,
  __global uchar *imgOUT,
  __global float *ker,
  const int TS,
  const int stride,
  const unsigned int ancho,
  const unsigned int alto){
    //Calcular la convolucion del pixel i j

    int i = get_global_id(0);
    int j = get_global_id(1);
    int k = get_global_id(2);

    i = i*stride;
    j = j*stride;

    int sum = 0;
    int ki = 0;
    for(int ii = i - TS/2; ii <= i + TS/2; ii++){
        if(ii < 0){
            continue;
        }
        int kj = 0;
        for(int jj = j - TS/2; jj <= j + TS/2; jj++){
            // std::cout << "jj: " <<  jj <<   ", j + TS/2: " <<  (j + TS/2) << std::endl;
            if(jj < 0){
                continue;
            }
            sum += img[alto*ancho*k +  ii * ancho + jj ] * ker[ki * TS + kj];
            kj++;
        }
        ki++;
    }
    int outIDx = i/stride;
    int outIDy = j/stride;
    imgOUT[alto*ancho*k +  outIDx * ancho + outIDy] = sum;
    
}