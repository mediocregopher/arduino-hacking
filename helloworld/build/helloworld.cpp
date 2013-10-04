#include <Arduino.h>

void setup();
void loop();

int main(void)
{
	init();

#if defined(USBCON)
	USBDevice.attach();
#endif
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
	}
        
	return 0;
}

void setup();
void loop();
#line 1 "build/helloworld.ino"
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
 
