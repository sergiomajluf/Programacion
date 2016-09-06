// Crear un objeto de tipografia

PFont cuerpo;
PFont titulos;

// Array con todas las tipografias instaladas
String[] misTipografias = PFont.list();

// char es un tipo de variable que contiene
// solo un caracter, o letra
// String, es una secuencia de char
// key es la char más reciente
String saludo = "El texto que voy a escibir es un texto muy largo pero tendran que confiar en mi cuando les digo que es un texto muy largo porque la verdad no lo ven en la pantalla";
String titulo = "Hola Curso!";

void setup() {
  size(640, 480);
  //fullScreen();
  
  //printArray(misTipografias);
  
  cuerpo = createFont(misTipografias[386], 20);
  titulos = createFont("ActionMan", 60);
}
void draw() {
  background(0);
  fill(255);
  //textSize(60);
  textAlign(LEFT);
  textFont(titulos);
  // text(c, x, y);
  text(titulo, 50, 50);

  fill(0, 255, 55);
  //textSize(30);
  textAlign(RIGHT);
  textFont(cuerpo);
  // text(str, x1, y1, x2, y2)
  text(saludo, 50, 100, width-50, height-50);
}
void keyPressed() {
  saludo = saludo + key; 
  println(saludo);
}
void mousePressed() {
  saludo = "";
  println(saludo);
}