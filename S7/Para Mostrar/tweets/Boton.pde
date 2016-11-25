class Boton {
  float posX;
  float posY;
  float ancho = 30;
  int alto = 100;
  color colorBt = #BADA55;
  color colorBtHover = #00FFFF;
  String nombre;
  boolean doOnce;
  boolean visible;

  Boton(float t_x, float t_y, String t_nombre, boolean t_visible, float t_ancho) {
    posX = t_x;
    posY = t_y;
    nombre = t_nombre;
    visible = t_visible;
    ancho = t_ancho;
  }

  void display() {
    //fill(mouseIsOver()? colorBtHover:colorBt);
    if (mouseIsOver() == true) {
      fill(colorBtHover);
    } else {
      fill(colorBt);
    }
    
    noStroke();
    
    if (visible == true) {
      fill(colorBt);
      
    } else {
      fill(220);
    }
    
    rect(posX, posY, ancho, alto);
  }


  boolean mouseIsOver() {
    if (mouseX > posX && mouseX < (posX + ancho) && mouseY > posY && mouseY < (posY + alto)) {
      return true;
    }
    return false;
  }
}