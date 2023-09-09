/**
 * Pixel Coordinate. 
 * 
 * Mouse coordinates are displayed on screen
 */
 
PFont f;

final int FONT_SIZE = 24;
 
void setup() {
  //size(1000, 800); 
  
  fullScreen();
  f = createFont("Arial",FONT_SIZE,true);
  fill(0, 204);
  textFont(f);
  stroke(132, 42, 25);
}

void draw () {
  background(255); 
  
  for (int i = -5; i < 5; i++) {
    for (int j = -5; j < 5; j++) {
      point(mouseX + i, mouseY + j);
    }
  }
  
  // calculate how many characters the text display will be
  // needed for offsetting purposes
  int lengthOfString = 0;
  int mouseXTemp = mouseX;
  int mouseYTemp = mouseY;
  while (mouseXTemp > 0 && mouseYTemp > 0) {
    if (mouseXTemp > 0) {
      mouseXTemp /= 10;
      lengthOfString++;
    }
    
    if (mouseYTemp > 0) {
      mouseYTemp /= 10;
      lengthOfString++;
    }
  }
  
  int wrappedXCoord = mouseX + (FONT_SIZE*lengthOfString) >= width ? mouseX - (FONT_SIZE*lengthOfString) : mouseX;
  int wrappedYCoord = mouseY - FONT_SIZE <= 0 ? mouseY + FONT_SIZE : mouseY;
  
  text("(" + mouseX + ","+  mouseY + ")", wrappedXCoord, wrappedYCoord);
}
