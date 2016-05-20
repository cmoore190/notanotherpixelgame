class Player extends GameObject{
  private String name;
  private int Health=100;
  public Player(String name, int x, int y, ID id, int xSize, int ySize) {
    super(x, y,id, xSize, ySize);
    this.name = name;
  }
  
  public void tick() {
    Collision coll = new Collision(handler);
    fill(255,255,255);
    rect(player.getX(), player.getY(), player.getXSize(), player.getYSize());
    player.setX(player.getX() + velX);
    player.setY(player.getY() + velY);
    player.setX(RPG2.clamp(x, 0, width - 30));
    player.setY(RPG2.clamp(y, 0, height - 28));
    //text(name + ":"+ Health, player.getX() - velX, player.getY() - velY);
    GameObject obj = coll.getClosestWTag(sword, ID.Enemy);
    System.out.println(coll.checkColl(sword, obj));
   
  }
  
  public String getName(){
    return name;
  }
  public int getHealth(){
   return Health;  
  }
}