Table air;
Table sun;
int index;
int d = 30;
int radius = 5;
int mr = 60;
int l = 20;


void setup(){
  size(1000,800);
  air = loadTable("air.csv", "csv");
  sun = loadTable("sun.csv", "csv");
  smooth();
}

void draw(){
  background(255,255,255);
  back();
  fill(0);
  float scaledMouseX = map(mouseX, 0, width - 1, 0, 570); 
  index = int(scaledMouseX);
  String date = air.getString(index, 0); 
  int value = air.getInt(index, 1); 
  String sunValue = sun.getString(index,1);
  println("num: " + index  +  ".    date: "  + date  + ".   value: " + value + ".   sun: " + sunValue);

  textSize(20); 
  text("num: " + index  +  ".    date: "  + date  + ".   value: " + value + ".   sun: " + sunValue,20, height/3);
  
  int wen;
  wen = int(value);
  
  if(wen >26 ){
  dog("n");
  }else{
  dog("h");
  }
  
  sun();

}

void back()//BEI JING
{ 
  pushMatrix();
  fill(#50FF5D);
  noStroke();
  rect(0,height/2+100,width,height);
  popMatrix();
}

PImage img;
void dog(String s)
{
  if (s=="n" || s=="N")
  {
  pushMatrix();
  stroke(#2E4DE3);
  strokeWeight(3);
  line(125,height/2+150,117,height/2+145);
  line(117,height/2+145,125,height/2+140);
  line(125,height/2+140,120,height/2+135);
  line(120,height/2+135,124,height/2+130);
  line(124,height/2+130,118,height/2+127);
  line(118,height/2+127,126,height/2+123);
  
  line(104,height/2+44,96,height/2+47);
  line(96,height/2+47,103,height/2+50);
  line(103,height/2+50,98,height/2+55);
  line(98,height/2+55,103,height/2+60);
  
  line(163,height/2+46,165,height/2+40);
  line(165,height/2+40,168,height/2+48);
  line(168,height/2+48,172,height/2+38);
  line(172,height/2+38,175,height/2+48);
  line(175,height/2+48,178,height/2+42);
  line(178,height/2+42,183,height/2+47);
  
  line(231,height/2+42,238,height/2+46);
  line(238,height/2+46,232,height/2+50);
  line(232,height/2+50,235,height/2+54);
  line(235,height/2+54,232,height/2+57);
  
  line(240,height/2+100,246,height/2+103);
  line(246,height/2+103,240,height/2+106);
  line(240,height/2+106,243,height/2+113);
  line(243,height/2+113,238,height/2+118);
  line(238,height/2+118,244,height/2+123);
  line(244,height/2+123,238,height/2+125);
  fill(#F0CD88);
  img=loadImage("dog normal.png");
  image(img, 100, height/2,150,200);
  
  stroke(0);
  strokeWeight(2);
  fill(255,255,255);
  ellipse(230,height/2-22,150,60);
  ellipse(180,height/2+20,30,14);
  popMatrix();
  
  fill(#1F30DE);
  textSize(20);
  text("It's Too Cold!",170,height/2-15);
  }
  
  if (s=="h" || s=="H")
  {
  pushMatrix();
  fill(#30FAF5);
  strokeWeight(1);
  stroke(#02DBD6);
  ellipse(132,height/2+135,50,16);
  img=loadImage("dog hot.png");
  image(img, 100, height/2,150,200);
  stroke(#FA5B5B);
  strokeWeight(4);
  line(140, height/2+119,140, height/2+125);
  
  noStroke();
  triangle(175, height/2+70,172,height/2+83,178,height/2+83);
  circle(175,height/2+85,8);
  triangle(195, height/2+60,192,height/2+73,198,height/2+73);
  circle(195,height/2+75,8);
  
  stroke(0);
  strokeWeight(2);
  fill(255,255,255);
  ellipse(230,height/2-22,150,60);
  ellipse(180,height/2+20,30,14);
  popMatrix();
  
  fill(#FA5B5B);
  textSize(20);
  text("It's Too Hot!",170,height/2-15);
  }
}



void sun(){


  background(255);
  // sun
  fill(210,193,105);
  ellipse(400,150,100,100);
  //color c1 = color(0, 100, 100);
  //color c2 = color(0, 100, 30);
  //for(int r = 0; r < 100; r++) {
  //  float n = map(r, 0, 100, 0, 1);
  //  color newc = lerpColor(c1, c2, n);
  //  stroke(newc);
  //  ellipse(400, 150, r, r);
  //} 
  fill(0);
  ellipse(385,140,10,10);
  ellipse(415,140,10,10);
  noFill();
  beginShape();
  vertex(385, 160);
  bezierVertex(385, 160, 400, 190, 415, 160);
  endShape();
  fill(215,113,38);
  for(int i = 0; i<8; i++){
    int r = mr + d;
    float x = sin(360.0 /8 * i * 3.14 / 180) * r + 400;
    float y = cos(360.0 /8 * i * 3.14 / 180) * r + 150;
    float x1 = sqrt(mr * mr + l * l /4) * sin(360.0 /8 * i * 3.14 / 180 - atan(l * 1.0 /2 /mr)) + 400;
    float y1 = sqrt(mr * mr + l * l /4) * cos(360.0 /8 * i * 3.14 / 180 - atan(l * 1.0/2 /mr)) + 150;
    float x2 = sqrt(mr * mr + l * l /4) * sin(360.0 /8 * i * 3.14 / 180 + atan(l * 1.0/2 /mr)) + 400;
    float y2 = sqrt(mr * mr + l * l /4) * cos(360.0 /8 * i * 3.14 / 180 + atan(l * 1.0/2 /mr)) + 150;
    //ellipse(x,y,radius,radius);
    triangle(x,y,x1,y1,x2,y2);
  }
  
  //cloud
  fill(255);
  beginShape();
  vertex(50, 180);
  bezierVertex(50, 150, 80, 120, 132, 150);
  bezierVertex(150, 115, 210, 135, 200, 160);
  bezierVertex(270, 175, 230, 235, 170, 220);
  bezierVertex(170, 250, 80, 255, 70, 220);
  bezierVertex(20, 240, 25, 170, 50, 180);
  endShape();



}
