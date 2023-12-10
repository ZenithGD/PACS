__kernel void flip(__global uchar *img, __global uchar *img_out,
                   const unsigned int cols, const unsigned int fils) {

  int i = get_global_id(0);
  int j = get_global_id(1);
  int k = get_global_id(2);

  img_out[fils * cols * k + i * cols + j] = img[fils * cols * k + i * cols + cols - j - 1];
  img_out[fils * cols * k + i * cols + cols - j - 1] = img[fils * cols * k + i * cols + j];
}