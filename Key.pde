class Key
{
  float x = width/2;
  float y;
  float l;
  
  Key(float tempY, float tempL)
  {
    y = tempY;
    l = tempL;
  }
  
  void display()
  {
    stroke(255);
    noFill();
    ellipse(x, y, l/3, l/3);
  }
}
