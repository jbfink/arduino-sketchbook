/*
  Blink
  Turns on an LED on for a random short period, then off for a random short period, repeatedly.
 
  This example code is in the public domain.
  Adapted from Arduino blink example code by jbfink.
  It's supposed to look like an ethernet activity LED.
  
  Look! I programmed something!
  
 */

int ledPin = 13;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(ledPin, OUTPUT);     
}

void loop() {
  digitalWrite(ledPin, HIGH);   // set the LED on
  delay(random(50,100));              // wait for a random time
  digitalWrite(ledPin, LOW);    // set the LED off
  delay(random(50,100));              // wait for a random time
}
