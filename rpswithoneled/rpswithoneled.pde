/*
  RPS, on the Arduino! Eventually!
 This is in the public domain. Go nuts.
 This one uses the onboard LED and just pulses it a number of times for win, lose, tie.
 I should *definitely* be able to add another input variable to lightpin() so it can pulse numbers of times
 rather than repeating. DRY, people.
 
 */

// Arduino supports arrays but I don't think it supports hashes.


char choiceArray[] = {
  'R', 'P', 'S'};
char choice1;
char choice2;
const int ledPin = 13;

void lightpin(int pin)
{
  digitalWrite(pin, HIGH);
  delay(250);
  digitalWrite(pin, LOW);
  delay(250);
}

void setup() {
  pinMode(ledPin, OUTPUT);
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
    lightpin(ledPin);
    lightpin(ledPin);
  } 
  else if ((choice1 == 'R' && choice2 == 'S') || (choice1 == 'P' && choice2 == 'R') || (choice1 = 'S' && choice2 == 'P')) {
    Serial.println("I won!");
    lightpin(ledPin);
    lightpin(ledPin);
    lightpin(ledPin);
  }
  else {
    Serial.println("I lost!");
    lightpin(ledPin);
  }
  Serial.println();

  delay(2000);
}






