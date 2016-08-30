PImage img;

void setup() {
  size(320, 240);

  //Crea una instancia de PImage al cargar
  // un archivo de imagen
  img = loadImage("cat.jpg");
}

void draw() {
  background(0);
  // el archivo, x, y, ancho, alto
  //image(img, 0, 0, width, height);
  
  image(img, 0, 0, mouseX, mouseY);
}