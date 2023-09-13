#include <Eigen/Dense>
#include <iostream>
#include <vector>

#define EIGEN_DONT_VECTORIZE

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

int main(int argc, char** argv) {

    if (argc < 3) {
        std::cout << "Arguments : <size> [n|e|s]" << std::endl;
        std::cout << "n : normal, e : Eigen, s : sequential" << std::endl;
    }

    int size = std::stoi(argv[1]);
    std::string kind(argv[2]);

    MatrixXd m1 = MatrixXd::Random(size,size);
    MatrixXd m2 = MatrixXd::Random(size,size);

    if ( kind == "n" ) {
        multiplyNoEigen(m1, m2);
    }
    else if ( kind == "e" ) {
        m1 * m2;
    } 
    else if ( kind == "s" ) {
        // #ifndef EIGEN_DONT_VECTORIZE
        //     #define EIGEN_DONT_VECTORIZE
        //     #define EIGEN_DISABLE_UNALIGNED_ARRAY_ASSERT
        // #endif
        
        //Eigen::MatrixXd C = m1 * m2;
        //C.noalias() = m1 * m2;

        m1 * m2;
    }
}