
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
<<<<<<< HEAD
  if (ob1.getX() < (ob2.getX() + ob2.getXSize()) 
  &&  (ob1.getX() + ob1.getXSize()) > ob2.getX() 
  && ob1.getY() < (ob2.getY()+ob2.getYSize()) 
  && (ob1.getY() + ob1.getYSize()) > ob2.getY()) {
=======
  if (ob1.getX() < (ob2.getX() + ob2.getXSize()) // A's Left edge is to the right of the B's right edge
   &&(ob1.getX() + ob1.getXSize()) > ob2.getX()  // A's Right edge is to the left of the B's left edge
   && ob1.getY() < (ob2.getY()+ob2.getYSize())   // A's Top edge os below B's bottom edge
   && (ob1.getY() + ob1.getYSize()) > ob2.getY()) { // A's Bottom edge is aboce B's top edge
>>>>>>> FETCH_HEAD
    return true;    // if a hit, return true
  }
  else {            // if not, return false
    return false;
  }

}

  }