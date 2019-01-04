#pragma once
#include "../Scene/Scene.cuh"

float3 pathTracer(Ray r, Scene &scene, StratifiedSampler<TWO> sampler_scatter, StratifiedSampler<TWO> sampler_light, StratifiedSampler<ONE> sampler_p, curandState *state);