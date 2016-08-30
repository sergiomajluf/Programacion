/*
La interacción con el teclado nos permite
ampliar las posibilidades de Processing

Primero, recordemos la booleana keyPressed
*/

void setup() {
  size(400, 200);
}
void draw() {
  background(120);
  if (keyPressed) {
    background(104, 220, 180);
    
    // la variable key guarda la última tecla presionada
    println(key);
  }
}