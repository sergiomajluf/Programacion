/*
Ejemplo para controlar la posición de un objeto
en la pantalla usando el teclado.

Recuerden que el teclado cambia el valor de una
variable, y el objeto se dibuja usando esa misma variable

*/
int posX = 0;
int posY = 0;

void setup() {
  
  size(400,200);
  
}
void draw() {
  background(0);
  fill(255);
  rect(posX, posY, 15,50);
  
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      posX = posX + 10;
    } else if (keyCode == LEFT) {
      posX = posX -10;
    } else if (keyCode == UP) {
      posY = posY -10;
    } else if (keyCode ==DOWN) {
      posY = posY +10;
    } 
  } 
}