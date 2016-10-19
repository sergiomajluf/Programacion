/*
Pelota que rebota
 
 Este es un repaso de las primeras dos semanas
 Autor: Sergio Majluf
 
 */

// esta variable es GLOBAL
float posX = 0;
float posY = 0;
int tamano = 20;

int primerTercio = 166;
int segundoTercio = primerTercio * 2;

int velocidad = 3;

void setup() {
  size(500, 300);
  background(250);
  //posX = width/2;
  posY = height/2;
}

void draw() {
  background(250);

  line (primerTercio, 0, primerTercio, height);
  line (segundoTercio, 0, segundoTercio, height);

  avanza();
  cualquierNombre();
  ellipse(posX, posY, tamano, tamano);
}

void avanza() {

  if ( posX < width) {
    posX = posX + velocidad;
  } else {
    posX = 0;
  }
}

void cualquierNombre () {
  if (posX < primerTercio) {
    fill(255, 0, 0);
  } else if (posX > primerTercio && posX < segundoTercio) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
}