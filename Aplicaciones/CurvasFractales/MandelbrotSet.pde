// Conjunto de Mandelbrot
// z0 = 0;
// z(n+1) = zn+c;
double x,y,dx,dy,znx,zny,Znx,Zny;
int numberOfIterations = 10000,ct;

void setup(){
  size(650,650);
  background(255);
}
//size(n,m)
//n*n+m=n*m
//n*n-n*m+m=0;
// 2*n = m+-sqrt(m*m-4m)
void draw(){
  noLoop();
  loadPixels();
  x = -1.7;
  dx = 0.0035;
  dy = 0.0035;
  for(int i=0;i<height;i++){
    x += dx;
    y = -1.2;
    for(int j=0;j<width;j++){
      y += dy;
      ct = MandelbrotSet(x,y);
      if(ct==numberOfIterations)
        pixels[j*width+i] = color(0);
      else
        pixels[j*width+i] = color(ct*16%256,ct*8%256,ct*4%256,ct*16%256);
    }
  }
  updatePixels();
}

int MandelbrotSet(double cx,double cy){
  znx = 0; zny = 0;
  for(int it=0;it<numberOfIterations;it++){
    Znx = znx*znx-zny*zny+cx;
    Zny = 2*znx*zny+cy;
    znx = Znx;
    zny = Zny;
      if(znx*znx+zny*zny>16)
        return it;
  }
  return numberOfIterations;
}