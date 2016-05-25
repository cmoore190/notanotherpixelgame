int velX = 0, velY = 0;
int x = 250, y = 250;
boolean[] keyDown  = new boolean[]{false, false, false, false};
Player player;
Sword sword;
PImage background;
Handler handler = new Handler();
Collision coll = new Collision(handler);

void setup() {
  size(500,500);
  background = loadImage("http://2.bp.blogspot.com/-XqwVEVV2Jqs/UB71SXGyHXI/AAAAAAAAAtw/wU0LTHrac8U/s1600/tileset5d.png");
  background.resize(500,500);
  frameRate(60);;
  //Testing enemies atm
  //handler.addObject(sword = new Sword(player.getX()+15, player.getY()-15, ID.Sword));
  handler.addObject(player = new Player("hitler", x, y, ID.Player, 30, 30));
  handler.addObject(new BasicEnemy(50,50,ID.Enemy, 16, 16));
  handler.addObject(sword = new Sword(player.getX()+15, player.getY()-15, ID.Player, 5, 15));
  System.out.println(player.getName());
}
void draw() {
  background(background); //Greyish color
  handler.tick();
  //System.out.println(frameRate);
}

void keyPressed() {
  if(keyCode == 87 && !keyDown[0]) {player.setVelY(-3); keyDown[0] = true;}
  if(keyCode == 83 && !keyDown[1]) {player.setVelY(3); keyDown[1] = true;}
  if(keyCode == 65 && !keyDown[2]) {player.setVelX(-3); keyDown[2] = true;}
  if(keyCode == 68 && !keyDown[3]) {player.setVelX(3); keyDown[3] = true;}
  if(keyCode == LEFT){}
  if(keyCode == 32){handler.removeObjectsWTag(ID.Player);}
}

void keyReleased() {
  if(keyCode == 87) {player.setVelY(0); keyDown[0] = false;} 
  if(keyCode == 83) {player.setVelY(0); keyDown[1] = false;} 
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