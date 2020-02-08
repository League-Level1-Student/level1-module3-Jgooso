int pipeX = -1;
int birdX = 100;
int birdYVelocity = 30;
int birdY;
int gravity = 2;
int upperPipeHeight;
int score = 0;
//int lowerPipeHeight = 100;
int lowerPipeTop;
int pipeGap = 75;
boolean gameEnd = false;
void setup(){
  size(500,500);
}
void draw(){
  background(0,0,255);
  rect(0,470, 500, 30);
  fill(0,0,0);
  stroke(0,0,0);
  if(gameEnd == false){
  ellipse(100,birdY,25,25);
  birdY = birdY+gravity;
  pipeX -= 2;
  rect(pipeX,0,50,upperPipeHeight);
  rect(pipeX,lowerPipeTop,50,500-lowerPipeTop);
  
  if(pipeX < 0){
    pipeX = 450;
    upperPipeHeight = (int)random(100,400);
   lowerPipeTop = upperPipeHeight + pipeGap;
   score += 1;
   text(score, 300, 100);
   
   
  }
  
    gameEnd = intersectPipes();
    if(birdY > 470){
      gameEnd = true;
    }
  }
  
}
void mousePressed(){
birdY = birdY - birdYVelocity;
}
boolean intersectPipes(){
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
            return true; }
        else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+50)) {
            return true; }
        else { return false; }
}
