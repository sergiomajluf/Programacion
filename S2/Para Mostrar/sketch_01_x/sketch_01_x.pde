int x = 100;
int y = 100;
size(200, 200);
stroke(255, 0, 0);
background(255);

//Dibuja una cruz
line(x-5, y-5, x+5, y+5);
line(x+5, y-5, x-5, y+5);

// Esto sería una tortura si queremos
// llenar la pantalla

// line(desdeX, desdeY, hastaX, hastaY);
line(x+5, y-5, x+15, y+5);
line(x+15, y-5, x+5, y+5);