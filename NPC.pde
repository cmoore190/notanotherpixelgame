class NPC{
  private String name;
  private int x, y, size;
  
  public NPC(String name, int x, int y, int size){
    this.name = name;
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  public String getName(){
    return name;
  }
  
  public void setX(int x) {
    this.x = x;
  }
  
  public void setY(int y) {
    this.y = y;
  }  
  public int getX(){
    return x;
  }
  
  public int getY(){
    return y;
  }
  
  public int getSize(){
    return size;
  }
}