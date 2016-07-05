void setup(){
  size(900,700);
}

int numberOfIterations = 1000000,vx,vy;
float option;
double fx,fy;
double lowerx = 2.1820, upperx = 2.6558;
double lowery = 0, uppery = 9.9983;
double x,y;
int xoff = (int)(lowerx/(lowerx+upperx)*width);
int xscale = (int)((width-xoff)/upperx)*7;
int yscale = (int)(height/1.5);

void draw(){
  background(255);
  noLoop();
  translate(width/2+2*xoff,height);
  rotate(PI);
  for(int it=0;it<numberOfIterations;it++){
      stroke(0,random(256),0);
      f();
      vx = (int)(x*xscale+xoff);
      vy = (int)(y*yscale);
      point(vx,vy);
  }
  /*loadPixels();
  for(int j=0;j<height;j++)
    for(int i=width/2-1;i<width;i++)
        pixels[j*width+width-i-1] = pixels[j*width+i];
  updatePixels();*/
}

void f(){
  option = random(1);
  x = fx; y = fy;
  if(option<=0.01){
    fx = 0.0;
    fy = 0.16*y;
  }
  else if(option<=0.86){
    fx = 0.85*x+0.04*y;
    fy = -0.04*x+0.85*y+1.6;
  }
  else if(option<=0.93){
    fx = 0.2*x-0.26*y;
    fy = 0.23*x+0.22*y+1.6;
  }
  else{
    fx = -0.15*x+0.28*y;
    fy = 0.26*x+0.24*y+0.44;
  }
}