void menuSuperior() {
  image(toolbar, 0, 17, 375, 45);

  fill(0, 50, 255);
  textAlign(LEFT);
  textFont(f_nombre, 13);
  text("Edit", 10, 50);

  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Favorites", 0, 30, width, 50);

  image(top, 2, 2, 370, 12);
}

void bienvenida() {
  
  textAlign(CENTER);
  textFont(f_nombre);
  text("Bienvenida\na tu Aplicacion", 0, height/2, width, height);
  btIntro.display();
}

void listaDeContactos(int cantidad, int posY) { 
  for (int i = 0; i < cantidad; i++) {
    contactos[i].muestraContacto();
  }
}


void otraFuncion() {
  image(detalles, 0,0, width, height);
  /*
  textAlign(CENTER);
  textFont(f_nombre);
  text("Tercera Pantalla", 0, height-160, width, height);
  */
  btOtra.display();
}




void menuInferior() {
  fill(220, 220, 220);
  noStroke();
  rect(0, height-50, width, 50);
}