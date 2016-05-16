int velX = 0, velY = 0;
int x = 250, y = 250;
boolean[] keyDown  = new boolean[]{false, false, false, false};
Player player;
PImage background;

void setup() {
  size(500,500);
  background = loadImage("http://2.bp.blogspot.com/-XqwVEVV2Jqs/UB71SXGyHXI/AAAAAAAAAtw/wU0LTHrac8U/s1600/tileset5d.png");
  background.resize(500,500);
  frameRate(60);
  player = new Player("hitler", x, y, 30);
  System.out.println(player.getName());
}
void draw() {
  background(background); //Greyish color
  rect(player.getX(), player.getY(), player.getSize(), player.getSize());
  player.setX(player.getX() + velX);
  player.setY(player.getY() + velY);
  System.out.println(frameRate);
}

void keyPressed() {
  if(keyCode == UP && !keyDown[0]) {velY -= 3; keyDown[0] = true;}
  if(keyCode == DOWN && !keyDown[1]) {velY += 3; keyDown[1] = true;}
  if(keyCode == LEFT && !keyDown[2]) {velX -= 3; keyDown[2] = true;}
  if(keyCode == RIGHT && !keyDown[3]) {velX += 3; keyDown[3] = true;}
}

void keyReleased() {
  if(keyCode == UP) {velY = 0; keyDown[0] = false;} 
  if(keyCode == DOWN) {velY = 0; keyDown[1] = false;} 
  if(keyCode == LEFT) {velX = 0; keyDown[2] = false;}
  if(keyCode == RIGHT) {velX = 0; keyDown[3] = false;} 
}