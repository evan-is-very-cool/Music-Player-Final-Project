/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeight;
float thingX, thingY, thingWidth, thingHeight;
PFont titleFont;
PFont thingFont;
String title="Wahoo!";
String thing="done";
int size;
color purple=#FF00FF, yellow=#FFFF00;
//
//Display Geoemtry, Display Orientation: landscape, portrait, square
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
thingX = appWidth*1/10;
thingY = appHeight*9/10;
thingWidth = appWidth*8/10;
thingHeight = appHeight*1/10;

//
//Single Executed Code: Font SETUP
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = 55;
titleFont = createFont("Harrington", size);
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer //Note: assignment
//
//Repeated Code: draw()ing text
fill(purple); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 65; //Note: CS20 studies size algorithm
textFont(titleFont, size);

text(thing, thingX, thingY, thingWidth, thingHeight);
rect(thingX, thingY, thingWidth, thingHeight);
//my rectangle
fill(yellow);
textAlign( CENTER, CENTER );
size = 65;
thingFont = createFont("Harrington", size);
textFont(thingFont, size);
