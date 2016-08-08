import processing.video.*;

Capture video;

int pixelSize = 4 ;
int gutter = pixelSize/2;

float tempX = 0.0;
float tempY = 0.00;

//  rotateX(radians(map(mouseX, 0, width, 0, 10)));
//  rotateY(radians(map(mouseY, 0, height, 150, 0)));

void setup() {
  size(640, 480, P3D);
  video = new Capture (this, width, height);
  video.start();
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);

  // init
  video.read();
  video.loadPixels();

  // display
  drawMirror();

  tempX = 3*PI/mouseX/2;
  tempY = 3*PI/mouseY/2;
}


void drawMirror() {
  for (int x = 0 ; x < width; x += (pixelSize+gutter)) {
    for (int y = 0 ; y < height; y += (pixelSize+gutter)) {
      fill(video.pixels[x+ y*width]);
      rotateX(tempX);
      rotateY(tempY);  
      rect (x, y, pixelSize, pixelSize);
    }
  }
}
void keyPressed() {

  if (key == CODED) {
    if (keyCode == UP) {
      tempY += 0.0025;
    } 
    else if (keyCode == DOWN) {
      tempY -= 0.0025;
    }
    else if (keyCode == LEFT) {
      tempX -= 0.0025;
    }
    else if (keyCode == RIGHT) {
      tempX += 0.0025;
    }
  }
}

