/*
  Blink
 Turns on an LED on for one second, then off for one second, repeatedly.
 
 Rewritten for Thinkhaus class. The function was my take on it. Yours may differ.
 
 This example code is in the public domain.
 */

// Thor sez to change the name of these variables to something less stupid.
const int pin1 = 10;
const int pin2 = 11;
const int pin3 = 12;

void lightup(int pin, int interval1, int interval2) {
  digitalWrite(pin, HIGH);
  delay(interval1);
  digitalWrite(pin, LOW);
  delay(interval2);
}


void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:

  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
}

void loop() {
  lightup(pin1, 500, 500);
  lightup(pin2, 500, 500);
  lightup(pin3, 500, 500);
}




