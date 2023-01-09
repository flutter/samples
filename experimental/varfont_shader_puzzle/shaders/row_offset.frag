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
  
  float levels = 5;
  float maxMag = 0.1;
  float minMag = 0.02;
  float magMod = maxMag / levels;
  float row = floor(texCoord.y * iResolution.y * 0.25); // resolution/density of rows
  float offsetDir = mod(row, 2) == 0 ? -1 : 1;
  float sinFn = cos(texCoord.y * 1 * PI + piTime);
  float originalSinFnDir = 1;//sinFn / abs(sinFn);
  float timeMod = sinFn; //pow((sinFn + 1) * 0.5, 1); //4);
  float offset = (offsetDir * (minMag + maxMag * timeMod)) * originalSinFnDir * dampener;

  vec2 offsetTexCoord = vec2(texCoord.x + offset, texCoord.y);
  vec4 outColor = texture(iChannel0, offsetTexCoord);
  if (texCoord.x + offset < 0.0 || texCoord.x + offset > 1.0) {
    outColor = vec4(0.0, 0.0, 0.0, 0.0);
  }
  fragColor = outColor;
}
