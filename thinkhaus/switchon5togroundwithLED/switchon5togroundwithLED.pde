/* 
 * Switch test program
 */
int ledPin = 12;
int switchPin = 2;
int val;
int buttonState;

void setup()
{
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(switchPin, INPUT);
  buttonState = digitalRead(switchPin);
}

void loop()
{
  val = digitalRead(switchPin);
  if (val != buttonState) {
    if (val == LOW) {

      digitalWrite(ledPin, HIGH);
    }

    else 
    { 
      digitalWrite(ledPin, LOW);
    }
  
    buttonState = val;
  }
}




