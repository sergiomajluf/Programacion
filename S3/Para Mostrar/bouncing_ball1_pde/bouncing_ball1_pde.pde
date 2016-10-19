float posX = 0;
float posY = 0;
float velX = 5;
float velY = 2.3;

void setup() {
  size(500, 300);
}

void draw() {
  background(255);

  line (width/3, 0, width/3, height);
  line ((width/3)*2, 0, (width/3)*2, height);

  //eligeColor
  if (posX < width/3) {
    fill(255, 0, 0);
  } else if (posX > (width/3)*2) {

    fill(0, 255, 0);
  } else if ( posX > width/3) {
    fill(0, 0, 255);
  }

  //moveBall
  posX = posX + velX;
  posY = height/2;
  
  //posY = posY + velY;


  // Muestra la ellipse
  stroke(0);
  ellipse(posX, posY, 32, 32);
  
  
} 















void checkEdges() {
  if (posX > width || posX < 0) {
    velX = velX * -1;
  }
  if (posY > height || posY < 0) {
    velY = velY * -1;
  }
}