__kernel void rot(__global uchar *img, __global uchar *img_out,
                  const unsigned int cols, const unsigned int fils,
                  const float angle, const int x0, const int y0) {

  int i = get_global_id(0);
  int j = get_global_id(1);
  int k = get_global_id(2);

  float cos_angle = cos(angle);
  float sin_angle = sin(angle);

  int x2 = cos_angle * (i - x0) - sin_angle * (j - y0) + x0;
  int y2 = sin_angle * (i - x0) + cos_angle * (j - y0) + y0;

  if (x2 < 0) {
    x2 = 0;
  } else if (x2 > fils) {
    x2 = fils - 1;
  }
  if (y2 < 0) {
    y2 = 0;
  } else if (y2 > cols) {
    y2 = cols - 1;
  }

  img_out[fils * cols * k + i * cols + j] = img[fils * cols * k + x2 * cols + y2];
}