//Leo Liu
//colorgame




int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;
final int options =4;
PImage[] gif;
int f = 8;
int Frames;
int timer = 420;
float x, y, d;
float vx, vy;
int score, highscore;
float sliderY;

PFont comicSans;
color green = #4BFF05;
color blue = #059DFF;
color yellow = #F6FF0D;
color white = #F9FCF7;
color red = #FF190D;
color pink = #F7C2D6;
int w = int(random(0, 5));
int cf = int(random(2, 4));
int c = int(random(0, 5));
String[] word;
color [] colors;


void setup() {
  size(800, 800);

  mode=intro;
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);

  x=width/2;
  y=height/2;
  d=100;
  vx= random(-5, 5);
  vy= random(-5, 5);
  score=0;


  comicSans = createFont("COMIC.TTF", 100);

  int i = 0;
  Frames = 51;
  gif = new PImage[51];
  while (i < Frames ) {
    gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i = i + 1;
  }

  word = new String[6];
  colors = new color[6];
  word[0] ="yellow";
  colors[0] = yellow;
  word[1] ="blue";
  colors[1] = blue;
  word[2] ="white";
  colors[2] = white;
  word[3] ="pink";
  colors[3] = pink;
  word[4] ="green";
  colors[4] = green;
  word[5] ="red";
  colors[5] = red;
 
  textFont(comicSans);
  highscore =0;
}

void draw() {

  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  }
}
