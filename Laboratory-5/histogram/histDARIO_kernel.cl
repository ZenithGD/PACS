__kernel void hist(
  __global uchar *img,
  __global float* r,
  __global float* g,
  __global float* b,
  const int xDiv,
  const int yDiv,
  const unsigned int cols,
  const unsigned int fils){

    int i = get_global_id(0);
    int j = get_global_id(1);
    int k = get_global_id(2);

    for(int a = 0; (a < xDiv) && (i+a) < fils; a++){
        for(int b = 0; b < yDiv && (j+b) < cols; b++){
            uchar aux = img[fils*cols*k +  (i+a) * cols + (j+b) ];
            if(k == 0){
                r[aux] = r[aux] + 1;
            } else if(k == 1){
                g[aux] = g[aux] + 1;
            } else {
                b[aux] = b[aux] + 1;
            }
        }
    }
}