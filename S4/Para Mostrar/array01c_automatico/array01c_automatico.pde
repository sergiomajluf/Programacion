// dos arrays creados manualmente

int[] numeros = {8, 10, 7, 3, 5, 14, 18, 0, 6, 4, 12, 15, 35, 1, 9, 16, 21, 80, 19};

float[] posX = new float[19];

void setup() {
  size(400, 400);
  for (int i=0; i < 19; i++) {
    //posX[i] = random(400);
    posX[i] = i*5;
  }
}

void draw() {
  background(255);

  fill(200, 80);
  // centroX, centroY, ancho, alto

  for (int i =0; i < 19; i++) {
    ellipse(posX[i], 200, numeros[i], numeros[i] );
  }
}