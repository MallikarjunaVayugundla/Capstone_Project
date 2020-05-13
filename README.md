##### Project Description:
Info: The README describes the project you have built.      
 The README also indicates the file and class structure,
  along with the expected behavior or output of the program.
  
**Name: Point Cloud Computation from depth map**

**Description: This project converts a depth image/map into a 3d pointcloud and displays. 
It reads the depth map from a image file and does the conversion to a
 3d point cloud with respect to the camera frame.
 An example image that is loaded by default is in the 'data' folder.**
 
 

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
* Run/Launch executable: ./CapstoneProject 

###### Rubric Points addressed:
Info: The README indicates which rubric points are addressed. 
The README also indicates where in the code (i.e. files and line numbers)
 that the rubric points are addressed.
 
 Loops, Functions, I/O:
 1. The project demonstrates an understanding of C++ functions and control structures.
    A variety of control structures are used in the project. The project code is clearly organized into functions.<br />
  
    **The project uses clearly defined functions to perform operations like reading of the depth map image and computation of 3d point cloud.
   It can be seen from the functions declared in the 'compute_3d_points.h' file in the include folder.**
    
 2. The project reads data from a file and process the data, or the program writes data to a file.
    The project reads data from an external file or writes data to a file as part of the necessary operation of the program.<br />
    
    **The project reads depth map from a png image file and computes 3d coordinates. The reading from the file is done using CImg library.
    The main interface function 'Run' of the 'Compute3DPoints' class takes the file name as the input argument.**

3. The project accepts user input and processes the input.
   The project accepts input from a user as part of the necessary operation of the program.<br />
   
   **The project asks for user input to decide on the display color of the point cloud.
   This is done within the function 'ComputePoints' of the 'Compute3DPoints' class.**
 
   Object Oriented Programming: 
4. The project uses Object Oriented Programming techniques.     
   The project code is organized into classes with class attributes to hold the data, and class methods to perform tasks.<br />
   
   **The project uses 'Compute3DPoints' class to organise the parameters, attributes and functions needed to compute a 3d point cloud from a depth map image.
   This can be extended with further classes like 'CostMap' class that uses the 3d  pointclouds computed to construct a 2d cost map that can be used for path planning.**
      
5. Classes use appropriate access specifiers for class members.
   All class data members are explicitly specified as public, protected, or private.<br />
  
    **As can be seen from the 'Compute3DPoints' class definition in the 'compute_3d_points.h' file, all the data members and member functions of the class are placed under suitable access specifiers.
   Only suitable functions are made public and also suitable interfaces are provided to set necessary private member variables.**
  
6. Classes abstract implementation details from their interfaces.  	   
   All class member functions document their effects, either through function names, comments, or formal documentation. Member functions do not change program state in undocumented way.<br />
   
   **All the class member functions abstract the functionality from the user and only provide necessary interfaces.
    Also, the meaningful function names along with the comments provide the user with necessary documentation on their functionality and usage.
    This can be observed from the functions provided in the 'Compute3DPoints' class.**  