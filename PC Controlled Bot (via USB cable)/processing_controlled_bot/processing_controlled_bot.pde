import processing.serial.*;

boolean pressed;
PImage up, down, left, right, up_pressed, down_pressed, left_pressed, right_pressed;
Serial myPort;

void setup()
{
  pressed = false;
  size(400, 360);
  background(255, 255, 255);
  imageMode(CENTER);
  up = loadImage("arrow_up_unclicked2.png");
  up.resize(width/4, width/4);
  down = loadImage("arrow_down_unclicked2.png");
  down.resize(width/4, width/4);
  left = loadImage("arrow_left_unclicked2.png");
  left.resize(width/4, width/4);
  right = loadImage("arrow_right_unclicked2.png");
  right.resize(width/4, width/4);
  up_pressed = loadImage("arrow_up_clicked2.png");
  up_pressed.resize(width/4, width/4);
  down_pressed = loadImage("arrow_down_clicked2.png");
  down_pressed.resize(width/4, width/4);
  left_pressed = loadImage("arrow_left_clicked2.png");
  left_pressed.resize(width/4, width/4);
  right_pressed = loadImage("arrow_right_clicked2.png");
  right_pressed.resize(width/4, width/4);

  //myPort = new Serial(this, Serial.list()[0], 9600);
}

void draw()
{
  if (!pressed)
  {
    image(up, width/2, height/4);
    image(down, width/2, height-height/4);
    image(right, width-width/4, height/2);
    image(left, width/4, height/2);
   // myPort.write('s');  //Stop
  }
  else
  {
    if (dist(mouseX, mouseY, width/2, height/4)<width/8) {
      image(up_pressed, width/2, height/4);
      image(down, width/2, height-height/4);
      image(right, width-width/4, height/2);
      image(left, width/4, height/2);
     // myPort.write('f');  //Forward
    }
    else   if (dist(mouseX, mouseY, width/2, height-height/4)<width/8) {
      image(up, width/2, height/4);
      image(down_pressed, width/2, height-height/4);
      image(right, width-width/4, height/2);
      image(left, width/4, height/2);
    //  myPort.write('b');  //Backward
    }
    else   if (dist(mouseX, mouseY, width-width/4, height/2)<width/8) {
      image(up, width/2, height/4);
      image(down, width/2, height-height/4);
      image(right_pressed, width-width/4, height/2);
      image(left, width/4, height/2);
     // myPort.write('r');  //Right
    }
    else   if (dist(mouseX, mouseY, width/4, height/2)<width/8) {
      image(up, width/2, height/4);
      image(down, width/2, height-height/4);
      image(right, width-width/4, height/2);
      image(left_pressed, width/4, height/2);
   //  myPort.write('l');  //Left
    }
  }
}
void mousePressed()
{
  pressed=true;
}

void mouseReleased()
{
  pressed=false;
}

