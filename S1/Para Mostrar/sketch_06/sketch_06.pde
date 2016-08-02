
  size(800, 400);
  noFill();

  background(255);

  for (int x = 50; x < width; x += 50) {
    for (int y = 50; y < height; y += 50) {

      for (int i = 0; i < 16; i +=4) {
        line(x+i, y, x+i, y+12);
      }
      line(x, y, x+12, y +12); //<>//
    }
  }