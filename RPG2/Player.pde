class Player extends GameObject{
  private String name;
  private int lifes = 3;
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
<<<<<<< HEAD
    //text(name + ":"+ Lives, player.getX() - velX - 10, player.getY() - velY+(2*size+10));
    GameObject obj = coll.getClosestWTag(gun, ID.Enemy);
    if(obj == null)
    obj = gun;
    if(coll.checkColl(gun, obj) && obj != gun){
      handler.removeObject(obj);
      gun.Available(true);
    }
=======
    text(name + ":"+ lifes, player.getX() - velX - 10, player.getY() - velY+(2*size+10));


>>>>>>> FETCH_HEAD
  }
  
  public String getName(){
    return name;
  }
  public int getLives(){
   return lifes;  
  }
}