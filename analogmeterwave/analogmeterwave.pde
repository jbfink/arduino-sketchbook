/*
 Fading the meter
 
 Adapted from: http://arduino.cc/en/Tutorial/Fading
 
 circuit like this: 3.3v (or 5? can't remember) to 10k resistor to positive terminal on gauge to ground.
 still way maxed out, so it seems like 0-40 on analogWrite to be a safe value.
 
 
 
 This example code is in the public domain.
 
 changed pin 9 to pin 11 so the LED pins would have less stress on them. :)
 
 */


int gaugePin = 11;    // LED connected to digital pin 11

void setup()  { 
  // nothing happens in setup 
} 

void loop()  { 
  // fade in from min to max in increments of 5 points:
  for(int fadeValue = 0 ; fadeValue <= 35; fadeValue +=5) { 
    // sets the value (range from 0 to 35):
    analogWrite(gaugePin, fadeValue);         
    // wait for 30 milliseconds to see the dimming effect    
    delay(200);                            
  } 

  // fade out from max to min in increments of 5 points:
  for(int fadeValue = 35 ; fadeValue >= 0; fadeValue -=5) { 
    // sets the value (range from 0 to 35):
    analogWrite(gaugePin, fadeValue);         
    // wait for 30 milliseconds to see the dimming effect    
    delay(200);                            
  } 
}


