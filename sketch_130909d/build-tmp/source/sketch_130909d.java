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

public class sketch_130909d extends PApplet {

float x = 0.0f;
public void setup(){
	size(800, 600);
	int darkBrown = 0xff2C0F01;
	background(darkBrown);
}

public void draw(){
	x++;
	noFill();
	stroke(0xffFF5100);
	strokeWeight(5);
	rect(x, height/2, 250, 250);
	println("x: "+x);
	x = constrain(x, 0, 250);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_130909d" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
