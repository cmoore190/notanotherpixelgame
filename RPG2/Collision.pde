  /*
  Work on comparing 
  if two boxes are touching 
  and return true or false
  */

  public static boolean checkCollision(GameObject object1, GameObject object2, int xSize1, int xSize2, int ySize1, int ySize2){
    if(object1.getX() > object2.getX() && object1.getX() < object2.getX() + xSize2){
      if(object1.getY() > object2.getY() && object2.getX() < object2.getY() + xSize2){
        return true;
      }
    }
    return false;
  }