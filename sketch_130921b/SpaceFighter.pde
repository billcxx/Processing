class Space_Fighter
{
  float PositionX;
  float PositionY;
  float ShootingSpeed;
  float Speed;
  int Life;
  int i=0;

  
  //--------------------------------------
  //  CONSTRUCTOR
  //--------------------------------------
  
  Space_Fighter (int X, int Y , float S  ) {
    // expression
    PositionX = float(X);
    PositionY = float(Y);
    Speed = S;
  }

  void display(){
    beginShape();
      vertex(PositionX,PositionY-3);
      vertex(PositionX-5,PositionY);
      vertex(PositionX-10,PositionY-5);
      vertex(PositionX-2.5,PositionY-20);
      vertex(PositionX,PositionY-30);
      vertex(PositionX+2.5,PositionY-20);
      vertex(PositionX+10,PositionY-5);
      vertex(PositionX+5,PositionY);
    endShape(CLOSE);
  }

  void gameOver(){
    textSize(50);
    text("Game Over", width/2,height/2);
  }

  void shoot(boolean mouse){
    if (mouse){
    rectMode(CORNER);
    rect(PositionX-3,0,5,PositionY-5);
    }
  }
  
  void move(int Case){
    switch(Case){
      case 0:
//        PositionX = map(mouseX,0,displayWidth,0,width);
//        PositionY = map(mouseY,0,displayHeight,0,height);
//          PositionX = mouseX;
//          PositionY = mouseY;
        break;
      case 1:
        if (key == 'a' || keyCode == LEFT){
          PositionX = PositionX - Speed;
        }
        if (key == 'w' || keyCode == UP){
          PositionY = PositionY - Speed;
        }
        if (key == 's' || keyCode == DOWN){
          PositionY = PositionY + Speed;
        }
        if (key == 'd' || keyCode == RIGHT){
          PositionX = PositionX + Speed;
        }
        break;
      default:
        break;
    }
    
    PositionX = boundary(0,PositionX);
    PositionY = boundary(1,PositionY);
  }

  float boundary(int i, float Position){
    switch(i){
      case 0:
        if (Position < 0){
          return 0;
        } else if (Position > width){
          return width;
        } else return Position;
//        break;
      case 1:
        if (Position < 0){
          return 0;
        } else if (Position > height){
          return height;
        } else return Position;
//        break;
      default:
        return 0;
//        break;
    }
  }
  void restart(){

  }
}
