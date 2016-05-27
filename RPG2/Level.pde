public class Level{
  private ArrayList<BasicEnemy> basicEnemies = new ArrayList<BasicEnemy>();
  
  public Level(){
        for(int i = 0; i < 7; i++){
        basicEnemies.add(new BasicEnemy(i * 10 + 10, i * 10 + 10,ID.Enemy,8,8));
        System.out.println(basicEnemies.get(i).getX());
        }
        
        for(GameObject j: basicEnemies) 
        handler.addObject(j);
        
        handler.addObject(new Wall(400,400,ID.Wall, 60,5));
  }
}