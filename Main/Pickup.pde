class Pickup extends Block {

  Pickup(PVector position2, float boxWidth2, float boxHeight2) {
    super(position2, boxWidth2, boxHeight2);
  }

  void pickup() {
    if (block.collision) {
      hb.addHealth();
    }
  }
}
