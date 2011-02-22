/*
  RPS, on the Arduino! Eventually!
  This is in the public domain. Go nuts.

   
*/

// Arduino supports arrays but I don't think it supports hashes.


char choiceArray[] = {'R', 'P', 'S'};
char choice;

void setup() {
Serial.begin(9600);

}

void loop() {
choice = choiceArray[random(0,3)];
Serial.print("I picked: ");
Serial.println(choice);
delay(2000);
}
