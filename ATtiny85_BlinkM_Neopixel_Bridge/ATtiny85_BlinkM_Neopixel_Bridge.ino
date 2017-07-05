#include "TinyWireS.h"
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

// Simple bridge between Marlin's BlinkM RGB LED output and a Neopixel (compat) strip.
// Note that this is *not* a general purpuse BlinkM emulator, although it probably could be
// given time. If Marlin changes the BlinkM command set that it uses this will have to be
// adapted.
//
// Wiring:
// ATtiny85 power/GND/caps as usual
// PB0 to RAMPS SDA (w/ 4.7k pullup)
// PB1 to Neopixel data (through ~470R)
// PB2 to RAMPS SCL (w/ 4.7k pullup)

#define I2C_SLAVE_ADDR 0x09

#define LEDPIN 1
#define NLEDS 4

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NLEDS, LEDPIN, NEO_GRB + NEO_KHZ800);

static inline void setStrip(uint32_t c) {
  for( int i = 0; i < strip.numPixels(); i ++ ) {
    strip.setPixelColor(i, c);
  }
  strip.show();
}

void setup() {
  #if defined (__AVR_ATtiny85__)
    if (F_CPU == 8000000) clock_prescale_set(clock_div_1);
    if (F_CPU == 16000000) clock_prescale_set(clock_div_1);
  #endif

  strip.begin();
  setStrip(strip.Color(255,255,255));

  TinyWireS.begin( I2C_SLAVE_ADDR );
}

void loop() {
  // we could probably just continuously block on TinyWireS.receive(), but that's
  // kind of bad form.
  if( TinyWireS.available() ) {
    byte cmd = TinyWireS.receive();
    switch(cmd) {
      case 'n': {
        byte r = TinyWireS.receive();
        byte g = TinyWireS.receive();
        byte b = TinyWireS.receive();
        setStrip( strip.Color(r,g,b) );
        break;
      }
      default:
        // 'o' is the only other command we should expect
        break;
    }
  }
  delay(1);
}
