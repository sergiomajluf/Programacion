// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-5: Zoog
function setup() {
  createCanvas(480, 270);
  ellipseMode(CENTER);
  rectMode(CENTER); 
}

function draw() {
  
  background(255);

  
  // Body
  stroke(0);
  fill(150);
  rect(mouseX, 145, 20, 100);

  // Head
  fill(255);
  ellipse(mouseX, 115, 60, 60); 

  // Eyes
  fill(2550,30,0); 
  ellipse(mouseX-19, 115, 16, 32); 
  ellipse(mouseX+19, 115, 16, 32);

  // Legs
  stroke(0);
  line(mouseX-10, 195, 220, 205);
  line(mouseX+10, 195, 260, 205); 
  
}