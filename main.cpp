#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    std::cout << "Hello, World!" << std::endl;

    Compute3DPoints compute3dPoints;
    CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("/home/arjun/workspace/Projects/MMX/Pictures/depth_images/morocco/20181202-160756_arjun1/depth810_1543763338.708030.png");
    compute3dPoints.ComputePoints(depth_image);

    return 0;
}
