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
  int speed;
  
  // wavy
  speed = 1;
  float xAdj = texCoord.x * 3 * PI;
  float waveFnVal = sin((xAdj + piTime * speed));
  float dir = 1;// waveFnVal / abs(waveFnVal);
  // if (waveFnVal < 0) {
  //   dir = -1;
  // }
  float hackAdj = 0.0; 
  float offset = ( ((pow(waveFnVal, 2) * 0.5 - 0.5) * 0.2) * dir + hackAdj ) * dampener;

  vec2 offsetTexCoord = vec2(texCoord.x, texCoord.y + offset);
  fragColor = texture(iChannel0, offsetTexCoord);
}
