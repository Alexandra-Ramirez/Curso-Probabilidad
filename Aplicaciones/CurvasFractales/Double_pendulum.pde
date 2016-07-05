float theta,beta;
int pib1 = 1, pib2 = 1;
ArrayList<PVector> p;
PVector aux,bb;
float a,b;

void setup(){
  size(800,600);
  background(255);
  smooth();
  frameRate(1000);
  p = new ArrayList<PVector>();
}

void draw(){
 strokeWeight(3);
 background(255);
 stroke(255,0,0);
 theta += pib1*random(0.02)*random(100)/100;
 if(theta>PI)
   pib1 = -1;
 if(theta<0)
   pib1 = 1;
 a = width/2;
 b = 200;
 line(a,b,a+180*cos(theta),b+180*sin(theta));
 a += 180*cos(theta);
 b += 180*sin(theta);
 beta += pib2*random(0.03)*random(100)/100;
 if(beta>TWO_PI)
   pib2 = -1;
 if(beta<0)
   pib2 = 1;

 line(a,b,a+150*cos(beta),b+150*sin(beta));
 a += 150*cos(beta);
 b += 150*sin(beta);
 aux = new PVector(a,b);
 bb = new PVector(width/2+180+150,80);
 p.add(aux);
 strokeWeight(2);
 stroke(0);
 for(PVector i : p){
   line(bb.x,bb.y,i.x,i.y);
   bb.x = i.x;
   bb.y = i.y;
 }
}