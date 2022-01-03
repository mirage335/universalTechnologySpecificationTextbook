
_heading3 'Pinout'
_t 'Designs for wiring (eg. PCB layout, mezzanine connector adapters, PatchRap specifications and breadboard layout, etc) should provide as much connectivity (ie. power, reference, clock, bus) to as much circuitry as reasonably possible.

+0.6V , +0.7V , +0.8V , +0.9V , +1.0V , +1.5V , +2.5V , +3.3V , +5V / +24V
-0.6V , -0.7V , -0.8V , -0.9V , -1.0V , -1.5V , -2.5V , -3.3V , -5V / -24V
pGND

Vcc/pGND
Vcc/pGND (DAC-LF only)
Avcc/sGND (ADC-LF only)


PWMdirect- , PWMalternate+
midpoint

Amplifier Reference Ground (drives output close enough to midpoint for further offset adjustment by dual-gate FET input)

40 Data LVDS Transmission Lines (SerDes)

1 Clock Low Power
1 Data Low Power (low speed frames for embedded microcontroller access to neurons)

Clock Codec

Clock ADC-LF (ie. 7kHz)
Clock DAC-LF (ie. 7kHz)

Clock Config-ActiveMatrix
Clock Config-Codec

Clock 1GHz
Clock 500MHz
Clock 250MHz
Clock 200MHz
Clock 150MHz
Clock 100MHz
Clock 50MHz
Clock 25MHz
Clock 1MHz
Clock 1kHz

Clock 48MHz
Clock 16MHz
Clock 8MHz
Clock 32.768kHz


Mezzanine connectors and foldable &#39;zig-zag&#39; flexible mesh PCB areas are expected where optimum mechanical compatibility may be important.

Additional data transmission lines may be added internally (eg. Backhaul --> Codec --> DAC/ADC). A few dedicated low-frequency clock lines (eg. Clock Config-Codec) may also communicate data. Usually dedicated clock lines (or disable) should only be provided if some sort of power reduction (eg. rare reconfiguration, low-power embedded microcontroller access to neurons) may be necessary.

' 
