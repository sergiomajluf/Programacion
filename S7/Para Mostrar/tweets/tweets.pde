Tweet[] misTweets = new Tweet[3];

String[][] misDatos = {
  //  ususario,      texto
  {  "sergiomajluf", "Hola, este es mi primer tweet"  }, 
  {  "piliedwards", "El tweet de la Pili"  }, 
  {  "pazdr", "Piti poti"  }

};

boolean pantallaPrincipal = true;
String miUsuarioActivo;


void setup() {
  size(375, 667);
  creaMisTweets(misTweets.length);
}


void draw() {
  background(255);
  if(pantallaPrincipal == true){
    dibujaMisTweets();
  } else {
    muestraMiFoto();
  }
}

void mousePressed(){
  for(int i = 0; i < misTweets.length; i++){
    if(misTweets[i].miBoton.mouseIsOver() == true){
      println(misTweets[i].usuario);
      pantallaPrincipal = false;
      miUsuarioActivo = misTweets[i].usuario;
      
    }
  }

}

void creaMisTweets(int cantidadDeTweets) {
  // Crear los tweets
  for (int i = 0; i < cantidadDeTweets; i++) {
    misTweets[i] = new Tweet( misDatos[i][0], misDatos[i][1], 100*i);
  }
}

void dibujaMisTweets() {
  for (int i = 0; i < misTweets.length; i++) {
    misTweets[i].dibujar();
  }
}


void muestraMiFoto() {
  fill(0);
  rect(50, 50, width-100, height-100);
  fill(255);
  text(miUsuarioActivo, 200, height/2);
  PImage usuario = loadImage(miUsuarioActivo + ".png");
  image(usuario, 200,200);
  
}

void keyPressed(){
  pantallaPrincipal = !pantallaPrincipal;
}