size(800, 600);
background(#000000);

PFont font = loadFont("AvenirNext-UltraLightItalic-48.vlw");
textAlign(CENTER);
textSize(60);
fill(#E6F700);
text("Hello World!", width/2, height/2);

textFont(font);
text("Hi, there", width/2, height/2 + 100);
