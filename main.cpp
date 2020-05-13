#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    std::cout << "Hello, World!" << std::endl;

    Compute3DPoints compute3dPoints;
    //run method to compute the pointcloud; functionality hidden from user
    compute3dPoints.Run("../data/1341841278.842683.png");
    //print pointcloud statistics shwoing access of class private members through proper abstract class interfaces


    return 0;
}
