float x = 0.0;
color[] palette = {};
void setup(){
	size(800, 600);
	color darkBrown = #2C0F01;
	background(darkBrown);
}

void draw(){
	x++;
	noFill();
	stroke(#FF5100);
	strokeWeight(5);
	rect(x, height/2, 250, 250);

	x = constrain(x, 0, 250);
}

