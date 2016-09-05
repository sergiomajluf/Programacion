// Empieza el codigo
boolean figura = true;

void setup() {
  size(400, 200);
  rectMode(CENTER);
}
void draw() {
  background(255);

  if (figura == true) {
    // haz una cosa
    println("haz una cosa");
    fill(#00C3DB);
    rect(width/2, height/2, 50,50);
  } else {
    // haz otra cosa
    println("haz otra cosa");
    fill(#BADA55);
    ellipse(width/2, height/2, 50,50);
  }
}

void mousePressed() {
  figura = !figura;
}

// Fin del codigo