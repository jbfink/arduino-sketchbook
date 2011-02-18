/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
  Adapted from Arduino blink example code by jbfink.
  It's supposed to look like an ethernet activity LED.
  
  Look! I programmed something!
  
 */

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);     
}

void loop() {
  digitalWrite(13, HIGH);   // set the LED on
  delay(random(50,100));              // wait for a random time
  digitalWrite(13, LOW);    // set the LED off
  delay(random(50,100));              // wait for a random time
}
