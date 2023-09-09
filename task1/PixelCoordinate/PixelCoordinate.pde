/**
 * Pixel Coordinate. 
 * 
 * Mouse coordinates are displayed on screen
 */
 
PFont f;
 
void setup() {
  //size(1000, 800); 
  
  fullScreen();
  f = createFont("Arial",24,true);
}

void draw () {
  background(255); 
  fill(0, 204);
  textFont(f);
  text("(" + mouseX + ","+  mouseY + ")", mouseX, mouseY);
}
