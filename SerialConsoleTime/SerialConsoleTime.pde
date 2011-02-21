/*
 ganked from http://arduino.cc/en/Reference/Millis
 mostly so I could see how/if the serial console worked.
*/



unsigned long time;

void setup(){
  Serial.begin(9600);
}
void loop(){
  Serial.print("Time: ");
  time = millis();
  //prints time since program started
  Serial.println(time);
  // wait a second so as not to send massive amounts of data
  delay(1000);
}
