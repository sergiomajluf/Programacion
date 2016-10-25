void setup() {
  size(640, 480);
}

void draw() {
  background(120);
  miCasita(100, 200, 200, true, true);
  miCasita(400, 300, 100, true, true);
}

void miCasita(int x, int y, int size, boolean chimenea, boolean ventana) {
  if (chimenea) {
    rect(x+size/10, y, size/6, -size/3);
  }

  triangle(x, y, x+size, y, x+size/2, y-size/2);
  rect(x, y, size, size);

  if (ventana) {
    rect(x+size/10, y+size/10, size/4, size/4);
  }
}