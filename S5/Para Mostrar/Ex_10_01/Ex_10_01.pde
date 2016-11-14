JitterBug bug; // Declare object
JitterBug bug2; // Declare object


void setup() {
  size(480, 480);
  // Create object and pass in parameters
  bug = new JitterBug(width/2, height/2, 20);
  bug2 = new JitterBug(100+ width/2, 100+ height/2, 20);
}

void draw() {
  background(0);
  bug.move();
  bug.display();
  
  bug2.move();
  bug2.display();
}

void mousePressed(){
  bug2.cambiaColor();
}


class JitterBug {

  float x;
  float y;
  int diameter;
  float speed = 2.5;
  color bugColor;

  JitterBug(float tempX, float tempY, int tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    
    bugColor = color (255, 255, 255);
  }

  void move() {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }

  void display() {
    fill(bugColor);
    ellipse(x, y, diameter, diameter);
  }
  
  void cambiaColor(){
    bugColor = color(random(200), random(200), random(200));
  }
}