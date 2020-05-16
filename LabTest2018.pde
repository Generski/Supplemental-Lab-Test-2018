Player p;
Ladder l;
Key k;

float floorY;

float speed = 2f;


void setup()
{
  size(800, 600);
  
  floorY = height - height/5;
  float keyHeight = height/2 - height/10;
  
  float pSize = width/15;
  
  p = new Player(width/3, floorY - pSize/2, pSize);
  l = new Ladder(floorY, width/12, width/4);
  k = new Key(keyHeight, 30);
}

void draw()
{
  background(0);
  
  //Floor
  stroke(255);
  line(0 + width/5, floorY, width - width/5, floorY);
  
  p.display();
  p.move();
  
  l.display();
  k.display();
}
