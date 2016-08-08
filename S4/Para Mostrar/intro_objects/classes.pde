class ball { 

  float ballX, ballY, speedX, speedY, ballR, ballG, ballB;

  ball() {
    ballX = random(width);
    ballY = random(height);
    speedX = random(-5, 5);
    speedY = random(-5, 5);
    ballR = random (255);
    ballG = random (255);
    ballB = random (255);
  }


  void moveBall() {
    ballX += speedX;
    ballY += speedY;
  }

  void bounceBall() {
    if (ballX > width || ballX < 0) speedX= - speedX;
    if (ballY > height || ballY < 0) speedY= - speedY;
  }

  void drawBall() {
    fill (ballR, ballG, ballB);
    ellipse(ballX, ballY, 30, 30);
  }
}

