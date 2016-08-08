float ballX = 0, speedX = 1;
float ballY = 0, speedY = 0;
int score = 0;
color c = color(66, 0, 85);

void setup () {
  size(600, 300);
  ballX = random(0, width);
  noCursor();
}

void draw() {
  background(c);
  noStroke();
  fill(255);  
  speedY= speedY+0.09;
  ballX += speedX;
  ballY += speedY;

  if (ballX > width || ballX < 0 ) {
    speedX = -speedX;
  }
  if (ballY < 0 ) {
    speedY = -speedY;
  }
  if (ballX >= mouseX && ballX < mouseX + 50 && ballY > height-20) {
    speedY = -speedY;
  }
  if (ballY > height) {
    score++;
    if (score > 3) {
      println("Game Over");
    }
    ballY = 0;
    speedY= 0;
    ballX = random(width);
    println("Your score is: " + score + "...you looser");
  }

  //  int i = 0;
  //  while (i < 40) {
  //    ellipse(ballX+i*10, ballY, 10, 10);
  //    i++;
  //  }

  //for (int j = 0; j < 10; j++) {
  //  for (int i = 0; i < 10; i++) {
  //    ellipse(ballX-i*10, ballY-j*10, 10, 10);
  //  }
  //}
  //  fill (0,5);
  //  rect (0,0, width, height);

  ellipse(ballX, ballY, 10, 10);
  rect (mouseX, height-20, 50, 10);
}


void mousePressed() {
  loop();
  c = color(random(250), random(250), random(250));
  
}