#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    std::cout << "Hello, World!" << std::endl;

    Compute3DPoints compute3dPoints;
    CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("../data/1341841278.842683.png");
    compute3dPoints.ComputePoints(depth_image);

    return 0;
}
