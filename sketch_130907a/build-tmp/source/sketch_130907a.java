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

public class sketch_130907a extends PApplet {

// Coursea's first homework
// Author:	Xiaoxing Cheng
// Date:	2013.09.07


// Canvas size, background color initialization Preset the colors used in this
// sketch Size:   800px * 600px Color:  Solarized style, light scheme
int BGC = 0xfffdf6e3;	// Background color, 
int Green = color(040, 145, 134);// Solarized green
int Brown = color(165, 119, 000);// Solarized brown
int Alpha = 50;
public void setup(){
	size(800,600);
	background(BGC);
	rectMode(CENTER);
}

public void draw(){
	setColor(Green,1,1);
	rect(125, 125, 200, 200);
	setColor(Green,50,1);
	rect(125, 125, 180, 180);
}
//

public void setColor(int Color, int Alpha, int StrokeWeight){
	stroke(Color,Alpha);
	fill(Color,Alpha);
	strokeWeight(StrokeWeight);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_130907a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
