// Dos arrays
// uno creado y asignado manualmente
// otro creado manualmente, pero asignado en un for/loop

// en el primer caso, ingresamos manualmente los 19 datos
// en el segundo creamos un array con 19 casilleros vacios, que llenaremos despues
int[] numeros = {24, 30, 21, 9, 15, 42, 54, 0, 18, 12, 36, 45, 105, 3, 27, 48, 63, 240, 57};
float[] posX = new float[19];


void setup() {
  size(400, 400);
  //como sabemos que el array tiene 19 casilleros, usamos ese numero para el loop
  for (int i=0; i < 19; i++) {
    //dentro del loop le asignamos valores a cada
    // indice del array. Los valores pueden ser aleatorios
    // o una formula
    // o incluso una copia de otro array

    // Aleatorio
    //posX[i] = random(400);

    // Formula
    posX[i] = i*20;

    // Copia de otro array
    //posX[i] = numeros[i];
  }
}

void draw() {
  background(255);

  fill(200, 80);
  // centroX, centroY, ancho, alto

  for (int i =0; i < 19; i++) {
    // ya que podemos extraer un indice del array
    // que tal si lo usamos como color?
    fill(numeros[i], 120);
    
    //finalmente dibujamos
    ellipse(posX[i], 200, numeros[i], numeros[i] );
  }
}