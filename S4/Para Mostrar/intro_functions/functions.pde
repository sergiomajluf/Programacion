void initializeBall() {
  ballX = random(width);
  ballY = random(height);
  speedX = random(-5, 5);
  speedY = random(-5, 5);
  ballR = random (255);
  ballG = random (255);
  ballB = random (255);

  ballX2 = random(width);
  ballY2 = random(height);
  speedX2 = random(-5, 5);
  speedY2 = random(-5, 5);
  ballR2 = random (255);
  ballG2 = random (255);
  ballB2 = random (255);
}


void moveBall() {
  ballX += speedX;
  ballY += speedY;

  ballX2 += speedX2;
  ballY2 += speedY2;
}

void bounceBall() {
  if (ballX > width || ballX < 0) speedX= - speedX;
  if (ballY > height || ballY < 0) speedY= - speedY;

  if (ballX2 > width || ballX2 < 0) speedX2= - speedX2;
  if (ballY2 > height || ballY2 < 0) speedY2= - speedY2;
}

void drawBall() {
  fill (ballR, ballG, ballB);
  ellipse(ballX, ballY, 30, 30);

  fill (ballR2, ballG2, ballB2);
  ellipse(ballX2, ballY2, 30, 30);
}

