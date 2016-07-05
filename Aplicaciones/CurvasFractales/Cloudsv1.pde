void setup(){
  size(5000,1000); 
  smooth();
}

// 43 179 250
void draw(){
  loadPixels();
  float xoff = 0.0;
  for(int x=0;x<width;x++){
    float yoff = 0.0;
    for(int y=0;y<height;y++){
    float bright = map(noise(xoff,yoff),0,1,0,255);
    if(bright>150) bright = 151;
    pixels[x+y*width] = color(49,bright,253,bright);
    yoff += 0.009;
    }
  xoff += 0.009;
  }
  updatePixels();
}
