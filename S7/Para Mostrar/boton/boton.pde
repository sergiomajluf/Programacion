/*
Ejemplo de Boton
 1. Dibujamos un rectángulo
 2. Evaluamos posición del mouse
 3. Si mouse está dentro de rect, es un botón
 
 */

float x = 100;
float y = 50;
float w = 150;
float h = 80;

int contador = 0;

void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  noFill();
}

void draw() {
  background(255);

  //dibuja un rectangulo
  rect(x, y, w, h);
  fill(255);
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    fill(120);
  }
}


void mouseReleased() {
  // y el click es dentro del boton
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    //acá se ejecuta la acción del boton
    contador++;
    print("Hice ");
    print(contador);
    println(" sobre el botón");
    fill(0);
    
  }
}