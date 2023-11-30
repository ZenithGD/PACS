__kernel void flip(
  __global uchar *img,
  __global float* r,
  __global float* g,
  __global float* b,
  const unsigned int cols,
  const unsigned int fils){

    int i = get_global_id(0);
    int j = get_global_id(1);
    int k = get_global_id(2);

    uchar aux = img[fils*cols*k +  i * cols + j ];
    
    if(k == 0){
        r[aux] = r[aux] + 1;
    } else if(k == 1){
        g[aux] = g[aux] + 1;
    } else {
        b[aux] = b[aux] + 1;
    }
    barrier(CLK_GLOBAL_MEM_FENCE);
}