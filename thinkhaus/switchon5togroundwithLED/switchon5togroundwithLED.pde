/* 
 * Switch test program
 */
int ledPin = 12;
int switchPin = 2;
int val;

void setup()
{
 // Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(switchPin, INPUT);
}

void loop()
{
  val = digitalRead(switchPin);
  if (val == LOW) {
    digitalWrite(ledPin, HIGH);
  }
  if (val == HIGH) {
    digitalWrite(ledPin, LOW);
  }
}


