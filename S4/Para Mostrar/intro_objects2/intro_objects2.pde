ball[] ourBalls = new ball[100];

void setup() {
  size(600, 300);
  for (int i = 0; i < 100; i++) {
    ourBalls[i] = new ball(i*8, height/2);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 100; i++) {
    ourBalls[i].display();
  }

}

void mousePressed() {
  for (int i = 0; i < 100; i++) {
    ourBalls[i] = new ball(mouseX, mouseY);
  }
}

