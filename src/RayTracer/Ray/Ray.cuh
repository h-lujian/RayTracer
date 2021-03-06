#pragma once
#ifndef RAY_H
#define RAY_H
#ifndef CUDA_FUNC
#define CUDA_FUNC __host__ __device__
#endif
#include "helper_math.h"

#ifndef BLACK
#define BLACK (make_float3(0.0f, 0.0f, 0.0f))
#endif // !BLACK

class Ray
{
public:
    CUDA_FUNC Ray() = default;
    CUDA_FUNC ~Ray() = default;
    CUDA_FUNC Ray(const Ray &r) = default;
    CUDA_FUNC Ray(const float3 &o, const float3 &r);
    CUDA_FUNC float3 getPos(float t) const;
    CUDA_FUNC float3 getDir() const;
    CUDA_FUNC float3 getOrigin() const;
private:
    float3 origin;
    float3 direction;
    //Make the class aligned to 32 byte
    int : 8;
};


#endif