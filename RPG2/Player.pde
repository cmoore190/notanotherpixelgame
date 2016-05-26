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
    text(name + ":"+ lifes, player.getX() - velX - 10, player.getY() - velY+(2*size+10));


  }
  
  public String getName(){
    return name;
  }
  public int getLives(){
   return lifes;  
  }
}