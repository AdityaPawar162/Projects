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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aditya.pawar/personal/RayTracing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aditya.pawar/personal/RayTracing/build

# Include any dependencies generated for this target.
include CMakeFiles/scene.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/scene.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scene.dir/flags.make

CMakeFiles/scene.dir/src/Scene_rays.cpp.o: CMakeFiles/scene.dir/flags.make
CMakeFiles/scene.dir/src/Scene_rays.cpp.o: ../src/Scene_rays.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aditya.pawar/personal/RayTracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scene.dir/src/Scene_rays.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scene.dir/src/Scene_rays.cpp.o -c /home/aditya.pawar/personal/RayTracing/src/Scene_rays.cpp

CMakeFiles/scene.dir/src/Scene_rays.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scene.dir/src/Scene_rays.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aditya.pawar/personal/RayTracing/src/Scene_rays.cpp > CMakeFiles/scene.dir/src/Scene_rays.cpp.i

CMakeFiles/scene.dir/src/Scene_rays.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scene.dir/src/Scene_rays.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aditya.pawar/personal/RayTracing/src/Scene_rays.cpp -o CMakeFiles/scene.dir/src/Scene_rays.cpp.s

# Object files for target scene
scene_OBJECTS = \
"CMakeFiles/scene.dir/src/Scene_rays.cpp.o"

# External object files for target scene
scene_EXTERNAL_OBJECTS =

src/scene: CMakeFiles/scene.dir/src/Scene_rays.cpp.o
src/scene: CMakeFiles/scene.dir/build.make
src/scene: CMakeFiles/scene.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aditya.pawar/personal/RayTracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable src/scene"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scene.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scene.dir/build: src/scene

.PHONY : CMakeFiles/scene.dir/build

CMakeFiles/scene.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scene.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scene.dir/clean

CMakeFiles/scene.dir/depend:
	cd /home/aditya.pawar/personal/RayTracing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aditya.pawar/personal/RayTracing /home/aditya.pawar/personal/RayTracing /home/aditya.pawar/personal/RayTracing/build /home/aditya.pawar/personal/RayTracing/build /home/aditya.pawar/personal/RayTracing/build/CMakeFiles/scene.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scene.dir/depend

