class Player extends NPC{
  private int Health=100;
  public Player(String name, int x, int y, int size) {
    super(name, x, y, size);
  }
  
  public int getHealth(){
   return Health;  
  }
}