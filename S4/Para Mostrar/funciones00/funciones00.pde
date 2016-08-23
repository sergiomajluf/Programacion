/*

 Las Funciones son grupos de codigo
 creados por nosotros, para que podamos
 reutilizar ahorrandonos escribir cada vez
 el mismo codigo
 
 */

int miValor, miValor2;

void setup() {
  size(400, 400);
}

/*
 Las funciones "void" ejecutan el codigo
 que tienen entre llaves
 
 Las funciones que comienzan con int o float
 además de ejecutar el codigo, son capaces
 de entregar o devolver un valor cuando son ejecutadas
 
 */


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


void draw() {
  semaforo();
  semaforo();

  miValor = suma(40, 60);
  miValor2 = suma(2, 3);

  println(miValor);
  println(miValor2);
}