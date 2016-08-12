size(640, 480);
background(255);
int margen = 10;

for (int k = 0; k < height/margen; k = k+1) {
  line(0, margen, width, k*margen);
  
  
  print("k=");
  print(k);
  print("\t");
  print("k*margen=");
  println(k*2);
}