
class Bubble {
  float xpos;
  float ypos;
  float size;
  float speed = 0;
  float gravity = 0.1;
  color colorCircle;
  color circleColor = 250;

  Bubble(float xpos, float ypos, float size) {
    this.xpos= xpos;
    this.ypos = ypos;
    this.size = size;
    
  }


  void bubbleGravity() {
    ypos = ypos - speed;
    speed = speed + gravity;
    if (ypos < 10) {
      speed = speed* -0.60;
      ypos = 10;
    }
  }

  void bubbleDisplay() {
    stroke(255);
    fill(187, 228, colorCircle);
    ellipse(xpos, ypos, size, size);
  }
  void mouseOver() {
    if (xpos - size * .5 <= mouseX && mouseX <= xpos + size * .5 &&
      ypos - size * .5 <= mouseY && mouseY <= ypos + size * .5) {
      colorCircle = 215;
    } else
      colorCircle = circleColor;
  }
  boolean tooManyBubbles() {
    if (keyPressed && key == 'r') {
      return true;
    }
    return false;
  }
}
