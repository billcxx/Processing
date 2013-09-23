class Bullet
{
   float PositionX;
   float PositionY;
   float Speed;
   
   Bullet(float X, float Y, float S){
     PositionX = X;
     PositionY = Y;
     Speed = S;
   }
   
   void display(){
     fill(#ffffff);
     beginShape();
       vertex(PositionX-5, PositionY+7);
       vertex(PositionX-7,PositionY-3);
       vertex(PositionX,PositionY-7);
       vertex(PositionX+7,PositionY-3);
       vertex(PositionX+5,PositionY+7);
     endShape(CLOSE);
   }
   void straightUp(){
     PositionY = PositionY - Speed;
     display();
   }
   
   void disappear(){
     
   }
}

