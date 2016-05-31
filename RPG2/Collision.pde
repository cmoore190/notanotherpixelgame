
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
    
    public boolean checkColl(GameObject ob1, GameObject ob2) {
  
  // test for collision
  if (ob1.getX() < (ob2.getX() + ob2.getXSize()) &&  (ob1.getX() + ob1.getXSize()) > ob2.getX() && ob1.getY() < (ob2.getY()+ob2.getYSize()) && (ob1.getY() + ob1.getYSize()) > ob2.getY()) {
    return true;    // if a hit, return true
  }
  else {            // if not, return false
    return false;
  }

}

  }