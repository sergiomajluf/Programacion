float horizontalPositionRect;
float verticalPositionRect;


void setup() {
  size(600, 300);
  noSmooth();
  background(255);
  horizontalPositionRect = width/2;
  verticalPositionRect = height/2;
  noStroke();
}

void draw() {

  fill(120);

  horizontalPositionRect = horizontalPositionRect+random(-8, 8);
  verticalPositionRect = verticalPositionRect+random(-5, 5);
  ellipse (horizontalPositionRect, verticalPositionRect, 10, 10 );

  fill(255, 10);
  rect(0, 0, width, height);
}

void keyPressed() {
  horizontalPositionRect = width/2;
  verticalPositionRect = height/2;
}

void mousePressed() {
  //println("mouseX = " +mouseX+" | mouseY = "+mouseY);
}

