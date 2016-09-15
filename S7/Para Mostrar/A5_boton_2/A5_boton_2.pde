// AY06? Como programar un boton simple

int pX = 0;   // Variable para la posicion del boton en X
int pY = 0;   // Variable para la posicion del boton en Y
int sX = 50;   // Variable para el ancho del boton
int sY = 50;   // Variable para el alto del boton
boolean click = false;   // Boolean para el estado del click 

void setup() {
  size(250, 250);
}

void draw() {
  rect(pX, pY, sX, sY);   // Dibujamos un rectangulo en las posiciones antes definidas

  if (click == true) {   // Consultar el estado del boolean Click
    fill(0);   // El click va a cambiar el relleno del boton, de NEGRO
  } else {
    fill(255);   // a BLANCO
  }
}

void mousePressed() {
  if (mouseX > pX && mouseX < pX + sX && mouseY > pY && mouseY < pY + sY && click == false) {
    /* Esta sintaxis matematica permite delimitar el boton, usando las variables definidas
    para construir el rectangulo.
    
    */
    click = true;  // si se cumplen las variables, de estar presionando y dentro del boton
  } else {         // el estado del click cambia
    click = false;  // si no, el stado del click se mantiene falso
  }
}