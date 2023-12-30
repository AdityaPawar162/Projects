#ifndef UTILS_HPP
#define UTILS_HPP

#include <cmath>
#include <limits>
#include <memory>

// Usings
using std::shared_ptr;
using std::make_shared;
using std::sqrt;

// Constants
const double infinity = std::numeric_limits<double>::infinity();
const double pi = 3.1415926535897932385;

// Utility Functions
inline double degress_to_radians(double degrees){
    return degrees * pi / 180;
}

// Common Headers
#include "ray.hpp"
#include "vec3.hpp"


#endif  //!UTILS_HPP
