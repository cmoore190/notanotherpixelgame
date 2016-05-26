
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
  if (ob1.getX()+ob1.getXSize()/2 >= ob2.getX()-ob2.getXSize()/2 && ob1.getX()-ob1.getXSize()/2 <= ob2.getX()+ob2.getXSize()/2 && ob1.getY()+ob1.getYSize()/2 >= ob2.getY()-ob2.getYSize()/2 && ob1.getY()-ob1.getYSize()/2 <= ob2.getY()+ob2.getYSize()/2) {
    return true;    // if a hit, return true
  }
  else {            // if not, return false
    return false;
  }
}

  }