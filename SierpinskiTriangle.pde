public void setup(){
  background(250,250,250);
  size(640,640);
}

public void draw(){
  sierpinski(0,640,640);
}
public void sierpinski(int x, int y, int len){
  if(len<=20){
    fill(0,0,0);
    triangle(x, y, x+len/2,y-len,x+len,y);
  }else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2, len/2);
  }
}
