//import processing.sound.*;
//SoundFile file;

Balls[] balls = new Balls[5]; // array of balls

// variables 

PImage basket;
int score = 0; // starting score displayed
int point = 1; // how much the score increases/ decreases 

//float x = random(50,950); // random x location of where the ball will spawn
//float y = -50; // y location
//float  r = 50; // radius of ball 
//float  speed = random(2, 8); // random speed of ball

void setup () {
  size(1000, 1000);
  basket = loadImage("basket.png");
  basket.resize(200,200);  
  
 // file = new SoundFile(this, "ding.mp3");
  
for (int i = 0; i < 5; i++)
  balls[i] = new Balls();

}

void draw () {
  background(#116217);
  
  textSize(32);
  text(score, width/2, height-900);

for (int i = 0; i < 5; i++) {
  balls[i].display();
  balls[i].move();
}

  imageMode(CENTER); 
  image(basket, mouseX, 775);

} 




 
