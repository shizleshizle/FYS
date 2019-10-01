class Healthbar {
  PImage stroopwafel;
  int lives = 6;
  int iMax = 6;
  private boolean clickedLastFrame = false;
  boolean dead = false;
  boolean removeAHealth = false;
  boolean addAHealth = false;

  void loadHealth() {
    stroopwafel = loadImage("stroopwafel.jpg");
  }

  void removeHealth() {
    if (!removeAHealth && !dead && !clickedLastFrame) {
      removeAHealth = true;
      clickedLastFrame = true;
      if (lives > 0 ) {
        lives--;
        iMax--;
      } else if (lives == 0) {
        dead = true;
      }
    }
  }

  void addHealth() {
    if (!addAHealth && !dead && !clickedLastFrame) {
      addAHealth = true;
      clickedLastFrame = true;
      if (lives < 6 && !dead) {
        lives++;
        iMax++;
      }
    }
  }

  void drawHealthbar() {
    //background(255);
    //Box of lives
    fill(255);
    strokeWeight(3);
    rect(-10, -10, 310, 60);

    int x = 0;
    for (int i=0; i < iMax; i++) {
      image(stroopwafel, x, 0, stroopwafel.width/8, stroopwafel.height/8);
      x += 50;
    }
    // display gameover screen
    if (dead) {
    }
  }

  void pressedKey() {
    //Press 'd' to take damage
    if (keyPressed == true && key == 'd') {
      if (clickedLastFrame == false) {
        clickedLastFrame = true;
        if (lives > 0) {
          lives--;
          iMax--;
          if (lives == 0) {
            dead = true;
          }
        }
      }
    }
    //Press 'e' to eat a stroopwafel
    if (keyPressed == true && key == 'e') {
      if (clickedLastFrame == false) {
        clickedLastFrame = true;
        if (lives < 6 && dead == false) {
          lives++;
          iMax++;
        }
      }
    }
  }

  void releasedKey() {
    clickedLastFrame = false;
    removeAHealth = false;
    addAHealth = false;
  }
}
