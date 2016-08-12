size(640, 480);
background(255);
int margen = 10;

//for ( contador; condicion ; cambio de contador)
for (int k = 0; k < height; k = k+1) {
  line(width/2, height/2, 0, height/2 - (k*margen));
  
  rotateZ(20);
  print("k=");
  print(k);
  print("\t");
  print("k*margen=");
  println(k*2);
}