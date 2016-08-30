PImage gato; // A variable for the image file
float x, y; // Variables for image location
float rot; // A variable for image rotation

void setup() {
  size(400, 240);
  // load image, initialize variables
  gato = loadImage( "cat.jpg");
  x = 0.0f;
  y = width/2.0f;
  rot = 0.0f;
}

void draw() {
  background(255);
  // Translate and rotate
  translate(x, y);
  rotate(rot);
  image(gato, 0, 0, width/2, height/2); // Draw image

  // Adjust variables to create animation
  x += 1.0;
  rot += 0.01;
  if (x > width) {
    x = 0;
  }
}