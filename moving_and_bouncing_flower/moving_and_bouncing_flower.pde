Flower movingFlower;

Flower bouncingFlower;

void setup() {
  size(1000,800);
  
  int _r1 = 60;
  int _petals = 8;
  float _x = width/2;
  float _y = height/2;
  int _pc = #FFA000;
  
  int _speedX = 3;
  int _speedY = 3;
  int _directionX = 1;
  int _directionY = 1;
  
  movingFlower = new Flower(_r1, _petals, _x+50, _y-300, _pc);
  
  bouncingFlower = new Flower(_r1, _petals, _x, _y, _pc, _speedX, _speedY, _directionX, _directionY);
  
}

void draw(){
  
  background(#43AF76);
  
  movingFlower.display();
  movingFlower.offScreen(2, 2);
  
  bouncingFlower.display();
  bouncingFlower.bounce();
  
}
