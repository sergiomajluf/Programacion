// convertirlo a ArrayList

int [] x = {100, 150, 200, 250};
int [] y = {100, 150, 200, 250};

int contador = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  for (int i = 0; i < x.length; i++) {
    ellipse(x[contador], y[contador], 20, 20);
    ellipse(x[contador+1], y[contador+1], 20, 20);
  }
}


void mousePressed(){
contador++;
}

void keyPressed(){
contador--;
}