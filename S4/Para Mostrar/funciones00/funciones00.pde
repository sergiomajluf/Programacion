int miValor, miValor2;

void setup() {
  size(400, 400);
}

void draw() {
  semaforo();
  
  semaforo();
  
  
  miValor = suma(40,60);
  miValor2 = suma(2,3);
  
  println(miValor);
  println(miValor2);
}

int suma (int x, int y) {
  return x+ y;
}

void semaforo() {
  fill(255, 255, 255);
  rect(20, 20, 20, 20);

  fill(255, 0, 0);
  rect(60, 20, 20, 20);

  fill(0, 255, 0);
  rect(100, 20, 20, 20);
}