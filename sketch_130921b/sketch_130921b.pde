// Simplified version of the classical game "Thunder"
// Author: Xiaoxing Cheng
// Date: 09/20/2013
// Happy mid-autumn festival~

// Description:
// 1. Mouse or arrow keys or W,A,S,D can be used to control the position of your plane.
// 2. With the click of the left mouse button and space bar you can shoot bullets.
// 3. With the click of right mouse button the background picture will change

PImage[] BG_Image = new PImage[3];
String BG_Image_Path = "./Data/";
int BG_Image_Num = 0;
int Bullet_Num = 0;
int Enermy_Num = 0;
Space_Fighter Sunny;
Enermy[] Monster = new Enermy[100];
Bullet[] bullet = new Bullet[100];
boolean[] enermy = new boolean[100];
boolean choice = false;
boolean Keyboard = false;
boolean Mouse = false;
int BoxWidth = 50;
int BoxHeight =30;



void setup(){
	size(512, 512);
	loadBackgroundImage();
	background(0);
	imageMode(CENTER);
        Sunny = new Space_Fighter(width/2,height,10);

}
	
void draw(){
  if (!choice){
        boxWithText(width/2-100,height/2,"Keyboard");
        boxWithText(width/2+100,height/2,"Mouse");
  }
  else{
    fill(#ffffff);
  image(BG_Image[BG_Image_Num],width/2,height/2);
  Sunny.shoot(mousePressed && mouseButton == LEFT);
  Sunny.display();
  if (second()%4 == 0 && enermy[second()]==false){
    Monster[Enermy_Num] = new Enermy(2+Enermy_Num/20);
    enermy[second()]=true;
    Enermy_Num++;  
  }
  for(int i = 0; i<Enermy_Num;i++){
    Monster[i].display();
  }
  }
}
void boxWithText(int x, int y,String text){
  fill(#ffffff);
        rectMode(CENTER);
        rect(x,y,BoxWidth,BoxHeight);
        textAlign(CENTER);
        fill(0);
        textSize(10);
        text(text,x,y);
}

void loadBackgroundImage(){
	String file;
	for (int i = 1; i<4; i++){
			BG_Image[i-1] = loadImage("wallpaper"+i+".jpg");
	}
}

void mouseClicked(){
  if (!choice){
    if (mouseX > width/2-100-BoxWidth/2 && 
        mouseX < width/2-100+BoxWidth/2 &&
        mouseY < height/2+BoxHeight/2 &&
        mouseY > height/2-BoxHeight/2){
      Keyboard = true;
      choice = true;
    }
    else if (mouseX > width/2+100-BoxWidth/2 && 
        mouseX < width/2+100+BoxWidth/2 &&
        mouseY < height/2+BoxHeight/2 &&
        mouseY > height/2-BoxHeight/2){
      Mouse = true;
      choice = true;
    }
    
  }
	if (mouseButton == RIGHT){
		BG_Image_Num++;
		BG_Image_Num = BG_Image_Num % 3;
		println(BG_Image_Num);
		image(BG_Image[BG_Image_Num],width/2, height/2);
	}
}


void keyPressed(){
    Sunny.shoot(key == 'j');
  Sunny.move(1);
}
