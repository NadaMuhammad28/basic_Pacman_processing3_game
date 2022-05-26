class Dot 
{
  int dotcounter = 0;
  float x, y, size;

  Dot ()
  {//generate randomly
    this.x = random (50,1000);
    this.y = random (100,1050);
    this.size = 10;
  }

  Dot ( float x, float y)
  {
    this.x = x;
    this.y = y;
    this.size = 10;
  }


  void draw ()
  {
    fill (250, 255, 10);
     ellipse(this.x, this.y, size, size);
    
  }
//function to check if the dot has been eaten, if it is, the score will be incremented
//by checking the distance between the radius of the pacman and the position of the dot
// if they are qual, generate another dot
  boolean doteaten ()
  {
    if (  sqrt(  (this.x - pacmanx) * (this.x -  pacmanx) + (this.y -  pacmany) * (this.y -  pacmany)  ) < pacmanradius)
    {
     
      this.x = random (50,1000);
      this.y = random (100,1050);
      score += 1;
      println(score);
      return true;
      }
    
      
    

    return false;
  }
}
