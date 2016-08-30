/*
Vamos a explorar algunas funciones de texto.
 Primero, veamos qué tipografías existen
 en nuestro computador con list();
 
 list() es un array. Lo asingaremos a un array
 */

PFont font;
String[] fontList = PFont.list();
String miTexto = "";
int counter = 0;

void setup() {
  size(600, 200);
  printArray(fontList);

  //font = loadFont("Gotham-Book-32.vlw");
  font = createFont("Gotham-Book-32.vlw", 32);
  textFont(font);
  textAlign(LEFT, CENTER);

  frameRate(15);
}

void draw() {
  background(#BE0FFF);
  miTexto = counter + " " + fontList[counter];
  text(miTexto, 20, height/2);

  if (counter < fontList.length -1) {
    counter++;
  } else {
    counter = 0;
  }
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}