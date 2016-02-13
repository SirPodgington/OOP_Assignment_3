class GameObject
{
   PVector position;
   PVector forward;
   float obj_Width, obj_HalfWidth;
   float obj_Height, obj_HalfHeight;
   float speed;
   float theta;
   color colour;
   
   GameObject(){}
   
   GameObject(float start_X, float start_Y)
   {
      position = new PVector(start_X, start_Y);
   }
   
   void update(){}
   void render(){}   
}