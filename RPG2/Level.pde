public class Level{
  private int level = 0;
  private ArrayList<BasicEnemy> basicEnemies = new ArrayList<BasicEnemy>();
  
  public Level(){
        for(int i = 0; i < 3; i++){
        basicEnemies.add(new BasicEnemy(i * 10, i * 10,ID.Enemy,8,8));
        System.out.println(basicEnemies.get(i).getX());
        }
        
        for(GameObject j: basicEnemies) 
        handler.addObject(j);
  }
  public void tick(){
  }
  public void nextLevel(){
    level++;
  }
}