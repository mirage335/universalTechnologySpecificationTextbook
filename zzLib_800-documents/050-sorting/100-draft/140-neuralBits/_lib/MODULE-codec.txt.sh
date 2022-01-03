_heading2 'Codec'
_t 'Codec reduces bandwidth from analog &#39;audio&#39; waveforms to mere lists of nerual spike events and pulse stimulations . Latency of 100ms acceptable. Logic circuitry must minimize footprint and power consumption - expect at least one codec per bundle.'
_
_heading3 'Transmitter'
_
_t '
List of pulse stimulation time, location, amplitude (optional), duration (dubious). Amplitude may be omitted if default, or incremental from a previous value with a &#39;magic number&#39; reset to zero.'
_
_heading3 'Receiver'
_
_t 'Spike mess. Accumulates buffer of events, appends a unique identifier. Unique identifier length is ceil(solve(2^&#34;messBitDepth&#34; == &#34;totalES&#34; / &#34;numberOfES&#34;, &#34;messBitDepth&#34;)) .

Single events (spike time, location, duration, sorting) detected by band-pass, hysteresis, three &#39;tap&#39; FIR cross-correlation, etc. Stores one value with fields indicating number of samples before a spike occurred and which electrode site.
 Time field bit depth is ceil(solve(2^&#34;timeBitDepth&#34; == &#34;rawSampleRate&#34; / &#34;compressedSampleRate&#34;, &#34;timeBitDepth&#34;)) .
 Location field bit depth is ceil(solve(2^&#34;locationBitDepth&#34; == &#34;numberOfES&#34;, &#34;locationBitDepth&#34;)) .
 Duration field bit depth (aka. &#34;durationBitDepth&#34;) optionally is (&#34;durationBitDepth&#34; == &#34;timeBitDepth&#34; ) .
 Sorting field bit depth (aka. &#34;sortingBitDepth&#34;) is arbitrary, prototype only, possibly an amplitude 4bit (4uV-128uV) peak value.

Multiple codecs may send a spike mess to a shared bus by waiting for the preceding codec to finish transmitting.



Prototypes may optionally interleave additional compressed (or raw) data.

*) Two band amplitude of frequency (IIR filter bank). May reduce bandwidth from 7kHz to 300Hz@<100%bitDepth (high-pass amplitude) plus 30Hz@100%bitDepth (low-pass amplitude) .

*) Spike count. Accumulates number of spikes in an output cycle. May reduce bandwidth from 7kHz to 300Hz@4bit or 300Hz@2bit (depending on maximum count per output cycle) .



If differential analysis (eg. spike waveforms from the same neuron across different axes between pairs of ES) is practically useful (ie. due to insufficient spatial resolution due to insufficient &#34;totalES&#34; ), some experimentation (ie. with prototype) analyzing and comparing analog waveforms may be necessary to improve compressed data interpretation.'
