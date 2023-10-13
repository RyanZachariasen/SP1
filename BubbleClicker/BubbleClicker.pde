ArrayList<Bubble> bubble =new ArrayList<Bubble>();
Message message = new Message();
Point points = new Point();

void setup() {
  size(900, 500);
  message.startMessage();
}

void draw() {
  //variables
  float x = random(0, width);
  float y = height;
  float size = random(50, 150);
  
  background(252, 232, 247);

  //bubblegenerator
  if (frameCount % 120 == 0) {
    bubble.add(new Bubble(x, y, size));
  }
  for (int i = 0; bubble.size()>i; i++) {
    Bubble bubbles = bubble.get(i);
    bubbles.bubbleDisplay();
    bubbles.bubbleGravity();
    bubbles.mouseOver();

    //reset bubbles & points
    if (keyPressed && key == 'r' && bubbles.tooManyBubbles() == true) {
      bubble.clear();
      points.pointReset();
      message.booleanMessage();
    }
  }
}
//bubble adder
void mousePressed() {
  float size = random(50, 150);
  bubble.add(new Bubble(mouseX, mouseY, size));
}
//bubble points
void mouseReleased() {
  points.pointCounter();
}
