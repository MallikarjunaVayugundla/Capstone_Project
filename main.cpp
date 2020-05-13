#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    Compute3DPoints compute3dPoints;
    //set camera instrinsic calibration parameters if you use your own depth image
    //run method to compute the pointcloud; functionality hidden from user; pass your own depth image here if desired.
    compute3dPoints.Run("../data/sample_depth_image.png");
    //print pointcloud statistics shwoing access of class private members through proper abstract class interfaces
    std::cout << "The size of the pointcloud is: " << compute3dPoints.GetPointCloudSize() << std::endl;

    return 0;
}
