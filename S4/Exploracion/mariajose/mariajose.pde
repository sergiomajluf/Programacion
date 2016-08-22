int value = 0;
int lala = 0;

void setup() {
  size(800, 600);
  frameRate(5);
  rectMode(CENTER);
}

void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      lala = 255;
    } else if (keyCode == DOWN) {
      lala = 0;
    }
  } else {
    lala = key;
  }

  print("Tecla: ");
  print(key);
  print("\t");
  print("lala=");
  println(lala);
}

void rectangulosConLineas() {
  fill(random(150), random(200), random(50), random(150)); 
  rect(random(width), random(height), random(width), random(height));
  stroke(2);
  line(mouseX, mouseY, random(800), random(600));
  fill(255);
  ellipse(mouseX, mouseY, 30, 30);
}

void borraConFade() {
  fill(120, 100);
  rect(width/2, height/2, width, height);
}

void draw() {
  //al apretar el mouse salen triangulos, circulos y el fondo
  //comienza a cambiar de colores
  if (value ==255) {
    background(random(226), random(228), random(55), random(100));
    fill(random(55), random(226), random(228), random(150));
    triangle(random(350), random(250), 400, 300, random(400), random(300));
    //los circulos se mueven con el movimiento del mouse  
    for (int y = 300; y < height; y = y+10) {
      fill(random(228), random(55), random(64));
      ellipse(mouseX, random(y), 10, 10);
      for (int x = 200; x < width; x = x+60) {
        fill(random(228), random(55), random(64));
        ellipse(random(x), mouseY, 10, 10);
      }
    }
  }  
  //al apretar el teclado aparecen rectangulos, lineas y circulos
  if (lala ==255) {
    rectangulosConLineas();
  } else if (lala == 98) {
    borraConFade();
  }
}