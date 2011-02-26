#include <math.h>

int a = 3;
int b= 4;
int h;

/* 
 Hello world example.
 
 */

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Let's calculate a hypotenuse!");

  Serial.print("a = ");
  Serial.println(a);

  Serial.print("b = ");
  Serial.println(b);

  h = sqrt( a*a + b*b );
  Serial.print("h = ");
  Serial.println(h);
}



void loop() {
  // put your main code here, to run repeatedly: 
}



