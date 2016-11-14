/*
Ejercicio con Objetos, basado en Learning Processing 10-2

*/

JitterBug[] bugs = new JitterBug[100];


void setup() {
  size(480, 480);
  background(0);
  smooth();

  for (int i=0; i < bugs.length; i++) {
    color tempColor = color(random(mouseX/width), random(200,255), random(200), 10);
    bugs[i] = new JitterBug(width * 0.33, height/2, 50, tempColor);
  }


  stroke(0, 10);
  noStroke();
}

void draw() {

  for (int i=0; i < bugs.length; i++) {
    bugs[i].bugColor2 = color(255, mouseY, random(mouseX), 10);
    bugs[i].move();
    bugs[i].display();
  }
}