// Ejemplo codigo ayudantia 02
// Base de entregable para tarea 02


/* RECUERDEN que esto es solo lo basico a entregar, deben explorar e investigar
   mas formas, colores, metodos. NO PUEDEN entregar este codigo                */

int click = 0;   // Declaración de variable click, para usar en el evento mouse
int tamano = 10;  // Declaraciòn variable tamano, para usar en evento teclado

void setup() {   
  size(500, 500);  //  Tamaño canvas
}

void keyPressed() {    // - Evento teclado, se definen 2 estados para la variable
  if (tamano == 10) {  // - Debemos respetar el valor inicial de la variable
    tamano = 150;      // - Al presionar una tecla, el valor cambia, y al
  } else {             // presionarla denuevo, el valor vuelve al incial
    tamano = 10;
  }
}
void mousePressed() {  // - Evento mouse, aplican las mismas reglas que en el 
  if (click == 0) {    // evento teclado.
    click = 255;
  } else {
    click = 0;
  }
}
void draw() { 
  if (click == 255) {     // Si click es 255 (click apretado) ejecutar:
    ellipse(mouseX,mouseY,tamano,tamano);   // - Dibujar ellipse en posicion de 
  }                                         // y de tamaño dependiente del evento 
}                                           // teclado.