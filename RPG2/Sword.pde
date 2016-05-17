class Sword extends GameObject{
   public Sword(int x, int y, ID id) {
      super(x, y, id);
  }  
  
  public void tick(){ 
    //Remove the velocity to add a swaying effect
    rect(player.getX() + 13 - player.getVelX(), player.getY() - 15 - player.getVelY(), 5, 15);
  }
  
  
  
}