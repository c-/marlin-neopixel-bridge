# marlin-neopixel-bridge

Using an ATtiny85 to bridge between Marlin firmware and Neopixel LED's
simply by emulating the minimal amount of BlinkM I2C commands needed to
show some colours.

Pictures and more writing here: http://imgur.com/a/qqFzk

Arduino code is in ATtiny85_BlinkM_Neopixel_Bridge/. You need the ATTinyCore,
TinyWireS, and Adafruit_NeoPixel libraries installed.

KiCad schematic and pcb layout are included. 

The BOM is:

 * ATtiny85 (DIP8 with socket)
 * .1uF capacitor
 * 300-500 ohm resistor (I used 470)
 * one larger cap for the Neopixels (100uF seems fine)
 * 2 4.7k ohm resistors for the I2C pullups
 * headers, wires, etc. I used pin headers and Dupont connectors

The install is straightforward (I assume you know what tools are needed and
how to use them):

 1. in Marlin's Configuration.h uncomment the line "#define BLINKM", compile
and upload. It shouldn't break anything if the I2C device isn't connected
yet.

 2. find or create a mount to put your Neopixel strips where you want them.

 3. (optional, but recommended) breadboard the circuit, program the AVR,
 connect to the I2C header on the controller board (on RAMPS, that's
 just above the endstops). Test it with M150 Rxx Uxx Bxx G-codes (note
 that the color operators appear to be case-sensitive).

 4. etch a PCB or solder up a perf board. Or solder the pieces together and
 cover it all with hot glue and tape. It's your printer.

 5. mount it and enjoy the shiny lights.
