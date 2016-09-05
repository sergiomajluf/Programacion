/*
Ejemplo de transparencia
Cargaremos tres imágenes, todas PNG con areas transparentes.

Gato se ve siempre, y los ojos son transparentes.
Los ojos em cambio, sólo se mostrarán cuando la 
posición del mouse supere la mitad hacia la derecha
y luego la mitad hacia abajo

*/

PImage gato;
PImage ojos1;
PImage ojos2;

void setup() {
  size(800, 600);
  gato = loadImage("gato.png");
  ojos1 = loadImage("ojos1.png");
  ojos2 = loadImage("ojos2.png");
}

void draw() {
  background(mouseX, mouseY, 180);
  image(gato, 0, 0);

  if (mouseX > width/2) {
    if (mouseY > height/2) {
      image(ojos2, 0, 0);
    } else {
      image(ojos1, 0, 0);
    }
  }
}