#pragma once

#include <iostream>
#include <filesystem>
#include <Eigen/Dense>

class Fuser {
    public:
        Fuser();
            Eigen::Vector2d fuse(
                const std::vector<Eigen::Vector2d>& vectors, 
                const std::vector<Eigen::Matrix2d> &covariance_matrices);
};
