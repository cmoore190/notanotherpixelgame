class Gun extends GameObject{
  boolean Available = true;
   public Gun(int x, int y, ID id, int xSize, int ySize) {
      super(x, y, id, xSize, ySize);
  }  
  
  public void setAvailable(boolean state) {
    Available = state;
  }
  
  public boolean isAvailable() {
    return Available;
  }
  
  public void tick(){ 
    //Remove the velocity to add a swaying effect
    fill(255,255,255);
    if(isAvailable()){
    rect(player.getX() + 13 - player.getVelX(), player.getY() - 8 - player.getVelY(), 5, 8);
    super.setX(player.getX() + 13 - player.getVelX());
    super.setY(player.getY() - 15 - player.getVelY());
    }else{
      velY = -8;
      rect(getX(), getY(), 5, 8);
      y += velY;
      /* Checks to see if the bullet goes outside the map.
        If so returns it back to the player
      */
      if(getY() < 0){
        setAvailable(true);
      }
    }
    
  }
  
  
  
}