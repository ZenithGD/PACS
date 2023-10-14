#include <Eigen/Dense>
#include <iostream>
#include <iomanip>
#include <vector>
#include <ctime>
#include <iomanip>
#include <sys/time.h>

using Eigen::MatrixXd;
using namespace std;

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

    struct timeval eigenIni;
    struct timeval eigenFin;
    gettimeofday(&eigenIni, NULL);

    MatrixXd m3 = m1 * m2;
    
    gettimeofday(&eigenFin, NULL);
    
    double eigenTimeIni = eigenIni.tv_sec + eigenIni.tv_usec * 1e-6;
    double eigenTimeFin = eigenFin.tv_sec+ eigenFin.tv_usec * 1e-6;
    double eigenTime = eigenTimeFin -  eigenTimeIni;
    std::cout << "Eigen time:" <<std::fixed << eigenTime << "s" << std::endl;

    std::cout << "Fraction of initialization time: " << initTime / (eigenTime + initTime) << std::endl;
}