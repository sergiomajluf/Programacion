Contacto[] contactos = new Contacto[5];

String[] personas = {
  "Juan Vargas",
  "Paz Daccaret",
  "Felix elGato",
  "Pili Edwards",
  "María José García"
};

String[] etiquetas = {
  "iPhone",
  "Whatsapp",
  "trabajo",
  "casa",
  "iPhone"
};

boolean[] estados = {
  true,
  false,
  false,
  true,
  true
};



PFont f_nombre;
PFont f_etiqueta;

void setup() {
  size(480, 720);
  // Crear un arra con los nombres de todas las tipografias
  // de MI computador
  String[] fontList = PFont.list();
  // imprime el array con todos esos nombres
  printArray(fontList);
  
  // usamos esos nombres para crear nuestras tipografias
  f_nombre = createFont(fontList[481], 24);
  f_etiqueta = createFont(fontList[486], 12);
 
 for(int i = 0; i < contactos.length; i++){
    contactos[i] = new Contacto(personas[i], etiquetas[i], (i*80)+71, estados[i]); 
  }
 
}

void draw() {
  background(255);
  menuSuperior();
  listaDeContactos(contactos.length, 71);
  menuInferior();
}



void listaDeContactos(int cantidad, int posY) { 
  for(int i = 0; i < cantidad; i++){
     contactos[i].muestraContacto();
  }
}