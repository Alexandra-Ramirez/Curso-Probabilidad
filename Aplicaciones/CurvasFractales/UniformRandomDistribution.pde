 int v;
int[] ct;
color[] r,g,b;
void setup(){
  ct = new int[40];
  r = new color[40];
  g = new color[40];
  b = new color[40];
  size(800,500);
  background(0);
}

void draw(){
 if(keyPressed){
     for(int i=0;i<40;i++){
    r[i] = (int)random(256);
    g[i] = (int)random(256);
    b[i] = (int)random(256);
  }
 }
 v = (int)random(20);
 fill(r[v],g[v],b[v]);
 rect(40*v,height,40,ct[v]-=5);
}