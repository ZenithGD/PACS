#include <iostream>
#include <Eigen/Dense>

//#define EIGEN_DONT_VECTORIZE
 
using Eigen::MatrixXd;
using namespace std;

MatrixXd multiplyNoEigen(MatrixXd m, MatrixXd n){
    int rows = m.rows();
    int cols = n.cols();
    MatrixXd res(rows, cols);

    for(int i = 0; i < rows; i++){
        MatrixXd fila = m.row(i);
        for(int j = 0; j < cols; j++){ // Recorro las columnas de la segunda matrix
            double sum = 0;
            for(int k = 0; k < rows; k++){
                sum += fila(k) * n(k, j);
            }
            res(i, j) = sum;
        }
    }

    

    return res;
}
 
int main()
{
  MatrixXd m(2,2);
  m << 1, 2, 3, 4;
  MatrixXd n(2,3);
  n << 5, 6, 7, 8, 9, 10;
  cout << multiplyNoEigen(m,n) << endl;
}