// Leer primero la V1
// Ejemplo de codigo utilizado en ayudantia.
// Modo de programacion dinamico o interactivo

/* Las variables se declaran antes de las funciones setup y draw, de esta manera pueden
ser utilizadas a los largo del codigo (si las pusieramos dentro del setup, solo podriamos
llamarlas dentro del setup) */
float rectSize = 10;  // Declaracion de variable para el tamaño del circulo
float rectPos = 10;  // Declaracion de variable para la posicion del circulo
int micolor = 255;  // Declaracion de variable color


/* En la funcion setup se definen las reglas que determinan el ambiente inicial del codigo;
tamaño del canvas, modos de dibujo, se pueden cargar imagenes y fuentes de texto, etc..*/

void setup(){
size(600, 600);   // Esta funcion define el tamaño del canvas
noStroke();  // Esta funcion elimina el trazado de las figuras
frameRate(24);  // Esta funcion determina las veces que el draw() se ejecuta en 1 segundo
}  // Fin del setup.


/* En la funcion draw se define el codigo que va a ser leido y ejecutado en bucle, una y 
otra vez. Esta funcion permite hacer dibujos dinamicos, que pueden ser interactivos.
Los comandos dentro de draw se repiten en orden hasta que el programa se detenga. */

void draw(){
for (int i=0; i<width; i++) {  // primer forLoop, contador secuencial para eje X
  for (int j=0; j<height; j++) {  // segundo forLoop, dentro de el anterior, para el eje Y
    fill(random(255));  // Funcion para definir el color de las figuras
                        // random() sirve para dar valores al azar, el parametro
                        // que recibe indica que se elige un numero HASTA el que
                        // se indica, en este caso uno desde 0 hasta 255

    rect(i*rectPos, j*rectPos, rectSize, rectSize);
    /* El cuadrado se dibuja en una posicion relativa a -i- en el eje X
    y relativa a -j- en el eje Y, de esta manera podemos rellenar el canvas
    de circulos, utilizando solo un comando de dibujo. Gracias forLoop!
    */
  }
 }
}

// PD: recomiendo que busquen la funcion "background()" (vista en clase) para dibujar
// figuras que no cubren toda la pantalla, de esta manera se "elimina" el frame anterior,
// lo que impide que se acumulen los dibujos uno sobre otro. En este ejemplo no es necesario
// pues los cuadrados llenan todo el canvas, y no tienen opacidad.

/* Jugar cambiando las figuras a dibujar, los colores, y los valores de las variables
sirve para entender mejor el codigo, y para lograr nuevos y mejores resultados
*/