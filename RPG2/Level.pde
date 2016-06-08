public class Level {
  private ArrayList<BasicEnemy> basicEnemies = new ArrayList<BasicEnemy>();
  private int amtEnemiesPLevel=4;
  public Level() {           

    addEnemies();
    handler.addObject(new Wall(400, 400, ID.Wall, 60, 5));
    handler.addObject(new Wall(300, 400, ID.Wall, 60, 5));
    handler.addObject(new Wall(200, 400, ID.Wall, 60, 5));
    handler.addObject(new Wall(100, 400, ID.Wall, 60, 5));

    for (int i = 0; i < amtEnemiesPLevel; i++) {
      //basicEnemies.add(new BasicEnemy(i * 10 + 10, i * 10 + 10,ID.Enemy,8,8));
      //System.out.println(basicEnemies.get(i).getX());
    }

    //for(GameObject j: basicEnemies) 
    //handler.addObject(j);


    handler.addObject(new Wall(375, 380, ID.Wall, 50, 5));
    handler.addObject(new Wall(250, 380, ID.Wall, 50, 5));
    handler.addObject(new Wall(125, 380, ID.Wall, 50, 5));

    //First Row
    handler.addObject(new BasicEnemy(50, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(80, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(110, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(140, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(170, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(200, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(230, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(260, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(290, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(320, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(350, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(380, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(410, 50, ID.Enemy, 30, 30, true));
    handler.addObject(new BasicEnemy(440, 50, ID.Enemy, 30, 30, true));
    //Second Row
    handler.addObject(new BasicEnemy(50, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(80, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(110, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(140, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(170, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(200, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(230, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(260, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(290, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(320, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(350, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(380, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(410, 80, ID.Enemy, 30, 30, false));
    handler.addObject(new BasicEnemy(440, 80, ID.Enemy, 30, 30, false));
  }
  public void tick() {
    int eCount=amtEnemiesPLevel;
    for (int i = 0; i < handler.object.size(); i++) {
      GameObject temp = handler.object.get(i);
      if (temp.getID() == ID.Enemy && eCount > 0) {
        eCount--;
      }
      if (eCount==0) {
        amtEnemiesPLevel++;
        eCount=amtEnemiesPLevel;
        addEnemies();
      }
    }
  }
  public void addEnemies() {
    for (int i = 0; i < amtEnemiesPLevel; i++) {
      handler.addObject(new BasicEnemy(i * 10 + 10, i * 10 + 10, ID.Enemy, 8, 8, true));
      // System.out.println(basicEnemies.get(i).getX());
    }

    for (GameObject j : basicEnemies) 
      handler.addObject(j);
  }
}