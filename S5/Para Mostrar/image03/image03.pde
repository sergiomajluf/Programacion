PImage gato;
PImage perro;

void setup() {
  size(800, 600);
  gato = loadImage("cat.jpg");
  perro = loadImage("dog.jpg");
}

void draw() {
  // si el tamaño es el mismo podemos usar una imagen como fondo
  background(perro);
  
  // tint recibe 1,2,3 o 4 argumentos)
  tint(
    map(mouseX, 0, width, 0, 255),
    120,
    220,
    map(mouseY, 0, height, 0, 255));
  image(gato, 0, 0); // Draw image

}