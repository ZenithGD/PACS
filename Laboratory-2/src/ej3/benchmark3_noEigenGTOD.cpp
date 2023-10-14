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

float runTestEigen(unsigned int size) {
    

    MatrixXd m1 = MatrixXd::Random(size,size);
    MatrixXd m2 = MatrixXd::Random(size,size);

    clock_t time;
    time = clock();

    MatrixXd m3 = m1 * m2;
    
    time = clock() - time;

    float time_val = ((float)time)/CLOCKS_PER_SEC;

    return time_val;

}

float runTestNoEigen(unsigned int size) {
    

    MatrixXd m1 = MatrixXd::Random(size,size);
    MatrixXd m2 = MatrixXd::Random(size,size);

    clock_t time;
    time = clock();

    MatrixXd m3 = multiplyNoEigen(m1, m2);
    
    time = clock() - time;

    float time_val = ((float)time)/CLOCKS_PER_SEC;

    return time_val;

}


int main(int argc, char** argv) {
if (argc < 2) {
        std::cout << "Arguments : N " << std::endl;
        exit(1);
    }
    
    int N = std::stoi(argv[1]);
    cout << "N = "<< N << endl;


    MatrixXd m1 = MatrixXd::Random(N,N);
    MatrixXd m2 = MatrixXd::Random(N,N);


    struct timeval eigenIni;
    struct timeval eigenFin;
    gettimeofday(&eigenIni, NULL);

    MatrixXd m3 = multiplyNoEigen(m1, m2);
    
    gettimeofday(&eigenFin, NULL);
    
    double eigenTimeIni = eigenIni.tv_sec + eigenIni.tv_usec * 1e-6;
    double eigenTimeFin = eigenFin.tv_sec+ eigenFin.tv_usec * 1e-6;

    std::cout << "Tiempo No eigen:" <<std::fixed << eigenTimeFin -  eigenTimeIni << "s" << std::endl;
}