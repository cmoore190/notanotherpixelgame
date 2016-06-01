class Wall extends GameObject{
  private int hitpoints = 10;
  private int g = 255;
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
  }
  
  public void tick(){
    fill(0,g,0);
    rect(x,y,xSize, ySize);
    
    for(int i = 0; i < handler.object.size(); i++) 
    {
      GameObject temp = handler.object.get(i);
      if(coll.checkColl(gun, temp) && temp.getID() == ID.Wall){
        gun.setAvailable(true);
        hitpoints--;
        g -= 30;
        if(hitpoints == 0){
          handler.removeObject(this);
        }
      }
      
    }
  }
}