// IMAGES
PImage backgroundImage, backgroundpane, backgroundpane2, backgroundpane3, fireBall, fireBallSpecial, skinDonDon, skinCorra, defaultSkin, coffee, skinEnemy, enemyWeapon, 
  health, stroopwafel, obstacle, ceilingObstacle, soundOn, skinBoss, shopIcon, speed_upgrade, coin, skull;

//SOUNDS
SoundFile soundTrack;
SoundFile shoot;
SoundFile enemyHit;
SoundFile coinPickup;

// FONTS
PFont eightBit;

// MAGIC NUMBER PREVENTION
final int BACKGROUND_WIDTH = 640;
final int BACKGROUND_HEIGHT = 800;
final int STROOPWAFEL_SIZE = 35;
final int SKULL_SIZE = 25;

void loadAssets() {
  // BACKGROUND
  backgroundImage = loadImage(sketchPath() + "/assets/images/background_OLD.png");
  backgroundpane = loadImage(sketchPath() + "/assets/images/backgroundpane1.png");
  backgroundpane.resize(640, 760);
  backgroundpane2 = loadImage(sketchPath() + "/assets/images/backgroundpane2.png");
  backgroundpane2.resize(640, 760);
  backgroundpane3 = loadImage(sketchPath() + "/assets/images/backgroundpane3.png");
  backgroundpane3.resize(640, 760);

  // ATTACKS
  fireBall = loadImage(sketchPath() + "/assets/images/Fireball.png");
  fireBallSpecial = loadImage(sketchPath() + "/assets/images/FireballSpecial.png");
  enemyWeapon = loadImage(sketchPath() + "/assets/images/enemyWeapon.png");

  // PLAYER SKINS
  skinDonDon = loadImage(sketchPath() + "/assets/images/dondon.png");
  skinDonDon.resize(PLAYER_WIDTH, PLAYER_HEIGHT);
  skinCorra = loadImage(sketchPath() + "/assets/images/corra.png");
  skinCorra.resize(PLAYER_WIDTH, PLAYER_HEIGHT);
  defaultSkin = loadImage(sketchPath() + "/assets/images/player.png");

  // COFFEE
  coffee = loadImage(sketchPath() + "/assets/images/coffee.png");
  coffee.resize(COFFEE_WIDTH, COFFEE_HEIGHT);

  // ENEMY
  skinEnemy = loadImage(sketchPath() + "/assets/images/enemy.png");
  skinEnemy.resize(ENEMY_WIDTH, ENEMY_HEIGHT);
  skinBoss = loadImage(sketchPath() + "/assets/images/boss.png");

  // OBSTACLE
  // OFFICE / GROUND OBSTACLE
  obstacle = loadImage(sketchPath() + "/assets/images/office.png");
  obstacle.resize(OBSTACLE_WIDTH, OBSTACLE_HEIGHT);

  // CEILING OBSTACLE / WIRE
  ceilingObstacle = loadImage(sketchPath() + "/assets/images/ceiling-wire.png");
  ceilingObstacle.resize(CEILING_OBSTACLE_WIDTH, CEILING_OBSTACLE_HEIGHT);

  // SHOP
  shopIcon = loadImage(sketchPath() + "/assets/images/shop.png");
  shopIcon.resize(ICON_SIZE, ICON_SIZE);
  speed_upgrade = loadImage(sketchPath() + "/assets/images/speed_upgrade.png");
  speed_upgrade.resize(SPEED_SIZE, SPEED_SIZE);

  // COIN
  coin = loadImage(sketchPath() + "/assets/images/coin.png");
  coin.resize(COIN_SIZE, COIN_SIZE);
  
  // PROGRESSBAR
  skull = loadImage(sketchPath() + "/assets/images/skull.png");
  skull.resize(SKULL_SIZE, SKULL_SIZE);
  
  // FONTS
  eightBit = createFont(sketchPath() + "/assets/fonts/PressStart2P.ttf", 30);

  //SOUNDS
  soundTrack = new SoundFile(this, "/assets/sounds/soundtrack3.wav");
  soundOn = loadImage(sketchPath() + "/assets/images/GeluidAan.png");
  shoot = new SoundFile(this, "/assets/sounds/stapler2.mp3");
  enemyHit = new SoundFile(this, "/assets/sounds/Hit1.wav");
  coinPickup = new SoundFile(this, "/assets/sounds/Coin3.wav");
}

void refreshPlayerSkin() {
  skinDonDon = loadImage(sketchPath() + "/assets/images/dondon.png");
  skinDonDon.resize(PLAYER_WIDTH, PLAYER_HEIGHT);
  skinCorra = loadImage(sketchPath() + "/assets/images/corra.png");
  skinCorra.resize(PLAYER_WIDTH, PLAYER_HEIGHT);
}
