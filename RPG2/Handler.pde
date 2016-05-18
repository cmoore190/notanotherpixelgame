import java.util.ArrayList;

public class Handler {
  public ArrayList<GameObject> object = new ArrayList<GameObject>();
  
    public void tick() {
    for(int i = 0; i < object.size(); i++) {
      GameObject tempObject = object.get(i);
      
      tempObject.tick();
      
    }
  }
  
  public void addObject(GameObject object) {
    this.object.add(object);
  }
  
  public void removeObject(GameObject object) {
    //System.out.println("removing: "+object);
    this.object.remove(object);
  }
  
  public void removeObjectsWTag(ID id) {
        for(int i = 0; i < object.size(); i++) {
      GameObject tempObject = object.get(i);
      
     if(tempObject.getID() == id) {
       removeObject(tempObject);
       i--;
     }
      
    }
  }
  
  public void removeAllObjects() {
    for(int i = this.object.size() - 1; i >= 0; i--) {
      GameObject tempObject = this.object.get(i);
      this.object.remove(tempObject);
    }
  }
}