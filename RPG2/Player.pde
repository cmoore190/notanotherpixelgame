class Player extends GameObject{
  private String name;
  private int Health=100;
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
    text(name + ":"+ Health, player.getX() - velX - 10, player.getY() - velY+(2*size+10));
    GameObject obj = coll.getClosestWTag(sword, ID.Enemy);
    if(obj == null)
    obj = sword;
    if(coll.checkColl(sword, obj) && obj != sword)
      handler.removeObject(obj);
    if(coll.checkColl(player, obj) && obj != sword){
      player.setVelX(0);
      player.setVelY(0); 
    }
  }
  
  public String getName(){
    return name;
  }
  public int getHealth(){
   return Health;  
  }
}