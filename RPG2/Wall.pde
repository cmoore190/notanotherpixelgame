class Wall extends GameObject{
  
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
    super.hitpoints = 9;
    super.g = 255;
  }
  
  public void tick(){
    fill(0,g,0);
    rect(x,y,xSize, ySize);
    
    int count = 0;
    for(int i = 0; i < handler.object.size(); i++) 
    {
      GameObject temp = handler.object.get(i);
      for(int z = 0; z < handler.object.size(); z++ ){
        if(temp.getID() == ID.Wall){
          count++;
        }
      }
      System.out.println(count);
      if((coll.checkColl(gun, temp)) && (temp.getID() == ID.Wall)){
        gun.setAvailable(true);
        temp.setHitpoints(temp.getHitpoints() - 1 + count);
        println(temp.hitpoints);
        temp.g -= 30;
        if(temp.hitpoints == 0){
          handler.removeObject(temp);
        }
      }
    }
  }
}