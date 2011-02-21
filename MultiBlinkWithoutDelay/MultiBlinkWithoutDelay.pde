/* Blink without Delay
 
 Turns on and off a light emitting diode(LED) connected to a digital  
 pin, without using the delay() function.  This means that other code
 can run at the same time without being interrupted by the LED code.
 
 The circuit:
 * LED attached from pin 10,11,12 to ground.
 
 
 created 2005
 by David A. Mellis
 modified 8 Feb 2010
 by Paul Stoffregen
 modified further (check git log for dates)
 by John Fink
 
 jf sez - I'm trying to get three lights to blink on a breadboard, so I'm
 modifyin the stock BlinkWithoutDelay sketch to do it. It works, but the
 next step is figuring out how to make interval1, interval2, interval3 random
 -- probably means shifting them to inside loop(), as I have a sinking feeling
 that having them be random outside loop() will not work.
 
 
 This example code is in the public domain.

 
 http://www.arduino.cc/en/Tutorial/BlinkWithoutDelay
 */

// constants won't change. Used here to 
// set pin numbers:
const int ledPin1 =  10;      // the number of LED pin1
const int ledPin2 =  11;      // the number of LED pin2
const int ledPin3 =  12;      // the number of LED pin3

// Variables will change:
int ledState1 = LOW;             // ledState used to set the LED
long previousMillis1 = 0;        // will store last time LED was updated
int ledState2 = LOW;
long previousMillis2 = 0;
int ledState3 = LOW;
long previousMillis3 = 0;

// the follow variables is a long because the time, measured in miliseconds,
// will quickly become a bigger number than can be stored in an int.
long interval1 = 10000;           // interval at which to blink (milliseconds)
long interval2 = random(250, 500);
long interval3 = random(1000, 2000);

void setup() {
  // set the digital pin as output:
  pinMode(ledPin1, OUTPUT);      
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
}

void loop()
{
  // here is where you'd put code that needs to be running all the time.

  // check to see if it's time to blink the LED; that is, if the 
  // difference between the current time and last time you blinked 
  // the LED is bigger than the interval at which you want to 
  // blink the LED.
  //putting random in loop. Let's see if it breaks!
  interval1 = random(1000, 5000);
  unsigned long currentMillis1 = millis();
  if(currentMillis1 - previousMillis1 > interval1) {
    // save the last time you blinked the LED 
    previousMillis1 = currentMillis1;   

    // if the LED is off turn it on and vice-versa:
    if (ledState1 == LOW)
      ledState1 = HIGH;
    else
      ledState1 = LOW;

    // set the LED with the ledState of the variable:
    digitalWrite(ledPin1, ledState1);
    interval1 = random(1000, 5000);
  }
  unsigned long currentMillis2 = millis();
  if(currentMillis2 - previousMillis2 > interval2) {
    previousMillis2 = currentMillis2;
    if (ledState2 == LOW)
      ledState2 = HIGH;
    else
      ledState2 = LOW;
    
    digitalWrite(ledPin2, ledState2);
  }
  unsigned long currentMillis3 = millis();
  if(currentMillis3 - previousMillis3 > interval3) {
    previousMillis3 = currentMillis3;
    if (ledState3 == LOW)
      ledState3 = HIGH;
    else
      ledState3 = LOW;
      
    digitalWrite(ledPin3, ledState3);
  }
}


