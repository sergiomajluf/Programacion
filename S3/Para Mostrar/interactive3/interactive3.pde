// Las variables que definimos al principio del sketch
// son globales y las podemos usar en cualquier funcion
int ancho = 50;
int alto = 50;
// variable de posición
int posX = 0;
int posY = 0;

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  //antes de dibujar pintamos el fondo de nuevo
  background(255);
  //alto = alto+2;
  // usamos las variables para dibujar
  rect(posX, posY, ancho, alto);
  // despues de dibujar, voy a cambiar un valor de posX
  
  // devuelve posX a 0, si posX > width
  if (posX > width){
    posX = 0;
  } else{
    posX = posX+5;
  }
 
  
  print("posX: "); print(posX);
  print("\t posY: "); println(posY);
}