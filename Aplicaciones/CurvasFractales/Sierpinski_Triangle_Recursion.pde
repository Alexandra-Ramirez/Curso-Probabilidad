/*
  Sierpinski Triangle construido con recursión
*/

int d=10,numberOfIterations;
void setup(){
  size(700,700);
  background(255);
}

void draw(){
  if(keyPressed){
    background(255);
    numberOfIterations = key-'0';
  }
  SierpinskiTriangle(d,height-d,width/2,height-d-(width/2-d)*1.73,width-d,height-d,1); 
}

void SierpinskiTriangle(float v1x,float v1y,float v2x,float v2y,float v3x,float v3y,int ct){
  if(ct<=numberOfIterations){
    fill(0);
    triangle(v1x,v1y,v2x,v2y,v3x,v3y);
    fill(255);
    float u1x = (v1x+v2x)/2;
    float u1y = (v1y+v2y)/2;
    float u2x = (v2x+v3x)/2;
    float u2y = (v2y+v3y)/2;
    float u3x = (v1x+v3x)/2;
    float u3y = (v1y+v3y)/2;
    triangle(u1x,u1y,u2x,u2y,u3x,u3y);
    SierpinskiTriangle(v1x,v1y,u1x,u1y,u3x,u3y,ct+1);
    SierpinskiTriangle(u1x,u2y,v2x,v2y,u2x,u2y,ct+1);
    SierpinskiTriangle(u3x,u3y,u2x,u2y,v3x,v3y,ct+1);
  }
}