float [] x;
float [] y;
int contador = 0;
boolean interruptor = false;

void setup() {
  size(400, 400);
  x = new float[400];
  y = new float[400];
  for (int i = 0; i < 100; i++) {
    x[i] = random(0, width);
    y[i] = random(0, height);
  }
}

void draw() {
  background(255);
  for (int i = 0; i< width; i++) {
    dibuja(i);
  }
}

void dibuja(int i) {
  if (y[i] < 200) {
    fill(255, 0, 0);
  } else {
    fill(y[i]);
  }

  rect(i*10, height, 10, -x[i]);
}

void mousePressed() {

  x[contador+1] = mouseX;
  y[contador+1] = mouseY;
  contador++;
  miPosicion();
}

void miPosicion() {
  print(x[contador]);
  print(" ");
  println(y[contador]);
}

void keyPressed() {
  printArray(x);
  //interruptor = true;

  for (int i = 0; i < 100; i++) {
    x[i] = random(0, width);
    y[i] = random(0, height);
  }
}