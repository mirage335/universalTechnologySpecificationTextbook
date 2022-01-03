_heading3 'Frame, Packet, Counter, Bitmask, ActiveMatrix'
_t '
Frame is a combination of packets, possibly with a &#39;magic number&#39; as a &#39;MAC address&#39; and a specified number of bits. Frames are transferred at very high bandwidth and may follow a defacto standard (eg. Ethernet, CSI/DSI, existing LVDS) or no standard (eg. USB3 FPGA GPIO) .

Packets are addressed to specific components (eg. Codec, ADC, DAC, ActiveMatrix) or groups of components (all components if a complete list of neural received/transmit spikes/pulses). Address space either 24bit or 48bit.

Counter takes a specified &#39;??&#39; number of bits, then forwards subsequent &#39;infinityBits&#39;, similar to many &#39;addressable LED pixels&#39;.

Bitmask control of many separate ActiveMaxtrix addressed through a Counter is an example that a slowly clocked bus may at negligible component count, bandwidth, and power consumption, reprogram any Codec, DAC, ADC, ActiveMatrix (multiplexing), etc. As usual, no Turing completeness.

Hard > Frame > Packet+infinityBits > Backhaul > [ Codec > ??bits+infinityBits > Counter > DAC-LF > ^Bitmask > Counter > ActiveMatrix > MeshElectrode ] > Thread > [ Trace > MeshElectrode ] + [ Codec > ??bits+infinityBits > Counter > DAC-LF > ^Bitmask > Counter > ActiveMatrix > MeshElectrode ] > Wet-Needle

Hard < Frame < Packet+infinityBits < Backhaul < [ Codec < ??bits+infinityBits < Counter < ADC-LF < ^Bitmask < Counter < ActiveMatrix < MeshElectrode ] < Thread < [ Trace < MeshElectrode ] + [ Codec < ??bits+infinityBits < Counter < ADC-LF < ^Bitmask < Counter < ActiveMatrix < MeshElectrode ] < Wet-Needle

Example only, illustrating many plausible concepts. Other arrangements may be preferable.

' 
