//Global Variables
//
//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float songImageX, songImageY, songImageWidth, songImageHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
//
 { //size(400, 500); // width, height
  fullScreen(); // displayWidth, displayHeight
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
  songImageX = appWidth*6/9;
  songImageY = appHeight*6/12;
  songImageWidth = appWidth*7/9;
  songImageHeight = appHeight*7/10;
  playButtonX = appWidth*5/9;
  playButtonY = appHeight*6/12;
  playButtonWidth = appWidth*1/9;
  playButtonHeight = appHeight*1/9;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(songImageX, songImageY, songImageWidth, songImageHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  //rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
  //rect(rewindX, rewindY, rewindWidth, rewindHeight);
  //rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumesliderHeight);
  //rect(playlistButtonX, playlistbuttonY, playlistbuttonWidth, playlistbuttonHeight);
  //rect(progressBarX, progressbarY, progressbarWidth, progressbarHeight);
  //rect(playlistButtonX, playlistbuttonY, playlistbuttonWidth, playlistbuttonHeight);
  //rect(scrollWheelX, scrollWheelY, scrollWheelWidth, scrollWheelHeight);
  //rect(song1X, song1Y, song1Width, song1Height);
  //rect(song2X, song2Y, song2Width, song2Height);
  //rect(song3X, song3Y, song3Width, song3Height);
 // rect(song4X, song4Y, song4Width, song4Height);
  //rect(song5X, song5Y, song5Width, song5Height);
} //End Setup
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
