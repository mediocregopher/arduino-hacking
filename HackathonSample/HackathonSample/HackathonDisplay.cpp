#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdlib.h>

#include <Wire.h>

#include "Adafruit_GFX.h"
#include "HackathonDisplay.h"

#include "glcdfont.c"
const byte SLAVE_ADDRESS = 42;

// a 5x7 font table
extern uint8_t PROGMEM font[];


uint16_t HackathonDisplay::Color333(uint8_t r, uint8_t g, uint8_t b) {
  // RRRrrGGGgggBBBbb
  return ((r & 0x7) << 13) | ((r & 0x6) << 10) |
         ((g & 0x7) <<  8) | ((g & 0x7) <<  5) |
         ((b & 0x7) <<  2) | ((b & 0x6) >>  1);
}

void HackathonDisplay::drawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color) {
  Wire.beginTransmission (SLAVE_ADDRESS);
  Wire.write('l');
  Wire.write(x0);
  Wire.write(y0);
  Wire.write(x1);
  Wire.write(y1);
  Wire.write(color >> 8);
  Wire.write(color & 0xff);
  Wire.endTransmission(); // TODO: returns 0 if successful
}

void HackathonDisplay::drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color) {
  Wire.beginTransmission (SLAVE_ADDRESS);
  Wire.write('C');
  Wire.write(x0);
  Wire.write(y0);
  Wire.write(r);
  Wire.write(color >> 8);
  Wire.write(color & 0xff);
  Wire.endTransmission(); // TODO: returns 0 if successful
}

void HackathonDisplay::drawChar(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size) {
  Wire.beginTransmission (SLAVE_ADDRESS);
  Wire.write('t');
  Wire.write(x);
  Wire.write(y);
  Wire.write(c);
  Wire.write(color >> 8);
  Wire.write(color & 0xff);
  Wire.write(bg >> 8);
  Wire.write(bg & 0xff);
  Wire.write(size);
  Wire.endTransmission(); // TODO: returns 0 if successful
}

// the most basic function, set a single pixel
void HackathonDisplay::drawPixel(int16_t x, int16_t y, uint16_t color) {
  if ((x < 0) || (x >= 32) || (y < 0) || (y >= 16))
    return;
  Wire.beginTransmission (SLAVE_ADDRESS);
  Wire.write('p');
  Wire.write(x);
  Wire.write(y);
  Wire.write(color >> 8);
  Wire.write(color & 0xff);
  Wire.endTransmission(); // TODO: returns 0 if successful
  return;
}

HackathonDisplay::HackathonDisplay(void) {
}

void HackathonDisplay::begin(void) {
  Wire.begin();
}

// clear everything
void HackathonDisplay::clearDisplay(void) {
  Wire.beginTransmission (SLAVE_ADDRESS);
  Wire.write('c');
  Wire.endTransmission(); // TODO: returns 0 if successful
}
