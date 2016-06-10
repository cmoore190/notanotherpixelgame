
class AdvancedEnemy extends GameObject{
  public AdvancedEnemy(int x, int y, ID id, int xSize, int ySize, boolean side) {
    super(x,y,id, xSize, ySize);
    super.Available(true);
    super.right = side;
    if(right == true){
    super.velX = 1;
    }else{
      super.velX = -1;
    }
    super.b = 0;
  }
  public void tick(){
    fill(255,0,0);
    rect(x,y,size,size);
    this.x += velX;
    this.y += velY;
    super.g = this.random.nextInt(200) + 1;
    if((getX() >= width - 50 || getX() <= 50) && isAvailable() == true){
      this.velX = 0;
      this.velY = 1;
      Available(false);
      right = !right;
      System.out.println(isAvailable());
    }
    
    if(isAvailable() == false){
      this.b++;
      System.out.println(b);
      if(this.b >= 30){
        if(right == true){
          velX = 1;
        }else{
          velX = -1;
        }
          
        this.velY = 0;
        this.b = 0;
        Available(true);
      }
    }
    
    if(g == 200){
      handler.addObject(new EnemyBullet(x + xSize ,y,ID.EnemyBullet,6,6));
    }
  
  }
}