// Coursea's first homework
// Author:	Xiaoxing Cheng
// Date:	2013.09.07


// Canvas size, background color initialization Preset the colors used in this
// sketch Size:   800px * 600px Color:  Solarized style, light scheme
color BGC = #fdf6e3;	// Background color, 
color Green = color(040, 145, 134);// Solarized green
color Brown = color(165, 119, 000);// Solarized brown
int Alpha = 50;
void setup(){
	size(800,600);
	background(BGC);
	rectMode(CENTER);
}

void draw(){
	setColor(Green,1,1);
	rect(125, 125, 200, 200);
	setColor(Green,50,1);
	rect(125, 125, 180, 180);
}
//

void setColor(color Color, int Alpha, int StrokeWeight){
	stroke(Color,Alpha);
	fill(Color,Alpha);
	strokeWeight(StrokeWeight);
}
