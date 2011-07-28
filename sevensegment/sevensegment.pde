/*
 This is my 1-6 blink sketch, but I am adapting it for the seven segment
 display readout. So that means:
 1 -- 5v (3.3?) applied to common anode pinout
 2 -- 7 wires to digital out, one for each segment
 3 -- the writes need to be reversed from original onetosix;
 if digitalWrite is HIGH, that means the segment is OFF
 because there's no way for the signal to get to ground.
 (... I think?)
 
 
 
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
int ledPin2 = 12;
int originalx;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(ledPin, OUTPUT);     
  pinMode(ledPin2, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  x = random(1,7);
  originalx = x;
  do {
    digitalWrite(ledPin, LOW);   // set the LED on (reversed here due to 7sd)
    digitalWrite(ledPin2, LOW);
    delay(250);              // wait for a bit
    digitalWrite(ledPin, HIGH);    // set the LED off (ditto)
    digitalWrite(ledPin2, HIGH);
    delay(250);              // wait for a bit
    --x;
  } 
  while (x > 0);
  Serial.println(originalx);
  delay(2500);
}

