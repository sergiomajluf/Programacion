/*
  Demo de una aplicación usando:
    - Arrays Multidimensionales para guardar muchos datos por cada "cosa"
    - Cargando varias PImages en un array.
    - Creando objetos con los datos del Array y las PImage
 */

//Cuántos usuarios o "cosas" tendrá la lista
int totalUsers = 5;

// Array para almacenar contactos
Contacto[] contactos = new Contacto[totalUsers];

// Array que contiene imagenes
PImage[] imagenes = new PImage[totalUsers];

// Array doble con todos los datos
String[][] dataContactos = {
  // Nombre,       etiqueta,   activo,  foto
  {"Juan Vargas",  "iPhone",   "true",  "73.jpg"}, 
  {"Paz Daccaret", "Whatsapp", "false", "54.jpg"}, 
  {"Felix elGato", "trabajo",  "false", "76.jpg"}, 
  {"Pili Edwards", "casa",     "true",  "84.jpg"}, 
  {"María García", "iPhone",   "true",  "89.jpg"}
};

// Tipografías que usaremos
PFont f_nombre;
PFont f_etiqueta;

void setup() {
  size(480, 720);
  
  // Crear Array con nombres de tipografias de MI computador
  String[] fontList = PFont.list();
  
  // imprime el array con todos esos nombres
  printArray(fontList);

  // usamos esos nombres para crear nuestras tipografias
  f_nombre = createFont(fontList[126], 24);
  f_etiqueta = createFont(fontList[966], 12);

  // Almacena cada imagen dentro de un array 
  for ( int i = 0; i< totalUsers; i++ ) {
    imagenes[i] = loadImage(dataContactos[i][3]);
  }

  // Crea y almacena cada contacto dentro de una array
  for (int i = 0; i < totalUsers; i++) {
    //contactos[i] = new Contacto(personas[i], etiquetas[i], (i*80)+71, estados[i]);
    contactos[i] = new Contacto(
      // nombre
      dataContactos[i][0], 
      // etiqueta
      dataContactos[i][1], 
      // posY
      (i*80)+71, 
      // estado
      boolean(dataContactos[i][2]), 
      // foto
      imagenes[i]
      );
  }
}

void draw() {
  background(255);
  menuSuperior();
  listaDeContactos(totalUsers, 71);
  menuInferior();
}



void listaDeContactos(int cantidad, int posY) { 
  for (int i = 0; i < cantidad; i++) {
    contactos[i].muestraContacto();
  }
}