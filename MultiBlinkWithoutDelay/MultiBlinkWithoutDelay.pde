/* Blink without Delay
 
 Turns on and off a light emitting diode(LED) connected to a digital  
 pin, without using the delay() function.  This means that other code
 can run at the same time without being interrupted by the LED code.
 
 The circuit:
 * LED attached from pin 13 to ground.
 * Note: on most Arduinos, there is already an LED on the board
 that's attached to pin 13, so no hardware is needed for this example.
 
 
 created 2005
 by David A. Mellis
 modified 8 Feb 2010
 by Paul Stoffregen
 
 This example code is in the public domain.

 
 http://www.arduino.cc/en/Tutorial/BlinkWithoutDelay
 */

// constants won't change. Used here to 
// set pin numbers:
const int ledPin1 =  10;      // the number of the LED pin
const int ledPin2 =  11;
const int ledPin3 =  12;

// Variables will change:
int ledState1 = LOW;             // ledState used to set the LED
long previousMillis1 = 0;        // will store last time LED was updated
int ledState2 = LOW;
long previousMills2 = 0;
int ledState3 = LOW;
long previousMills3 = 0;

// the follow variables is a long because the time, measured in miliseconds,
// will quickly become a bigger number than can be stored in an int.
long interval1 = 1000;           // interval at which to blink (milliseconds)

void setup() {
  // set the digital pin as output:
  pinMode(ledPin1, OUTPUT);      
}

void loop()
{
  // here is where you'd put code that needs to be running all the time.

  // check to see if it's time to blink the LED; that is, if the 
  // difference between the current time and last time you blinked 
  // the LED is bigger than the interval at which you want to 
  // blink the LED.
  unsigned long currentMillis1 = millis();
 
  if(currentMillis1 - previousMillis1 > interval) {
    // save the last time you blinked the LED 
    previousMillis1 = currentMillis1;   

    // if the LED is off turn it on and vice-versa:
    if (ledState1 == LOW)
      ledState1 = HIGH;
    else
      ledState1 = LOW;

    // set the LED with the ledState of the variable:
    digitalWrite(ledPin1, ledState1);
  }
}

