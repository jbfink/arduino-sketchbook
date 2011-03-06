/*
 Note: I don't think I can shove the float directly from ruby sendload. I think we have to use a union
 to assemble bytes into the float on the arduino side.
 
 */

int incomingByte = 0;	// for incoming serial data
float loadavg = 0.00;

union u_tag {
  byte b[4];
  float fval;
} 
u;


void setup() {
  Serial.begin(9600);	// opens serial port, sets data rate to 9600 bps
}

void loop() {
  u.fval = loadavg;

  // send data only when you receive data:
  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();

    // say what you got:
    Serial.print("I received: ");
    Serial.println(incomingByte, DEC);
    Serial.println(loadavg);	
  }
}



