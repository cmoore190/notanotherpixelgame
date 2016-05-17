class Player extends GameObject{
  private String name;
  private int Health=100, size;
  public Player(String name, int x, int y, int size, ID id) {
    super(x, y,id);
    this.name = name;
    this.size = size;
  }
  
  public void tick() {
    fill(255,255,255);
    rect(player.getX(), player.getY(), player.getSize(), player.getSize());
    player.setX(player.getX() + velX);
    player.setY(player.getY() + velY);
    player.setX(RPG2.clamp(x, 0, width - 30));
    player.setY(RPG2.clamp(y, 0, height - 28));
    noFill();
    
    //text(name + ":"+ Health, player.getX() - velX, player.getY() - velY);
  }
  
  public String getName(){
    return name;
  }
  
  public int getSize(){
    return size;
  }
  public int getHealth(){
   return Health;  
  }
}