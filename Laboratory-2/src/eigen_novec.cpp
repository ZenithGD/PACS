// This define directive must be on top of the include. 
// Otherwise, the source code associated to Eigen would be compiled with vectorization,
// then the flag would be defined **after** the source has been compiled, thus having no effect. 
#define EIGEN_DONT_VECTORIZE

#include <iostream>
#include <Eigen/Dense>
 
using Eigen::MatrixXd;
 
int main(int argc, char** argv)
{
    if ( argc < 2 ) {
        std::cout << "Need matrix size!" << std::endl;
        return 1;
    }

    ssize_t size = std::stoi(argv[1]);
    MatrixXd m1 = MatrixXd::Random(size, size);
    MatrixXd m2 = MatrixXd::Random(size, size);

    MatrixXd m3 = m1 * m2;
    std::cout << m3.size() << std::endl;
}