
_picture zEXCERPTED-diagram-picture.png 380px
_heading3 'Backhaul, Trestle, Bundle, Thread, ES'
_t 'Backhaul --> Trestle --> Bundle --> Thread --> ES

Threads carry at least ES (Electrode Sites - microelectrodes or equivalent optical emitters/sensors, etc).

More hardware (eg. Codec, ADC, Amplifier, ActiveMatrix) may be placed as close as possible to ES, to the point of these components being on threads, or at junction between threads/bundles. Otherwise, many layers of 1um traces may connect more bulky components directly to ES. Impedance of 1um traces may be ~100kOhm (similar to ES), which may increase power consumption (especially for stimulation), degrade signal/noise, or inconveniently enlarge PCB layout designs.

'
_heading3 'Estimate - Geometry (Trestles,Bundles,Threads,totalES), Transmission Lines, Bandwidth' 
_t 'Bandwidth, codec, and analog circuitry requirements may be much lower for neural interfaces intended only to record activity for connectome and synaptic weights correlation - scanning relatively small &#39;observed areas&#39; of neocortex by multiplexing ES with ActiveMatrix.)

Trestle, bundle, thread, and ES, quantities may be slightly smaller (eg. &#39;45&#39; instead of &#39;50&#39;) due to manufacturing margin requirements at edges.

Mismatch between postulated values here or elsewhere may occur due to new publications or experiments suggesting slightly different neuron electrical characteristics, sightly different plausible electronic component capability, slightly different plausible tissue collateral damage acceptability, etc.

'

_cells_begin '100%'

_cells_row_begin
_cells_speck_begin '1%'
_t 'Chosen'
_cells_speck_end
_cells_row_end

_cells_row_begin
_cells_speck_begin '1%'
_t 'Geometry'
_cells_speck_end

_cells_speck_begin
_ _t 'Length (cm)'
_e_ 'length_cm=10'
_cells_speck_end
_cells_speck_begin
_ _t 'Width (cm)'
_e_ 'width_cm=10'
_cells_speck_end
_cells_speck_begin
_ 'Length of thread (usually).'
_ _t 'Depth (mm)'
_e_ 'depth_mm=2.5'
_cells_speck_end
_cells_speck_begin
_ 'Number of ES per thread (usually).'
_ _t 'Depth (ES)'
_e_ 'depth_es=25'
_cells_speck_end
_cells_speck_begin
_ 'Approximates diameter to square prism instead of cylinder (reasonable estimate).'
_ _t 'Needle (um)'
_e_ 'needle_um=100'
_cells_speck_end
_cells_speck_begin
_ 'Similar to electrode width (usually).'
_ _t 'Thread (um)'
_e_ 'thread_um=25'
_cells_speck_end
_cells_row_end

_cells_row_begin
_cells_speck_begin
_t ' '
_cells_speck_end
_cells_speck_begin '' '2'
_e_ 'trestleGap_cm=$(_clc "0.2")'
_cells_speck_end
_cells_speck_begin '' '2'
_e_ 'bundleGap_cm=$(_clc "0.2")'
_cells_speck_end
_cells_speck_begin '' '2'
_e_ 'threadGap_um=325'
_cells_speck_end
_cells_row_end


_cells_row_begin
_cells_speck_begin '1%'
_t 'Bandwidth'
_cells_speck_end

_cells_speck_begin '' '2'
_e_ eventRatePerES=50
_cells_speck_end

_cells_speck_begin '' '2'
_ 'Not strictly equal to ADC sampling rate, only the precision of the event time as used by codec.'
_e_ rawSampRate=7000
_cells_speck_begin '' '2'
_e_ compressSampRate=50
_cells_speck_end
_cells_row_end


_cells_row_begin
_cells_speck_begin '1%'
_t 'TransmissionLines'
_cells_speck_end

_cells_speck_begin '' '3'
_ 'Frequency, not baud. Reasonably assume baud will equal frequency due to constraints on clock distribution, clock rates, circuitry, and power consumption (ie. line coding requiring substantial hardware or higher frequencies such as multi-level signaling or phase-shift-keying may not be practically useful).'
_ 'Low frequencies limits may be imposed by power consumption - all circuitry sharing a bus may use this same frequency as a clock (ie. translating between clocks may incur much more power consumption than justified by an increased number of transmission lines).'
_ 'If synchronous with raw analog to codec connections (ie. used as ADC/DAC/codec clock), may require frequency higher than maximum rawSampRate multiplied by maximum ADCbitDepth and/or maximum DACbitDepth . '
_ _i transmissionLineMaxFreq=200000000
_ _i transmissionLineMaxFreq='$(_clc "200000 * 5")'
_ _i transmissionLineMaxFreq='$(_clc "10000000 * 5")'
_ _o _messagePlain_probe_var transmissionLineMaxFreq
_e_ transmissionLineMaxFreq="25000000"
_cells_speck_end
_cells_row_end


_cells_row_begin
_cells_speck_begin '1%'
_t 'Analog'
_cells_speck_end

_cells_speck_begin '' '2'
_e_ ADCbitDepth=4
_cells_speck_end
_cells_speck_begin '' '2'
_ 'May be constructed as two separate 4bit R2R DACs to ensure zero output (ie. midpoint) when disabled.'
_e_ DACbitDepth=5
_cells_speck_end
_cells_row_end

_cells_end


_t '

'

_ 'Parallel needle arrays (even in very small numbers) with pneumatic force may significantly improve &#39;needleHours&#39; , at least where significant blood vessels are mostly absent .'
_i secondsPerThread=2
_i needlesParallel=1

_ _o_ _safeEcho_newline 'rBandwidthPerES=' "$rBandwidthPerES"' , ''cBandwidthPerES=' "$cBandwidthPerES"

_ 'ATTENTION: Somewhat arbitrary tradeoffs with &#39;timeBitDepth&#39; and &#39;locationBitDepth&#39; .'
_i timeBitDepth='$(_clc "ceil(solve(2^\"timeBitDepth\" == ($rawSampRate / $compressSampRate) , \"timeBitDepth\" ))")'
_i locationBitDepth='$(_clc "ceil(solve(2^\"locationBitDepth\" == ($depth_es) , \"locationBitDepth\" ))")'
_ _o_ _safeEcho_newline 'timeBitDepth=' "$timeBitDepth"' , ''locationBitDepth=' "$locationBitDepth"

_ _o_ _safeEcho_newline 'secondsPerThread=' "$secondsPerThread"' , ''needlesParallel= '"$needlesParallel"

_ 'Optional or prototype only, may be negligible. Not usually mentioned or at all part of any calculations.'
_ _e_ durationBitDepth='$(_clc "ceil(solve(2^\"durationBitDepth\" == ($rawSampRate / $compressSampRate) , \"durationBitDepth\" )")'
_ _o_ _safeEcho_newline 'durationBitDepth=' "$durationBitDepth"
_ _e_ sortingBitDepth=4
_i durationBitDepth='$(_clc "ceil(solve(2^\"durationBitDepth\" == ($rawSampRate / $compressSampRate) , \"durationBitDepth\" ))")'
_i sortingBitDepth=4
_ _o_ _safeEcho_newline 'durationBitDepth=' "$durationBitDepth"' , ''sortingBitDepth=' "$sortingBitDepth"
_cells_begin '100%'

_cells_row_begin
_cells_speck_begin '1%'
_t 'Inferred'
_cells_speck_end
_cells_row_end

_cells_row_begin
_cells_speck_begin '1%'
_t 'Geometry'
_cells_speck_end

_cells_speck_begin '225px'
_i totalTrestle='$(_clc "$width_cm / $trestleGap_cm")'
_o_ _safeEcho_newline 'totalTrestle=' "$totalTrestle"
_cells_speck_end
_cells_speck_begin '225px'
_i totalBundle='$(_clc "( $length_cm / $bundleGap_cm ) * $totalTrestle")'
_o_ _safeEcho_newline 'totalBundle=' "$totalBundle"
_cells_speck_end
_cells_speck_begin '225px'
_i totalThread='$(_clc "floor( ( $length_cm centimeter * $width_cm centimeter ) / ( $threadGap_um micrometer )^2 )")'
_o_ _safeEcho_newline 'totalThread=' "$totalThread"
_cells_speck_end
_cells_speck_begin '225px'
_i totalES='$(_clc "( $totalThread * $depth_es")'
_o_ _safeEcho_newline 'totalES=' "$totalES"
_cells_speck_end
_cells_row_end

_cells_row_begin
_cells_speck_begin '1%'
_t ' '
_cells_speck_end
_cells_speck_begin
_i needleHours='$(_clc "ceil($secondsPerThread * $totalThread * 2 / 3600 / $needlesParallel)")'
_o_ _safeEcho_newline 'needleHours=' "$needleHours"
_cells_speck_end
_cells_speck_begin
_i totalExpansion='$(_clc "ceil( ( ( ($thread_um micrometer )^2) * $totalThread ) / ( $length_cm centimeter * $width_cm centimeter ) )")'
_ _o_ _safeEcho_newline 'totalExpansion=' "$totalExpansion"
_o_ _safeEcho_newline 'totalExpansion=' '$(_clc "$totalExpansion * 100")' '%'
_cells_speck_end
_cells_speck_begin
_i totalCollateral='$(_clc "ceil( ( ( ($needle_um micrometer )^2) * $totalThread ) / ( $length_cm centimeter * $width_cm centimeter ) )")'
_ _o_ _safeEcho_newline 'totalCollateral=' "$totalCollateral"
_o_ _safeEcho_newline 'totalCollateral=' '$(_clc "$totalCollateral * 100")' '%'
_cells_speck_end

_cells_row_end

_cells_row_begin
_cells_speck_begin '1%'
_t ' '
_cells_speck_end
_cells_speck_begin
_i densityES_cm='$(_clc "( sqrt( ($totalES / ($length_cm centimeter * $width_cm centimeter) ) * centimeter * centimeter ) )")'
_o_ _safeEcho_newline 'densityES_cm=' '$(_safeEcho_newline "$densityES_cm" | head -c10)'
_cells_speck_end
_cells_speck_begin
_i densityES_mm='$(_clc "( sqrt( ($totalES / ($length_cm centimeter * $width_cm centimeter) ) * centimeter * centimeter ) ) * ( millimeter / centimeter )")'
_o_ _safeEcho_newline 'densityES_mm=' '$(_safeEcho_newline "$densityES_mm" | head -c10)'
_cells_speck_end
_cells_speck_begin
_i densityES_um='$(_clc "( sqrt( ($totalES / ($length_cm centimeter * $width_cm centimeter) ) * centimeter * centimeter ) ) * ( micrometer / centimeter )")'
_o_ _safeEcho_newline 'densityES_um=' '$(_safeEcho_newline "$densityES_um" | head -c10)'
_cells_speck_end
_ 'WARNING: Internal test. Something would be very wrong if &#39;density_thread&#39; did not equal &#39;depth_es&#39; .'
_ _cells_speck_begin
_i density_thread='$(_clc "round(($densityES_um*$threadGap_um)^2)")'
_ _o_ _safeEcho_newline 'density_thread=' "$density_thread"
_ _cells_speck_end
_cells_row_end



_cells_row_begin
_cells_speck_begin '1%'
_t 'BW (raw)'
_cells_speck_end


_i rBandwidthPerES='$(_clc "$rawSampRate * $ADCbitDepth" )'
_cells_speck_begin
_i rBackhaul='$(_clc "($rBandwidthPerES * $totalES)")'
_ _o_ _safeEcho_newline 'rBackhaul=' "$rBackhaul"
_o_ _safeEcho_newline 'rBackhaul=' '$(_clc "$rBackhaul * 0.001 * 0.001 * 0.001 ")' 'Gb/s'
_cells_speck_end
_cells_speck_begin
_i rTrestle='$(_clc "($rBandwidthPerES * $totalES ) / $totalTrestle")'
_ _o_ _safeEcho_newline 'rTrestle=' "$rTrestle"
_o_ _safeEcho_newline 'rTrestle=' '$(_clc "$rTrestle * 0.001 * 0.001 ")' 'Mb/s'
_cells_speck_end
_cells_speck_begin
_i rBundle='$(_clc "($rBandwidthPerES * $totalES ) / $totalBundle")'
_ _o_ _safeEcho_newline 'rBundle=' "$rBundle"
_o_ _safeEcho_newline 'rBundle=' '$(_clc "$rBundle * 0.001 ")' 'Kb/s'
_cells_speck_end
_cells_speck_begin
_i rThread='$(_clc "($rBandwidthPerES * $totalES ) / $totalThread")'
_ _o_ _safeEcho_newline 'rThread=' "$rThread"
_o_ _safeEcho_newline 'rThread=' '$(_clc "$rThread * 0.001 ")' 'Kb/s'
_cells_speck_end
_cells_row_end


_i cBandwidthPerES='$(_clc "$eventRatePerES * ( $timeBitDepth + $locationBitDepth )" )'
_cells_row_begin
_cells_speck_begin '1%'
_t 'BW (compress)'
_cells_speck_end

_cells_speck_begin
_i cBackhaul='$(_clc "($cBandwidthPerES * $totalES)")'
_ _o_ _safeEcho_newline 'cBackhaul=' "$cBackhaul"
_o_ _safeEcho_newline 'cBackhaul=' '$(_clc "$cBackhaul * 0.001 * 0.001 * 0.001 ")' 'Gb/s'
_cells_speck_end
_cells_speck_begin
_i cTrestle='$(_clc "($cBandwidthPerES * $totalES ) / $totalTrestle")'
_ _o_ _safeEcho_newline 'cTrestle=' "$cTrestle"
_o_ _safeEcho_newline 'cTrestle=' '$(_clc "$cTrestle * 0.001 * 0.001 ")' 'Mb/s'
_cells_speck_end
_cells_speck_begin
_i cBundle='$(_clc "($cBandwidthPerES * $totalES ) / $totalBundle")'
_ _o_ _safeEcho_newline 'cBundle=' "$cBundle"
_o_ _safeEcho_newline 'cBundle=' '$(_clc "$cBundle * 0.001 ")' 'Kb/s'
_cells_speck_end
_cells_speck_begin
_i cThread='$(_clc "($cBandwidthPerES * $totalES ) / $totalThread")'
_ _o_ _safeEcho_newline 'cThread=' "$cThread"
_o_ _safeEcho_newline 'cThread=' '$(_clc "$cThread * 0.001 ")' 'Kb/s'
_cells_speck_end
_cells_row_end


_cells_row_begin
_cells_speck_begin '1%'
_t 'T&nbsp;Lines&nbsp;(raw)'
_cells_speck_end
_cells_speck_begin
_i rlBackhaul='$(_clc "$rBackhaul / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'rlBackhaul=' "$rlBackhaul"
_cells_speck_end
_cells_speck_begin
_i rlTrestle='$(_clc "$rTrestle / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'rlTrestle=' "$rlTrestle"
_cells_speck_end
_cells_speck_begin
_i rlBundle='$(_clc "$rBundle / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'rlBundle=' "$rlBundle"
_cells_speck_end
_cells_speck_begin
_i rlThread='$(_clc "$rThread / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'rlThread=' "$rlThread"
_cells_speck_end


_cells_row_begin
_cells_speck_begin '1%'
_t 'T&nbsp;Lines&nbsp;(compress)'
_cells_speck_end
_cells_speck_begin
_i clBackhaul='$(_clc "$cBackhaul / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'clBackhaul=' "$clBackhaul"
_cells_speck_end
_cells_speck_begin
_i clTrestle='$(_clc "$cTrestle / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'clTrestle=' "$clTrestle"
_cells_speck_end
_cells_speck_begin
_i clBundle='$(_clc "$cBundle / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'clBundle=' "$clBundle"
_cells_speck_end
_cells_speck_begin
_i clThread='$(_clc "$cThread / $transmissionLineMaxFreq")'
_o_ _safeEcho_newline 'clThread=' "$clThread"
_cells_speck_end



_cells_row_end



_cells_row_begin
_cells_speck_begin '1%'
_t 'Analog'
_cells_speck_end

_cells_speck_begin '' '2'
_i rampFrequencyADC='$(_clc "$rawSampRate * 2^( $DACbitDepth )")'
_o_ _safeEcho_newline 'rampFrequencyADC=' "$rampFrequencyADC"
_cells_speck_end
_cells_row_end

_cells_end
_o_ _safeEcho_newline 'rBandwidthPerES=' "$rBandwidthPerES"' , ''cBandwidthPerES=' "$cBandwidthPerES"

_o_ _safeEcho_newline 'timeBitDepth=' "$timeBitDepth"' , ''locationBitDepth=' "$locationBitDepth"

_o_ _safeEcho_newline 'secondsPerThread=' "$secondsPerThread"' , ''needlesParallel= '"$needlesParallel"





_t '

'


_t 'Both receive and transmit (ie. stimulation) bandwidth will be half-duplex near equal (worst case). Usually a neural interface will either mostly receive (ie. receive activity for correlation of connectome and synaptic weights), or mostly transmit (ie. transmit sensory precepts and receive minimal voluntary/motor output).

SerDes reduces transmission lines to <40 for external connection. Increasing transmission line frequency to remove the need for SerDes may severely increase power consumption, among other problems, especially for interfaces with many &#39;totalES&#39;.'

























