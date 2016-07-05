/*
  Sierpinski Carpet contruido en base del Conjunto de Cantor
  (i.e. No sombreamos aquellos elementos que pertenescas esten entre 1/3 y
   2/3 del nivel respectivo)
  trabajando a nivel de pixeles.
*/

int[][] m;
int d=5;

void setup(){
  size(728,728); 
  background(255);
  m = new int[height][width];
}

void draw(){
  noLoop();
  for(int i=d;i<height-d;i++)
    for(int j=d;j<width-d;j++)
      m[i][j] = SierpinskiCarpet(i,j);
  loadPixels();
  for(int i=0;i<height;i++)
    for(int j=0;j<width;j++)
      if(m[i][j]==1)
        pixels[i*width+j] = color(0);
      else
        pixels[i*width+j] = color(255);
  updatePixels();
}

int SierpinskiCarpet(int x,int y){
  while(x>0 || y>0){
    if(x%3==1 && y%3==1)
      return 0;
    x /= 3; y /= 3;
  }
  return 1;
}