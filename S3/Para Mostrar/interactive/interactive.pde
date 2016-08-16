// Las variables que definimos
// al principio del sketch
// son globales y las podemos
// usar en cualquier funcion

int ancho = 300;
int alto = 300;

void setup() {
  size(400, 400);
  background(255);
  
}

void draw() {
  //antes de dibujar
  // pintamos el fondo de nuevo
  background(255);
  alto = alto+2;
  // usamos las variables para dibujar
  rect(random(20),random(20), ancho, alto);
}