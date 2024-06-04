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
AudioMetaData[] playListMetaData = new AudioMetaData [ numberMusicSongs ];
int currentSong = 0;
//
int appWidth, appHeight;
//
Boolean looping = false;
//
// testingOnly = '1';
PFont generalFont;
//PFont others available
color black = #000000, white = #FFFFFF, nightInk = #FFFF00;
void setup() {
 //size(400, 500); //width, height
 fullScreen(); //displayWidth, displayHeight
 appWidth = displayWidth;  
 appHeight = displayHeight;  //Landscape is HARDCODED
 String displayInstructions = ( appWidth >= appHeight ) ? "Good to go": "NO, WRONG";
 //println(displayInstructions);
 //
 //font code
generalFont = createFont("Harrington", appHeight);
 //
 minim = new Minim(this);
 String Cycles = "Cycles";
 String GhostWalk = "Ghost_Walk";
 String Groove = "Audio_MusicDownload_Grove";
 String extension = ".mp3";
 String quitButtonSound = "Audio_SoundEffect_The_Simplest_Sting";
 String pathwayMusic = "../../../Audio/Music/";
 String pathwaySoundEffects = "../../../Audio/SoundEffects";
 //println(pathwaySoundEffects+quitButtonSound+extension);
 //println ( "Relative Pathway:", pathwayMusic+groove+extension );
 println("Relative Pathway:", pathwayMusic+Cycles+extension);
 String pathQuitButtonSound = sketchPath(pathwaySoundEffects + quitButtonSound + extension);
 String pathCyclesSong = sketchPath(pathwayMusic + Cycles + extension);
 String pathGrooveSong = sketchPath(pathwayMusic + Groove + extension);
 String pathGhostWalkSong = sketchPath(pathwayMusic + GhostWalk + extension);
 println("Absolute Pathway", pathCyclesSong);
 soundEffects[0] = minim.loadFile( pathQuitButtonSound );
 playList[0] = minim.loadFile(pathCyclesSong);
 playListMetaData[0] = playList[0].getMetaData();
 playList[0].loop(0);
 //
 filePathNameMusic[currentSong+=1] = pathwayMusic + Cycles + extension;
 //println( currentSong, filePathNameMusic[currentSong] );
 filePathNameMusic[currentSong+=1] = pathwayMusic + GhostWalk + extension;
 //println( currentSong, filePathNameMusic[currentSong] );  
 filePathNameMusic[currentSong+=1] = pathwayMusic + Groove + extension;
 //println( currentSong, filePathNameMusic[currentSong] );
 //
 filePathNameSoundEffect[0] = pathQuitButtonSound;
 //println ( "Absolute Pathway:", filePathNameSoundEffect[0] ); //pathQuitButtonSound
 soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
 //
 //Random Start Prototype
 //println( "Current Song, Random Number:", int ( random(numberMusicSongs-numberMusicSongs, numberMusicSongs) ) );
 //
 //Note: Music starts before CANVAS ... Purpose of Player
 //Note: See Easter Egg about Time-On and Looping Songs
 println(currentSong, filePathNameMusic[currentSong]);
 currentSong = numberMusicSongs-numberMusicSongs; //Resetting the Defaults
 playList =  minim.loadFile( filePathNameMusic[currentSong] ); // "" is compiler error
 //Note: music player "plays" one loaded song at a time
 playList.loop(0); //Testing Only
 //
 //
} //End setup
//
void draw() {
println("Song Position", playList[0].position(), "Song Length", playList[currentsong].length());
println("Inspecting SKIP", skip);
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
   //
   //printing text to console or canvas
   rect(width*1/4, height*0, width*1/2, height*1/10);
   fill(White); //Ink
   textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
   //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
   int size = 30; //Note: CS20 studies size algorithm
   textFont(generalFont, size);
   //printArray(playListMetaData[0]);
   println("Title is", playListMetaData[0].title);
   text(playListMetaData[0].title, width*1/4, height*0, width*1/2, height*1/10);
   fill(255);

//
} //end draw
//
void keyPressed() {
 if ( key=='A' || key=='a') { //Randomly Pick another song in the Play List
 currentSong = int ( random( numberMusicSongs-numberMusicSongs, numberMusicSongs ) );
 println( "Current Song, Random Number:", currentSong );
 playList.pause(); //Note: computer plays harddrive file,
 playList.rewind(); //     mulitple files will play at the same time
 playList =  minim.loadFile( filePathNameMusic[currentSong] );
 playList.play();
  }
 //
 int skip = 5000; //local
 //if (key=='H' || key=='h') skip = 5000 ;
 //if (key=='G' || key=='g') skip = 10000 ;
 if (key=='G' || key=='g') {
 if (skip == 5000) {
   skip = (playList[0].length()*0.25);
 } else {
   skip = 5000;
 }
 }
 //println(skip);
 //
 if ( key=='F' || key=='f') playList[0].skip(1000) ; //skip forward 1 sec
 if ( key=='R' || key=='r') playList[0].skip(-1000) ; //skip reverse 1 sec
 //
 if ( key=='P' || key=='p' ) {
 //How much of the song should play before the Pause Button is actually a rewind button
 if ( playList[0].isPlaying() ) { //Note, debugging: use true==true & true==false
 playList[0].rewind(); //playList[currentSong].play();
 } else if (.length() < 120000) { //PAIN minutes is 2, 120 seconds, 120,000ms
 } else if (looping = false && !playList[currentSong].isPlaying() && (playList[currentSong].position()> .length()*0.75)){
   playList[currentSong].rewind();
  }
 } //End Play Pause Button
 if (key == 'L' || key == 'l') {
   playList[currentSong].loop(1);
   looping = true;
   //End Loop Once
 if (key == 'I' || key == 'I') {
  playList[currentSong].loop();
  looping = true;
  } //End Loop Infinte Times
 if( key == 'S' || key == 's') {
   playList[currentSong].pause();
   playList[currentSong].rewind(); 
 }//end Stop Button
  if (key=='M' || key=='m') {
  if (playList[currentSong].isMuted) {
  .unmute();
  } else {
  playList[currentSong].unmute();
  }
  playList[currentSong].mute();
  } //end mute
} //end keyPressed
//
void mousePressed() {} //end mousePressed
