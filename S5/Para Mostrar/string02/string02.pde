/*
Vamos autilizar el tipo de variable String
creandolo con un valor vacío, y luego asignandole un
nuevo valor que cambia cuando presionamos
una nueva tecla
*/

String miTecla = "";

void setup() {
  size(400, 200);
}
void draw() {
  background(104, 220, 180);
}

void keyPressed() {
    // key es tipo char, por eso el truco de
    // sumarlo a un String vacío con ""
    miTecla = ""+key;
    
    println(miTecla);
}