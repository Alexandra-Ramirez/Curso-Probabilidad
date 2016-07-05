/*
  Simulación de caminos aleatorios utilizando la función
  random para determinar la dirección a seguir.
  Clickear para obtener otro camino aleatorio.
*/
float d = 20.0;
float x,y,px,py,dx,dy,theta;

void setup(){
  size(1000,500); 
  px = x = width/2;
  py = y = height/2;
  background(255);
  frameRate(12);
}

void draw(){
  if(mousePressed){
    px = x = width/2;
    py = y = height/2;
    background(255);
 }
  theta = random(TWO_PI);
  stroke(255);
  line(px,py,x,y);
  strokeWeight(1);
  stroke(0);
  line(px,py,x,y);
  px = x; py = y;
  x += d*cos(theta); y += d*sin(theta);
  if(x>width || x<0 || y>height || y<0){
    x = px; y = py;
  }
  strokeWeight(4);
  stroke(0,0,255);
  line(px,py,x,y);
}
