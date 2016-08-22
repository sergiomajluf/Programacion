// Ejemplo de codigo utilizado en ayudantia.
// Modo de programacion estatico

size(600, 600);   // Esta funcion define el tamaño del canvas
ellipseMode(CORNER);  //  Esta funcion sirve para definir desde que punto
                      //  se dibuja el circulo. CENTER desde el centro
                      //  CORNER desde la esquina. Elegimos CORNER para ordenar
                      //  de manera mas facil los circulos en la grilla.
float ellipseSize = 30;  // Declaracion de variable para el tamaño del circulo
float ellipsePos = 30;  // Declaracion de variable para la posicion del circulo
int micolor = 255;  // Declaracion de variable color
noStroke();  // Esta funcion elimina el trazado de las figuras

for (int i=0; i<width; i++) {  // primer forLoop, contador secuencial para eje X
  for (int j=0; j<height; j++) {  // segundo forLoop, dentro de el anterior, para el eje Y
    fill(random(255));  // Funcion para definir el color de las figuras
                        // random() sirve para dar valores al azar, el parametro
                        // que recibe indica que se elige un numero HASTA el que
                        // se indica, en este caso uno desde 0 hasta 255
                        
//fill(random(micolor),random(micolor),random(micolor),random(micolor));
    /* Este fill tiene mas parametros, recordemos que para el color:
    - 1 parametro de 0-255 para escala de grises
    - 3 parametros de 0-255 para color RGB
    - 4 parametros de 0-255 para RGB y opacidad
    */

    ellipse(i*ellipsePos, j*ellipsePos, ellipseSize, ellipseSize);
    /* El circulo se dibuja en una posicion relativa a -i- en el eje X
    y relativa a -j- en el eje Y, de esta manera podemos rellenar el canvas
    de circulos, utilizando solo un comando de dibujo. Gracias forLoop!
    */
  }
}

/* Jugar cambiando las figuras a dibujar, los colores, y los valores de las variables
sirve para entender mejor el codigo, y para lograr nuevos y mejores resultados
*/