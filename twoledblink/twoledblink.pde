/*
  Blink
  Turns on an LED on for a random short period, then off for a random short period, repeatedly.
  This version also runs a big LED every second. But I can't figure out how to have two run in parallel. Maybe it's
  not possible?
   
  Adapted from Arduino blink example code by jbfink.
  It's supposed to look like an ethernet activity LED.
  
  Look! I programmed something!
  
 */

int ledPin = 13;
int bigLed = 12;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(ledPin, OUTPUT);     
  pinMode(bigLed, OUTPUT);
}

void loop() {
  digitalWrite(ledPin, HIGH);   // set the LED on
  delay(random(50,100));              // wait for a random time
  digitalWrite(ledPin, LOW);    // set the LED off
  delay(random(50,100));              // wait for a random time

  digitalWrite(bigLed, HIGH);
  delay(1000);
  digitalWrite(bigLed, LOW);
  delay(1000);
}
