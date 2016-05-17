class BasicEnemy extends GameObject{
  public BasicEnemy(int x, int y, ID id) {
    super(x,y,id);
  }
  
  public void tick(){
    fill(255,0,0);
    rect(x,y,16,16);
    noFill();
  }
}