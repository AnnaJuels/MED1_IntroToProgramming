class Flower {
 
  // variables
  float r; // radius of circle in the middle
  int n_petals; // number of petals
  float x; 
  float y;
  int petalColour;
  
  // for moving flowers
  int xSpeed; 
  int ySpeed; 
  int xDirection;
  int yDirection; 
  
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColour){
 r = temp_r;
 n_petals = temp_n_petals;
 x = temp_x;
 y = temp_y;
 petalColour = temp_petalColour;
}

Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColour, int speed_x, int speed_y, int direction_x, int direction_y){ 
  // ^ constructor is for the moving and bouncing flowers
 r = temp_r;
 n_petals = temp_n_petals;
 x = temp_x;
 y = temp_y;
 petalColour = temp_petalColour;
 xSpeed = speed_x;
 ySpeed = speed_y;
 xDirection = direction_x;
 yDirection = direction_y;
 
}

void display () {
 
  float ballX; // x position of the center 
  float ballY; // y position of the center
  fill(petalColour);
  // int n_Petals = 5;
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  // println("ballX =" + "ballY =");
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);

}

void move() {
  x = x + ( xSpeed  * xDirection);
  y = y + ( ySpeed  * yDirection);
}

void bounce() {
  if (x > width-r || x < r) {
    xDirection *= -1;
  }
  if (y > height-r || y < r) {
    yDirection *= -1;
  }
  move();
}

void offScreen (int xSpeed, int ySpeed) {
  x = x + xSpeed;
  y = y + ySpeed;
}

  
}
