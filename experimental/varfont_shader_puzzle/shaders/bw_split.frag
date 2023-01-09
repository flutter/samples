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
  float offset = 50;
  
  float opacSum = 0.0;
  vec4 thisCol = texture(iChannel0, texCoord.xy);

  float x = texCoord.x + (offset / iResolution.x * pow(sin(piTime), 4)) * dampener;
  if (x >= 0.0 && x <= 1.0) {
    opacSum += 0.3 * texture(iChannel0, vec2(x, texCoord.y)).a;  
  }
  
  x = texCoord.x - (offset / iResolution.x * pow(sin(piTime + PI), 2)) * dampener;
  if (x >= 0.0 && x <= 1.0) {
    opacSum += 0.3 * texture(iChannel0, vec2(x, texCoord.y)).a;
  }

  float y = texCoord.y + (offset / iResolution.y * pow(sin(piTime + PI * 0.66), 4)) * dampener;
  if (y >= 0.0 && y <= 1.0) {
    opacSum += 0.3 * texture(iChannel0, vec2(texCoord.x, y)).a;
  }

  fragColor = vec4(0.0, 0.0, 0.0, clamp(opacSum, 0.0, 1.0));    

}
