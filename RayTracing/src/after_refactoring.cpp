#include "utils.hpp"
#include "color.hpp"
#include "camera.hpp"
#include "material.hpp"  // Make sure this is before "sphere.hpp"
#include "hittable_list.hpp"
#include "sphere.hpp"



int main(){

    hittable_list world;

    auto material_ground = make_shared<lambertian>(color(0.5, 0.5, 0.5));
    world.add(make_shared<sphere>(point3( 0.0, -100.5, -1.0), 100.0, material_ground));

    // auto material1 = make_shared<dielectric>(1.5);
    // world.add(make_shared<sphere>(point3(0, 1, 0), 1.0, material1));

    // auto material2 = make_shared<lambertian>(color(0.4, 0.2, 0.1));
    // world.add(make_shared<sphere>(point3(-4, 1, 0), 1.0, material2));

    // auto material3 = make_shared<metal>(color(0.7, 0.6, 0.5), 0.0);
    // world.add(make_shared<sphere>(point3(4, 1, 0), 1.0, material3));


   
    /*
    auto R  = cos(pi/4);

    auto material_left  = make_shared<lambertian>(color(0,0,1));
    auto material_right = make_shared<lambertian>(color(1,0,0));

    world.add(make_shared<sphere>(point3(-R, 0, -1), R, material_left));
    world.add(make_shared<sphere>(point3( R, 0, -1), R, material_right));   
    */

    camera cam;

    cam.aspect_ratio = 16.0/9.0;
    cam.image_width  = 1200;
    cam.samples_per_pixel = 500;
    cam.max_depth = 50;

    cam.vfov      = 20;
    cam.lookfrom  = point3(13,2,3);
    cam.lookat    = point3(0,0,0);
    cam.vup       = vec3(0,1,0);

    cam.defocus_angle = 0.6;
    cam.focus_dist = 10.0;
    cam.render(world);

}