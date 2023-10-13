class Message {
  String clearBubbleMessage = "You've cleared all the bubbles!";

  void startMessage() {
    String m1 = "Hello, you can press the mousebutton to add new bubbles!";
    String m2 = "You can also press 'r' to clear all the bubbles!";
    String m3 = ("However, if you clear the bubbles, you'll loose all your points!");
    println(m1+"\n"+m2+"\n"+m3);
  }
  void booleanMessage() {
    println(clearBubbleMessage);
  }
}
