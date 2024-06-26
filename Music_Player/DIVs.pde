float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float songImageX, songImageY, songImageWidth, songImageHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float playlistButtonX, playlistButtonY, playlistButtonWidth, playlistButtonHeight;
float fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight;
float rewindX, rewindY, rewindWidth, rewindHeight;
float volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight;
float progressBarX, progressBarY, progressBarWidth, progressBarHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void DIVs() {
 population();
 drawRects();
 
} //end DIVs
void population() {
  //Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
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
} //end population
//
void drawRects() {
  //rect(X, Y, Width, Height);
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //int centerX = appWidth*1/2;
  //int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(songImageX, songImageY, songImageWidth, songImageHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(playlistButtonX, playlistButtonY, playlistButtonWidth, playlistButtonHeight);
  rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
  rect(rewindX, rewindY, rewindWidth, rewindHeight);
  rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight);
  rect(progressBarX, progressBarY, progressBarWidth, progressBarHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //rect(scrollBarX, scrollBarY, scrollBarWidth, scrollBarHeight);
  //rect(song1X, song1Y, song1Width, song1Height);
  //rect(song2X, song2Y, song2Width, song2Height);
  //rect(song3X, song3Y, song3Width, song3Height);
  //rect(song4X, song4Y, song4Width, song4Height);
  //rect(song5X, song5Y, song5Width, song5Height); 
}

//End DIVs SubProgram
