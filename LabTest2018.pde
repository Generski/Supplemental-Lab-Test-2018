Ladder l;
Key k;

float floorY;

void setup()
{
  size(800, 600);
  
  floorY = height - height/5;
  
  l = new Ladder(floorY, width/12, width/4);
  k = new Key(height/2 - 100, 30);
}

void draw()
{
  background(0);
  
  //Floor
  stroke(255);
  line(0 + width/5, floorY, width - width/5, floorY);
  
  l.display();
  k.display();
}
