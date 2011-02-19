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
 
 */

int x;
int myNumerousBlinkings(int y) { 
  // insert blink code here
}

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);     
}

void loop() {
  x = random(1,7);
  digitalWrite(13, HIGH);   // set the LED on
  delay(1000);              // wait for a second
  digitalWrite(13, LOW);    // set the LED off
  delay(1000);              // wait for a second
}
