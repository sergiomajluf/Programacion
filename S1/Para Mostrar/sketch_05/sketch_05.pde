void setup() {
  size(800, 400);
  noFill();
}

void draw() {
  background(255);

  int count = 100;

  for (int x = 50; x < width; x += 50) {
    for (int y = 50; y < height; y += 50) {
      //line(x, y, width/2, height/2);
      stroke(count);
      strokeWeight(count*0.08);
      ellipse(x, y, 20, 20);
      count++;
    }
  }
}