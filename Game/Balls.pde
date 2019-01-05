class Balls { // ball class


  float x, y; // location
  float r; // radius 
  float speed; // speed of ball
  color black; 
  
  
  Balls() {
    
    x = random(50,950); // random x location of where the ball will spawn
    y = -50; // y location
    r = 50; // radius of ball 
    speed = random(2, 8); // random speed of ball
    black = color(0); 
  
}

void display() { // displays ball
  fill(black);
  ellipse(x, y, r, r);
}

void move() { // move ball to bottom 
    y += speed; // incremented by random speed
  if (dist(x, y, mouseX, 850) < 100) {
    y = -50; 
    x = random(50,950);
    score+=point; // adds new point
    // file.play(); // play a ding sound
  } 
  if (y > height + r ) { // whne the ball exits the screen 
    y = -50; // spawns new ball
    x= random(50,950);
    score-=point; // minus a point
  } 
}

}
