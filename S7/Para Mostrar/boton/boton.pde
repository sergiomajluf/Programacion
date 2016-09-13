/*
 
 Ejemplo de Boton
 1. Dibujamos un rectángulo
 2. Evaluamos posición del mouse
 3. Si mouse está dentro de rect, es un botón, por lo tanto
 pintamos el botón de un color.
 Si no, lo pintamos de otro color.
 4. En la función mousePressed, evaluamos si se hizo click
 mientras se estaba dentro del botón
 
 */

float x = 100;
float y = 50;
float w = 150;
float h = 80;

int contador = 0;

void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  noFill();
}

void draw() {
  background(255);

  //dibuja un rectangulo
  rect(x, y, w, h);

  // Pintamos de color según si estámos sobre el botón o no
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    fill(120);
  } else {
    fill(200);
  }
}


void mouseReleased() {
  // Una vez que hicimos click, y el click está dentro del boton
  // Para evaluar que estamos dentro, miramos la posición del mouse
  // y la comparamos con la posición del botón
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    //acá se ejecuta la acción del boton
    
    contador++;
    print(contador);
    println(" click sobre el botón");
    
    fill(255,0,0);
  
}
}