void setup() {
  size(800, 400);
  noFill();
}

void draw() {
  background(255);
  for (int x = 50; x < width; x += 10) {
    for (int y = 50; y < height; y += 10) {
      //line(x, y, width/2, height/2);
      ellipse(x, y, 100,100);
    }
  }
}