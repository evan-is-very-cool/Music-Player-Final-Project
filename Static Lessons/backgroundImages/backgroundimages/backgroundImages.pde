//Global Variables
int appWidth, appHeight;
float bgImageX, bgImageY, bgImageWidth, bgImageHeight;
PImage bgImage;
//
void setup() {
  //display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //population
  bgImageX = appWidth*0;
  bgImageY = appHeight*0;
  bgImageWidth = appWidth-1;
  bgImageHeight = appHeight-1;
  //
  String backgroundImage = ;
  String extension = ".jpg"; 
  String pathway = "../../../Images/";
  String landscape_Portrait = "Landscape & Square Images"
  //String path = pathway + landscape_Portrait + bgImageName + extension;
  String path = pathway + portrait + bgImageName + extension;
  bgImage = loadImage("");
  //DIV
  rect(bgImageX, bgImageY, bgImageWidth, bgImageHeight);
} //end setup
//
void draw() {
  image(bgImage, bgimageX, bgImageY, bgImagewidth, bgImageHeight);
} //end draw
//
void mousePressed() {
} //end mousePressed
//
//void keyPressed() {} //end keyPressed
//
//end main program
