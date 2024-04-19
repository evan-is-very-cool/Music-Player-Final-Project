 //Global Variables
//
//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float songImageX, songImageY, songImageWidth, songImageHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float playlistButtonX, playlistButtonY, playlistButtonWidth, playlistButtonHeight;
float fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight;
float rewindX, rewindY, rewindWidth, rewindHeight;
float volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight;
float progressBarX, progressBarY, progressBarWidth, progressBarHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int size;
PFont generalFont;
String quit="QUIT";
//
color backgroundColour, darkBackground=0, whiteBackground=255;
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=FF00FF;
boolean whiteMode=false;
//
 void setup() {
 //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
  println(displayInstructions);
  //Fonts from OS (Operating System)
 String[] fontList = PFont.list(); //To list all fonts available on OS
 printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = 55;
generalFont = createFont("Harrington", size);
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
  //
  //Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  songImageX = appWidth*1/9;
  songImageY = appHeight*1/12;
  songImageWidth = appWidth*7/9;
  songImageHeight = appHeight*7/12;
  playButtonX = appWidth*4/9;
  playButtonY = appHeight*10/12;
  playButtonWidth = appWidth*1/9;
  playButtonHeight = appHeight*1/12;
  playlistButtonX = appWidth*8/9;  
  playlistButtonY = appHeight*6/12;
  playlistButtonWidth = appWidth*2/9;
  playlistButtonHeight = appHeight*2/12;
  fastforwardX = appWidth*5.5/9;
  fastforwardY = appHeight*10/12;
  fastforwardWidth = appWidth*1/9;
  fastforwardHeight = appHeight*1/12;
  rewindX = appWidth* 2.5/9;
  rewindY = appHeight* 10/12;
  rewindWidth = appWidth* 1/9;
  rewindHeight = appHeight* 1/12;
  volumeSliderX = appWidth* 0.5/9;
  volumeSliderY = appHeight* 1/12;
  volumeSliderWidth = appWidth* 0.2/9;
  volumeSliderHeight = appHeight* 7/12;
  progressBarX = appWidth* 2.2/9;
  progressBarY = appHeight* 8.5/12;
  progressBarWidth = appWidth* 6/12;
  progressBarHeight = appHeight* 0.2/12;
  quitButtonX = appWidth *8/9;
  quitButtonY = appHeight *0/12;
  quitButtonWidth = appWidth *1/9;
  quitButtonHeight = appHeight *1/12;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(songImageX, songImageY, songImageWidth, songImageHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(playlistButtonX, playlistButtonY, playlistButtonWidth, playlistButtonHeight);
  rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
  rect(rewindX, rewindY, rewindWidth, rewindHeight);
  rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight);
  rect(progressBarX, progressBarY, progressBarWidth, progressBarHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //rect(playlistButtonX, playlistbuttonY, playlistbuttonWidth, playlistbuttonHeight);
  //rect(scrollBarX, scrollBarY, scrollBarWidth, scrollBarHeight);
  //rect(song1X, song1Y, song1Width, song1Height);
  //rect(song2X, song2Y, song2Width, song2Height);
  //rect(song3X, song3Y, song3Width, song3Height);
  //rect(song4X, song4Y, song4Width, song4Height);
  //rect(song5X, song5Y, song5Width, song5Height);
  
  //var Population
  //whiteMode = true
  //if (hour()>=9 && hour() <=17 ) backgroundColour = whiteBackground;
  //if (hour() <9 && hour() >17 ) backgroundColour = darkBackground;
  if ( whiteMode==true && hour() >=9 && hour() <=17) {
    backgroundColour = whiteBackground;
    foregroundColour = black; //
  }  else {
    backgroundColour = darkBackground;
    foregroundColour = #FFFF00; //note: if ( whiteMode==true && hour() <9 && hour() >17)
  if ( hour()>=9 && hour() <=17 ) foregroundColour = white;
  }
  //
} //End Setup
void draw() {
  background(backgroundColour); //greyscale
  fill(foregroundColour);
   //
   //Quit Button
   fill(purple);
   rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
   if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
   fill(yellow);
   rect( quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth);
}  else {
   fill(purple);
}
   fill(foregroundColour);
   println(mouseX, mouseY);
}  //End draw
void keyPressed() { //Listener
  if (key=='Q' || key=='q') exit();
  if (key==CODED && keyCode==UP) exit();
  if (key=='W' && key=='w') ;
} //End keyPressed
//
void mousePressed() { //Listener
  // quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ); 
  
exit();
}
 //End mousePressed
//
// End MAIN Program
