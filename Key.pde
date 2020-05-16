class Key
{
  float x = width/2;
  float y;
  float l;

  float dist = 5;

  boolean alive = true;

  Key(float tempY, float tempL)
  {
    y = tempY;
    l = tempL;
  }

  void display()
  {
    if (alive == true)
    {
      stroke(255);
      noFill();

      //Head
      ellipse(x, y, l/3, l/3);

      //Body
      line(x, y + l/6, x, y + l);

      //Parts
      for (int i = 0; i < dist * 3; i += dist)
      {
        float partY = y + l;

        line(x - dist, partY - dist * 3 + i, x, partY - dist * 3 + i);
      }
    }
  }

  void die()
  {
    alive = false;
  }
}
