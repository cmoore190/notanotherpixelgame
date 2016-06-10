public class Level {
    public Level() {           
      handler.addObject(new Wall(375, 380, ID.Wall, 50, 5));
      handler.addObject(new Wall(250, 380, ID.Wall, 50, 5));
      handler.addObject(new Wall(125, 380, ID.Wall, 50, 5));
    }

    public void tick() {
      int count = 0;
      for (int i = 0; i < handler.object.size(); i++) {
        GameObject temp = handler.object.get(i);
        if (temp.getID() == ID.Enemy)
          count++;
      }
      if (count == 0) {
        addEnemies();
        level++;
      }
    }

    public void addEnemies() {

      if (level == 0) {
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
        //handler.addObject(new BasicEnemy(50,80,ID.Enemy,30,30,false));
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
      } else if (level == 1) {
        handler.addObject(new AdvancedEnemy(50, 50, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(60, 60, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(70, 70, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(80, 80, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(90, 90, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(100, 100, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(110, 110, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(120, 120, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(130, 130, ID.Enemy, 10, 10, true));
        handler.addObject(new AdvancedEnemy(140, 140, ID.Enemy, 10, 10, true));

        handler.addObject(new AdvancedEnemy(width - 70, 50, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 80, 60, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 90, 70, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 100, 80, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 110, 90, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 120, 100, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 130, 110, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 140, 120, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 150, 130, ID.Enemy, 10, 10, false));
        handler.addObject(new AdvancedEnemy(width - 160, 140, ID.Enemy, 10, 10, false));
      } else if (level == 2) {
        handler.addObject(new Boss(50, 50, ID.Enemy, 60, 60));
      } else if (level == 3) {
        state = 2;
      }
    }