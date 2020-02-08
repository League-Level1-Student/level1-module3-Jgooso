int frogX = 375;
int frogY = 575;
Car car1 = new Car(100, 50, 100, 10);
Car car2 = new Car(100, 150, 100, 10);
Car car3 = new Car(100, 250, 100, 10);

void setup(){
  size(800,600);
}
void draw(){
  
  background(0,0,255);
  fill(0,255,0);
  ellipse(frogX, frogY, 50, 50);
  car1.display();
  car1.moveLeft();
  car2.display();
  car2.moveRight();
  car3.moveLeft();
  car3.display();
  if(intersects(car1) == true || intersects(car2) == true || intersects(car3) == true ){
    frogY = 575;
    frogX = 375;
  }
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            frogY -= 50;
        }
        else if(keyCode == DOWN)
        {
            frogY += 50;
        }
        else if(keyCode == RIGHT)
        {
            frogX += 50;
        }
        else if(keyCode == LEFT)
        {
            frogX -= 50;
        }
    }
    frogBoundry();
}
void frogBoundry(){
 if(frogX < 0){
   frogX += 50;
}else if(frogX > 800){
  frogX -= 50;
}
if(frogY < 0){
   frogY += 50;
}else if(frogY > 600){
  frogY -= 50;
}
}
boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}

class Car{
  int x;
  int y;
  int size;
  int speed;
  public Car(int x, int y, int size, int speed){
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  void display()
  {
    fill(0,255,0);
    rect(x , y,  size, 50);
    
  }
  void moveLeft(){
  x -= speed;
  if(x+size < 0){
  x = 800-size;
  }
  }
  void moveRight(){
  x += speed;
  if(x+size > 800){
  x = 0;
  }
  }
  int getX(){
   return x; 
  }
  int getY(){
   return y; 
  }
  int getSize(){
   return size; 
  }
}
