/*
  Triangulo de Sierpienski utilizando "Cellular automaton (rule 90)"
  definido por las operaciones:
  000 -> 0
  001 -> 1
  010 -> 0
  011 -> 1
  100 -> 1
  101 -> 0
  110 -> 1
  111 -> 0
  tomando como caso base:
  0000..010...0000 donde 1 esta ubicado en la posición del término central y
  utilizando matrices de seguimiento y trabajando a nivel de pixeles.
  Clickea para cambiar el color.
*/

//            [2**n+1][2**(n+1)+1]
int[][] m = new int[513][1025];
int r,g,b;

void setup(){
  size(1025,513);
  background(255);
  for(int i=0;i<height;i++)
    for(int j=0;j<width;j++)
      m[i][j] = 0;
  m[0][width/2] = 1;
}

void draw(){
  if(mousePressed){
    r = (int)random(255);
    g = (int)random(255);
    b = (int)random(255);
  }
  for(int i=1;i<height;i++)
    for(int j=1;j<width-1;j++)
      m[i][j] = check(m[i-1][j-1],m[i-1][j],m[i-1][j+1]);
  loadPixels();
  for(int i=0;i<height;i++)
    for(int j=0;j<width;j++)
      if(m[i][j]==1)
        pixels[width*i+j] = color(r,g,b);
  updatePixels();
}

int check(int a,int b,int c){
  if(a==0 && b==0 && c==0) return 0;
  else if(a==0 && b==0 && c==1) return 1;
  else if(a==0 && b==1 && c==0) return 0;
  else if(a==0 && b==1 && c==1) return 1;
  else if(a==1 && b==0 && c==0) return 1;
  else if(a==1 && b==0 && c==1) return 0;
  else if(a==1 && b==1 && c==0) return 1;
  return 0;
}
