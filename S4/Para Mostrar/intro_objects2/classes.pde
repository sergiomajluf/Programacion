class ball { 

  float ballX, ballY, speedX, speedY, ballR, ballG, ballB, ballSize;

  ball(float x, float y) {
    ballX = x;
    ballY = y;
    speedX = random(-2, 8);
    speedY = random(-2, 7);
    ballR = random (255);
    ballG = random (255);
    ballB = random (255);
    ballSize = random(10,1);
    noStroke();
  }

  void moveBall() {
    ballX += speedX;
    ballY += speedY;
  }

  void bounceBall() {
    if (ballX > width-(ballSize/2) || ballX < 0+(ballSize/2)) speedX= - speedX;
    if (ballY > height-(ballSize/2) || ballY < 0+(ballSize/2)) speedY= - speedY;
  }

  void drawBall() {
    fill (ballR, ballG, ballB, 127);
    ellipse(ballX, ballY, ballSize, ballSize);
  }

  void display() {
    moveBall();
    bounceBall();
    drawBall();
  }
}

