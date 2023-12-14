# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(YourProjectName VERSION 1.0)

# Set the C++ standard to C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the include directory to the project
include_directories(include)

# Add the source files to the project
set(SOURCES
    src/main.cpp
)

# Create the executable
add_executable(main ${SOURCES})

# Set the output directory for the executable
set_target_properties(main PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/src"
)
