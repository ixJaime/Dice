 void setup()
{
  size(500, 500);
	noLoop();
}
void draw()
{
	background(0);
  Die myDice = new Die(50, 50);
  myDice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		
	}
}