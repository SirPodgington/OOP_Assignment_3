// Screen Variables: The border around the scrolling background (or in other words the full screen, excluding the User Interface)
float screen_LeftBorder, screen_RightBorder, screen_TopBorder, screen_BottomBorder;
float screen_Width, screen_Height, screen_HalfWidth, screen_HalfHeight;
float screen_CentreX, screen_CentreY;


// User Interface Variables
float ui_LeftBorder, ui_RightBorder, ui_TopBorder, ui_BottomBorder;
float ui_Width, ui_Height, ui_HalfWidth, ui_HalfHeight;
float ui_CentreX, ui_CentreY;


// Vars for testing scrolling background. To be edited later
PImage img;
float x,y;

void setup()
{
   size(800,600);  
   img = loadImage("test.jpg"); // image is 1600 x 600
   
   // Game-screen Variables
   screen_LeftBorder = 0;
   screen_RightBorder = width;
   screen_TopBorder = 0;
   screen_BottomBorder = height * 0.8f;
   screen_Width = screen_RightBorder - screen_LeftBorder;
   screen_Height = screen_BottomBorder - screen_TopBorder;
   screen_HalfWidth = screen_Width * 0.5f;
   screen_HalfHeight = screen_Height * 0.5f;
   screen_CentreX = screen_LeftBorder + screen_HalfWidth;
   screen_CentreY = screen_TopBorder + screen_HalfHeight;
   
   // User Interface Variables
   ui_LeftBorder = screen_LeftBorder;
   ui_RightBorder = screen_RightBorder;
   ui_TopBorder = screen_BottomBorder;
   ui_BottomBorder = height;
   ui_Width = ui_RightBorder - ui_LeftBorder;
   ui_Height = ui_BottomBorder - ui_TopBorder;
   ui_HalfWidth = ui_Width * 0.5f;
   ui_HalfHeight = ui_Height * 0.5f;
   ui_CentreX = ui_LeftBorder + ui_HalfWidth;
   ui_CentreY = ui_TopBorder + ui_HalfHeight;
}
  
void draw()
{
   x = constrain(mouseX, 0, img.width - screen_Width);    
   y = constrain(mouseY, 0, img.height - screen_Height); 
   image(img, -x, -y);  
   
   // Screen & UI property testing
   textAlign(CENTER,CENTER);
   textSize(30);
   text("GAME SCREEN", screen_CentreX, screen_CentreY);
   noStroke();
   fill(238,232,170);
   rect(ui_LeftBorder, ui_TopBorder, ui_Width, ui_Height);
   fill(0);
   text("USER INTERFACE", ui_CentreX, ui_CentreY);
}