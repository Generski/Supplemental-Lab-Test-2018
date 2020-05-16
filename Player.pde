class Player
{
  float x;
  float y;
  float d;

  float ground;

  Player(float tempX, float tempY, float tempD)
  {
    x = tempX;
    y = tempY;
    d = tempD;

    ground = tempY;
  }

  void display()
  {
    stroke(255);
    noFill();
    //Body
    ellipse(x, y, d, d);

    //Eyes
    float eyeSize = d/8;
    ellipse(x - 2 * eyeSize, y - 1.5 * eyeSize, eyeSize, eyeSize);
    ellipse(x + 2 * eyeSize, y - 1.5 * eyeSize, eyeSize, eyeSize);

    //Nose
    ellipse(x, y, eyeSize, eyeSize);

    //Mouth
    line(x - 1.5 * eyeSize, y + 1.5 * eyeSize, x + 1.5 * eyeSize, y + 1.5 * eyeSize);

    //Mouth Ends
    line(x - 1.5 * eyeSize, y + 1.5 * eyeSize, x - 2 * eyeSize, y + 2.5 * eyeSize);
    line(x + 1.5 * eyeSize, y + 1.5 * eyeSize, x + 2 * eyeSize, y + 2.5 * eyeSize);
  }

  void move()
  {
    if (keyPressed)
    {
      if (x > width/2 - l.w/2 && x < width/2 + l.w/2)
      {
        if (keyCode == UP)
        {
          y -= speed;
        }
      }

      if (y >= ground)
      {
        if (keyCode == LEFT)
        {
          x -= speed;
        }

        if (keyCode == RIGHT)
        {
          x += speed;
        }
      }
    }
  }

  void climb()
  {
  }
}
