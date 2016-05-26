class Gun extends GameObject{
   public Gun(int x, int y, ID id, int xSize, int ySize) {
      super(x, y, id, xSize, ySize);
      Available(true);
  }  
  
  public void tick(){ 
    //Remove the velocity to add a swaying effect
    fill(255,255,255);
    if(isAvailable()) {
    rect(player.getX() + 13 - player.getVelX(), player.getY() - 8 - player.getVelY(), 5, 8);
    super.setX(player.getX() + 13 - player.getVelX());
    super.setY(player.getY() - 15 - player.getVelY());
    }
    else{
      velY = -3;
      rect(getX(), getY(),5,8);
      if(getY() < 0){
        Available(true);
      }
    }
    
    y += velY;

  }
   
  
  
}