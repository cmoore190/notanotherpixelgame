class Wall extends GameObject{
  public Wall(int x, int y, ID id, int xSize, int ySize){
    super(x,y,id, xSize, ySize);
  }
  
  public void tick(){
    fill(0,255,0);
    rect(x,y,xSize, ySize);
  }
}