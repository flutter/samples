#define PI 3.1415926538

layout(location = 0) uniform float iTime;
layout(location = 1) uniform vec2 iResolution;
layout(location = 3) uniform float dampener;

layout(location = 0) out vec4 fragColor;

layout(location = 2) uniform sampler2D iChannel0;

void main()
{
  float piTime = iTime * PI * 2;
  vec2 texCoord = gl_FragCoord.xy / iResolution.xy;
  float offset = 15;

  vec4 thisCol = texture(iChannel0, texCoord.xy);
  // if (thisCol.a > 0.0) {
  //   fragColor = vec4(0.4, 0.5, 0.6, 1.0);
  // } else {
    vec4 rSrc = texture(iChannel0, vec2(texCoord.x + offset / iResolution.x * sin(piTime), texCoord.y));
    float r = rSrc.a;

    vec4 gSrc = texture(iChannel0, vec2(texCoord.x + offset / iResolution.x * sin(piTime + PI), texCoord.y));
    float g = gSrc.a;

    vec4 bSrc = texture(iChannel0, vec2(texCoord.x, texCoord.y + offset / iResolution.y * sin(piTime + PI * 0.66)));
    float b = bSrc.a;
    fragColor = vec4(r, g, b, clamp(r+g+b, 0.0, 1.0));    
  // }
}
