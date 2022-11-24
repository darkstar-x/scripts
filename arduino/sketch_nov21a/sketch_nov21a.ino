int led=10;
int s2=2000;

vois setup(){
  pinMode(led, OUTPUT);
}

void loop(){
  digitalWrite(led, HIGH);
  delay(s2);
  digitalWrite(led, LOW);
  delay(s2);
}
