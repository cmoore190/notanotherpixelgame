class Wall extends GameObject {
  public Wall(int x, int y, ID id, int xSize, int ySize) {
    super(x, y, id, xSize, ySize);
    super.hitpoints = 9;
    super.g = 255;
    super.Available(true);
  }

  public void tick()
  {
    fill(0, g, 0);
    rect(x, y, xSize, ySize);

    for (int i = 0; i < handler.object.size(); i++) {
      GameObject temp = handler.object.get(i);
      if((coll.checkColl(this,temp))){
        if(temp.getID() == ID.EnemyBullet){
        handler.removeObject(temp);
        this.hitpoints--;
        this.g -= 30;
        }
        if(temp.getID() == ID.Player){
        gun.setAvailable(true);
        this.hitpoints--;
        this.g -= 30;
        }
      }
        
      if(this.hitpoints <= 0)
        handler.removeObject(this);
    }
  }
}