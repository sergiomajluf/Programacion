/*
Objetos, basado en Learning Processing 10-1

1. duplicar un objeto
2. darle un nuevo metodo > cambiaColor
3. crear 100 objetos


*/

JitterBug bug; // Declare object

void setup() {
  size(480, 120);
  // Create object and pass in parameters
  bug = new JitterBug(width/2, height/2, 20);
}

void draw() {
  bug.move();
  bug.display();
}

class JitterBug {
  
  float x;
  float y;
  int diameter;
  float speed = 2.5;
  
  JitterBug(float tempX, float tempY, int tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }
  
  void move() {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
  
}