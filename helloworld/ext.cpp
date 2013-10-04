#include <Arduino.h>
#include "hw.h"

void onoff(int time) {
  digitalWrite(LEDPIN, HIGH);
  delay(time);
  digitalWrite(LEDPIN, LOW);
  delay(time);
}
