/*
 
 Ejemplo en el que cargamos imagens desde internet
 y luego las mostramos al hacer click
 
 Las imagenes las obtenemos desde lorempixel.com
 
 1. cargar en array
 2. mostrar con click
 3. incoporar text
 4. cambiar tint()
 
 */

// Cuantas imagenes
int maxImages = 10;
int imageIndex = 0; 

// un Array para almacenar las fotos
PImage[] images = new PImage[maxImages];

PFont font;
String[] fontList = PFont.list();

void setup() {
  size(640, 480);
  // Loading the images into the array
  for (int i = 0; i < images.length; i++ ) {
    int j = i+1;
    images[i] = loadImage( "http://lorempixel.com/output/people-q-c-640-480-" + j + ".jpg");
  }

  font = createFont(fontList[55], 32);
  textFont(font);
}
void draw() {
  tint(mouseX, mouseY, mouseX*mouseY);
  image(images[imageIndex], 0, 0); // Displaying one image
  text(imageIndex, 50, height-20);
}
void mousePressed() {
  //imageIndex = int(random(images.length));
  imageIndex ++;
  if (imageIndex > 9) imageIndex = 0;
}