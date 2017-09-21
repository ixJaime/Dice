void setup() {
  size(580, 600);
	noLoop();
}
int total = 1;

void draw()
{
	background(176, 196, 222);
  for (int y = 5; y <=400; y+=70) {
  for(int x = 10; x <=500; x+=70) {
    Die myDice = new Die(x, y);
    myDice.show();
    myDice.roll();
  }
  textSize(50);
  fill(0);
  text("Total: "+ total, 290, 580);
 }
}

void mousePressed()
{
	redraw();
}

class Die 
{
	int myX, myY, i ;
	Die(int x, int y) {
    i = (int)(Math.random()*5)+1;
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
    if(i==1) {
      fill(0);
      ellipse(myX+32.5, myY+32.5, 10, 10);
    }
    if(i==2) {
      fill(0);
      ellipse(myX+22, myY+45, 10, 10);
      ellipse(myX+45, myY+20, 10, 10);
	  }
    if(i==3) {
      fill(0);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+33, myY+35, 10, 10);
      ellipse(myX+45.5, myY+48, 10, 10);
    }
    if(i==4){
      fill(0);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
}
}