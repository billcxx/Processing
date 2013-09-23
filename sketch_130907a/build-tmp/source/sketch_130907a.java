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

// Coursea's first homework1: draw 20 objects
// Author:	Xiaoxing Cheng
// Date:	2013.09.07


// Canvas size, background color initialization, Preset the colors used in this
// sketch Size:   800px * 600px Color:  Solarized style, light scheme
int BGC = 0xfffdf6e3;	// Background color, 
int Green = color(040, 145, 134); // Solarized green
int Brown = color(165, 119, 000); // Solarized brown
int Blue = color(040, 139, 210); // Solarized blue
int Red = color(211, 053, 130); // Solarized red
int[] ColorArray = {Green, Brown, Blue, Red}; // 

public void setup(){
	size(800,600);		// Set canvas
	background(BGC);	// Set background color
	rectMode(CENTER);	// Set the referencing mode of rectangle to be centered
	smooth();
}

public void draw(){
	for (int i = 1; i<9; i++){
		setColor(ColorArray[i%4],10*i,1);
		rect(200, 200, 300-30*i, 300-30*i);
		ellipse(600+15*i, 200+15*i, 300-30*i, 300-30*i);
	}
	noLoop();	// Stops the draw() from keeps circulating
	saveFrame("20-Obj.tif");
}

// Function that setup the stoke and fill parameters for the to be drawn shape
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
