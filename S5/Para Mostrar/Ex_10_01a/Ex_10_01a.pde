/* Programación con Objetos
 basado en Learning Processing 10-1
 */

JitterBug bug; // Declarar un objeto

void setup() {
  size(480, 480);
  // Crear objeto y pasarle parámetros
  bug = new JitterBug(width/2, height/2, 20);
}

void draw() {
  background(0);
  bug.move();
  bug.display();
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

  void cambiaColor() {
    bugColor = color(random(200), random(200), random(200));
  }
}