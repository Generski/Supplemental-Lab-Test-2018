class Player
{
  float x;
  float y;
  float d;

  float ground;

  boolean sad = true;

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
    if (sad == true)
    {
      line(x - 1.5 * eyeSize, y + 1.5 * eyeSize, x - 2 * eyeSize, y + 2.5 * eyeSize);
      line(x + 1.5 * eyeSize, y + 1.5 * eyeSize, x + 2 * eyeSize, y + 2.5 * eyeSize);
    } else
    {
      line(x - 1.5 * eyeSize, y + 1.5 * eyeSize, x - 2 * eyeSize, y);
      line(x + 1.5 * eyeSize, y + 1.5 * eyeSize, x + 2 * eyeSize, y);
    }
  }

  void move()
  {
    if (keyPressed)
    {
      if (y >= (l.y - l.h) - d/2)
      {
        if (x > width/2 - l.w/2 && x < width/2 + l.w/2)
        {
          if (keyCode == UP)
          {
            y -= speed;
          }
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
      } else
      {
        if (keyCode == DOWN)
        {
          y += speed;
        }
      }
    }
  }

  void getKey()
  {
    float dist = dist(x, y, k.x, k.y);
    {
      if (dist < d/2 + k.l)
      {
        k.die();
        sad = false;
      }
    }
  }
}
