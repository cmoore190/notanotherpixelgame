
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

  public boolean checkBoxes(GameObject object1, GameObject object2){
    if(object1.getX() > object2.getX() && object1.getX() < object2.getX() + object2.getXSize()){
      if(object1.getY() > object2.getY() && object2.getX() < object2.getY() + object2.getYSize()){
        return true;
      }
    }
    return false;
    }
    
    
    public boolean checkColl(GameObject ob1, GameObject ob2) {
  
  // test for collision
  if (ob1.getX()+ob1.getXSize()/2 >= ob2.getX()-ob2.getXSize()/2 && ob1.getX()-ob1.getXSize()/2 <= ob2.getX()+ob2.getXSize()/2 && ob1.getY()+ob1.getYSize()/2 >= ob2.getY()-ob2.getYSize()/2 && ob1.getY()-ob1.getYSize()/2 <= ob2.getY()+ob2.getYSize()/2) {
    return true;    // if a hit, return true
  }
  else {            // if not, return false
    return false;
  }
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