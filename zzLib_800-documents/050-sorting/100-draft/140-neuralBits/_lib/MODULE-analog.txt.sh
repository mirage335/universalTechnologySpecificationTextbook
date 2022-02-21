_heading2 'Analog Receiver/Transmitter'
_t 'Receive only neural event spike time, location, duration (dubious), sorting (prototype only). Analog receiver (amplifier, ADC, Low-Pass-Feedback) solely exists to acquire neural events. ADC resolution may be rather poor (4uV-128uV) due to insignificance of lower-noise low-frequency.

Transmitter only emits pulse stimulation time, location, amplitude (optional), duration (dubious). Amplitude may either minimize risk of degrading receivable neurons near ES, or maximize longer distance neurons reached. Crudely, transmitter may diagnose or balance ES defects (eg. electrochemical potential, impedance erosion, mechanical separation, etc), however, this must not consume significant bandwidth or circuitry (may be prototype only).

Analog waveform transmission/reception is not practically useful.'
_
_heading3 'Amplifier'
_t 'Amplifier must be one per ES (excepting very small stimulation only ES used for Virtual Reality), and is expected to occupy the largest &#39;footprint&#39; per ES. Single-transistor amplifier or inequally sized differential long-tailed pair due to space constraints. Differential analysis (eg. spike waveforms from the same neuron across different axes between pairs of ES) is by analysis (ie. codec/software) not &#39;instrumentation amplifier&#39; hardware.'
_
_heading3 'ES (Electrode Sites)'
_
_heading4 'LS'
_t 'LS (<7kHz) should obviously use Ramp ADC or Flash ADC due to minimal circuitry, power consumption. Ramp ADC in particular has analogous precedent for comparable circuitry with very generous equivalent bit depth. Feedback AC Coupling (~0.7Hz low-pass) using a 5-bit R2R DAC (discard the irrelevant digital readout) may eliminate electrochemical potential, expanding maximum voltage by >4bits (128uV/2*64 == 4096uV) at no bandwidth and negligible circuitry.'
_heading4 'HS'
_t 'HS (>100kHz <10MHz) (prototype only) should obviously multiplex ~128 transmission lines. Both high bit depth (ie. 16bit, 24bit) and high sample rate (eg. 10MHz, 192Ks/s) may be required to sufficiently discern phase and duration.'
_heading4 'Stimulation only ES'
_t 'Stimulation only ES may be smaller, denser, and more numerous, having neither the surface area nor large amplifier needed for low-noise reception. Calibration of their exact position may be by nerual decoding of ES at topographic maps of entirely different anatomical locations (ie. calibration of peripheral neurons by ES in neocortex).'
_
_heading3 'Receiver - ADC Dynamic Range'
_
_t 'Amplifier gain and ADC resolution must combine to meet expected signal amplitudes.

4bit ADC (4uV-128uV) (aka. +/-2uV to +/-64uV)
Flash ADC - 32 Comparator
Ramp ADC - rawSampleRate*32 Ramp Frequency

Feedback AC Coupling 5-bit R2R DAC information is a useless artifact, ignored.

Prototype dynamic range may be larger, at 2uV-480uV (8bit ADC) or 2uV-2mV (10bit ADC if unexpectedly high electrochemical potential or sensitivity).'
_
_heading3 'Transmitter - DAC Dynamic Range'
_
_t 'Triangular voltage waveform only, to minimize total charge, collateral damage, and especially associated power dissipation. Must keep peak voltage <<0.8V with average current approximately +/-<420nA . Duration may be <<200us per phase, <<400us total.

Two separate 4bit R2R DAC briefly output preprogrammed waveform with dynamic range +/-25mV to +/-400mV .'
_
_heading3 'Rationale'
_
_t 'Receiver Amplifier/ADC must have a zero midpoint (to discern spikes visible between specific pairs of ES).

*) Minimum discernible input voltage step - <4uV. Relatively poor sensitivity is entirely acceptable, although narrow band noise floor may be much lower at ~1uV.
 *) Local field potentials at ~1uV@<30Hz@100kOhm (similar EEG noise floor) are vastly inferior to, and can be inferred or stimulated from, a more direct neural interface.
 *) Distant neural spikes are at higher frequency and corresponding ~6uV@<10kHz@100kOhm (Neuralink specification, thermal noise estimation).
 *) Placing ADC resolution well below the noise floor (ie. small fraction of ~6uV) is not worth much additional power consumption or circuitry which may reduce spatial resolution (ie. &#34;totalES&#34; ).



Transmitter DAC voltages must always emit +/- from a zero midpoint used by all ES. Stimulation patterns between arbitrary pairs of ES must be possible.

*) Minimum stimulation step -  +/-25mV. Study (https://www.frontiersin.org/articles/10.3389/fnins.2019.00208/full) suggests useful waveforms begin with minimum voltage either ~5mV (100nA@50kOhm square wave current) or ~70mV (square wave voltage) at minimum useful duration of ~50kHz/18us (square wave current) or ~20kHz/50us (square wave voltage).
 *) Stimulation voltage waveform must be a one-time programmable or reprogrammable (prototype only) pattern. Voltage-to-current unity-gain buffer amplifier may not be useful, due to non-availability of physically large capacitors (>>50pF), resistive power consumption, no expectation of substantial or correctable ES impedance erosion, etc. Current control without strict inductive spike voltage limit may cause water electrolysis (and associate damage).
  *) Square wave current output implies triangle wave voltage output, which may minimize charge flow through nearby tissue, while maximizing charge change at distant neurons (maximizing safety).
  *) Square wave voltage implies strongly high-pass filtered current waveform, which may only maximize use of limited voltage supply.

*) Maximum stimulation voltage - +/-0.42V. Voltages closer to +/-0.8V may cause too much collateral damage. For an unreasonably pessimistic 1Mohm ES, a useful maximum of +/-420nA implies a useful maximum of +/-420mV . A 4bit DAC with a minimum of 25mV would have a maximum of 400mV. Two separate 4bit R2R DAC expand this to a dynamic range of +/-25mV to +/-400mV without risk of resistor precision limitations inducing harmful persistent DC bias currents while disabled.



*) Amplifier bias current should ideally be less than (100×10^−9)/50000 == 2*10^-12  (ie. 2pA) . While reasonable, much greater bias current may be acceptable, since this is extremely conservative, some damage to nearby neurons may be acceptable, and electrochemical degradation may be more relevant.



*) Accuracy, precision (ie. voltage calibration drift), and linearity are not important. Neither analog measurement nor extensive filtering of the useful information (ie. neural spike events) is expected.







*) Ramp ADC. ISO124 amplifier (datasheet) is analogous enough as an example of Ramp ADC - at least a 10kHz usable bandwidth, extremely high signal/noise ratio (ie. bit depth), duty cycle modulation, claimed transistor count 250.
*) Flash ADC. Fast, minimal components (32 comparators at adequate 4bit resolution, 256 comparators at 8bit resolution).

*) Voltage-Frequency-Converter ADC. May have all disadvantages of Ramp ADC, with additional internal circuitry and low quality oscillator jitter. Usability may depend on feasible modulation rate (ie. sampling rate) and modulation depth (ie. bit depth) relative to noise (ie. jitter).

*) Capacitor (dis)charge ADC is severely constrained by either small capacitance (<<100pF), or by physically large capacitors and possibly high power consumption. Multiplexing, as Neuralink apparently does at a 16x ratio, increases already high frequency response requirements, and may not scale beyond a few thousand electrodes.

*) R2R DAC. More compact than an OpAmp filter with (physically large) capacitor. When the digital readout is unwanted (as with Feedback AC Coupling), the relevant memory bits may be ignored instead of sent to a bus.'
