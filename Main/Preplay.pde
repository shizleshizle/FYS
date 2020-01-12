
boolean holdScreen = true;
boolean screenActive;

void initScreen() {
  screenActive = true;
  holdScreen = false;
  initializeDatabase();
  background = new Background();
  player = new Player(PLAYER_VECTOR, PLAYER_WIDTH, PLAYER_HEIGHT);
  gameOver = new GameOver();
  enemy = new Enemy(ENEMY_VECTOR, ENEMY_WIDTH, ENEMY_HEIGHT);
  groundObstacle = new GroundObstacle(OBSTACLE_VECTOR, OBSTACLE_WIDTH, OBSTACLE_HEIGHT);
  wireObstacle = new CeilingObstacle(CEILING_VECTOR, CEILING_OBSTACLE_WIDTH, CEILING_OBSTACLE_HEIGHT);
  characterAttack = new CharacterAttack();
  coffeePickup = new Coffee(COFFEE_VECTOR, COFFEE_WIDTH, COFFEE_HEIGHT);
  boss = new Boss(BOSS_VECTOR, BOSS_WIDTH, BOSS_HEIGHT);
  money = new Money();
  money.loadCoins();
  progressBar = new ProgressBar(PROGRESSBARPOS, PROGRESSBARLENGTH, PROGRESSBARHEIGHT);
}

void drawScreen() {
  for (Updater objects : updateList) {
    if (!(objects instanceof CharacterAttack)) {
      objects.drawObject();
      shop.drawIcon();
    }
  }
}
