int margen =25;
boolean transito = false;
int posicionInicial = 20;

void setup() {
  size(400, 400);
  strokeWeight(2);
}
void draw() {
  noStroke(); //<>//
  // posX, posY, conLinea?
  semaforo(20, 20,  transito);
  semaforo(200,200, !transito);
  semaforo(300,50,  transito);
}

void mousePressed(){
transito = !transito;
}

void semaforo(int posX, int posY, boolean avanza) {
  
  fill(0);
  rect(posX-15, posY-15, 30, 80);
  rect(posX-2, posY+(margen*2), 5, 100);
  
  //rojo
  if (avanza == false){
    fill(255,0,0);
  } else {
    fill(255, 0, 0, 121);
  }
  ellipse(posX, posY, 20, 20);
  
  //amarillo
  fill(255, 255, 0, 121);
  ellipse(posX, posY+margen, 20, 20);
  
  //verde
  if (avanza == true){
     fill(0,255,0);
  } else {
    fill(0, 255, 0,121);
  }
  ellipse(posX, posY+(margen*2), 20, 20);
  
}