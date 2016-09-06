
// char es un tipo de variable que contiene
// solo un caracter, o letra
// String, es una secuencia de char
// key es la char más reciente

String saludo = "El texto que voy a escibir es un texto muy largo pero tendran que confiar en mi cuando les digo que es un texto muy largo porque la verdad no lo ven en la pantalla";
void setup() {
  size(400, 200);
}
void draw() {
  background(255);
  fill(0,0,255);
  // text(c, x, y);
  text(saludo, 50, 50);
  
  fill(255,0,255);
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