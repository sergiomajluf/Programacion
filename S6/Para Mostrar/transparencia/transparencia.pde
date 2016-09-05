//PImage img = loadImage("http://www.burrconstruction.com/img/leaf.png");
PImage img;

void setup() {
  size(400, 400, P3D); // P3D is OPENGL in 2.0xx
  img = loadImage("leaf.png");
}

void draw() {
  background(frameCount%255);
  pushMatrix();
  translate(50, 50, -1);
  image(img, 20, 20, 150, 150);
  popMatrix();
  image(img, 20, 20, 150, 150);
}