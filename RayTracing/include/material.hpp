#ifndef MATERIAL_H
#define MATERIAL_H

#include "utils.hpp"

class hit_record;

class materials{
    public:
    materials();
    virtual ~materials() = default;

     virtual bool scatter( const ray& r_in, const hit_record& rec, color& attenuation, ray& scattered) const = 0;

};

class lambertian : public materials{
    public:
      lambertian(const color& a) : albedo(a){}
      
      bool scatter(const ray& r_in, const hit_record& rec, color& attenuation, ray& scattered)
    const override {
        auto scatter_direction = rec. + random_unit_vector();
        // Catch degenerate scatter direction
        if (scatter_direction.near_zero())
            scatter_direction = rec.normal;
        
        scattered = ray(rec.p, scatter_direction);
        attenuation = albedo;
        return true;
    }



    private:
      color albedo;

};




#endif