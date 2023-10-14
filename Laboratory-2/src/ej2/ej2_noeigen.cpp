#include <Eigen/Dense>
#include <iostream>
#include <iomanip>
#include <vector>
#include <ctime>
#include <iomanip>
#include <sys/time.h>

using Eigen::MatrixXd;
using namespace std;

MatrixXd multiplyNoEigen(MatrixXd m, MatrixXd n){


    int rows = m.rows();
    int cols = n.cols();
    MatrixXd res(rows, cols);


    for(int i = 0; i < rows; i++){
        MatrixXd fila = m.row(i);
        for(int j = 0; j < cols; j++){
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
    if (argc < 2) {
        std::cout << "Arguments : N " << std::endl;
        exit(1);
    }
    
    int N = std::stoi(argv[1]);
    cout << "N = "<< N << endl;
    
    struct timeval initIni;
    gettimeofday(&initIni, NULL);

    MatrixXd m1 = MatrixXd::Random(N,N);
    MatrixXd m2 = MatrixXd::Random(N,N);

    struct timeval initFin;
    gettimeofday(&initFin, NULL);
    
    double initTimeIni = initIni.tv_sec+ initIni.tv_usec * 1e-6;
    double initTimeFin = initFin.tv_sec+ initFin.tv_usec * 1e-6;
    double initTime = initTimeFin - initTimeIni;
    std::cout << "Initialization time:" << std::fixed << initTime << "s" << std::endl;

    struct timeval noEigenIni;
    struct timeval noEigenFin;
    gettimeofday(&noEigenIni, NULL);

    MatrixXd m3 = multiplyNoEigen(m1, m2);

    gettimeofday(&noEigenFin, NULL);

    double noEigenTimeIni = noEigenIni.tv_sec + noEigenIni.tv_usec * 1e-6;
    double noEigenTimeFin = noEigenFin.tv_sec + noEigenFin.tv_usec * 1e-6 ;
    double noEigenTime = noEigenTimeFin -  noEigenTimeIni;
    std::cout << "No Eigen time:" <<std::fixed << noEigenTimeFin -  noEigenTimeIni << "s" << std::endl;
    
    std::cout << "Fraction of initialization time: " << initTime / (noEigenTime + initTime) << std::endl;
    
}