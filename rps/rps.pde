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

void setup() {
  pinMode(losePin, OUTPUT);
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
  } 
  else if (choice1 == 'R' && choice2 == 'S') {
    Serial.println("I won!");
  }
  else if (choice1 == 'P' && choice2 == 'R') {
    Serial.println("I won!");
  }
  else if (choice1 == 'S' && choice2 == 'P') {
    Serial.println("I won!");
  }
  else {
    Serial.println("I lost!");
    digitalWrite(losePin, HIGH);   // set the LED on
    delay(1000);              // wait for a second
    digitalWrite(losePin, LOW);    // set the LED off
    delay(1000);              // wait for a second  
  }


  delay(2000);
}



