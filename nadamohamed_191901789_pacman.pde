
// pacman variables
float pacmanx = 0; //x
float pacmany = 0; //y
float pacmanradius = 40;  //r
float mouthwidth = PI/4; // mouth width

float direction = 0;

// dot variables
Dot[] dotGenerate; //generate dots randomly
Dot dot1;  // first dot 

int score = 0;

void setup()
{
  pacmanx = width/2;
  pacmany = height/2;
  smooth();
  ellipseMode (RADIUS);

  size (1100,1100);


  dot1 = new Dot ();
  dotGenerate = new Dot[20];

  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i] = new Dot();
  }
}

void draw()
{
  background(0);

  fill (250, 255, 10);
  arc (pacmanx, pacmany, pacmanradius, pacmanradius, mouthwidth/2 + direction, 2*PI - mouthwidth/2 + direction);



  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i].doteaten();
    dotGenerate[i].draw();
  }
  
  //movements

  if (keyPressed) {
    //right
    if (key == 'd')
    {
      pacmanx = pacmanx + 4;
      direction = 0;
    }
    //left
    if (key == 'a')
    {
      pacmanx = pacmanx - 4;
      direction = PI;
    }
    //up
    if (key == 'w')
    {
      pacmany = pacmany - 4;
      direction = PI * 3/2;
    }
    //down
    if (key == 's')
    {
      pacmany = pacmany + 4;
      direction = PI/2;
    }
  }
  // Draw score
  textAlign(RIGHT);
  textSize(50);
  text("Score:"+ score, width - 50, 70);
}
