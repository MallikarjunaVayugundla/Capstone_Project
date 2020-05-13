#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    Compute3DPoints compute3dPoints;
    //run method to compute the pointcloud; functionality hidden from user
    compute3dPoints.Run("../data/sample_depth_image.png");
    //print pointcloud statistics shwoing access of class private members through proper abstract class interfaces
    std::cout << "The size of the pointcloud is: " << compute3dPoints.GetPointCloudSize() << std::endl;

    return 0;
}
