//
// Created by arjun on 03.05.20.
//

#ifndef OBSTACLEDETECTION_COMPUTE_3D_POINTS_H
#define OBSTACLEDETECTION_COMPUTE_3D_POINTS_H

#include <iostream>
#include "string"

// Include CImg library header.
#include "/home/arjun/workspace/Projects/MMX/Development/ImageProcessing/CImg_latest/CImg-2.9.1_pre042420/CImg.h"
using namespace cimg_library;

/*
 * Note:
 * function names have lower camel case
 * variable names are in lower snake case
*/

class Compute3DPoints
{

private:
    //define camera parameters needed for computing 3d points from depth image
    //intrinsics K matrix [fx, s, cx, 0, fy, cy, 0, 0, 1]
    // from  K: [864.388, -0.002431, 519.732, 0.0, 863.858, 385.719, 0.0, 0.0, 1.0]
    //taken from for: hcru2_camera_calibration_pt_stereo.txt -> calibration/20181122_hcru2_camera_calibration_pt_stereo.txt
    const float m_focal_length_x =864.388;  //focal length of the camera
    const float m_focal_length_y =863.858;  //focal length of the camera
    const float m_base_line=0.09058240333891236;      //base line of the stereo camera setup
    const float m_principal_center_x=519.732;
    const float m_principal_center_y=385.719;
    //2d depth_image;
    /*
     * pixel dimension: scalar?
     * pixel data range: 8 bit? //use a template to work for different sizes?
     * load from file format: png?
     */
public:
    //function to compute 3d points from depth image
    Compute3DPoints();
    void ComputePoints(cimg_library::CImg<uint32_t> &depth_image_pointer);
    //function should load image to a 2d vector named depth_image
    CImg<uint32_t> LoadDepthImage(std::string depth_image_file);
    void DetectObstacles();
    void Run();
};


#endif //OBSTACLEDETECTION_COMPUTE_3D_POINTS_H
