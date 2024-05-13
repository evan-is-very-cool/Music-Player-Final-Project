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
 //size(400, 500); //width, height
 fullScreen(); //displayWidth, displayHeight
 appWidth = displayWidth;  
 appHeight = displayHeight;  //Landscape is HARDCODED
 String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
 println(displayInstructions);
 //
 minim = new Minim(this);
 String extension = ".mp3";
 String quitButtonSound = "Audio_SoundEffect_The_Simplest_Sting";
 String pathwaySoundEffects = "../Audio/SoundEffects/";
 String path = sketchPath(pathwaySoundEffects + quitButtonSound + extension);
 //println(path);
 soundEffects1 = minim.loadFile( path );
 //
