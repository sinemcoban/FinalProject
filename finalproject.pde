 /**
How to load and play video
**/ 

import processing.video.*;

Movie movie;

int vid_w;
int vid_h;

float aspectRatio;


PImage leftroad_scene1;
PImage middleroad_scene1;

int SceneNum = 0;

void setup() {
  size(1280, 720);
  
  background(0);
  
  
  // Load and play the video in a loop
  movie = new Movie(this, "DSC_0398.mov");
  
  movie.loop();
  
  
 
 leftroad_scene1 = loadImage("data/leftroad.png");
 middleroad_scene1 = loadImage( "middleroad.png");
}


void movieEvent(Movie m) {
  m.read();
  
  vid_w = m.width;
  vid_h = m.height;
 
  aspectRatio = width / vid_w;
}

void draw() {
  background(255);
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
 image(movie, 0, 0, width, vid_h *aspectRatio);
  
  //println(vid_w,vid_h);
  

if (SceneNum == 0 ){
  image(leftroad_scene1,0,488,399,207);
  image(middleroad_scene1,386, -31);
}
  
  if(SceneNum == 1) {
    
    
  }
  
}



void mousePressed() {
  if (mouseX > 0 
  && mouseX < 399
  && mouseY > 488 
  && mouseY < 488 + 207) {
     movie = new Movie(this, "sınıfsahnesi_1319.mov");
     println("gotoscene");
      movie.loop();
      
      SceneNum = 1;
  }
  
  //movie.jump(random(movie.duration()));
}