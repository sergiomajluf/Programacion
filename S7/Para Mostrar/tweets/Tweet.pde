
class Tweet {
  String usuario;
  String texto;
  int posY;
  Boton miBoton;
  boolean visible;

  Tweet(String t_usuario, String t_texto, int t_posY) {
    usuario = t_usuario;
    texto = t_texto;
    posY = t_posY;
    // float t_x, float t_y, String t_nombre, boolean t_visible, float t_ancho
    miBoton = new Boton(0, posY, usuario, false, width);
  }

  void dibujar() {
 
    miBoton.display();
    
    //fill(255);
    //rect(0, posY, width, 100);
    fill(0);
    text(usuario, 30, posY+30);
    text(texto, 30, posY+45, width-30, 55);
    
    
    
  }
}