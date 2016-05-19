  /*
  Work on comparing 
  if two boxes are touching 
  and return true or false
  */
    public static void checkBoxes(GameObject object1, GameObject object2) {
    if (object1.getX() < object2.getY() && object1.getX() > object2.getY() &&
     object1.getX() < object2.getY() && object1.getX() > object2.getY())
     System.out.println("WOOOOOO");
  }