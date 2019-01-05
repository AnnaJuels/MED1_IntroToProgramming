// polar coordinate 
float r = 45; 
float theta = radians(45);

float nTime = 0.5;
float nIncrement = 1;

void setup() {  
  size(1000, 1000);  
  background(255);
  smooth();
}

void draw() {   
  float x = r * cos(theta);  
  float y = r * sin(theta);
  float nx = noise(nTime);
//  float nc = noise(nTime);

  noStroke();  
  fill(0,0,200);  
  ellipse(x + width/2, y + height/2, nx * 25 , nx * 25 ); 
  
  // Increment for spiral size
  nTime += nIncrement;

  // Increment the angle
  theta += 0.04;
  r += 1;
}
