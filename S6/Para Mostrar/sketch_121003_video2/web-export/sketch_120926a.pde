void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for (int x = 0 ; x < mouseX; x += mouseX/50+1){
    line (x, 0, x, height);
  }
}


