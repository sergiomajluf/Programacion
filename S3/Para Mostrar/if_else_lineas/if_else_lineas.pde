/*
Este es un repaso de las primeras dos semanas
 Autor: Sergio Majluf
 */

// esta variable es GLOBAL
float posX = 0;
float posY = 0;
int tamano = 20;

int velocidad = 3;

void setup() {
  size(500, 300);
  background(250);
  //posX = width/2;
  posY = height/2;
}

void draw() {
  background(250);
  
  line (width/3, 0, width/3, height);
  line ((width/3)*2, 0, (width/3)*2, height);

  print("posX = "); 
  println(posX);

  if ( posX < width) {
    posX = posX + velocidad;
  } else {
    posX = 0;
  }

  if (posX < width/3) {
    fill(255, 0, 0);
  } else if (posX > (width/3)*2) {
    
    fill(0, 255, 0);
  } else if ( posX > width/3) {
    fill(0, 0, 255);
  }

  ellipse(posX, posY, tamano, tamano);
}