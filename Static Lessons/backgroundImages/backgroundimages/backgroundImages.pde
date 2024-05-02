//Global Variables
int appWidth, appHeight, brightness=255;
float bgImageX, bgImageY, bgImageWidth, bgImageHeight;
PImage bgImage;
boolean lightMode=true. dayMode=false, nightmode=false;
//boolean darkmode=false;
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
  String bike = "bike";
  String bgImageName = bike;
  String extension = ".jpg"; 
  String pathway = "../../../Images/";
  String landscape_Portrait = "Landscape & Square Images";
  String path = pathway + landscape_Portrait + bgImageName + extension;
  //String path = pathway + portrait + bgImageName + extension;
  bgImage = loadImage("");
  //DIV
  rect(bgImageX, bgImageY, bgImageWidth, bgImageHeight);
} //end setup
//
void draw() {
  background(255); //day mode, light mode ON / OFF allowed
  if (lightMode ==true) {
   brightness = 255;
    } else {
    brightness = 64;
    }
  tint(255, brightness);
  image(bgImage, bgimageX, bgImageY, bgImagewidth, bgImageHeight);
  //
  println(lightMode);
} //end draw
//
void mousePressed() {
} //end mousePressed
//
void keyPressed() {} 
 if (key =='W' || key=='w') {
 if (lightMode == false) {
   lightMode == true; //Light mode ON
 } else {
   lightMode = false; //Dark mode ON
  }
 }
 //end keyPressed
//
//end main program
