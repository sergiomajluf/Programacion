class JitterBug {

  float x;
  float y;
  int diameter;
  color bugColor2;
  float speed = 5.5;

  JitterBug(float tempX, float tempY, int tempDiameter, color bugColor) {
    bugColor2 = bugColor;
    x = tempX;
    y = tempY;
    diameter = tempDiameter/10;
  }

  void move() {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }

  void display() {
    fill(bugColor2);
    ellipse(x, y, diameter, diameter);
  }
}