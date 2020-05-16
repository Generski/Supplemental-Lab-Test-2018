class Ladder
{
  float x;
  float y;
  float w;
  float h;

  Ladder(float tempY, float tempW, float tempH)
  {
    x = width/2;
    y = tempY;
    w = tempW;
    h = tempH;
  }

  void display()
  {
    //Sides
    stroke(255);
    line(x - w/2, y, x - w/2, y - h);
    line(x + w/2, y, x + w/2, y - h);
    
    //Steps
    for(int i = 0 ; i < h ; i += h/10)
    {
      line(x - w/2, y - i, x + w/2, y - i);
    }
  }
}
