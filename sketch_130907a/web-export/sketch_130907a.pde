// Coursea's first homework1: draw 20 objects
// Author:	Xiaoxing Cheng
// Date:	2013.09.07


// Canvas size, background color initialization, Preset the colors used in this
// sketch Size:   800px * 600px Color:  Solarized style, light scheme
color BGC = #fdf6e3;	// Background color, 
color Green = color(040, 145, 134); // Solarized green
color Brown = color(165, 119, 000); // Solarized brown
color Blue = color(040, 139, 210); // Solarized blue
color Red = color(211, 053, 130); // Solarized red
color[] ColorArray = {Green, Brown, Blue, Red}; // 

void setup(){
	size(800,600);		// Set canvas
	background(BGC);	// Set background color
	rectMode(CENTER);	// Set the referencing mode of rectangle to be centered
	smooth();
}

void draw(){
	for (int i = 1; i<9; i++){
		setColor(ColorArray[i%4],10*i,1);
		rect(200, 200, 300-30*i, 300-30*i);
		ellipse(600+15*i, 200+15*i, 300-30*i, 300-30*i);
	}
	noLoop();	// Stops the draw() from keeps circulating
	saveFrame("20-Obj.tif");
}

// Function that setup the stoke and fill parameters for the to be drawn shape
void setColor(color Color, int Alpha, int StrokeWeight){
	stroke(Color,Alpha);
	fill(Color,Alpha);
	strokeWeight(StrokeWeight);
}

