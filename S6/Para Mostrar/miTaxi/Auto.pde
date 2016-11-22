// Creamos la CLASE con nuestro nombre
class Auto {
  float posX;
  float posY;
  float ancho = 100;
  float alto = 50;

  // Constructor
  Auto(float tX, float tY) {
    posX = tX;
    posY = tY;
  }
  
  // Método para dibujarlo
  void dibuja() {
    fill(0);
    rect(posX, posY, ancho, alto);
    fill(255, 255, 0);
    rect(posX+30, posY, 30, alto);
  }

  // Método para moverlo
  void avanza() {
    if (posX < width) {
      posX += 5;
    } else {
      posX = 0;
    }
  }
}