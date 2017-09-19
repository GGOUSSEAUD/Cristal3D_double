#version 330
int info=0;
layout (location = 0) in vec3 vsiPosition;
layout (location = 1) in vec3 vsiColor;
out vec4 vsoColor;
uniform float teta;
void main(void) {
  //Rotation Z
  /* float x = (cos(teta)*vsiPosition.x - sin(teta)*vsiPosition.y*0.83 + 0); */
  /* float y = (sin(teta)*vsiPosition.x + cos(teta)*vsiPosition.y + 0); */
  /* float z = 0.0 + 0.0 + vsiPosition.z; */

  //Rotation Y

  float x = cos(teta)*vsiPosition.x - 0 + sin(teta)*vsiPosition.z*0.35+cos(teta+3);
  float y = 0 + vsiPosition.y + 0 + sin(teta+3);
  float z = -sin(teta)*vsiPosition.x + 0.0 + cos(teta)*vsiPosition.z ;

  //Rotation X

  /* float x=vsiPosition.x + 0 + 0; */
  /* float y=(0 + cos(teta)*vsiPosition.y-sin(teta)*vsiPosition.z*0.45); */
  /* float z=(0 + sin(teta)*vsiPosition.y+cos(teta)*vsiPosition.z); */
  if(info==0)
    gl_Position = vec4(x,y,z, 2.0);
  //gl_Position = vec4(vsiPosition.xyz,1.0);
  vsoColor = vec4(vsiColor, 1.0);
}
