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
    float m_focal_length_x =525;  //focal length of the camera
    float m_focal_length_y =525;  //focal length of the camera
    float m_principal_center_x=319.5;
    float m_principal_center_y=239.5;
    int m_point_cloud_size=0;
    //2d depth_image;
    /*
     * pixel dimension: scalar?
     * pixel data range: 8 bit? //use a template to work for different sizes?
     * load from file format: png?
     */

    //function to compute 3d points from depth image
    void ComputePoints(cimg_library::CImg<uint32_t> &depth_image_reference);
    //function should load image to a 2d vector named depth_image
    CImg<uint32_t> LoadDepthImage(std::string depth_image_file);
public:
    Compute3DPoints();
    //interface main method to user
    void Run(std::string depth_image_file);
    //interface info method to user
    int GetPointCloudSize();
    //getters and setters for camera intrinsic calibration parameters
    float GetFocalLengthX(){return m_focal_length_x;};
    float GetFocalLengthY(){return m_focal_length_y;};
    float GetPrincipalCenterX(){return m_principal_center_x;};
    float GetPrincipalCenterY(){return m_principal_center_y;};
    void SetFocalLengthX(float focal_length_x){m_focal_length_x=focal_length_x;};
    void SetFocalLengthY(float focal_length_y){m_focal_length_y=focal_length_y;};
    void SetPrincipalCenterX(float principal_center_x){ m_principal_center_x=principal_center_x;};
    void SetPrincipalCenterY(float principal_center_y){ m_principal_center_y=principal_center_y;};
};


#endif //OBSTACLEDETECTION_COMPUTE_3D_POINTS_H
