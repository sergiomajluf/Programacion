float ballX, ballY, speedX, speedY, ballR, ballG, ballB;
float ballX2, ballY2, speedX2, speedY2, ballR2, ballG2, ballB2;


void setup() {
  size(600, 300);
  initializeBall();
}

void draw() {
  background(255);
  moveBall();
  bounceBall();
  drawBall();
}

