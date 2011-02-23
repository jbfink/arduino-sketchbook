/*
  RPS, on the Arduino! Eventually!
  This is in the public domain. Go nuts.

   
*/

// Arduino supports arrays but I don't think it supports hashes.


char choiceArray[] = {'R', 'P', 'S'};
char choice1;
char choice2;

void setup() {
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
{ Serial.println("We tied!");
}
delay(2000);
}
