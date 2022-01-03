
_ source "$scriptLib"/MODULE-99-misc.txt.sh

_page ' ' ###
_heading2 'Circuits'

_t 'Circuits are relevant to more than electronics. All machinery (eg. heatsinks, insulation, hydraulics, automotive shocks) can be and often is modeled as electronic circuits. Spring and material elasticity is espeically notable for having a simple, highly useful, exact electronic circuit equivalent model as a resistor, capacitor, inductor &#39;frequency filter&#39; circuit. Photons (whether far field &#39;real&#39; or near field &#39;virtual&#39;) through their electromagnetic fields are the predominant carrier for momentum between particles, and all interactions (&#39;all forces&#39;) in the universe are transfers of momentum. Fundamentally, electronic components using electrical and magnetic fields, are a convenient, graphical way to describe paths for all such interactions.'


_heading3 'Voltage, Current, Watts'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-conventionalCurrentFlow.png" "200px"
_t 'Voltage, Current, Watts

In conductors, electrons form a liquid. They can, and do, move between atoms in a wire like fluid in a pipe.

Voltage is electrical pressure, measured in volts.

Current is the quantity of electrons moving, measured in amps.

Watts is power, pressure (volts units) multiplied by current (amps unit).'



_heading3 'Resistance'

_t 'If water is pumped through a thin pipe, higher pressure will exist on one side of the pipe than the other. A quantity of fluid will flow through the pipe proportional to this pressure drop across the pipe. The pipe itself will heat up (eg. noticeably in tractor hydraulics), as power is dissipated.

Resistors operate on exactly the same principle. Voltage is pressure. Current is flow. Power is watts.

How much current flows depends on the voltage pressure. A simple formula, Ohm&#39;s law, precisely relates this as I=V/R . One amp will flow through a one ohm resistor under one volt of pressure.

Power dissipation is the number of volts across a resistance, multiplied by the current flowing through it. One volt times one amp is one watt. Typical space heaters use ~1kW to heat small rooms.'



_heading3 'Voltage Dividers'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-voltageDivider.png" "125px"
_t 'If holes are drilled along a long hose, most water will leak closer to the faucet, than to the drain. Along a resistance, pressure is greatest at the source. This simple principle is the most important in all circuit modeling.


Rather than a long, continious hose, consider two resistors in series across a power supply. At the positive terminal, the supply is at 10V. At the negative terminal, 0V.

Suppose both resistors are equal, perhaps 1kOhms (1000 Ohms). The terminal between these two resistors will be at 5V, exactly half the supply voltage.

Now suppose the bottom resistor is 90% of the resistance, perhaps 900Ohms, while the top resistor represents the remaining 10%, perhaps 100Ohms. Now, current flows out more readily than in. Middle terminal will now be at 1V, ten times less than input voltage.

In this way, high voltages can be safely measured, up to, and far beyond, lightning strikes, by sensitive equipment which would be damaged by few volts.'



_heading3 'Impedance'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-voltageDivider-resistor_capacitor.png" "125px"
_r '<figure style="width:200px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/rc_capacitor/orig/Series_RC_capacitor_voltage.svg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Series_RC_capacitor_voltage.svg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_t 'Resistors instantaneously allow current to flow in proportion to voltage. Like a hose, when pressure is applied, current flows immediately, and does not stop.

Capacitors store current, like a sealed bucket. Pour water in, and after a while, no more water can flow in. Open a tap, and water flows out, until the bucket is empty. In electronics, these buckets are pairs of plates next to each other, storing charge in an insulator.

Inductors store momentum, like flywheels connected to turbines. Force water through the turbine, and the flywheel slowly starts to spin. Release pressure, and the flywheel will continue to pull water through the turbine. In electronics, these flywheels are actually coils of wire, storing energy in magnetic fields. 

Consider what happens when a resistor and capacitor are connected together, then the circuit is connected to a power supply. At first, the capacitor will be empty - all current flowing out of the resistor  immediately goes to the capacitor. Middle terminal voltage is zero. Slowly, less current will flow into the capacitor as it literally fills up. As this happens, it will offer an imaginary &#39;resistance&#39; to the flow of more current.

An inductor shows exactly the opposite behavior. At first, the full power supply voltage will be dropped across an inductor. As the magnetic field gets going, just like a flywheel, current will flow, and pressure across the inductor, like a turbine spinning freely, will fall to zero. 

This simple principle allows a combination of just three components - resistors, capacitors, and inductors, to filter signals by frequency. The combination of real and imaginary resistance, as a two dimensional &#39;complex number&#39; is known as &#39;impedance&#39;.'



_heading3 'Resonance'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-resonant-inductorCapacitor.png" "125px"
_t 'When inductors and capacitors are combined in the same circuit, current flows between them endlessly. In a hydraulic analogy, the bucket fills up, then the flywheel starts spinning. Once the flywheel is spinning, it starts emptying back into the bucket.

In practice, real inductors and capacitors made of ordinary metals have some resistance, so the oscillation stops.* This combination of inductance, capacitance, and resistance, results in selectivity to a narrow band of frequencies.

Additionally, the voltage across each component is proportional to their values, one of many ways to increase or decrease (ie. &#39;transform&#39;) voltage.

*Inductor/capcacitor circuits made of superconducting materials below their cryogenic critical temperature have zero internal resistance, and can sustain oscilations almost indefinitely.'



_heading3 'Flyback'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-flyback.png" "300px"
_t 'What happens when a valve to a spinning turbine is instantly sealed off? Pressure rises precipitiously. In physics, no work is done unless motion occurrs. If a spinning turbine cannot push fluid, then energy is unable to perform work. In theory, if the turbine is stopped instantly, pressure rises instantly, infinitely.

Inductors produce a similar effect, known as flyback. In theory, infinite voltage may be generated, unless a load is applied at all times. When a load is applied continiously in parallel with the inductor, the output voltage will correspond to duty cycle - percentage of time on/off.  In this way, a &#39;buck-boost converter&#39; may efficiently generate voltages higher or lower than the input. Most small power supplies today operate on this flyback principle.

On the other hand, flyback can be destructive. In the turbine analogy, water hammer would rapidly destroy the shut valve. Similarly, high voltage can overcome the breakdown voltage of insulators. In air, this results in a large spark. In solid devices, like transistors, the high-energy pulse may permanently destory their tiny structures.'




_heading3 'Coupling'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-transformer.png" "225px"
_t 'Capacitors store charge as an electric field on a dielectric material, while inductors store inertia in magnetic fields. Because these fields are external, these components can interact.

Two inductors close together, or wound around the same iron core, can transfer energy in a changing magentic field. Because the magnetic field produced by an inductor per volt is proportional to the number of turns in the wire coil, transformers may be used to convert voltages. Transformers can also break common ground loops (ie. isolation), which can be an important safety feature. Motors operate similarly, with the secondary inductor replaced by a spinning magnet (and vice versa for electromechanical generators).

Together, a capacitor an inductor may induce oscillating electrical or magnetic fields in the same free space, as with any inductor/capacitor circuit. However, when the transition between a strong electrical, and a strong electrical field, takes place openly, the particle associated with these fields is created - a photon. Just as a resistor emits heat, a radiation resistance arises in the circuit, emitting these photons, known as radio waves. Thus, an antenna is merely a combination of a capacitor and an inductor operating in open space, forming a circuit tuned to a specific frequency.

Coupling is not always desirable however. In particular, adjacent wires in telephone wires may generate electrical or magnetic fields, causing a signal in one wire to be picked up by another. Shielding and twisting of the wires are strategies used to short out, or randomize to an average of zero, these unwanted stray fields.'




_heading3 'Source Impedance'

_t 'Ideal power supplies, as voltage sources would have zero resistance. Real power supplies have a built-in resistance.

Recalling the principle of a voltage divider, low-resistance loads, like a high wattage light bulb, will cause power supply voltage to sag.

Signals typically have the same built-in resistance. A microphone may produce a high voltage, but little current. In effect, any load attached to a microphone, such as a loudspeaker, will cause the voltage to sag nearly to zero. Sound powered telephones do exist, but must be well designed for efficiency.'



_heading3 'Amplification'

_t 'Incoming signals often have high source impedance. Their voltages need to be matched with an increase in current, to remove the source impedance, before driving a load.

Recall that power in watts equals voltage multipled by amps. Increasing either voltage/pressure, or amps/current, increases power. To increase the current in a signal requires increasing power.

Likewise, a weak signal may have too little voltage to drive current into a load, as well as lacking current. Again, increasing the voltage of a signal requires increasing power.

Increasing power is amplification.

Amplifying devices are generally divided in two categories. Voltage amplifiers, and current amplifiers.

Voltage amplifiers are usually used for internal purposes, since the &#39;pressure&#39; may carry information with little expenditure of current. Current amplifiers usually drive heavy loads, such as loudspeakers, into which large currents must flow. Before reaching a final current amplifier, a signal will usually be increased to the power supply voltage. A portable megaphone may amplify the microphone signal to match a 9V battery voltage, then use a current amplifier to drive the loudspeaker like a power supply at that voltage.'


_page ' ' ###
_heading3 'Current Amplifier'
_picture "./_lib/zSPECIAL-images/images-illustrated/amplifier-commonCollector.png" "250px"
_t 'Current amplification is done with just one transistor circuit - the &#39;common collector&#39; amplifier. Other amplifiers of this type (ie. vacuum tube) use almost identical circuits.

Transistors are voltage controlled switches. Collector and emitter are shorted together when turned on, disconnected when turned off. Voltage between base and emitter turns the transistor on, lack of voltage turns it off.

Consider the circuit diagram. A voltage divider should be obvious - the collector-to-emitter side of the transistor is one resistor, resistor Re is the other resistor. At the top, collector is connected to supply voltage, perhaps 10V, while Re is connected to ground, 0V. Vout will be somewhere between 10V and 0V depending on the &#39;resistance&#39; of the transistor.

Suppose this transistor turns on when voltage between base and emitter is 1V. Further, a 5V signal is input to the base. The transistor will turn on, and voltage at Vout will rise. Since transistor emitter voltage also rises, the voltage between base and emitter drops. When the output/emitter voltage reaches 4V, base-to-emitter voltage will be just 1V. At this point, the transistor will have no further &#39;incentive&#39; to continue turning on. This equilibrium is called linear amplification.


Voltage gain is unity (no amplification), current gain is (ideally) infinite. Hence, this is a current amplifier.

Many signal sources, like microphones, do not have sufficient current to drive a low resistance. In effect, these signal sources are power supplies that have passed through a high-resistance, and do not have much current flowing out.

An amplifier like this one can sample the voltage, much like a pressure gauge, and control the flow of a much larger power supply, accordingly, to drive a heavy load, like a loudspeaker.'


_heading3 'Voltage Amplifier'
_picture "./_lib/zSPECIAL-images/images-illustrated/amplifier-commonEmitter.png" "275px"
_t 'Voltage amplification is also done with just one transistor circuit - the &#39;common emitter&#39; amplifier. Again other amplifiers of this type (ie. vacuum tube) use almost identical circuits.

From the circuit diagram, it can be seen the common emitter amplifier is a derivative of the common collector amplifier. Once again, the emitter voltage will be driven to just a little less than the base voltage, depending on the transistor&#39;s switch on voltage.

However, another resistor Rc has been added, and typically much higher resistance than Re. Typical values are around 200ohms Re and 1000ohms Rc.

Ignoring the transistor, another voltage divider can be seen. Just passing the power supply voltage across them, which would happen with the transistor fully switched on, the voltage across Rc and Re would be proportional to their resistances.

Thus, it can be seen that the common emitter amplifier can induce a much greater voltage across Rc than it induces across Re. Since Re is approximately equal to input voltage, this shows the voltage across Rc can be much greater than the input voltage.

However, because the resistance of Rc must be high to achieve high gain, little output current is available. Common practice is to follow a voltage amplifier with a current amplifier.'
_page ' ' ###


_heading3 'Split Power Supplies, Midpoint Ground'

_t 'Amplifiers can only switch their outputs to Vcc (input voltage), 0V (ground), or something in between. To output a voltage below 0V (ground) is not possible.

An arbitrary voltage, usually exactly half the power supply voltage, can be used as 0V (ground) instead. This way, an amplifier can output an AC signal, relative to this middle voltage.

In this case, positive voltage is usually termed Vcc, negative Vee, and midpoint ground GND.

Here, an amplifier is first shown taking an input signal either +/-1V relative to Vee and Vcc. In both cases, the amplifier cannot output a voltage outside the power supply &#39;rails&#39; to match the input. Then, it is shown that anytime a signal exceeds the power supply rails, the amplifier outputs the closest possible voltage, but not higher or lower voltage. Finally, an AC sine wave is shown going both above and below the chosen midpoint ground voltage, but never outside the power supply rails. This would be a good signal to work with inside an electronic device.'
_image "./_lib/zSPECIAL-images/images-illustrated/modpointGround.png"



_heading3 'Operational Amplifier'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-amplifier-differentialPair.png" "325px"
_t 'A differential amplifier is formed by combining two common emitter amplifiers. Inputting 5V to both amplifiers will result in 0V, while sending 5V to just one amplifier will result in a 5V difference between the two output terminals.

Following this with an ordinary &#39;single-ended&#39; amplifier - a voltage amplifier followed by a current amplifier, results in an operational amplifier. 

Operational amplifiers are the basis of modern analog electronics as well as control systems because they can be driven by *feedback*.'


_page ' ' ###
_heading2 'Feedback - How Operational Amplifier Circuits Do Everything in the Universe
(and you yourself are an Operational Amplifier on feedback)'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-feedback.png" "200px"
_t 'Feedback is ubiquitous. Send negative feedback, things stop happening. Send positive feedback, things start happening.

Operational amplifiers are the ultimate feedback operators. Any device, including more amplifiers, can be put in their feedback loops. This can be used to control transmitter power, drive extremely powerful broadcast amplifiers, or even steer antennas/photovoltaics toward the direction of a transmission source.


Operational amplifiers, opamps for short, have three terminals - positive, negative, and output. When the positive input is higher voltage than the negative input, output voltage
increases. When negative input voltage is higher than positive input voltage, output voltage drops.

When the negative input of an opamp is tied to the output, and the output is greater than the positive input, voltage will lower. When output falls below the positive input, the cycle
flips, and output voltage rises again.

Thus, an operational amplifier with a direct wire from output to negative input, will exactly copy the input voltage.

What makes this magical is the ability of the feedback loop to actively &#39;correct&#39; any disturbance. If a heavy load causes the output voltage to sag, the opamp will immediately correct
the error. Similarly, this basic principle can be used in control loops. Signal strength can be used as an opamp input, and antennas can be steered based on the opamp output, until
the feedback loop is satisfied. Feedback can even be used to control switching circuits to convert analog signals into pulse width modulation, as done with both switching power supplies (amplifying a stable voltage reference) and very efficient, very powerful, (eg. audio) Class D amplifiers.

Software equivalents of opamp positive and negative inputs can be realized as simple multiplication by >>1 (eg. 1000) of the difference between inputs. Motivations of individual people, and collective groups of people, can be modeled as opamps. Entire economies have been modeled as collections of opamps.

Feedback is motivation, emerging from the fundamental universal concept of quantity - desire for more, instead of less.'


_heading2 'Oscillation'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-oscillator.png" "275px"
_picture "./_lib/zSPECIAL-images/images-illustrated/positiveFeedback.png" "275px"
_t 'Feeding an amplifier&#39;s output back into its *positive* input tends to result in infinite gain. When more positive feedback than negative feedback is present in a system, it tends to result in the largest signal possible.

For an opamp, the largest possible signal is usually either 0V, or the power supply voltage, perhaps 10V. At this point, the amplifier is either &#39;on&#39; or &#39;off&#39;, driven by an infinitesimal input, maybe a stray electron.

However, when positive feedback runs through a frequency filter, thermal noise is amplified, sent through the filter, and the filtered frequency is amplified - the result is oscillation. At one frequency - the frequency least attenuated by the filter -the amplifier can continuously switch on and off.'


_heading2 'Mixing'

_r '<figure style="width:650px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/superheterodyne_double_conversion_diagram/orig/Double-conversion_superheterodyne_receiver_block_diagram.svg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Double-conversion_superheterodyne_receiver_block_diagram.svg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_t 'Frequency mixing involves putting one signal through an amplifier&#39;s power supply, and the other at its input. Usually this is done by switches. Consider what happens turning a flashlight on and off once a minute, while rapidly shuttering it once a second. Both the once/minute and once/second frequencies will be transmitted, but another frequency, once per 61 seconds, will also be transmitted.

This shifting of frequencies is the basis for both older and modern radio transmission/reception. Amplitude modulation actually results in frequency shifting - as a high-frequency radio signal is modulated by a low-frequency audio signal, the audio frequency is actually shifted as-is all the way up to radio frequency. &#39;Single-sideband&#39; is likewise just frequency shifting.'


_heading2 'Diodes'
_r '<figure style="width:200px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/breakdown_voltage/orig/Lichtenberg_figure_in_block_of_Plexiglas.jpg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Bert Hickman&#39; &#39;http://www.capturedlightning.com&#39; &#39;Lichtenberg_figure_in_block_of_ Plexiglas.jpg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_t 'One special device is a diode. These allow electricity to flow in just one direction.

Most diodes are destroyed by excessive reverse voltages. Some, however, are designed to &#39;breakdown&#39;, just as air breaks down under sufficiently high voltage to jump a spark. These Zener and Avalanche diodes are used in voltage dividers, where their precise breakdown voltage is used as a reference (amplified to form a power supply). This overvoltage clamping ability is also used in surge-suppression, as are spark gaps.'


_heading2 'Digital Logic'

_r '<figure style="width:225px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/reset_set_flip_flop/orig/SR_Flip-flop_Diagram.svg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;SR_Flip-flop_Diagram.svg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_t 'Amplifiers perform binary switching operations. These binary switches can be chained to produce logic gates performing five logical operations - OR, AND, XOR, NOR, NAND.

To store and move the result of an operation, a flip flop is commonly used. These are formed by combinations of logic gates, and &#39;latch up&#39; to the state input on a &#39;data pin&#39;, until a clock signal changes.

Reading information is done by clocking in a stream of bits into a &#39;register&#39; of flip flops. Then, logic gates will settle on a decision.  The output of these logic gates is connected to another register. When enough time has passed for a decision to be reached, the new data will be clocked out of the &#39;processor&#39;, again as a stream of new bits.'


_heading2 'Inverter Amplifier'
_picture "./_lib/zSPECIAL-images/images-schematics/schematic-cmos-inverter.png" "175px"
_t 'Interestingly, CMOS logical inverter &#39;gates&#39; can be used as *linear* amplifiers. With two complimentary transistors, they are formed as pairs of &#39;common emitter&#39; type amplifiers known as a push-pull configuration. Because these are inverting amplifiers, connecting their outputs back to their source forms a negative feedback loop.

Unusually, the CMOS manufacturing process results in these transistors being so well matched, they effectively form a built-in voltage divider. Even without a positive input terminal, they will balance themselves at half the power supply voltage.

Consequently, CMOS inverter gates can be repurposed as rudimentary feedback amplifiers, following a schematic similar to an opamp configured as an inverting amplifier. A common use case is as the amplifying device in a quartz crystal oscillator.'
_image "./_lib/zSPECIAL-images/images-schematics/schematic-amplifier-inverter.png" "675px"

_heading2 'Schematic Literacy'

_r '<figure style="width:475px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/schematic_amplifier/orig/Amplifier_Circuit_Small.svg" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Amplifier_Circuit_Small.svg&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_r '<figure style="width:725px;float:right;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/schematic_audioToResistance/orig/Basic.sch.png" alt="" style="width:100%" ><figcaption style="font-size: 0.70em;">&#39;Basic.sch.png&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'
_ 'style="-webkit-transform: rotate(90deg);-moz-transform: rotate(90deg);-o-transform: rotate(90deg);-ms-transform: rotate(90deg);transform: rotate(90deg);"'
_t 'From here, it is possible to recognize key features in schematics, and research the remaining components. Rather than expecting individual components to be meaningful, they should be understood as substystems. Look for common emitter amplifiers, common collector amplifiers, opamps, feedback loops, and frequency filters, instead of transistors, resistors, and capacitors.'
_r '<figure style="width:98%;margin: 0 0 0 15px;border: 5px solid transparent;">
	<img src="./_lib/zSPECIAL-images/images-external/schematic_biosignalAmplifier_amplifier/orig/amplifierSchematic.png" alt="" style="width:100%;" ><figcaption style="font-size: 0.70em;">&#39;amplifierSchematic.png&#39; see &#39;ATTRIBUTION&#39;</figcaption>
</figure>'




_page ' ' ###

_heading2 'Optics'

_t 'Collimated light from a single point source forms a perfect beam. By contrast, multiple points form multiple beams. Consequently
any light from more than an infinitely small point will spread when collimated into a beam.

A pinhole filter and color filter can convert an incoherent light source, to a laser-like source. Early holograms were
actually made by illumination with pinhole filtered mercury vapor lights, not lasers.'

_picture "./_lib/zSPECIAL-images/images-illustrated/temporalCoherence.png" "325px"
_image "./_lib/zSPECIAL-images/images-illustrated/spatialCoherence.png" "550px"


_t 'Spatial filtering an uncollimated light source has the disadvantage of discarding most of the light. Lasers are among few light sources offering both intensity and high power. Synchrotrons (big particle accelerator rings with magnetic undulators) are the other.



Even laser and synchrotron light is not perfectly collimated however. Due to the geometry of focusing a point of light into a beam with a lens,
wider beams are actually better collimated. This imposes a limit on the diameter of a projected spot at a distance.

When projecting a single spot from a large laser beam, projection resolution is actually a function of the numerical aperture. The &#39;faster&#39; the lens, the more &#39;quickly&#39; rays of light converge, the larger the lens relative to focal length, the smaller the spot.

Real lenses are limited to an f-number of approximately 0.5 - a convergence of 45degrees.

Thus, for laser cutters, the workpiece should be approximately as close as the lens is wide.'
_image "./_lib/zSPECIAL-images/images-illustrated/numericalAperture.png" "250px"



_heading3 'Collimated Displays'

_t 'Heads up displays, and red dot sights, focused at infinity, project collimated light back to the user. As an example, light from a far away star 
is effectively a beam of light from a particular direction. Collimated sights create beams of light aimed back at the user from the direction they are pointed, creating the illusion of a far away star, exactly where they are pointed (ie. a red dot).'


_heading3 'Telescopes'

_t 'Telescopes are just beam expanders used in reverse. Objects far away are seen as beams of light from different directions. By shrinking the diameter of the beam, geometrically, the angles of incoming beams of light are exaggerated.

Telescope magnification is given as the ratio of focal lengths of the objective and eyepiece. Telescope objective and eyepiece are spaced at exactly their combined focal lengths.

Telescope (and also camera) angular resolution is equal to wavelength divided by objective diameter.

In reverse, as beam expanders, telescopes can reduce the angles of outgoing beams. Thus, starting with a larger beam of light usually results in lower divergence overall. This is one reason optical communications links involve telescopes at both ends, including proposed interstellar communication systems.'
















