void menuSuperior() {
  fill(220, 220, 220);
  noStroke();
  rect(0, 0, width, 70);
  
  fill(0, 50, 255);
  textSize(20);
  textAlign(LEFT);
  text("Edit", 10, 50);
  
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Favorites", 0, 30, width, 50);
}


void menuInferior() {
  fill(220, 220, 220);
  noStroke();
  rect(0, height-50, width, 50);
}