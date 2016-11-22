/*
Programación Basada en Objetos
(Object Oriented Programing - OOP)

Sergio Majluf
Noviembre 2016

*/

//Declarar una instancia (objeto) de la clase
Auto taxi1, taxi2, taxi3, taxi4;

void setup() {
  size(640, 480);
  taxi1 = new Auto (200, 100);
  taxi2 = new Auto (200, 200);
  taxi3 = new Auto (200, 300);
  taxi4 = new Auto (200, 400);
}

void draw() { 
  background(255);
  
  // llamamos a los metodos
  taxi1.dibuja();
  taxi2.dibuja();
  taxi3.dibuja();
  taxi4.dibuja();
 
  if(mousePressed){
    taxi1.avanza();
  } else {
    taxi2.avanza();
  }
}