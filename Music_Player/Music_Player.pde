//Global Variables
//
//Global Variables
int appWidth, appHeight;
//
void setup() {
  println("HelloWorld");
  //Concatenation & Inspectiong Variables with Character Escapes
  println("Width: "+width+ "\tHeight: "+height+ "\tDisplay Width: "+displayWidth+ "\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithemtic errors
  println("Example Formula: add 1 to the width", width+1);
  //
  //Display: CANVAS & Full Screen
  //size(400, 500); // width, height
  fullScreen(); // displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //println(appWidth, appHeight);
  //Display Geometry: Landscape, Portrait, Square
  String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
  println(displayInstructions);
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
