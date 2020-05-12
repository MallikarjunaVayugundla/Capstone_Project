#include <iostream>
#include "../include/compute_3d_points.h"


int main() {
    std::cout << "Hello, Phobos!" << std::endl;

    //class to compute costmap; chnage to costmap eventually!?
     Compute3DPoints compute3dPoints;
     CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("/home/arjun/workspace/Projects/MMX/Pictures/depth_images/morocco/20181202-160756_arjun1/depth810_1543763338.708030.png");
    //CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("/home/arjun/workspace/Projects/MMX/Pictures/depth_images/morocco/hcru2-behindHotelRockyAreaExperiments/20181210-142431_xalucaObstacles2/pt_stereo_sgm_depth_002730_1544448479010491132.png");
    //CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("/home/arjun/Downloads/rgbd_dataset_freiburg3_cabinet/depth/1341841278.842683.png");
    //CImg<uint32_t> depth_image = compute3dPoints.LoadDepthImage("/home/arjun/workspace/Projects/MMX/Development/Data/DepthImages/morocco/20181207-144921_kessKessValley_1/depth001_1544190562.718163.png");
    compute3dPoints.ComputePoints(depth_image);


    return 0;
}
