#include <iostream>
#include <stdio.h>
#include <fuser.hpp>


int main(){
    Fuser* fuser = new Fuser();



    Eigen::Vector2d s1(100, 50);
    Eigen::Vector2d s2 = Eigen::Vector2d(102, 49);

    Eigen::Matrix2d p1, p2;

    p1 << 4, 0,
        0, 9;
    p2 << 9, 0,
        0, 4;

    Eigen::Vector2d fused = fuser->fuse({s1, s2}, {p1, p2});

    delete fuser;
    return 0;
}