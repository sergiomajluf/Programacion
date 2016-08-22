int [] x = {100, 150, 200, 250};
int [] y = {100, 300, 150, 100};



void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  ellipse(x[0], y[0], 20, 20);
  ellipse(x[1], y[1], 20, 20);
  ellipse(x[2], y[2], 20, 20);
  ellipse(x[3], y[3], 20, 20);
}