int ancho = 50;
int alto = 50;
// Esta variable guarda el "estado" del mouse
// y usamos 0 y 1 para representarlo
int click = 0;

// recuerden que también podemos usar
// una variable booleana, es decir true/false
boolean estado = false;


void setup() {
  size(400, 400);
  background(255);
  noFill();
  noStroke();
}

void draw() {
  ellipse(mouseX, mouseY, ancho, alto);
}

// evaluar que el mouse esté presionado
void mousePressed(){
  if(click == 0){
    click =1 ;
    fill(255,255,0);
  } else {
    click = 0;
    noFill();
    noStroke();
  
  }
}