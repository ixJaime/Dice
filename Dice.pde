void setup() {
  size(580, 500);
  noLoop();
}
int total = 0;

void draw()
{
  background(176, 196, 222);
  for (int y = 5; y <=400; y+=70) 
  {
    for (int x = 10; x <=500; x+=70) 
    {
      Die myDice = new Die(x, y);
      myDice.show();
      myDice.roll();
    }
  }
  fill(0);
  textSize(50);
  text("Total: "+ total, 20, 490);
}

void mousePressed()
{
  total = 0;
  redraw();
}

class Die 
{
  int myX, myY, i ;
  Die(int x, int y) {
    i = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }

  void roll() {
    total = total + i;
  }

  void show() {
    fill(255);
    strokeWeight(2);
    rect(myX, myY, 65, 65, 30);
    if (i==1) {
      fill(0);
      ellipse(myX+32.5, myY+32.5, 10, 10);
    }
    if (i==2) {
      fill(0);
      ellipse(myX+22, myY+45, 10, 10);
      ellipse(myX+45, myY+20, 10, 10);
    }
    if (i==3) {
      fill(0);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+33, myY+35, 10, 10);
      ellipse(myX+45.5, myY+48, 10, 10);
    }
    if (i==4) {
      fill(0);
      ellipse(myX+20, myY+22, 10, 10);
      ellipse(myX+45, myY+22, 10, 10);
      ellipse(myX+20, myY+42, 10, 10);
      ellipse(myX+45, myY+42, 10, 10);
    }
    if (i==5) {
      fill(0);
      ellipse(myX+20, myY+22, 10, 10);
      ellipse(myX+45, myY+22, 10, 10);
      ellipse(myX+20, myY+42, 10, 10);
      ellipse(myX+45, myY+42, 10, 10);
      ellipse(myX+32.5, myY+33, 10, 10);
    }
    if (i==6) {
      fill(0);
      ellipse(myX+20, myY+14, 10, 10);
      ellipse(myX+20, myY+34, 10, 10);
      ellipse(myX+20, myY+54, 10, 10);
      ellipse(myX+45, myY+14, 10, 10);
      ellipse(myX+45, myY+34, 10, 10);
      ellipse(myX+45, myY+54, 10, 10);
    }
  }
}