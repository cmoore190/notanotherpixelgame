class Wall extends GameObject{
  
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
    super.g = 255;
  }
  
  public void tick(){
    Available(true);
    fill(0,g,0);
    rect(x,y,xSize, ySize);
    
    for(int i = 0; i < handler.object.size(); i++) 
    {
      GameObject temp = handler.object.get(i);
      if((coll.checkColl(gun, temp)) && (temp.getID() == ID.Wall) &&(temp.isAvailable())){
      }
    }
  }
}