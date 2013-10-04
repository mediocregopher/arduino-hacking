#include "Arduino.h"
#include <Adafruit_GFX.h>

class HackathonDisplay : public Adafruit_GFX {
 public:
  HackathonDisplay();

  void begin();
  void ssd1306_command(uint8_t c);
  void ssd1306_data(uint8_t c);

  void clearDisplay(void);
  void display();
  uint16_t Color333(uint8_t r, uint8_t g, uint8_t b);

  void startscrollright(uint8_t start, uint8_t stop);
  void startscrollleft(uint8_t start, uint8_t stop);

  void startscrolldiagright(uint8_t start, uint8_t stop);
  void startscrolldiagleft(uint8_t start, uint8_t stop);
  void stopscroll(void);

  void drawPixel(int16_t x, int16_t y, uint16_t color);
  void drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
  void drawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
  void drawChar(int16_t x, int16_t y, unsigned char c,
		uint16_t color, uint16_t bg, uint8_t size);
};
