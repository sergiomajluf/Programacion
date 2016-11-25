/*
  Demo de una aplicación usando:
 - Arrays Multidimensionales para guardar muchos datos por cada "cosa"
 - Cargando varias PImages en un array.
 - Creando objetos con los datos del Array y las PImage
 */

//Cuántos usuarios o "cosas" tendrá la lista
int totalUsers = 6;

int pantalla = 0;

// Array para almacenar contactos
Contacto[] contactos = new Contacto[totalUsers];

// Array que contiene imagenes
PImage[] imagenes = new PImage[totalUsers];

PImage top, toolbar, detalles;

// Array doble con todos los datos
String[][] dataContactos = {
  // Nombre,       etiqueta,   activo,  foto
  {"Juan Vargas", "iPhone", "true", "73.jpg"}, 
  {"Paz Daccaret", "Whatsapp", "false", "54.jpg"}, 
  {"Felix elGato", "trabajo", "false", "76.jpg"}, 
  {"Pili Edwards", "casa", "true", "84.jpg"}, 
  {"María García", "iPhone", "true", "89.jpg"},
  {"Super Man", "Hwuawei", "false", "73.jpg"}
};

// Tipografías que usaremos
PFont f_nombre;
PFont f_etiqueta;

Boton btIntro;
Boton btOtra;

void setup() {
  size(375, 667);

  // Crear Array con nombres de tipografias de MI computador
  String[] fontList = PFont.list();

  // imprime el array con todos esos nombres
  //printArray(fontList);

  // usamos esos nombres para crear nuestras tipografias
  f_nombre = createFont(fontList[137], 20);
  f_etiqueta = createFont(fontList[885], 11);

  // Almacena cada imagen dentro de un array 
  for ( int i = 0; i< totalUsers; i++ ) {
    imagenes[i] = loadImage(dataContactos[i][3]);
  }

  // Crea y almacena cada contacto dentro de una array
  for (int i = 0; i < totalUsers; i++) {
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

  top = loadImage("top.png");
  toolbar = loadImage("toolbar.png");
  detalles = loadImage("detalles.png");
  
  btIntro = new Boton(width/2-15, 300, "Intro", true);
  btOtra = new Boton(8, 35, "Detalles", false);
}

void draw() {
  background(245);

  menuSuperior();
  
  // Aca pasa todo el programa
  if      (pantalla == 0) bienvenida();
  else if (pantalla == 1) listaDeContactos(totalUsers, 71);
  else                    otraFuncion();
  // Fin del programa
  
  menuInferior();
}



void mousePressed() {

  if (btIntro.mouseIsOver()) {
    pantalla = 1;
    println(btIntro.nombre);
  } 

  for (int i = 0; i < totalUsers; i++) {
    if (contactos[i].boton.mouseIsOver()) {
      pantalla = 2;
      println(contactos[i].boton.nombre);
    }
  }

  if (btOtra.mouseIsOver()) {
    pantalla = 0;
    println(btOtra.nombre);
  }
}

void keyPressed() {
  if (key == '1') {
    pantalla =0;
  } else if (key == '2') {
    pantalla =1;
  } else if (key == '3') {
    pantalla =2;
  }
}