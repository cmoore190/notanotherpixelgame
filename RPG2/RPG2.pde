int velX = 0, velY = 0;
int x = 250, y = 425;
boolean[] keyDown  = new boolean[]{false, false, false, false};
Player player;
Gun gun;
PImage background;
Handler handler = new Handler();
private Level level = new Level();
Collision coll = new Collision(handler);

void setup() {
  size(500,500);
  background = loadImage("https://newevolutiondesigns.com/images/freebies/space-wallpaper-29.jpg");
  background.resize(500,500);
  frameRate(60);;
  //Testing enemies atm
  //handler.addObject(sword = new Sword(player.getX()+15, player.getY()-15, ID.Sword));
  handler.addObject(player = new Player("Dude", x, y, ID.Player, 30, 30));
  handler.addObject(gun = new Gun(player.getX()+15, player.getY()-15, ID.Player, 5, 15));
  System.out.println(player.getName());
}
void draw() {
  background(background); //Greyish color
  handler.tick();
  //System.out.println(frameRate);
}

void keyPressed() {
  //if(keyCode == 87 && !keyDown[0]) {player.setVelY(-3); keyDown[0] = true;}
  //if(keyCode == 83 && !keyDown[1]) {player.setVelY(3); keyDown[1] = true;}
  if(keyCode == 65 && !keyDown[2]) {player.setVelX(-3); keyDown[2] = true;}
  if(keyCode == 68 && !keyDown[3]) {player.setVelX(3); keyDown[3] = true;}
  if(keyCode == LEFT){}
  if(keyCode == 32){gun.Available(false); System.out.println("asd");}
  //if(keyCode == 32){handler.removeObjectsWTag(ID.Player);}
  if(keyCode == 32){gun.setAvailable(false);}
  

}

void keyReleased() {
  //if(keyCode == 87) {player.setVelY(0); keyDown[0] = false;} 
  //if(keyCode == 83) {player.setVelY(0); keyDown[1] = false;} 
  if(keyCode == 65) {player.setVelX(0); keyDown[2] = false;}
  if(keyCode == 68) {player.setVelX(0); keyDown[3] = false;} 
}

public static int clamp(int val, int min, int max) {
    if(val >= max)
      return max;
    else if(val <= min)
      return min;
    else
      return val;
  }