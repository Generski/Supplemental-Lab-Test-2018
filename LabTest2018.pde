Player p;
Ladder l;
Key k;

float floorY;

float speed = 2f;


void setup()
{
  size(800, 400);

  floorY = height - height/5;

  float pSize = width/15;

  p = new Player(width/3, floorY - pSize/2, pSize);
  l = new Ladder(floorY, width/12, width/4);

  float keyHeight = floorY - l.h - p.d;
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
  p.getKey();

  l.display();
  k.display();
}
