#include <Eigen/Dense>
#include <iostream>
#include <vector>
#include <ctime>
#include <iomanip>
#include <sys/time.h>

using Eigen::MatrixXd;
using namespace std;

MatrixXd multiplyNoEigen(MatrixXd m, MatrixXd n, float& tnocalc, float& tcalc){
    struct timeval timeNoCalcIni;
    struct timeval timeNoCalcFin;
    struct timeval timeCalcIni;
    struct timeval timeCalcFin;

    gettimeofday(&timeNoCalcIni, NULL);

    int rows = m.rows();
    int cols = n.cols();
    MatrixXd res(rows, cols);

    gettimeofday(&timeNoCalcFin, NULL);

    gettimeofday(&timeCalcIni, NULL);

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
    gettimeofday(&timeCalcFin, NULL);

    float nocalc_used_ini = timeNoCalcIni.tv_sec + timeNoCalcIni.tv_usec * 1e-6;
    float nocalc_used_fin = timeNoCalcFin.tv_sec + timeNoCalcFin.tv_usec * 1e-6;

    float calc_used_ini = timeCalcIni.tv_sec + timeCalcIni.tv_usec * 1e-6;
    float calc_used_fin = timeCalcFin.tv_sec + timeCalcFin.tv_usec * 1e-6;
    tnocalc = nocalc_used_fin - nocalc_used_ini;
    tcalc = calc_used_fin - calc_used_ini;

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

    if (argc < 4) {
        std::cout << "Arguments : size_min, size_max, N, M " << std::endl;
        exit(1);
    }

    std::vector<float> eigen_times;
    std::vector<float> noeigen_times;
    int size_min = std::stoi(argv[1]);
    int size_max = std::stoi(argv[2]);
    int N = std::stoi(argv[3]);
    int M = std::stoi(argv[4]);
    

    for ( int r = 0; r < N; r++) {
        float t = (float)r / (float)(N - 1);
        unsigned int size = size_min * (1 - t) + size_max * t;
        float total_eigen = 0.0;
        float total_noeigen = 0.0;
        for(int i = 0; i < M; i++){
            total_eigen += runTestEigen(size);
            total_noeigen += runTestNoEigen(size);
        } 

        eigen_times.push_back(total_eigen / (float)M);
        noeigen_times.push_back(total_noeigen / (float)M);
    }
    
    cout << "eigen;noeigen" << endl;
    for(int i = 0; i < N; i++){
        cout << eigen_times[i] << ";" << noeigen_times[i] << endl;
    }
}