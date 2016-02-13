PImage img;
int x,y;

void setup()
{
   size(800,600);  
   img = loadImage("test.jpg"); // image is 1600 x 600
}
  
void draw()
{
   x = mouseX;
   y = mouseY;
   x = constrain(x, 0, img.width - width);    
   y = constrain(y, 0, img.height - height); 
   image(img, -x, -y);  

   stroke(0,0,0);
   ellipse(mouseX,mouseY,15,15);
}