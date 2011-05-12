/*
 Note: I don't think I can shove the float directly from ruby sendload. I think we have to use a union
 to assemble bytes into the float on the arduino side.
 Note 2: Nah. Don't need union at all. I think. I'm a union-buster!
 Note 3: WORKS WORKS WORKS WORKS WORKS WORKS!!!
 Note 4: Well, maybe not. When load pops up on system, I don't think that sendload.rb is sending the right thing over. fruh.
 Note 5: At values >255, either ruby putc can't send them or Arduino can't read them. Not sure where to go now.
 */

int incomingByte = 0;	// for incoming serial data
float loadavg = 0.00;
int gaugePin = 11;    // LED connected to digital pin 11

void setup() {
  Serial.begin(9600);	// opens serial port, sets data rate to 9600 bps
}

void loop() {
 

  // send data only when you receive data:
  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = 0;
    incomingByte = Serial.read();

    // say what you got:
    Serial.print("I received: ");
    Serial.println(incomingByte, DEC);
    int normalized = map(incomingByte, 0, 500, 0, 40);
    Serial.print("Normalized, this is: ");
    Serial.println(normalized);
    analogWrite(gaugePin, normalized);
    }
}




