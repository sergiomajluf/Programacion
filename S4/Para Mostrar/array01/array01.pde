/*
Con los valores de este array dibujaremos
 ellipses en la pantalla, uno a uno
 
 Usaremos el mouse para avanzar un "contador"
 Usaremos el teclado para dosminuir un "contador"
 
 El contador lo usaremos para llamar al
 indice del Array del cual queremos sacar datos
 
 El array tiene cuatro elementos: el 0,1,2 y 3
 Atencion que si el contador es mayor que 3, o menor que 0
 encontraremos un error.
 */

int [] x = {100, 300, 300, 100};
int [] y = {100, 100, 300, 300};
int contador = 0;

void setup() {
  size(400, 400);
  frameRate(10);
}

void draw() {
  background(255);
  for (int i = 0; i < x.length; i++) {
    ellipse(x[contador], y[contador], 20, 20);
  }

  print("Contador: ");
  println(contador);
}

/*
  Para evitar el error, podemos protegernos con este
 codigo, que antes de modificar el contador
 revisará que contador no sea menor a 0 ni mayor que 3
 */

void mousePressed() {
  if (contador < 3) {
    //incrementa el contador
    contador++;
  } else {
    contador =0;
  }
}

void keyPressed() {
  if (contador > 0) {
    //disminuye el contador
    contador--;
  } else {
    contador =3;
  }
}