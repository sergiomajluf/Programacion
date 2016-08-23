int margen =40;
void setup() {
  size(400, 400);
  strokeWeight(2);
}

void draw() {
  noStroke();
  // posX, posY, conLinea?
  semaforo(20, 20, true);
  semaforo(20, 100, false);  
  semaforo(200,260, true);
}

void semaforo(int posX, int posY, boolean conLinea) {
  if (conLinea == true){
    stroke(0);
  } else {
    noStroke();
  }
  //blanco
  fill(255, 255, 255);
  rect(posX, posY, 20, 20);
  //rojo
  fill(255, 0, 0);
  rect(posX+margen, posY, 20, 20);
  //verde
  fill(0, 255, 0);
  rect(posX+(margen*2), posY, 20, 20);
  //azul
  fill(0, 0, 255);
  rect(posX+(margen*3), posY, 20, 20);
}