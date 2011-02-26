

// FUUUCCCKK

int switchPin = 2;
int val;
int buttonState;

void setup() {
  pinMode(switchPin, INPUT);
  Serial.begin(9600);
  buttonState = digitalRead(switchPin);
  
}

void loop() {
  val = digitalRead(switchPin);
  if (val != buttonState) {
    if (val == LOW) {
      Serial.println("Pressed");
    }
    else {
      Serial.println("Released");
    }
  }
  buttonState = val;
}
