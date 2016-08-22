float [] x;
float [] y;
int contador = 0;

void setup() {
  size(400, 400);
  x = new float[10];
  y = new float[10];
  x[0] = 100;
  y[0] = 150;
}

void draw() {
  background(255);
  ellipse(x[contador], y[contador], 20, 20);
}


void mousePressed() {

  x[contador+1] = mouseX;
  y[contador+1] = mouseY;
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