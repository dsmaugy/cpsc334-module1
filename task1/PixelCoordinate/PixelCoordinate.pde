/**
 * Pixel Coordinate. 
 * 
 * Mouse coordinates are displayed on screen
 */
 
void setup() {
  size(1000, 800); 
  noStroke();
  rectMode(CENTER);
}

void draw () {
  background(51); 
  fill(255, 204);
  text("(" + mouseX + ","+  mouseY + ")", mouseX, mouseY);
}
