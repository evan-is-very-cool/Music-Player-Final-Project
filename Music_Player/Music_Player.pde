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
boolean dayMode=false;
boolean lightMode=false;
//
String pathDarkBackgroundImage, pathLightBackgroundImage;
PImage day, night;
PImage backgroundImage;
PImage songImage;
float songImageRIGHT, songImageCENTERED, songImageLEFT;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
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
//divs();
//Images
String day = "day";
String night = "night";
String backgroundImageName = "night";
String pathway = "../Images";
String extensionJPG = ".jpg";
String landscape_Square = "landscape & Square Images/";
String portrait = "Portrait/";
String backgroundFileName = "Background Image/";
pathLightBackgroundImage = pathway + landscape_Square + day + extensionJPG;
pathDarkBackgroundImage = pathway + landscape_Square + night + extensionJPG;;
//String songImagePath = pathway + landscape_Square + + extensionJPG;
//songImage = loadImage(songImagePath);
  //
  //whiteMode = true
  //if (hour()>=9 && hour() <=17 ) backgroundColour = whiteBackground;
  //if (hour() <9 && hour() >17 ) backgroundColour = darkBackground;
    if ( hour()>=9 && hour() <=17 ) dayMode = true;
    if(lightMode == true && dayMode == true) {
    backgroundColour = whiteBackground;
    foregroundColour = black; 
    backgroundImageName = loadImage (pathLightBackgroundImage);
  } else if (lightMode==false) {
    backgroundColour = darkBackground;
    foregroundColour = white; 
    backgroundImage = loadImage (pathDarkBackgroundImage);
  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //note: if ( whiteMode==true && hour() <9 && hour() >17)
    backgroundImage = loadImage (pathDarkBackgroundImage);
  }
  //
  //soundEffects1.loop();
} //End Setup
void draw() {
  //background(backgroundColour);
  image(backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  if (lightMode == true && dayMode == true ) {
    backgroundImage = loadImage(pathLightBackgroundImage);
  } else if (lightMode == false) {
    backgroundImage = loadImage(pathDarkBackgroundImage);
  } else {
    tint(255, 255, 255, 0);
  }
    //
    //Quit Button
    fill(purple);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
      fill(yellow);
      rect(quitButtonX+quitButtonWidth*1/9, quitButtonY+quitButtonHeight*1/12, quitButtonWidth*7/9, quitButtonHeight*9/12);
    } else {
      fill(purple);
    }
    fill(foregroundColour);
    textAlign( CENTER, CENTER);
    //values: [LEFT, CENTER, RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE ];
    size = appHeight*1/12;
    text(quit, quitButtonX+quitButtonWidth*1/9, quitButtonY+quitButtonHeight*1/12, quitButtonWidth*7/9, quitButtonHeight*9/12);
    fill(foregroundColour);
    //
    //println(mouseX, mouseY);
    //
   }//End draw
  //
  void keyPressed() { //Listener
    if (key=='Q' || key=='q') 
    {
      soundEffects_1();
    }
    if (key==CODED && keyCode==UP)
    {
      soundEffects_1();
    }
    if (key=='W' && key=='w')
    {
     if (lightMode == false) {
        lightMode = true; //Light mode ON
   } else {
        lightMode = false; //Dark mode ON
      }
    }
    //end dayMode
    //
    // soundEffects_1.loop();
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
