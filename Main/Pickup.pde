class Pickup extends Collider implements Updater {
  PImage skin;

  Pickup(PVector position, float boxWidth, float boxHeight) {
    super(position, boxWidth, boxHeight);
    skin = loadImage(sketchPath() + "/lib/healthkit.png");
    skin.resize((int) boxWidth, (int) boxHeight);
    updateList.add(this);
  }

  void drawObject() {
    fill(255);
    rect(position.x, position.y, boxWidth, boxHeight);
    image(skin, position.x, position.y);
  }

  void updateObject() {
    if (collidesWithPlayer(player)) { // collision check
      healthbar.addHealth();
    }
    if (!player.hasCollision()) {
      moveEntity(false);
    }
  }

  void pressedKey() {
  }

  void releasedKey() {
  }
}
