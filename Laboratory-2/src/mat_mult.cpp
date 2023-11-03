#include <iostream>
#include <Eigen/Dense>

using Eigen::MatrixXd;
using namespace std;

MatrixXd multiplyNoEigen(MatrixXd m, MatrixXd n){
    int rows = m.rows();
    int cols = n.cols();
    MatrixXd res(rows, cols);

    for(int i = 0; i < rows; i++){
        MatrixXd fila = m.row(i);
        for (int j = 0; j < cols; j++) {
            double sum = 0;
            for(int k = 0; k < rows; k++){
                sum += fila(k) * n(k, j);
            }
            res(i, j) = sum;
        }
    }
    return res;
}
 
int main(int argc, char** argv)
{
    if ( argc < 2 ) {
        std::cout << "Need matrix size!" << std::endl;
        return 1;
    }

    ssize_t size = std::stoi(argv[1]);
    MatrixXd m1 = MatrixXd::Random(size, size);
    MatrixXd m2 = MatrixXd::Random(size, size);

    MatrixXd m3 = multiplyNoEigen(m1, m2);
    std::cout << m3.size() << std::endl;
}