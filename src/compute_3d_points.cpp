//
// Created by arjun on 03.05.20.
//
#include "../include/compute_3d_points.h"

//pcl
#include <pcl-1.10/pcl/point_types.h>
#include <pcl-1.10/pcl/io/io.h>
#include <pcl-1.10/pcl/io/pcd_io.h>
#include <pcl-1.10/pcl/visualization/pcl_visualizer.h>
#include <pcl-1.10/pcl/visualization/cloud_viewer.h>

using namespace cimg_library;

Compute3DPoints::Compute3DPoints() {
    std::cout << "Compute 3dPoints constructor!" << std::endl;
}

void Compute3DPoints::ComputePoints(CImg<uint32_t> &depth_image_reference) {
    //image details
    //size
    std::cout<< "Image size is: " << depth_image_reference._width << " x " << depth_image_reference._height << std::endl;

    //compute pointcloud here
    // z //read depth from image
    // x //compute x
    // y // compute y
    int count=0;
    float depth=0;
    float xt=0;
    float yt=0;


    //pcd for pcl visualisation
    pcl::PointXYZRGB point_xyzrgb;
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr depthCloud(new pcl::PointCloud<pcl::PointXYZRGB>());


    /*
     * Compute 3d points from depth data:
     * https://stackoverflow.com/questions/31265245/extracting-3d-coordinates-given-2d-image-points-depth-map-and-camera-calibratio
     *  undistort rgb and depth images using the estimated distortion coefficients. Then, using the depth camera intrinsics, each pixel (x_d,y_d) of the depth camera can be projected to metric 3D space using the following formula:
        P3D.x = (x_d - cx_d) * depth(x_d,y_d) / fx_d
        P3D.y = (y_d - cy_d) * depth(x_d,y_d) / fy_d
        P3D.z = depth(x_d,y_d)
    with fx_d, fy_d, cx_d and cy_d the intrinsics of the depth camera.
     */
    cimg_forXY(depth_image_reference,x,y)
        {
            //depth=depth_image_reference.atXY(x,y)*5000;
            depth=depth_image_reference.atXY(x,y);

            //depth image conventions for +/-inf, nan: see http://www.ros.org/reps/rep-0117.html
            //"Detections that are too close to the sensor to quantify shall be represented by -Inf.
            // Erroneous detections shall be represented by quiet (non-signaling) NaNs.
            // Finally, out of range detections will be represented by +Inf."
            // filter missing points (denoted by NaNs) or points too close (probably invalid?? do we need this check??)
           /*
            if(std::isnan(depth) || (!std::isfinite(depth) && depth < 0) || (depth < 0.001)) // || (depth>1499.0))
            {
                std::cout<< "skipping a value for nana;" << std::endl;
                continue;
            }

            // filter camera dist
            if(depth < 0.1) { //0.01
                std::cout<< "skipping a valuefor less depth;" << std::endl;
                continue;
            }

            //no objects detected in range (either z > maximum distance or depth==+inf, which means free space up to max_dist_
            if(depth > 500000.0 || (!std::isfinite(depth) && depth > 0)) {
                std::cout<< "skipping a value for max depth;" << std::endl;
                continue;
            }
            */


           //point(0) = (float)( ((double)u - center_x) * point(2) / model_.fx() ); //x
            //point(1) = (float)( ((double)v - center_y) * point(2) / model_.fy() ); //y
            //xt=(x-319.5)*(depth/525);
            //yt=(y-239.5)*(depth/525);
            xt=(x-m_principal_center_x)*(depth/m_focal_length_x);
            yt=(y-m_principal_center_y)*(depth/m_focal_length_y);
            if(depth > 0)
            {
                std::cout << " x,y, d are: "  << x << ", " << y << ", " << depth << std::endl;

            }
            count++;

            //pcl
            point_xyzrgb.x=xt;
            point_xyzrgb.y=yt;
            point_xyzrgb.z=depth;
            point_xyzrgb.a=255;
            point_xyzrgb.r=0;
            point_xyzrgb.g=0;
            point_xyzrgb.b=255;
            depthCloud->points.push_back(point_xyzrgb);

        }
    std::cout << "Total values are: " << count << std::endl;


    //visualize computed pointcloud using some pointcloud library?
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr pointCloud(new pcl::PointCloud<pcl::PointXYZRGB>());
    pcl::io::loadPCDFile ("/home/arjun/workspace/Projects/MMX/Development/Data/PointClouds/submap_lru_0__full_pointcloud.pcd", *pointCloud);
    //view cloud
    //pcl::visualization::CloudViewer viewer("Cloud Viewer");
    pcl::visualization::PCLVisualizer viewer("Cloud Viewer");

    /*
    viewer.showCloud (pointCloud);
    while (!viewer.wasStopped ())
    {
    }
     */
    viewer.addPointCloud (depthCloud,"body");// note that before it was showCloud
    viewer.spin();

    //use Matplotlib for C++ to visualize when not using pcl??





    }

CImg<uint32_t> Compute3DPoints::LoadDepthImage(std::string depth_image_file) {
    /*
     * ***
     * Looks like loaded image has only aresolution of char and doesn't represent actual distance; So, use actual data and see!!
     * Or find a way to save and load actual depth data
     * Verify by saving actual depth from ros and planning node on what's used!!
     */

    //use CImg library to start with!?
    CImg<uint32_t> image(depth_image_file.c_str());
    //show loaded image
    CImgDisplay disp(image,"[#1] - Color Image, Gradient Norm and Blurring Gradient",0);
    while (!disp.is_closed() && !disp.is_keyQ() && !disp.is_keyESC()) {
        disp.resize(false).display(image).wait(20);}

    return image;
    }

void Compute3DPoints::Run() {

    //Read depth image
    //Compute 3d points
    //transform sensor to robot
    //transform robot to world?

}