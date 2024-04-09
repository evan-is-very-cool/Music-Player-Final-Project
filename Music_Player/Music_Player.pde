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
//
 void setup() {
 //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
  println(displayInstructions);
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
  fastforwardX = appWidth*5/9;
  fastforwardY = appHeight*10/12;
  fastforwardWidth = appWidth*1/9;
  fastforwardHeight = appHeight*1/12;
  rewindX = appWidth* 3/9;
  rewindY = appHeight* 10/12;
  rewindWidth = appWidth* 1/9;
  rewindHeight = appHeight* 1/12;
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
  //rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumesliderHeight);
  //rect(progressBarX, progressbarY, progressbarWidth, progressbarHeight);
  //rect(playlistButtonX, playlistbuttonY, playlistbuttonWidth, playlistbuttonHeight);
  //rect(scrollWheelX, scrollWheelY, scrollWheelWidth, scrollWheelHeight);
  //rect(song1X, song1Y, song1Width, song1Height);
  //rect(song2X, song2Y, song2Width, song2Height);
  //rect(song3X, song3Y, song3Width, song3Height);
  //rect(song4X, song4Y, song4Width, song4Height);
  //rect(song5X, song5Y, song5Width, song5Height);
 }//End Setup
void draw() {
} //End Draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
