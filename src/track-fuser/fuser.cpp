#include <fuser.hpp>

Fuser::Fuser() {}

Eigen::Vector2d Fuser::fuse(
    const std::vector<Eigen::Vector2d> &vectors, 
    const std::vector<Eigen::Matrix2d> &covariance_matrices
)
{   

    Eigen::Vector2d s1, s2;
    s1 = vectors[0];
    s2 = vectors[1];

    Eigen::Matrix2d p1, p2;
    p1 = covariance_matrices[0];
    p2 = covariance_matrices[1];

    Eigen::Matrix2d Pf = (p1.inverse() + p2.inverse()).inverse();
    Eigen::Vector2d xf = Pf * (p1.inverse() * s1 + p2.inverse() * s2);

    std::cout << "fused pos:\n" << xf << "\n";
    std::cout << "fused covariance:\n" << Pf << std::endl;
    return xf;
}