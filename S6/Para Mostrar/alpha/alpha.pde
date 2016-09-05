PImage img;
PImage imgMask;

void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");
  imgMask = loadImage("mask.png");
  img.mask(imgMask);
  imageMode(CENTER);
}

void draw() {
  background(mouseX, 102, mouseY);
  image(img, width/2, height/2);
  //image(img, mouseX, mouseY);
}