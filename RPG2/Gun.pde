class Gun extends GameObject{
   public Gun(int x, int y, ID id, int xSize, int ySize) {
      super(x, y, id, xSize, ySize);
  }  
  
  public void tick(){ 
    //Remove the velocity to add a swaying effect
    fill(255,255,255);
<<<<<<< HEAD:RPG2/Sword.pde
    rect(player.getX() + 13 - player.getVelX(), player.getY() - 8 - player.getVelY(), 5, 8);
    super.setX(player.getX() + 13 - player.getVelX());
    super.setY(player.getY() - 15 - player.getVelY());
=======
    rect(player.getX() + 13 - player.getVelX(), player.getY() - 15 - player.getVelY(), 5, 15);
   // super.setX(player.getX() + 13 - player.getVelX());
    //super.setY(player.getY() - 15 - player.getVelY());
>>>>>>> origin/master:RPG2/Gun.pde
  }
  
  
  
}