cmake_minimum_required(VERSION 3.16)
project(CapstoneProject)

set(CMAKE_CXX_STANDARD 14)

find_package(PCL 1.8 REQUIRED)

if(PCL_FOUND)
    link_directories(${PCL_LIBRARY_DIRS})
    # [C/C++]>[General]>[Additional Include Directories]
    include_directories( ${PCL_INCLUDE_DIRS} )
    # [C/C++]>[Preprocessor]>[Preprocessor Definitions]
    add_definitions( ${PCL_DEFINITIONS} )
    # [Linker]>[General]>[Additional Library Directories]
    link_directories( ${PCL_LIBRARY_DIRS} )
    SET( SYSTEM_LIBS ${SYSTEM_LIBS} ${PCL_LIBRARIES} )
endif()


FIND_PACKAGE(X11) #CImg related
FIND_PACKAGE(Threads REQUIRED) #CImg related
#CImg related
if(X11_FOUND)
    link_directories(${X11_LIB_DIRS})
    include_directories(${X11_INCLUDE_DIR})
    SET( SYSTEM_LIBS ${SYSTEM_LIBS} ${X11_LIBRARIES} )
endif()


#CImg related
SET( SYSTEM_LIBS ${SYSTEM_LIBS} ${CMAKE_THREAD_LIBS_INIT} )

#replace this or add this to git include folder!!
include_directories(include) #added CImg as test lib for image processing

add_executable(CapstoneProject main.cpp src/compute_3d_points.cpp)

if( PCL_FOUND )
    # [Linker]>[Input]>[Additional Dependencies]
    target_link_libraries( CapstoneProject ${PCL_LIBRARIES} )
endif()