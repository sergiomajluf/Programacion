/*
En este ejemplo, al hacer click imprimimos en la consola
la posición x/y del mouse

Esa posición la usamos además para dibujar la ellipse

*/

float [] x;
float [] y;
int contador = 0;

void setup() {
  size(400, 400);
  background(255);
  x = new float[10];
  y = new float[10];
  x[0] = 100;
  y[0] = 150;
}

void draw() {
  ellipse(x[contador], y[contador], 20, 20);
}


void mousePressed() {

  x[contador+1] = mouseX;
  y[contador+1] = mouseY;
  // cuando contador supere la cantidad
  // maxima de elementos del array
  // este codigo fallará.
  // ¿Como lo puedes modificar para evitar el error?
  contador++;
  miPosicion();
}

void miPosicion(){
  print(x[contador]);
  print(" ");
  println(y[contador]);
}

void keyPressed(){
  printArray(x);
}