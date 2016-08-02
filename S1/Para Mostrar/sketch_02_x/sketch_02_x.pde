size(800, 400);
stroke(255, 0, 0);
background(255);
rectMode(CENTER);
for (int x = 10; x < width; x = x+20) {

  for (int y = 10; y < height; y = y+20) {
    //stroke(random(255), random(255), random(255));
    //rect(x, y, 10, 10);
    //ellipse(x, y, 10, 10);
    line(x-5, y-5, x+5, y+5);
    line(x+5, y-5, x-5, y+5);

  }
}