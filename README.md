##### Project Description:
This project converts a depth image/map into a 3d pointcloud and displays. 
It reads the depth map from a image file and does the conversion to a
 3d point cloud with respect to the camera frame.

###### Dependencies:
* CImg 
    * Version: 2.9.1
    * Included in include folder; Header only; No need to install;
* PCL
    * Version: 1.8
* Eigen
    * Version: 3.3.7

###### Build Instructions:
Info: The README is included with the project and has instructions for building/running the project.
If any additional libraries are needed to run the project, these are indicated with cross-platform installation instructions.

* Install dependencies mentioned above under Dependencies.
* This project uses CMake to build 
    * Version Min. : 3.16
    * Steps:
        * mkdir build
        * cd build
        * cmake ..
        * make

###### Rubric Points addressed:
Info: The README indicates which rubric points are addressed. 
The README also indicates where in the code (i.e. files and line numbers)
 that the rubric points are addressed.