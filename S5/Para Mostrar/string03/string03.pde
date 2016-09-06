/*
Ahora podemos tomar el valor de miTecla
 y mostrarlo en la pantalla
 */

//PFont le dice a Processing que cargaremos una tipografía
// y que se llamará fuente
PFont fuente;

// Podemos comenzar con el texto vacío, o existente
String miTexto = "";

void setup() {
  size(400, 200);

  // le asignamos una tipografía específica a fuente
  fuente = loadFont("ActionManShaded-48.vlw");

  // asignamos fuente al objeto textFont
  textFont(fuente);

  frameRate(10);
}
void draw() {
  background(104, 220, 180);
  fill(0);
  
  // dibuja un texto, con el String predefinido
  text(miTexto, 20, 20, 380, 180);
}
void keyPressed() {
  // key es tipo char, por eso el truco de
  // sumarlo a un String vacío con ""
  miTexto +=key;
  println(miTexto);
}