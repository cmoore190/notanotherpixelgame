class Boss extends GameObject {
  public Boss(int x, int y, ID id, int xSize, int ySize) {
    super(x, y, id, xSize, ySize);
    super.hitpoints = 9;
    super.r = 255;
    super.g = 255;
    super.right = true;
    velX = 4;
  }
  public void tick() {
    fill(r, g, 0);
    rect(x, y, xSize, ySize);
    x += velX;
    super.g = this.random.nextInt(100) + 1;

    if ((getX() >= width - 80 || getX() <= 50) && isAvailable() == true) {
      this.velX = 0;
      this.velY = 1;
      Available(false);
      right = !right;
      System.out.println(isAvailable());
    }

    if (isAvailable() == false) {
      this.b++;
      System.out.println(b);
      if (this.b >= 30) {
        if (right == true) {
          velX = 4;
        } else {
          velX = -4;
        }

        this.velY = 0;
        this.b = 0;
        Available(true);
      }
    }
    if (g == 50)
      handler.addObject(new EnemyBullet(x, y, ID.EnemyBullet, 20, 20));

    for (int i = 0; i < handler.object.size(); i++) {
      GameObject temp = handler.object.get(i);
      if ((coll.checkColl(this, temp))) {
        if (temp.getID() == ID.Player) {
          gun.setAvailable(true);
          this.hitpoints--;
          this.g -= 30;
          this.r -= 30;
        }
      }

      if (this.hitpoints <= 0)
        handler.removeObject(this);
    }
  }
}