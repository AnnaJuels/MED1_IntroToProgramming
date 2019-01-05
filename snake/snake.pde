 // x and y positions
 int[] xposition = new int[25]; // declaring an array 
 int[] yposition = new int[25]; // with 25 elements 

 void setup() {
 size(300,300);
 
 // Initialize
 for (int i = 0; i < xposition.length; i++) {
 xposition[i] = 0;
 yposition[i]= 0;
 }
 
}
 
 void draw() {
 background(256);
 
 // shifting array values until second to last element 
 for (int i = 0; i < xposition.length-1; i ++) {
 xposition[i]= xposition[i + 1];
 yposition[i]= yposition[i + 1];
 }
 
 // following the mouse
 xposition[xposition.length-1] = mouseX;
 yposition[yposition.length-1] = mouseY;
 
 // drawing everything
 for (int i = 0; i < xposition.length; i ++) {
 noStroke();
 fill(#FF0F0F);
 rect(xposition[i],yposition[i],i,i);
 }
 
 }
 
 
