const int LF=22, LR=23, RF=24, RR=25;
char direc;

void setup()
{
  pinMode(LF,OUTPUT);
  pinMode(LR,OUTPUT);
  pinMode(RF,OUTPUT);
  pinMode(RR,OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  if (Serial.available())
  {
    direc = Serial.read(); 
  }
  else
  direc = 'z';
  switch(direc)
  {
  case 's': 
    digitalWrite(RF,LOW);
    digitalWrite(LF,LOW);
    digitalWrite(RR,LOW);
    digitalWrite(LR,LOW);
    break;
  case 'f':
    digitalWrite(RF,HIGH);
    digitalWrite(LF,HIGH);
    digitalWrite(RR,LOW);
    digitalWrite(LR,LOW);
    break;
  case 'b':
    digitalWrite(RF,LOW);
    digitalWrite(LF,LOW);
    digitalWrite(RR,HIGH);
    digitalWrite(LR,HIGH);
    break;
  case 'r':
    digitalWrite(RF,LOW);
    digitalWrite(LF,HIGH);
    digitalWrite(RR,HIGH);
    digitalWrite(LR,LOW);
    break;
  case 'l':
    digitalWrite(RF,HIGH);
    digitalWrite(LF,LOW);
    digitalWrite(RR,LOW);
    digitalWrite(LR,HIGH);
    break;
  default:
    digitalWrite(RF,HIGH);
    digitalWrite(LF,HIGH);
    digitalWrite(RR,HIGH);
    digitalWrite(LR,HIGH);
  }
  delay(10);
}




