#include <Adafruit_GFX.h>   // Core graphics library
#include <RGBmatrixPanel.h> // Hardware-specific library
#include "heart.h"

#define CLK 8  // MUST be on PORTB!
#define LAT A3
#define OE  9
#define A   A0
#define B   A1
#define C   A2
RGBmatrixPanel matrix(A, B, C, CLK, LAT, OE, true);

#define deltaThresh 15
#define changeWait 10000

int musicPin = A4;

int myabs(int i) {
    if (i < 0) return -1*i;
    else return i;
}

void setup() {
    matrix.begin();
    Serial.begin(9600);
    while (!Serial) {}
}

int curMusicVal;
int lastMusicVal;
int delta;
int size;
int lastBigChange = 0;
void loop() {

    curMusicVal = myabs(analogRead(musicPin) - 512);
    delta = myabs(curMusicVal - lastMusicVal);

    if (delta < deltaThresh && lastBigChange < changeWait) lastBigChange++;
    else if (delta > 50) lastBigChange = 0;

    Serial.println(lastBigChange);

    matrix.fillScreen(0);
    if (lastBigChange < 10000) {
        size = 4 + (delta/30);
        drawHeart(&matrix,16-size,9-size,size*2);
    }
    matrix.swapBuffers(false);


    lastMusicVal = curMusicVal;
}
