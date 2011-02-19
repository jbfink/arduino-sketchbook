/*
  Random 1-6 blink
  I want to have the Arduino LED blink 1-6 times, 
  then pause, then blink 1-6 times, repeat. I *think*
  I want to do this with a function in setup() that blinks n times,
  and then supply in loop() the same sort of random() call that is in my 
  ethernet_sim_blink code, except related to number of blinks
  and not time between blinks. like this (sorry for rubyish style):
  
  times(n)
  each n do
  digitalWrite(13, HIGH);
  delay(500);
  digitalWrite(13, LOW);
  end
 
  then pause for five seconds, repeat.
  
  Things to investigate:
  do..while loop (http://arduino.cc/en/Reference/DoWhile)
  ++x increment (http://arduino.cc/en/Reference/Increment)
  making your own functions (http://arduino.cc/en/Reference/FunctionDeclaration)
 
 Hah! No function writing needed after all, although I probably should have done it
 if only to learn. Works just great with a do..while loop, random, --x. Woohoo!
 
 */

int x;
int ledPin = 13;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(ledPin, OUTPUT);     
}

void loop() {
  x = random(1,7);
  do {
  digitalWrite(ledPin, HIGH);   // set the LED on
  delay(250);              // wait for a bit
  digitalWrite(ledPin, LOW);    // set the LED off
  delay(250);              // wait for a bit
  --x;
  } while (x > 0);
  delay(2500);
}
