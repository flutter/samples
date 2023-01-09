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
  float maxMag = 0.2;

  float thisMag = (sin(texCoord.y * 10 + piTime) + 1) * 0.5 * maxMag * dampener;
  float srcX;
  srcX = texCoord.x + (0.5 - texCoord.x) * thisMag;
  vec2 srcCoord = vec2(srcX, texCoord.y);
  fragColor = texture(iChannel0, srcCoord);
}
