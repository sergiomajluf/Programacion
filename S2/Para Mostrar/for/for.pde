// Este es el ejemplo más básico de un "for Loop"
int x = 100;
int y = 100;
size(200, 200);
stroke(255, 0, 0);
background(255);


// for (condicion) { lo que ejecuto repetidamente }
for (int i = 0; i < 20; i++) {
  println(i);
  line(5*i,0,5*i,200);
  
}