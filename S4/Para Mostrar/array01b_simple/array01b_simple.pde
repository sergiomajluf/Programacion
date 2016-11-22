// dos arrays creados manualmente
float[] numeros = new float[1000];
float[] posX = new float[1000];

void setup() {
  size(800, 400);
  
  for (int i = 0; i < numeros.length; i++){
     print("Esta linea se imprimie ");
     print(i);
     println(" veces");
    
     posX[i] = random(width); 
     numeros[i] = random(200); 
  }
}

void draw() {
  background(255);

  fill(200, 80);
  // centroX, centroY, ancho, alto

  for (int i =0; i < numeros.length; i++) {
    // la posicionX obtenida de un array, y el tamaño de otro
    ellipse(posX[i], 200, numeros[i], numeros[i] );
  }
}