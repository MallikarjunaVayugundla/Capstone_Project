# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arjun/CLionProjects/CapstoneProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arjun/CLionProjects/CapstoneProject/build

# Include any dependencies generated for this target.
include CMakeFiles/CapstoneProject.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CapstoneProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CapstoneProject.dir/flags.make

CMakeFiles/CapstoneProject.dir/main.cpp.o: CMakeFiles/CapstoneProject.dir/flags.make
CMakeFiles/CapstoneProject.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arjun/CLionProjects/CapstoneProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CapstoneProject.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CapstoneProject.dir/main.cpp.o -c /home/arjun/CLionProjects/CapstoneProject/main.cpp

CMakeFiles/CapstoneProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CapstoneProject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arjun/CLionProjects/CapstoneProject/main.cpp > CMakeFiles/CapstoneProject.dir/main.cpp.i

CMakeFiles/CapstoneProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CapstoneProject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arjun/CLionProjects/CapstoneProject/main.cpp -o CMakeFiles/CapstoneProject.dir/main.cpp.s

CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o: CMakeFiles/CapstoneProject.dir/flags.make
CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o: ../src/compute_3d_points.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arjun/CLionProjects/CapstoneProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o -c /home/arjun/CLionProjects/CapstoneProject/src/compute_3d_points.cpp

CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arjun/CLionProjects/CapstoneProject/src/compute_3d_points.cpp > CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.i

CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arjun/CLionProjects/CapstoneProject/src/compute_3d_points.cpp -o CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.s

# Object files for target CapstoneProject
CapstoneProject_OBJECTS = \
"CMakeFiles/CapstoneProject.dir/main.cpp.o" \
"CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o"

# External object files for target CapstoneProject
CapstoneProject_EXTERNAL_OBJECTS =

CapstoneProject: CMakeFiles/CapstoneProject.dir/main.cpp.o
CapstoneProject: CMakeFiles/CapstoneProject.dir/src/compute_3d_points.cpp.o
CapstoneProject: CMakeFiles/CapstoneProject.dir/build.make
CapstoneProject: /usr/local/lib/libpcl_surface.so
CapstoneProject: /usr/local/lib/libpcl_keypoints.so
CapstoneProject: /usr/local/lib/libpcl_tracking.so
CapstoneProject: /usr/local/lib/libpcl_recognition.so
CapstoneProject: /usr/local/lib/libpcl_stereo.so
CapstoneProject: /usr/local/lib/libpcl_outofcore.so
CapstoneProject: /usr/local/lib/libpcl_people.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_system.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libboost_regex.so
CapstoneProject: /usr/local/lib/libvtkChartsCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkInfovisCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOGeometry-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOLegacy-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOPLY-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingLOD-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkViewsContext2D-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkViewsCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingContextOpenGL2-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingOpenGL2-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkglew-8.2.so.1
CapstoneProject: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
CapstoneProject: /usr/local/lib/libpcl_registration.so
CapstoneProject: /usr/local/lib/libpcl_segmentation.so
CapstoneProject: /usr/local/lib/libpcl_features.so
CapstoneProject: /usr/local/lib/libpcl_filters.so
CapstoneProject: /usr/local/lib/libpcl_sample_consensus.so
CapstoneProject: /usr/local/lib/libpcl_ml.so
CapstoneProject: /usr/local/lib/libpcl_visualization.so
CapstoneProject: /usr/local/lib/libpcl_search.so
CapstoneProject: /usr/local/lib/libpcl_kdtree.so
CapstoneProject: /usr/local/lib/libpcl_io.so
CapstoneProject: /usr/local/lib/libpcl_octree.so
CapstoneProject: /usr/local/lib/libpcl_common.so
CapstoneProject: /usr/local/lib/libvtkInteractionWidgets-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersModeling-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkInteractionStyle-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersExtraction-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersStatistics-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingFourier-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersHybrid-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingGeneral-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingSources-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingHybrid-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOImage-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkDICOMParser-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkmetaio-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkpng-8.2.so.1
CapstoneProject: /usr/local/lib/libvtktiff-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkjpeg-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingAnnotation-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingColor-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingVolume-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOXML-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOXMLParser-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkIOCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkdoubleconversion-8.2.so.1
CapstoneProject: /usr/local/lib/libvtklz4-8.2.so.1
CapstoneProject: /usr/local/lib/libvtklzma-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkexpat-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkImagingCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingContext2D-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingFreeType-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkfreetype-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkzlib-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkRenderingCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonColor-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersGeometry-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersSources-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersGeneral-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonComputationalGeometry-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkFiltersCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonExecutionModel-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonDataModel-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonTransforms-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonMisc-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonMath-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonSystem-8.2.so.1
CapstoneProject: /usr/local/lib/libvtkCommonCore-8.2.so.1
CapstoneProject: /usr/local/lib/libvtksys-8.2.so.1
CapstoneProject: /usr/lib/x86_64-linux-gnu/libSM.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libICE.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libX11.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libXext.so
CapstoneProject: /usr/lib/x86_64-linux-gnu/libXt.so
CapstoneProject: CMakeFiles/CapstoneProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arjun/CLionProjects/CapstoneProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CapstoneProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CapstoneProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CapstoneProject.dir/build: CapstoneProject

.PHONY : CMakeFiles/CapstoneProject.dir/build

CMakeFiles/CapstoneProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CapstoneProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CapstoneProject.dir/clean

CMakeFiles/CapstoneProject.dir/depend:
	cd /home/arjun/CLionProjects/CapstoneProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arjun/CLionProjects/CapstoneProject /home/arjun/CLionProjects/CapstoneProject /home/arjun/CLionProjects/CapstoneProject/build /home/arjun/CLionProjects/CapstoneProject/build /home/arjun/CLionProjects/CapstoneProject/build/CMakeFiles/CapstoneProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CapstoneProject.dir/depend

