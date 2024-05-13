import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// 
//Global Variables
Minim minim;
AudioPlayer playList1;
AudioPlayer soundEffect1;
//
int appWidth, appHeight;
//
void setup() {
 //size(400, 500); //width, height
 fullScreen(); //displayWidth, displayHeight
 appWidth = displayWidth;  
 appHeight = displayHeight;  //Landscape is HARDCODED
 String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
 println(displayInstructions);
 //
 minim = new Minim(this);
 String Cycles = "Cycles";
 String extension = ".mp3";
 String quitButtonSound = "Audio_SoundEffect_The_Simplest_Sting";
 String pathwayMusic = "../../../Audio/Music/";
 String pathwaySoundEffects = "../../../Audio/SoundEffects";
 String path = sketchPath(pathwaySoundEffects + quitButtonSound + extension);
 //println(pathwaySoundEffects+quitButtonSound+extension);
 println("Relative Pathway:", pathwayMusic+Cycles+extension);
 String pathQuitButtonSound = sketchPath(pathwaySoundEffects+quitButtonSound+extension);
 String pathGrooveSong = sketchPath(pathwayMusic + Cycles + extension);
 println("Absolute Pathway", pathCyclesSong);
 soundEffects1 = minim.loadFile( pathQuitButtonSound );
 playList1 = minim.loadFile(pathCyclesSong);
 //
} //End setup
//
void draw() {
println("Song Position", playList1.position(), "Song Length", playList1.length());
playList1.loop(0);
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
