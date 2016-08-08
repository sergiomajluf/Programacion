import processing.video.*;

Capture video;

int pixelSize = 4 ;
int gutter = 0;
boolean isCapturing;

void setup() {
  size(640, 480, OPENGL);
  video = new Capture (this, width, height);
  video.start();
  isCapturing = true;
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);

  video.read();
  video.loadPixels();


  for (int x = 0 ; x < width; x += (pixelSize+gutter)) {
    for (int y = 0 ; y < height; y += (pixelSize+gutter)) {
      fill(video.pixels[x+ y*width]);
     
      rotateX(radians(map(mouseX, 0, width, 150, 190)));
      rotateY(radians(map(mouseY, 0, height, 150, 190)));  
      rect (x, y, pixelSize, pixelSize);
      
    }
  }
}

