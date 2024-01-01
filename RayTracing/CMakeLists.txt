# CMakeLists.txt

cmake_minimum_required ( VERSION 3.1.0...3.27.0 )

project ( RTWeekend LANGUAGES CXX )

# Set the C++ standard to C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set ( CMAKE_CXX_EXTENSIONS     OFF )


# Add the include directory to the project

# Add the source files to the project
set(SOURCES
# src/main.cpp  # Uncomment this line if main.cpp is your main source file
include/color.hpp
include/ray.hpp
include/sphere.hpp
include/vec3.hpp
include/interval.hpp
include/hittable.hpp
include/hittable_list.hpp
include/utils.hpp

src/hit_objects_3.cpp

)

include_directories(include)

message (STATUS "Compiler ID: " ${CMAKE_CXX_COMPILER_ID})


if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    add_compile_options("/we 4265") # Class has virtual functions, but its non-trivial destructor is not virtual
    add_compile_options("/w3 5038") # Data member will be initialized after [other] data member
    add_compile_options("/we 5204") # Class has virtual functions, but its trivial destructor is not virtual
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_compile_options(-Wnon-virtual-dtor) # Class has virtual functions, but its destructor is not virtual
    add_compile_options(-Wreorder) # Data member will be initialized after [other] data member
    add_compile_options(-Wmaybe-uninitialized) # Variable improperly initialized
    add_compile_options(-Wunused-variable) # Variable is defined but unused
elseif (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wnon-virtual-dtor) # Class has virtual functions, but its destructor is not virtual
    add_compile_options(-Wreorder) # Data member will be initialized after [other] data member
    add_compile_options(-Wsometimes-uninitialized) # Variable improperly initialized
    add_compile_options(-Wunused-variable) # Variable is defined but unused
endif()

# Create the library
# add_library(scene STATIC src/Scene_rays.cpp)

# Create the executable
# add_executable(main ${SOURCES})

add_executable(scene ${SOURCES})


# Set the output directory for the executables
# set_target_properties(main PROPERTIES
#     RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/src"
# )

