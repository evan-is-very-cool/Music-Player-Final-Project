//library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//
//Global Variables
Minim minim;
AudioPlayer soundEffects1;
AudioPlayer playList1;
//
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="X";
//
color backgroundColour, darkBackground=0, whiteBackground=255;
color foregroundColour;
color white=255, black=0, purple=#FF00FF, yellow=#FFFF00;
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
  //
  minim = new Minim(this);
  String extension = ".mp3";
  String quitButtonSound = "Audio_SoundEffect_The_Simplest_Sting";
  String pathwaySoundEffects = "../Audio/SoundEffects/";
  //println(pathwaySoundEffects+quitButtonSound+extension);
  String path = sketchPath(pathwaySoundEffects + quitButtonSound + extension);
  //println(path);
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
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
  //
  DIVs();
  //
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
  //soundEffects1.loop();
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
   rect(quitButtonX+quitButtonWidth*1/9, quitButtonY+quitButtonHeight*1/12, quitButtonWidth*7/9, quitButtonHeight*9/12);
}  else {
   fill(purple);
}
   fill(foregroundColour);
   textAlign( CENTER, CENTER);
   //values: [LEFT, CENTER, RIGHT];
   size = appHeight*1/12;
   text(quit, quitButtonX+quitButtonWidth*1/9, quitButtonY+quitButtonHeight*1/12, quitButtonWidth*7/9, quitButtonHeight*9/12);
   fill(foregroundColour);
   //
   //println(mouseX, mouseY);
}  //End draw
void keyPressed() { //Listener
  if (key=='Q' || key=='q') exit();
  {
    soundEffects_1();
  }
  if (key==CODED && keyCode==UP) exit();
  {
    soundEffects_1();
  }
  if (key=='W' && key=='w') ;
  {
    soundEffects_1();
  }
} //End keyPressed
//
void mousePressed() { //Listener
  // quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ); 
 {
soundEffects_1();
}

}//End mousePressed
//
// End MAIN Program
