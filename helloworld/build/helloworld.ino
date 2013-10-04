#include "hw.h"

void setup()
{
  pinMode(LEDPIN, OUTPUT);      // sets the digital pin as output
  Serial.begin(9600);
}

void loop()
{
    int light = analogRead(LIGHTIN);
    Serial.println(light);
    if (light > 30) {
        digitalWrite(LEDPIN,LOW);
    }
    else {
        digitalWrite(LEDPIN,HIGH);
    }
    delay(250);
}
 
