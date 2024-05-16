import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// 
//Global Variables
Minim minim; //creates object to access all functions
int numberSoundEffects = 4;
int numberMusicSongs = 8; 
AudioPlayer[] playList = new AudioPlayer[ numberMusicSongs ]; 
AudioPlayer[] soundEffects = new AudioPlayer[ numberSoundEffects ];
int currentSong = 0;
//
int appWidth, appHeight;
//
Boolean looping = false;
//
void setup() {
 //size(400, 500); //width, height
 fullScreen(); //displayWidth, displayHeight
 appWidth = displayWidth;  
 appHeight = displayHeight;  //Landscape is HARDCODED
 String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
 //println(displayInstructions);
 //
 minim = new Minim(this);
 String Cycles = "Cycles";
 String extension = ".mp3";
 String quitButtonSound = "Audio_SoundEffect_The_Simplest_Sting";
 String pathwayMusic = "../../../Audio/Music/";
 String pathwaySoundEffects = "../../../Audio/SoundEffects";
 //println(pathwaySoundEffects+quitButtonSound+extension);
 //println ( "Relative Pathway:", pathwayMusic+groove+extension );
 println("Relative Pathway:", pathwayMusic+Cycles+extension);
 String pathQuitButtonSound = sketchPath(pathwaySoundEffects+quitButtonSound+extension);
 String pathCyclesSong = sketchPath(pathwayMusic + Cycles + extension);
 println("Absolute Pathway", pathCyclesSong);
 soundEffects[0] = minim.loadFile( pathQuitButtonSound );
 playList[0] = minim.loadFile(pathCyclesSong);
 //
} //End setup
//
void draw() {
println("Song Position", playList[currentsong].position(), "Song Length", playList[currentsong].length());
playList1.loop(0);
  //
  //ERROR: only plays beginning of song before starting again
  //playList[currentSong].loop(0);
  //
  //Note: For Loop Feature
   //Easter Egg: program time for number of song loops
   //Alternate to timer for music player, times to the end of a song
   if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
   if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  
  //
   if ( playList[currentSong].isPlaying()) println("Nothing is playing");
   if ( playList[currentSong].isPlaying()) && !playList[currentSong]. println("Play once");
  //
  
    // Auto Play Code for Future Use
  // Contains instructions from Key Board Short Cuts
  if ( playList[currentSong].isPlaying() ) {
   //Empty IF, TRUE
   } else {
   //currentSong at end of FILE
   playList[currentSong].rewind();
   currentSong = currentSong + 1; //currentSong++; currentSong+=1
   playList[currentSong].play();
   }
} //end draw
//
void keyPressed() {
 if ( key=='P' || key=='p' ) {
 //How much of the song should play before the Pause Button is actually a rewind button
 if ( playList[currentSong].isPlaying() ) { //Note, debugging: use true==true & true==false
 playList[currentSong].rewind(); //playList[currentSong].play();
 } else if (.length() < 120000) { //PAIN minutes is 2, 120 seconds, 120,000ms
 } else if (looping = false && !playList[currentSong].isPlaying() && (playList[currentSong].position()> .length()*0.75)){
   playList[currentSong].rewind();
  }
 } //End Play Pause Button
 if (key == 'l' || key == 'L') {
   playList[currentSong].loop(1);
   looping = true;
   //End Loop Once
 if (key == 'I' || key == 'I') {
  playList[currentSong].loop();
  looping = true;
  } //End Loop Infinte Times
 if( key == '' || key == '') {
   playList[currentSong].pause();
   playList[currentSong].rewind(); 
 }//end Stop Button
} //end keyPressed
//
void mousePressed() {} //end mousePressed
