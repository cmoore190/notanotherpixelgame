class Wall extends GameObject{
  
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
    super.hitpoints = 9;
    super.g = 255;
    super.Available(true);
  }
  
  public void tick(){
    Available(true);
    fill(0,g,0);
    rect(x,y,xSize, ySize);
    
    for(int i = 0; i < handler.object.size(); i++) 
    {
      GameObject temp = handler.object.get(i);
      if((coll.checkColl(gun, temp)) && (temp.getID() == ID.Wall) &&(temp.isAvailable())){
        temp.Available(false);
        println(temp);
        gun.setAvailable(true);
        println(temp.getHitpoints());
        temp.setHitpoints(temp.getHitpoints() - 1);
       //println(temp.hitpoints);
        temp.g -= 30;
        if(temp.hitpoints == 0){
          handler.removeObject(temp);
        }
      }
    }
  }
}