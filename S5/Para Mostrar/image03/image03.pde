PImage gato;
PImage perro;

float miRangoAzul;
float miRangoRojo;
float miRangoVerde;

void setup() {
  size(800, 600);
  gato = loadImage("cat.jpg");
  perro = loadImage("dog.jpg");
}

void draw() {
  // si el tamaño es el mismo podemos usar una imagen como fondo
  background(0);
  //                 dato, origMin, origMax, nuevoMin, nuevoMax
  miRangoRojo = map(mouseX, 0, width, 0, 255);
  miRangoVerde = map(mouseY, 0, height, 0, 255);
  miRangoAzul = map(mouseX*mouseY, 0, 800*600, 0,255);
  
  // tint recibe 1,2,3 o 4 argumentos)
  tint(miRangoRojo, miRangoVerde, miRangoAzul);
  image(gato, 0, 0); // Draw image

}