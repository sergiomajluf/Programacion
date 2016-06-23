  size(800, 400);
  strokeWeight(2);
  smooth();

  for (int i = 1; i < width/10; i++) {
    for (int j = 1; j < height/10; j++) {
      point(i*10, j*10);
    }
  }


println(width);