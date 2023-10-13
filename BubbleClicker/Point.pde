class Point {
  int counter;
  int passiveCounter;

  void pointCounter() {
    counter++;
    println("You have "+counter+" points");
  }


  void pointReset() {
    counter = 0;
    println("The points have been reset");
  }
}
