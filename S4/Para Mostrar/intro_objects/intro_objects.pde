
ball ourBall;

void setup() {
  size(600, 300);
  ourBall = new ball();
}

void draw() {
  background(255);
  ourBall.moveBall();
  ourBall.bounceBall();
  ourBall.drawBall();
}

