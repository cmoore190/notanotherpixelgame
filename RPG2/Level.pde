public class Level{
  private ArrayList<BasicEnemy> basicEnemies = new ArrayList<BasicEnemy>();
  private int amtEnemiesPLevel=4;
  public Level(){           
        addEnemies();
        handler.addObject(new Wall(400,400,ID.Wall, 60,5));
        handler.addObject(new Wall(300,400,ID.Wall, 60,5));
        handler.addObject(new Wall(200,400,ID.Wall, 60,5));
        handler.addObject(new Wall(100,400,ID.Wall, 60,5));
        
    
    }
    public void tick(){
        int count=amtEnemiesPLevel;
            for(int i = 0; i < handler.object.size(); i++) {
            GameObject temp = handler.object.get(i);
            if(temp.getID() == ID.Enemy){
              System.out.println(count);
            }
            else{count--;}
            if(count<0){
            count=0;
            }
              if(count==0){
          amtEnemiesPLevel++;
          addEnemies();
        }
            
        }
      
    
    }
    public void addEnemies(){
          for(int i = 0; i < amtEnemiesPLevel; i++){
        basicEnemies.add(new BasicEnemy(i * 10 + 10, i * 10 + 10,ID.Enemy,8,8));
        System.out.println(basicEnemies.get(i).getX());
        }
        
        for(GameObject j: basicEnemies) 
        handler.addObject(j);
    
  }
}