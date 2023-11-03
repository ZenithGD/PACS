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
    std::cout << argc << std::endl;
    if (argc < 2) {
        std::cout << "Arguments : N " << std::endl;
        exit(1);
    }
    struct timeval inicializarIni;
    struct timeval inicializarFin;

    struct timeval eigenIni;
    struct timeval eigenFin;

    struct timeval noEigenIni;
    struct timeval noEigenFin;


    
    int N = std::stoi(argv[1]);
    gettimeofday(&inicializarIni, NULL);

    MatrixXd m1 = MatrixXd::Random(N,N);
    MatrixXd m2 = MatrixXd::Random(N,N);

    gettimeofday(&inicializarFin, NULL);

    double inicializarTimeIni = inicializarIni.tv_sec  + inicializarIni.tv_usec * 1e-6;
    double inicializarTimeFin = inicializarFin.tv_sec  + inicializarFin.tv_usec * 1e-6;

    std::cout << "Tiempo inicializar:" << std::fixed << inicializarTimeFin - inicializarTimeIni <<  std::endl;

    gettimeofday(&eigenIni, NULL);

    MatrixXd m3 = m1 * m2;

    gettimeofday(&eigenFin, NULL);

    // gettimeofday(&noEigenIni, NULL);

    // m3 = multiplyNoEigen(m1, m2);

    // gettimeofday(&noEigenFin, NULL);



 
    double eigenTimeIni = eigenIni.tv_sec + eigenIni.tv_usec * 1e-6;
    double eigenTimeFin = eigenFin.tv_sec + eigenFin.tv_usec  * 1e-6;

    // float noEigenTimeIni = noEigenIni.tv_sec * 1e6 + noEigenIni.tv_usec;
    // float noEgienTimeFin = noEigenFin.tv_sec * 1e6 + noEigenFin.tv_usec;

    
    std::cout << "Tiempo eigen:" <<std::fixed << eigenTimeFin - eigenTimeIni    <<  std::endl;
    // std::cout << "Tiempo noEigen:" <<std::fixed << noEigenTimeIni -  noEgienTimeFin <<  std::endl;
    
}