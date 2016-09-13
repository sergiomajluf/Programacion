size(500, 1550);
float offsetX, offsetY;
float x, y;
int column = 4;
int count = 4;
int margen = 5;
int size=20;

for (int i = 0; 0 <= column; i++) {
  offsetX = i % column;
  offsetY = floor(i / column); //<>//

  x = offsetX * 100 + offsetX * margen;
  y = offsetY * 100 + offsetY * margen;
  rect(x, y, size, size);
  fill(random(255), random(255), random(255));
}