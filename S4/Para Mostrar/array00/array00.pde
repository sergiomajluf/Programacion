/*
Crearemos un Array llamado x
Crearemos otro Array llamado y
A cada uno, le asignamos manualmente cuator valores
*/
int [] x = {100, 150, 200, 250};
int [] y = {100, 300, 150, 100};

// en un Array, la posición de cada valor dentro del Array se llama indice
// y el índice se cuenta desde 0
// por ejemplo, x[0] es igual a 100
// por ejemplo, x[2] es igual a 200
// mientras que y[1] es igual a 300


void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  // usando los valores de x e y dibujamos ellipses
  ellipse(x[0], y[0], 20, 20);
  ellipse(x[1], y[1], 20, 20);
  ellipse(x[2], y[2], 20, 20);
  ellipse(x[3], y[3], 20, 20);
}