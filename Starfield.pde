int x = 0;
int y = 0;
int color = 0;
int angle = 0;
int speed = 0;
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
  double myX,myY;
  int myColor, myAngle, mySpeed;
	NormalParticle()
  {
  myX = x;
  myY = y;
  myColor = color;
  myAngle = angle;
  mySpeed = speed;
  }
  void move(){
    x = speed;
  }
  void show(){
    fill(64);
  }
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle()
{
	//your code here
}
class JumboParticle extends Particle()
{
	//your code here
}
//slide 39+45