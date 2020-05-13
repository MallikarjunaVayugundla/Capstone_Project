#include <iostream>
#include "include/compute_3d_points.h"

int main() {
    std::cout << "Hello, World!" << std::endl;

    Compute3DPoints compute3dPoints;
    compute3dPoints.Run("../data/1341841278.842683.png");


    return 0;
}
