/*
  Blink
 Turns on an LED on for one second, then off for one second, repeatedly.
 
 Rewritten for Thinkhaus class. The function was my take on it. Yours may differ.
 
 This example code is in the public domain.
 */

int pin1 = 10;
int pin2 = 11;
int pin3 = 12;

void lightup(int pin) {
  digitalWrite(pin, HIGH);
  delay(1000);
  digitalWrite(pin, LOW);
  delay(1000);
}


void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);  
}

void loop() {
  lightup(pin1);
  lightup(pin2);
  lightup(pin3);
}


