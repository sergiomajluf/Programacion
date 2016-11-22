/*
  1. declara la clase
 2. declarar variables locales de la clase
 3. declarar el constructor de la clase
 
 */


class Contacto {

  String nombre;
  //PImage foto;
  String etiqueta;
  float posY;
  boolean activo;
  color c = color (120, 30, 200);

  Contacto(String t_nombre, String t_etiqueta, float t_posY, boolean t_activo) {
    nombre = t_nombre;
    etiqueta = t_etiqueta;
    posY = t_posY;
    activo = t_activo;
  }


  void muestraContacto() {
    if (activo == true){
      fill(c);
    } else {
      fill(c,60);
    }
    ellipse(50, posY+40, 60, 60);
    noFill();
    stroke(0);
    //rect(0, posY, width, 80);
    line(0, posY+80, width, posY+80);
    fill(0);
    textFont(f_nombre);
    textAlign(LEFT);
    textSize(24);
    text(nombre, 100, posY+30, 400, 100);

    textFont(f_etiqueta);
    textSize(12);
    fill(120);
    text(etiqueta, 380, posY+30, 100, 100);
  }
}