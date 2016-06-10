class Player extends GameObject{
  private String name;
  private int lifes = 3;
  Boolean[] spaceAvailable = new Boolean[]{true, true, true,true};
  public Player(String name, int x, int y, ID id, int xSize, int ySize) {
    super(x, y,id, xSize, ySize);
    this.name = name;
  }
  
  public void tick() {
    
    fill(255,255,255);
    rect(player.getX(), player.getY(), player.getXSize(), player.getYSize());
    player.setX(player.getX() + velX);
    player.setY(player.getY() + velY);
    player.setX(RPG2.clamp(x, 0, width - 30));
    player.setY(RPG2.clamp(y, 0, height - 28));

    //text(name + ":"+ Lives, player.getX() - velX - 10, player.getY() - velY+(2*size+10));  
    text(name + ":"+ lifes, player.getX() - velX - 10, player.getY() - velY+(2*size+10));
 for(int i = 0; i < handler.object.size(); i++) 
    {
      GameObject temp = handler.object.get(i);
      if(coll.checkColl(player, temp) && temp.getID() == ID.EnemyBullet){
        handler.removeObject(temp);
        lifes--;
        player.setX(10);
        handler.removeObjectsWTag(ID.EnemyBullet);
      }
      
    }


  }
  
  public String getName(){
    return name;
  }
  public int getLives(){
   return lifes;  
  }
}