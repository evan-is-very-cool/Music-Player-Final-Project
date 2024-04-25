/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont;
PFont footerFont;
String title="Wahoo!";
String footer="done";
int size;
color purple=#FF00FF, yellow=#FFFF00;
//
//Display Geoemetry, Display Orientation: landscape, portrait, square
fullScreen();
//
//Concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
footerX = appWidth*1/10;
footerY = appHeight*8/10;
footerWidth = appWidth*8/10;
footerHeight = appHeight*1/10;

//
//Single Executed Code: Font SETUP
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = 55;
titleFont = createFont("Harrington", size);
footerFont = createFont("Harrington", size);
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(footerX, footerY, footerWidth, footerHeight);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer //Note: assignment
//
//Repeated Code: draw()ing text
fill(purple); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 55; //Note: CS20 studies size algorithm
textFont(titleFont, size);
//
fill(yellow);
textAlign( CENTER, CENTER );
size = 55;
textFont(footerFont, size);
text(footer, footerX, footerY, footerWidth, footerHeight);
