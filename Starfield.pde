Particle[] bob = new Particle[100];

void setup()
{
	size(500, 500);
  for(int i = 0; i < 9*bob.length/10; i++) {
    bob[i] = new NormalParticle();
  }
  for(int i = 9*bob.length/10; i < bob.length; i++) {
    bob[i] = new JumboParticle();
  }
  bob[0] = new OddballParticle();
}
void draw()
{
  fill(0, 0, 0, 30);
  rect(0, 0, 500, 500, 0);
  for(int i = 0; i < bob.length; i++) {
  bob[i].move();
  bob[i].show();
  }
}
class NormalParticle implements Particle
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  NormalParticle() {
    myX = myY = 250;
    myAngle = Math.random() * 10 * Math.PI/2;
    mySpeed = (Math.random() + 0.1) * 3;
    myColor = color(255, (int)(Math.random()*255), 23);
  }
  public void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
    if(myX >= 500 || myX <= 0 || myY >= 500 || myY <= 0) {
      myY = 250;
      myX = 250;
      mySpeed = (Math.random() + 0.1) * 5;
    }
  }
  public void show() {
    noStroke();
    fill(255);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
  int mycolor;
  double X, Y, myspeed;
  OddballParticle() {
    X = Y = 250;
    myspeed = 3;
    mycolor = color(0,0, 255);
  }
  public void move() {
    X += (int)(Math.random()*99) - 49;
    Y += (int)(Math.random()*99) - 49;
    
    if(X >= 500 || X <= 0 || Y >= 500 || Y <= 0) {
      Y = 250;
      X = 250;
    }
  }
  public void show() {
    noStroke();
    fill(22,132,240);
    ellipse((float)X, (float)Y, 20, 20);
  }
}
class JumboParticle extends NormalParticle
{
  public void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 15, 15);
  }
}
