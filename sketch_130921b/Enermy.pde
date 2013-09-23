class Enermy
{
  float PositionX;
  float PositionY;
  float Speed;
  
  //Constructor
  
  Enermy(float S){
    PositionX = random(0,width);
    PositionY = 0;
    Speed = S;
  }
  
  void display(){
    rect(PositionX,PositionY,10,10);
    moveDown();
  }
  void moveDown(){
    PositionY = PositionY + Speed;
  }
  
  void disappear(){
    
  }
}
