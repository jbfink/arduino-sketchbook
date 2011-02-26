/*
  Blink
 Turns on an LED on for one second, then off for one second, repeatedly.
 
 Rewritten for Thinkhaus class. The function was my take on it. Yours may differ.
 
 This example code is in the public domain.
 */

// Thor sez to change these values to something less stupid.
const int pin1 = 10;
const int pin2 = 11;
const int pin3 = 12;

void lightup(int pin, int interval) {
  digitalWrite(pin, HIGH);
  delay(interval);
  digitalWrite(pin, LOW);
  delay(interval);
}


void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);  
}

void loop() {
  lightup(pin1, 1000);
  lightup(pin2, 1000);
  lightup(pin3, 1000);
}


