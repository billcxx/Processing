import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_130921b extends PApplet {

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



public void setup(){
	size(512, 512);
	loadBackgroundImage();
	background(0);
	imageMode(CENTER);
}
	
public void draw(){
	image(BG_Image[BG_Image_Num],width/2,height/2);
}

public void loadBackgroundImage(){
	String file;
	for (int i = 1; i<4; i++){
			BG_Image[i-1] = loadImage("wallpaper"+i+".jpg");
	}
}

public void mouseClicked(){
	if (mouseButton == RIGHT){
		BG_Image_Num++;
		BG_Image_Num = BG_Image_Num % 3;
		println(BG_Image_Num);
		image(BG_Image[BG_Image_Num],width/2, height/2);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_130921b" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
