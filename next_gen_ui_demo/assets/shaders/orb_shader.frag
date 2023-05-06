// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

#include "common/common.glsl"
#include <flutter/runtime_effect.glsl>

#define RAY_STEPS 30

uniform vec2 uResolution;
uniform vec4 uPackedData;
float uTime = uPackedData[0];
float uExposure = uPackedData[1];
float uFov = uPackedData[2];
float uRoughness = uPackedData[3];
uniform float uMetalness;
uniform vec3 uLightDir;
uniform float uLightR;
uniform vec3 uLightLumP;
uniform vec3 uAlbedo;
uniform float uIor;
uniform float uLightQuadAtt;
uniform vec3 uAmbientLight;
uniform float uAmbientLightDepthFactor;
uniform float uEnergy;

out vec4 oColor;

float noise_2d(vec2 pos) {
  vec2 g = floor(pos);
  float a = hash_2d(g);
  float b = hash_2d(g + vec2(1.0, 0.0));
  float c = hash_2d(g + vec2(0.0, 1.0));
  float d = hash_2d(g + vec2(1.0, 1.0));

  vec2 fp = pos - g;
  vec2 sfp = smoothstep(vec2(0.0), vec2(1.0), fp);

  return a + (b - a) * sfp.x + (c - a) * sfp.y +
         (a - b - c + d) * sfp.x * sfp.y;
}

vec3 closest_point_on_disc(vec3 center, vec3 normal, float radius, vec3 p) {
  vec3 r = p - center;
  vec3 pr = r - dot(r, normal) * normal;
  return center + normalize(pr) * min(length(pr), radius);
}

// Compute area light illuminance from: Moving Frostbite to Physically Based
// Rendering 3.0, Siggraph 2014
float illuminanceSphereOrDisk(float cosTheta, float sinSigmaSqr) {
  float cosThetaSqr = cosTheta * cosTheta;
  float sinTheta = sqrt(1.0 - cosThetaSqr);

  float illuminance = 0.0;
  if (cosThetaSqr > sinSigmaSqr) {
    illuminance = M_PI * sinSigmaSqr * clamp(cosTheta, 0.0, 1.0);
  } else {
    float x = sqrt(1.0 / sinSigmaSqr - 1.0);
    float y = -x * (cosTheta / sinTheta);
    float sinThetaSqrtY = sinTheta * sqrt(1.0 - y * y);
    illuminance = (cosTheta * acos(y) - x * sinThetaSqrtY) * sinSigmaSqr +
                  atan(sinThetaSqrtY / x);
  }

  return max(illuminance, 0.0);
}

float evalIlluminanceDisk(vec3 N, vec3 L, vec3 lightN, float lightRadius,
                          float lightDistSqr) {
  float cosTheta = dot(N, L);
  float lightRSqr = lightRadius * lightRadius;

  float sinSigmaSqr = lightRSqr / (lightRSqr + max(lightRSqr, lightDistSqr));

  float illuminance = illuminanceSphereOrDisk(cosTheta, sinSigmaSqr) *
                      clamp(dot(lightN, -L), 0.0, 1.0);

  return illuminance;
}

float distribution_ggx(vec3 N, vec3 H, float roughness) {
  float a = roughness * roughness;
  float a2 = a * a;
  float NdotH = max(dot(N, H), 0.0);
  float NdotH2 = NdotH * NdotH;

  float nom = a2;
  float denom = (NdotH2 * (a2 - 1.0) + 1.0);
  denom = M_PI * denom * denom;

  return nom / denom;
}

float geometry_schlick_ggx(float NdotV, float roughness) {
  float r = (roughness + 1.0);
  float k = (r * r) / 8.0;

  float nom = NdotV;
  float denom = NdotV * (1.0 - k) + k;

  return nom / denom;
}

float geometry_smith(vec3 N, vec3 V, float cosTheta, float roughness) {
  float NdotV = max(dot(N, V), 0.0);

  float ggx2 = geometry_schlick_ggx(NdotV, roughness);
  float ggx1 = geometry_schlick_ggx(cosTheta, roughness);

  return ggx1 * ggx2;
}

vec3 fresnel_schlick(float cosTheta, vec3 F0) {
  return F0 + (1.0 - F0) * pow(1.0 - cosTheta, 5.0);
}

vec3 brdf_eval(vec3 N, vec3 L, vec3 H, vec3 V, vec3 albedo, float roughness,
               float metalness, vec3 Li) {
  roughness = max(0.2, roughness);

  float cosTheta = max(dot(N, L), 0.0);

  // Diffuse color
  vec3 F0 = vec3(0.04);
  F0 = mix(F0, albedo, metalness);

  float NDF = distribution_ggx(N, H, roughness);
  float G = geometry_smith(N, V, cosTheta, roughness);
  vec3 F = fresnel_schlick(max(dot(H, V), 0.0), F0);

  vec3 num = NDF * G * F;
  float denom = 4.0 * max(dot(N, V), 0.0) * cosTheta;
  vec3 spec = num / max(denom, 0.001);

  vec3 kS = F;
  vec3 kD = 1.0 - kS;
  kD *= (1.0 - metalness);

  vec3 Lo = (kD * albedo / M_PI + spec) * Li * cosTheta;

  return Lo;
}

vec3 btdf_eval(vec3 N, vec3 L, vec3 albedo, vec3 Li) {
  vec3 Lo = albedo * Li * max(dot(N, L), 0.0);
  return Lo;
}

vec2 oct_encode(vec3 d) {
  vec3 octant = sign(d);

  // Compute l1-norm version of the direction vector
  float sum = dot(d, octant);
  vec3 octahedron = d / sum;

  if (octahedron.z < 0.0) {
    vec3 a = abs(octahedron);
    octahedron.xy = octant.xy * (vec2(1.0) - a.yx);
  }

  return octahedron.xy * 0.5 + 0.5;
}

const mat2 octM0 = mat2(1.0, 0.0, 0.0, 1.0);
const mat2 octM1 = mat2(0.809017, 0.587785, -0.587785, 0.809017);
const mat2 octM2 = mat2(0.309017, 0.951057, -0.951057, 0.309017);
const mat2 octM3 = mat2(-0.309017, 0.951057, -0.951057, -0.309017);

float fbm(vec2 pos) {
  float sum = 0.0;

  sum += noise_2d(octM0 * pos);
  sum += 0.5 * noise_2d(2.0 * octM1 * pos);
  sum += 0.25 * noise_2d(4.0 * octM2 * pos);
  sum += 0.125 * noise_2d(8.0 * octM3 * pos);

  return sum;
}

vec2 fbm_sphere_sdf(vec3 center, float radius, vec3 pos) {
  vec3 toP = pos - center;
  radius = radius * mix(0.5, 1.0, uEnergy);
  float d = length(toP);
  vec2 uv = oct_encode(toP);

  float amp = mix(0.1, 0.6, uEnergy);
  float dd = fbm(uv * 15.0 + uTime * vec2(1.0, -0.4)) * amp;

  return vec2(d + dd - radius,
              mix(0.4, 1.0, float(d - (radius + 1.0 * amp) > 0.0)));
}

vec2 sample_scene(vec3 pos) {
  return fbm_sphere_sdf(vec3(0.0, 0.0, -10.0), 2.0, pos);
}

const float sampleScale = 1.0 / sqrt(3.0) * 0.0005;

vec3 sample_normal(vec3 pos) {

#define NORMAL_SDF_SAMPLE_COUNT 4
  vec3 normalSampleOffsets[NORMAL_SDF_SAMPLE_COUNT];
  normalSampleOffsets[0] = vec3(1.0, -1.0, -1.0);
  normalSampleOffsets[1] = vec3(-1.0, -1.0, 1.0);
  normalSampleOffsets[2] = vec3(-1.0, 1.0, -1.0);
  normalSampleOffsets[3] = vec3(1.0, 1.0, 1.0);

  vec3 result = vec3(0.0);
  for (int i = 0; i < NORMAL_SDF_SAMPLE_COUNT; ++i) {
    result += normalSampleOffsets[i] * sampleScale *
              sample_scene(pos + normalSampleOffsets[i]).x;
  }

  return normalize(result);
}

float raymarch(vec3 start, vec3 dir) {
  float tMin = 8.0;
  float tMax = 15.0;

  float t = tMin;

  float result = -1.0;

  for (int i = 0; i < RAY_STEPS; ++i) {
    if (t >= tMax)
      break;
    vec2 d = sample_scene(start + dir * t);
    if (d.x < 0.0002) {
      result = t;
      break;
    }
    t += d.x * d.y;
  }

  return result;
}

void look_at(out mat3 cam, in vec3 eye, in vec3 center, in vec3 up) {
  // Construct an ortho-normal basis for the camera
  vec3 forward = normalize(center - eye);
  vec3 right = cross(forward, up);
  up = cross(right, forward);

  cam = mat3(right, up, forward);
}

void sample_camera_ray(out vec3 origin, out vec3 direction, in mat3 cam,
                       vec3 eye, vec2 uv) {

  uv *= 2.0;
  uv -= 1.0;
  uv.y *= -1.0;

  float aspectRatio = uResolution.y / uResolution.x;
  float vWidth = tan(uFov / 2.0);
  float vHeight = vWidth * aspectRatio;

  vec3 forward = cam * vec3(0.0, 0.0, 1.0);
  vec3 rayDir = cam * vec3(uv.x * vWidth, uv.y * vHeight, 1.0);

  origin = eye;
  direction = normalize(rayDir);
}

vec3 sample_disk_light(out vec3 L, vec3 P, vec3 N, vec3 lightP, vec3 lightN,
                       float lightR, vec3 lightAtt, vec3 lightLumP) {
  vec3 toL = closest_point_on_disc(lightP, lightN, lightR, P) - P;
  L = normalize(toL);
  toL *= lightAtt.x;
  float illuminance = evalIlluminanceDisk(N, L, lightN, lightR, dot(toL, toL));
  vec3 Li = lightLumP * illuminance;
  return Li;
}

vec4 pixel_color(vec3 o, vec3 d, vec3 lightP, vec3 lightN, float lightR,
                 vec3 lightAtt, vec3 lightLumP) {
  float t = raymarch(o, d);

  vec4 result = vec4(0.0);

  if (t >= 0.0) {
    vec3 P = o + d * t;
    vec3 N = sample_normal(P);
    vec3 V = -d;
    vec3 R = refract(-V, N, uIor);

    float z = dot(vec3(0.0, 0.0, -1.0), P);
    float zd = smoothstep(mix(0.0, 11.0, uAmbientLightDepthFactor), 14.0, z);
    vec3 Lo = vec3(0.0);
    vec3 L, Li;

    vec3 S = fresnel_schlick(max(dot(N, V), 0.0), vec3(0.02));

    Li =
        sample_disk_light(L, P, R, lightP, lightN, lightR, lightAtt, lightLumP);
    Lo += (1.0 - S) * brdf_eval(-N, L, normalize(L + R), R, uAlbedo, uRoughness,
                                uMetalness, Li);

    Lo += zd * uAlbedo * uAmbientLight;

    result = vec4(Lo, 1.0);
  }

  return result;
}

void main() {
  vec2 uv = vec2(FlutterFragCoord().xy) / uResolution;

  vec3 lightN = normalize(-uLightDir);
  vec3 lightP = vec3(0.0, 0.0, -10.0) + uLightDir;
  vec3 lightAtt = vec3(uLightQuadAtt, 0.0, 1.0);

  vec3 eye = vec3(0.0, 0.0, 1.0);
  vec3 center = vec3(0.0, 0.0, 0.0);
  vec3 up = vec3(0.0, 1.0, 0.0);

  mat3 cam;
  look_at(cam, eye, center, up);
  vec3 o, d;

  sample_camera_ray(o, d, cam, eye, uv);
  vec4 hdrColor =
      abs(pixel_color(o, d, lightP, lightN, uLightR, lightAtt, uLightLumP));

  vec3 ldrColor = vec3(1.0) - exp(min(-(hdrColor.rgb) * uExposure, 0.0));
  oColor = vec4(ldrColor, hdrColor.a);
}
