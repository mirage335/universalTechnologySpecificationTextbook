
_page ' ' ### 

_heading2 'Signal Processing and Control Algorithms'


_heading3 'Proportional Integral Derivative (PID) Control'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-pid-passiveFilter.png" "525px"
_t 'A single feedback amplifier issues proportional corrections to its outputs in response to disturbances. More disturbance, much more output to correct.

Real systems often do not respond instantly to control inputs. Power into a heater is limited, as would be any electrical input to a resistor. Temperature does not rise immediately, just as voltage applied to a resistor/capacitor voltage divider does not instantly cause the voltage across the capacitor to rise. Practical heating applications often involve multiple rapidly changing inputs to thermal circuits, as products like 3D printer filament are moved through devices like extruders at changing rates.

Precise control often requires consideration of how a new input, more heat or product, will impact future states.

Modern control systems implement multiple amplifiers, with low-pass and high-pass filters in the feedback loop, to compensate for past states and future trends.

Maximum control is achievable by repeated re-tuning of the P I D gain/filter parameters. Evolutionary algorthims and neural networks excel in such optimization, though more rigiorous tuning methods can be developed for specific purposes. Real-time parameter changes, with simulated disturbances, may allow better manual tuning.'


_heading3 'Digital Equivalents of Analog Circuits'
_r '<figure style="width:350px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/filterOrders/orig/Butterworth_Filter_Orders.svg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Butterworth_Filter_Orders.svg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-voltageDivider-resistor_capacitor.png" "125px"
_t 'Digital signal processing is often used to reduce bulky circuits to trivial mathematical operations. Digital systems also have the ability to make mathematically perfect copies of information - &#39;101010&#39; can always be copied to exactly &#39;101010&#39;.

However, these signal processing and control algorithms are generally most efficient when closely related to the simplest equivalent electrical circuit.

A disadvantage to digital signal processing is speed. Circuitry used to capture analog signals (analog-digital-converters) inherently includes parasitic low-pass filters. Digital processors themselves can only perform a limited number of operations per second, while analog components &#39;compute&#39; using the entire degenerate gas of electrons pushed through them. For these reasons, high-speed microwave or optical communication links are often reduced in frequency before submission to computer processing.

As an example, this C preprocessor macro implements a low pass filter by adding the most recent output, to the change in amplitude, multiplied by a constant, which sets the cutoff frequency to a percentage of sample rate.

#define lowPass(newValue, filteredValue, inertiaFloat)                            \
filteredValue = filteredValue + (inertiaFloat * (newValue - filteredValue));

A more universal frequency filter can be implemented by a "biquad" topology, using multiple amplifiers and filters in the same feedback loop. Capable of implementing low/high pass as well as band pass/stop, equivalent to various RC/RL/RLC circuits, cutoff/center/bandwidth frequency characteristics can be set by adjusting component values, or constants in an equivalent digital algorithm.

#define IIRbiquad(newValue, filteredValue, unique_d1_name, unique_d2_name, b0, b1, b2, a1, a2)			\
														\
	filteredValue = b0 * newValue + unique_d1_name;								\
	unique_d1_name = (double)b1 * (double)newValue + (double)a1 * filteredValue + unique_d2_name; 	\
	unique_d2_name = (double)b2 * (double)newValue + (double)a2 * filteredValue;

Like all low-pass filters, all of these algorithms and circuits only provide -20dB (100x) power attenuation for every ten times frequency increase beyond the cutoff. Multiple &#39;orders&#39; must be connected together to achieve sharper low-pass filtering. In electronic circuits, this is done by adding more components - usually resistors, capacitors, and amplifiers. In digital circuits, this can be done with a simple for loop.

//High Order IIR Biquad Filter.
//Parameters b0, b1, b2, a1, a2 are filter coefficients. See http://gnuradio.4.n7.nabble.com/IIR-filter-td40994.html and http://www.earlevel.com/main/2013/10/13/biquad-calculator-v2/ .
//Data is returned in the double named [filteredValue] .
#define highOrderIIRbiquad(newValue, filteredValue, stateOneArrayName, stateTwoArrayName, b0, b1, b2, a1, a2, filterOrder)	\
	static double stateOneArrayName[(filterOrder+1)];									\
	static double stateTwoArrayName[(filterOrder+1)];									\
																\
	static int filterLoop;													\
																\
	static double lowerOrderFilteredValue;											\
	lowerOrderFilteredValue = newValue;											\
																\
	for (filterLoop=0; filterLoop < filterOrder; filterLoop++) {								\
		IIRbiquad(lowerOrderFilteredValue, filteredValue, stateOneArrayName[filterLoop], stateTwoArrayName[filterLoop], b0, b1, b2, a1, a2) \
		lowerOrderFilteredValue = filteredValue;									\
}

And now the advantages of digital filters are abundantly clear. At the cost of a trivial number of arithemetic operations, potentially thousands of low-noise electronic components can be substituted for a microcontroller costing few dollars. Hundreds of orders have been implemented within audio frequency range by an ATMega32U4 to clean electroencephalography data before sending along to a computer for further analysis. Filter parameters themselves can be automatically tuned by evolutionary algorithms, neural networks, or rigorous methods developed for specific purposes.'


_heading3 'Spectrum Analysis and Fast Foruier Transform'
_ ' ' ###
_ 'Image generated by &#39;mirage335&#39; from screenshot of EEG showing presumed normal alpha rhythm. Image has been widely available, announced, and distributed, for many years, as known to all substantial prarticipants in the &#39;mirage335BiosignalAmplifier&#39; project built at HacDC.'
_ _r '<figure style="width:475px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-mirage335/08-AlphaWavesLowRes.jpg" alt="" style="width:100%" >
</figure>'
_t 'Signal amplitude can be measured after being put through a band pass filter. Higher amplitudes indicate a closer match between filter frequency, and actual frequency. A large filter bank, or a sweeping filter, can thus be used to show the amplitudes of various frequencies in a signal.

Spectrum analysis simply implements such a filter bank, sweeping filter, or combination of these. Fast Fourier Transform (FFT) is simply a mathematical alogithm for performing this operation efficiently on digital processors. FFT is may be useful as a function more efficient than IIR filters, but knowing how to reimplement FFT is rarely called for.

Various plots are generated by this technique, including amplitude/frequency graphs and amplitude/frequency/time "waterfall" plots. The latter shows the appearance and disappearance of signals across a range of frequencies, and so can identify radio channels going on/off air, or information transmitted by shifts in frequency, as with human voice.'
_image "./_lib/zSPECIAL-images/images-mirage335/08-AlphaWavesLowRes.jpg" "85%"












