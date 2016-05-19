  class Collision{
    Handler handler;
    public Collision(Handler handler) {
      this.handler = handler;
    }
  /*
  Work on comparing 
  if two boxes are touching 
  and return true or false
  */
  public boolean checkCollision(GameObject object1, GameObject object2){
    if(object1.getX() == object2.getX() && object1.getY() == object2.getY())
        return true;   
    return false;
  }
  
  //Gets the closest object with this tag
  public GameObject getClosest(GameObject object) {
    double lowest = Double.MAX_VALUE;
    GameObject obj = null;
    GameObject tempObject;
    for(int i = 0; i < handler.object.size(); i++) {
      if(object == handler.object.get(i)){
        i++;
      }
      tempObject = handler.object.get(i);
      
      if(lowest > Math.hypot(object.getX()-tempObject.getX(), object.getY()-tempObject.getY())) {
        lowest = Math.hypot(object.getX()-tempObject.getX(), object.getY()-tempObject.getY());
        obj = tempObject;
      }
      else {
        return tempObject;
      }
    }
    return obj;
  }
  }