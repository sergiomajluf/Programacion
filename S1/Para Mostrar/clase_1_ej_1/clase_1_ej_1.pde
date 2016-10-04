/*
Este código es para el primer ejercicio del curso de Programación
Autor: Sergio Majluf
Fecha: 4 de octubre
*/

size(200,200); // Defino el tamaño del sketch

// En escala de grises, el 0 es negro, 255 es blanco
background(255);
scale(0.5);

// Comiencen a traspasar sus dibujos!!!

stroke(0,255,0); // Contorno Verde

fill(0);// negro
ellipse(100,100,40,40);


fill(255, 190); //blanco transparente. Primero el color, después la opacidad
ellipse(100,100, 80,20);

noFill(); // No habrá color de relleno
//noStroke();
// RGB = Red Green Blue
stroke(255,0,0); // defino un color en formato RGB

strokeWeight(5); // Define el ancho del trazo

// Cuadrado con margen
// rect (fromX, fromY, ancho, alto, curva);
rect(20,20, 160, 160, 15);