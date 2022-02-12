public void setup()
{
 size(500,500);
 rectMode(CENTER);
 
}
public void draw()
{
  background(0);
  myFractal(250,250, 250);
}
int r = 0;
int g = 0;
int b = 0;
void mousePressed(){
 r = (int)(Math.random()*256); 
 g = (int)(Math.random()*256); 
 b = (int)(Math.random()*256); 
}

public void myFractal(int x, int y, int siz)
{
   fill(r,g,b);
   rect(x,y,siz,siz);
   ellipse(x,y,siz,siz);
   triangle(x-siz/2,y,x, y-siz/2, x, y);
   triangle(x-siz/2,y,x, y+siz/2, x, y);
   triangle(x+siz/2,y,x, y-siz/2, x, y);
   triangle(x+siz/2,y,x, y+siz/2, x, y);
  if(siz > 20)
  {
   myFractal(x,y,siz/2);
   myFractal(x+siz,y+siz,siz/2);
   myFractal(x-siz,y-siz,siz/2);
   myFractal(x+siz,y-siz,siz/2);
   myFractal(x-siz,y+siz,siz/2);
   
  }
}
