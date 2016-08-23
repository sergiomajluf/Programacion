/*
Acá estamos mezclando varias cosas previas.
Tenemo un array declarado pero sin datos

Luego en void setup le asignamos datos random
y en void draw tenemos dos opciones
- mostramos uno a uno con el click
- ponemos play con el teclado
*/

float [] x;
float [] y;
int contador = 0;
boolean interruptor = false;

void setup() {
  size(400, 400);
  x = new float[100];
  y = new float[100];

  for (int i = 0; i < 100; i++) {
    x[i] = random(0, width);
    y[i] = random(0, height);
  }
}

void draw() {
  //background(255);
  ellipse(x[contador], y[contador], 20, 20);

  if (interruptor) {
    if (contador < x.length -1) {
      contador++;
    } else {
      contador = 0;
    }
  }
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
  interruptor = !interruptor;
}