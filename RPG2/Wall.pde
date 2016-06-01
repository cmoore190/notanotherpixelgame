class Wall extends GameObject{
  
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
    hitpoints = 9;
    g = 255;
  }
  
  public void tick(){
    fill(0,g,0);
    rect(x,y,xSize, ySize);
    
    for(int i = 0; i < handler.object.size(); i++) 
    {
      println(i);
      GameObject temp = handler.object.get(i);
      if(coll.checkColl(gun, temp) && temp.getID() == ID.Wall){
        gun.setAvailable(true);
        temp.hitpoints -= 1;
        temp.g -= 30;
        if(temp.hitpoints == 0){
          handler.removeObject(temp);
        }
      }
      
    }
  }
}