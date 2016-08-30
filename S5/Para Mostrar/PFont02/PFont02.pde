/*
Con una pequeña modificacion ahora podemos
ver cada tipografía instalada!!!!

*/

PFont font;
String[] fontList = PFont.list();
String miTexto = "";
int counter = 0;

void setup() {
  size(600, 200);
  printArray(fontList);
  textAlign(LEFT, CENTER);

  //frameRate(15);
}

void draw() {
  background(255-counter, counter, counter-100);
  miTexto = counter + " " + fontList[counter];
  
  font = createFont(fontList[counter], 32);
  textFont(font);
  fill(counter-255, counter-255, counter-100);
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