 class EnemyBullet extends GameObject{
   public EnemyBullet(int x, int y, ID id, int xSize, int ySize){
     super(x,y,id,xSize,ySize);
     velY = 2;
   }
  public void tick(){
    fill(255,0,0);
    rect(x,y,xSize,ySize);
    y += velY;
    
    for(int i = 0; i < handler.object.size(); i++){
      GameObject temp = handler.object.get(i);
      if((coll.checkColl(this,temp)) && (temp.getID() == ID.Player))
        handler.removeObjectsWTag(ID.EnemyBullet);
    }
  }
}