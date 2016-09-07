/*Ayudantia_06;
Ejemplo de aplicacion = instagram;
Version = 1;

*/
PImage foto1;
PImage foto2;
PImage foto3;
PImage bg;   //  PImage para crear las variables de fotos

PFont comm;  //  PFont crea nuestras variables de tipografias
PFont negg;

int count = 0;  // contador para rotar con un click
int altura = 180;

void setup() {
  size(400, 816);

  foto1 = loadImage("1.jpg");  // cargar la imagen desde la carpeta data en
  foto2 = loadImage("2.jpg");  // nuestras variables de fotos
  foto3 = loadImage("3.jpg");
  bg = loadImage("banners.png");

  comm = createFont("MyriadPro-Regular.vlw", 14);  // cargar las tipografias desde
  negg = createFont("MyriadPro-Bold.vlw", 14);     // la carpeta data a las var.
}


void mousePressed() {  // con cada click sumamos un numero al contador
  count = count+1;
  if (count >2) { // "tamaño" maximo del contador
    count=0;      // reiniciar el contador cuando supere el tamaño maximo
  }
}

void draw() {

  fill(255);
  background(bg); // dibujar la imagen de fondo antes del contenido
  textFont(comm); // para usar nuestra tipografia en los textos

  if ( count == 0) {    // de acuerdo al valor del contador, ejecutamos:
  
    image(foto1, 25, altura);// foto
    fill(255, 0, 0);
    ellipse(276, 690, 8, 8); // circulo rojo, indica un nuevo like o seguidor
    fill(22, 84, 136);       // color likes
    text(90, 33, 611);       // likes
    fill(0);                 // color texto
    text("mi lugar favorito del mundo #instabkn", 25, 625);
    
  } else if (count==1) {   // de acuerdo al valor del contador, ejecutamos:
    image(foto2, 25, altura); // foto
    fill(22, 84, 136);        // color likes
    text(54, 33, 611);        // likes
    fill(0);                  // color texto
    text("quemiedooo #tiburon", 25, 625);  // texto
    
  } else if (count==2) {    // de acuerdo al valor del contador, ejecutamos:
    image(foto3, 25, altura);   // foto
    fill(22, 84, 136);          // color likes
    text(33, 33, 611);          // likes
    fill(0);                    // color texto
    text("animal favorito #instatigre", 25, 625);  // texto
  }
}