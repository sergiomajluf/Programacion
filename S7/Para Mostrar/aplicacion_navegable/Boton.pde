class Boton {
  float posX;
  float posY;
  int ancho = 30;
  int alto = 30;
  color colorBt = #BADA55;
  color colorBtHover = #00FFFF;
  String nombre;
  boolean doOnce;
  boolean visible;

  Boton(float t_x, float t_y, String t_nombre, boolean t_visible) {
    posX = t_x;
    posY = t_y;
    nombre = t_nombre;
    visible = t_visible;
  }

  void display() {
    fill(mouseIsOver()? colorBtHover:colorBt);
    noStroke();
    ellipseMode(CORNER);
    if (visible) ellipse(posX, posY, ancho, alto);
  }


  boolean mouseIsOver() {
    if (mouseX > posX && mouseX < (posX + ancho) && mouseY > posY && mouseY < (posY + alto)) {
      return true;
    }
    return false;
  }
}