/*
 This is my 1-6 blink sketch, but I am adapting it for the seven segment
 display readout. So that means:
 1 -- 5v (3.3?) applied to common anode pinout
 2 -- 7 wires to digital out, one for each segment
 3 -- the writes need to be reversed from original onetosix;
 if digitalWrite is HIGH, that means the segment is OFF
 because there's no way for the signal to get to ground.
 (... I think?)
 4 -- Yes! It works! Lookit all the pins I am adding. Hella inefficient to keep doing digitalWrites
 I wonder if I can call digitalWrites on an array and set them all up to light up at once...       
 (yup -- see http://www.arduino.cc/en/Reference/Array and http://www.arduino.cc/en/Tutorial/KnightRider)
 
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
int ledPin3 = 11;
int ledPin4 = 10;
int ledPin5 = 9;
int ledPin6 = 8;
int ledPin7 = 7;
int originalx;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(ledPin, OUTPUT);     
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(ledPin4, OUTPUT);
  pinMode(ledPin5, OUTPUT);
  pinMode(ledPin6, OUTPUT);
  pinMode(ledPin7, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  x = random(1,7);
  originalx = x;
  do {
    digitalWrite(ledPin, LOW);   // set the LED on (reversed here due to 7sd)
    digitalWrite(ledPin2, LOW);
    digitalWrite(ledPin3, LOW);
    digitalWrite(ledPin4, LOW);
    digitalWrite(ledPin5, LOW);
    digitalWrite(ledPin6, LOW);
    digitalWrite(ledPin7, LOW);
    delay(250);              // wait for a bit
    digitalWrite(ledPin, HIGH);    // set the LED off (ditto)
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin5, HIGH);
    digitalWrite(ledPin6, HIGH);
    digitalWrite(ledPin7, HIGH);
    delay(250);              // wait for a bit
    --x;
  } 
  while (x > 0);
  Serial.println(originalx);
  delay(2500);
}

