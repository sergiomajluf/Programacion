float posX = 0;
float posY = 0;
float xspeed = 5;
float yspeed = 2.3;

void setup() {
  size(500, 300);
}

void draw() {
  background(255);

  line (width/3, 0, width/3, height);
  line ((width/3)*2, 0, (width/3)*2, height);

  eligeColor();
  displayBall();
  moveBall();
  checkEdges();
} 

void displayBall() {
  stroke(0);
  //fill(127);
  ellipse(posX, posY, 32, 32);
}

void moveBall() {
  posX = posX + xspeed;
  posY = posY + yspeed;
}

void checkEdges() {
  if (posX > width || posX < 0) {
    xspeed = xspeed * -1;
  }
  if (posY > height || posY < 0) {
    yspeed = yspeed * -1;
  }
}

void eligeColor() {
  if (posX < width/3) {
    fill(255, 0, 0);
  } else if (posX > (width/3)*2) {

    fill(0, 255, 0);
  } else if ( posX > width/3) {
    fill(0, 0, 255);
  }
}