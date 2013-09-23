//This is the second homework for coursea.
//Demands: Using code blocks, variables, arrays, loops
//Author: Xiaoxing Cheng
//Date: 09/14/2013
//This sketch gives a countdown timer, which will literally "boom" at the end of the countdown.
//Animate the sketch is the first step to real dynamic sketch.

// The 5 colors in sequence are dark blue, light blue, even lighter blue, bright blue and pinky orange.
color[] Business = {#1B325F,#9CC4E4,#E9F2F9,#3A89C9,#F26C4F}; 
color BGC = Business[2]; // Choose light blue to be the background color.
void setup(){
	size(1280, 720);
	background(BGC);
}

void draw(){
	int Millis = millis(); // Get the millisecond since the start of the program.
	// Get an integer circulating between 0 ~ 999. Used for drawing the countdown circle.
	int M = Millis % 1000; 
	int S = (Millis - M)/1000; // The amount of seconds passed.
	int CountDown = 5 - S%6; // The displayed counting down number.
	// When the countdown hasn't ended yet, draw the countdown circle with the countdown number in it.
	if (CountDown > 0){ 
		// The reason for 20 not some smaller numbers, is that if the number is too small, there are possibilities that M will never be less than the number, since it takes more than one millisecond to finish one loop of draw(). Then the countdown circle wont' be cleared each time.
		if (M <= 20 ){ 
			background(BGC); // Whenever a full circle is drawn, clear the canvas
		} else {
			fill(Business[4]);
		}
		noStroke();
		// Draw the arc based on the value of M, as looping through the draw(), we'll get a full circle.
		arc(width/2, height/2, 300, 300, PI/2, PI/500*M+PI/2); 
		fill(Business[0]);
		textSize(50);
		textAlign(CENTER,CENTER); 
		text(CountDown, width/2, height/2); // Print out the countdown number in the middle of the circle.
	} else { // When CountDown<=0, the countdown ends, clear the canvas, then print out "boom"
			background(BGC);
			textAlign(CENTER,CENTER);

			if (M%10 <=10){
				textSize(M); // The size of the boom gradually increase.
				text("Boom", width/2, height/2); // Put the "boom" at the center.
			}
			if (1000 - M < 20){ // The choice of 20 is the same as the above situation.
				noLoop(); // When "boom" reach its largest size, stop the looping of draw().
			}
		}
	
}
