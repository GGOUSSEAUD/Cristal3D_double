#version 330
int info2=1;
layout(location = 3)in vec3 vsiColor2;
layout(location = 2)in vec3 vsiPosition2;
out vec4 vsoColor2;
uniform float teta2;
void main(void) {
  //Rotation Z
  /* float x = (cos(teta2)*vsiPosition2.x - sin(teta2)*vsiPosition2.y*0.83 + 0); */
  /* float y = (sin(teta2)*vsiPosition2.x + cos(teta2)*vsiPosition2.y + 0); */
  /* float z = 0.0 + 0.0 + vsiPosition2.z; */

  //Rotation Y

  float x = cos(teta2)*vsiPosition2.x - 0 + sin(teta2)*vsiPosition2.z*0.35 +cos(teta2) ;
  float y = 0 + vsiPosition2.y + 0 + sin(teta2);
  float z = -sin(teta2)*vsiPosition2.x + 0.0 + cos(teta2)*vsiPosition2.z;

  //Rotation X

  /* float x=vsiPosition2.x + 0 + 0; */
  /* float y=(0 + cos(teta2)*vsiPosition2.y-sin(teta2)*vsiPosition2.z*0.45); */
  /* float z=(0 + sin(teta2)*vsiPosition2.y+cos(teta2)*vsiPosition2.z); */
  if(info2==1)
  gl_Position = vec4(x,y,z,2.0);
  //gl_Position = vec4(vsiPosition2.xyz,1.0);
  vsoColor2 = vec4(vsiColor2 , 1.0);
}
