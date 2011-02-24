/*
  RPS, on the Arduino! Eventually!
 This is in the public domain. Go nuts.
 
 
 */

// Arduino supports arrays but I don't think it supports hashes.


char choiceArray[] = {
  'R', 'P', 'S'};
char choice1;
char choice2;
int losePin = 13;
int winPin = 12;
int tiePin = 8;
void lightpin(int pin)
{
  digitalWrite(pin, HIGH);
  delay(500);
  digitalWrite(pin, LOW);
  delay(500);
}

void setup() {
  pinMode(losePin, OUTPUT);
  pinMode(winPin, OUTPUT);
  pinMode(tiePin, OUTPUT);
  Serial.begin(9600);

}

void loop() {
  choice1 = choiceArray[random(0,3)];
  choice2 = choiceArray[random(0,3)];
  Serial.print("I picked: ");
  Serial.println(choice1);
  Serial.print("You picked: ");
  Serial.println(choice2);
  if (choice1 == choice2)
  { 
    Serial.println("We tied!");
    lightpin(tiePin);
  } 
  else if ((choice1 == 'R' && choice2 == 'S') || (choice1 == 'P' && choice2 == 'R') || (choice1 = 'S' && choice2 == 'P')) {
    Serial.println("I won!");
    lightpin(winPin);
  }
  else {
    Serial.println("I lost!");
    lightpin(losePin);
  }


  delay(2000);
}






