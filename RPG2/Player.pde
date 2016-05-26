class Player extends GameObject{
  private String name;
  private int Health=100;
  private int lifes = 0;
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
    GameObject obj = coll.getClosestWTag(gun, ID.Enemy);
    if(obj == null)
    obj = gun;
    if(coll.checkColl(gun, obj))
      handler.removeObject(obj);
    if(coll.checkColl(player, obj) && obj != gun){
      player.setVelX(0);
      player.setVelY(0); 
    }
  }
  
  public String getName(){
    return name;
  }
  public int getLives(){
   return lifes;  
  }
}