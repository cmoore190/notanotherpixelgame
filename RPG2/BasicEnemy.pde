
public static int size = 16;
class BasicEnemy extends GameObject{
  public BasicEnemy(int x, int y, ID id, int xSize, int ySize) {
    super(x,y,id, xSize, ySize);
  }
  public void tick(){
    fill(255,0,0);
    rect(x,y,size,size);

  }
}