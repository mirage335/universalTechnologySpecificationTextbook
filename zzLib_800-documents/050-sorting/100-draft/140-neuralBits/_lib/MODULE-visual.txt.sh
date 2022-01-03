
_heading2 'Visual Transmitter (Neural, Display Panel, Combined)'
_t 'Visual and auditory inputs have exceptionally high spatial resolution requirements - especially for developers reading much text, pilots using traditional flight decks, anyone examining large areas of terrain, etc. Combination of both neural interface and external LCD/OLED/LED panels may be necessary to adequately mitigate fatigue.'
_
_t ' '
_ _t ' WARNING: Foveated compression 10x is implausibly far beyond highly lossy, at maximum limit of possibility.'
_ _e_ foveatedCompression=10
_ _e_ ' desiredPixels=$(_clc "(7680*4320*2) / $foveatedCompression")'
_ _o_ _safeEcho_newline 'desiredPixels=' "$desiredPixels"
_ ' ' # WARNING: Based on extensive experience with VR headset displays, and especially more rapid pointing by visual feedback. Extreme skilled due diligence required to adjust.
_e_ foveatedDimension_8kPanel=0.15
_i foveatedDimension_4kPanel=0.4
_i foveatedDimension_1080pPanel=1.0
_e_ ' desiredPixels=$(_clc "( ((7680*4320*2) * ( $foveatedDimension_8kPanel )^2 ) + ((3840*2160*2) * ( $foveatedDimension_4kPanel )^2 ) + ((1920*1080*2) * ( $foveatedDimension_1080pPanel )^2 ) ")'
_o_ _safeEcho_newline 'desiredPixels=' "$desiredPixels"
_
_heading3 'Retina, Optic Nerve, Optic Tracts, Neocortex (Combined Neural Interface)'
_t 'Human fatigue plausibly degrades retina conversion of, and ocular focusing of, light photons. Pure neural interface for visual sensory input could at least improve on, if not bypass, such significant aberrations. Spatial resolution must be much greater than best-case human vision to avoid worsening neocortex fatigue.

Combined optic nerve and &#39;visual cortex&#39; cerebral neocortex seem optimistically barely adequate. Retina electrical (non-photon) stimulation seems negligible. Dubiously, dense ES arrays deeply within other optic tracts of long axons may suffice.

Expect total bandwidth ~100Mbit, more definitely <1Gbit .

Calibration of stimulation only ES exact precept type and relative location is by neural decoder or ordered RPT correlation from a much lower resolution more &#39;general purpose&#39; ES array (ie. &#34;totalES&#34;) in neocortex. Usually, a much lower spatial resolution neural interface is expected to suffice for reading or writing connectome and synaptic weights (somewhat indirectly), while stimulating specific precepts is expected to always require a spatial resolution (directly) higher than entire sensory input.

Electrodes for stimulationES are reasonably assumed to use ~20um pitch and area of ~5um * ~10um .

Retina stimulationES are optimistically assumed to use a flat surface of electrodes at 20um pitch as a 1cm^2 flat chip similar to in-vitro MEA, with no perceptual compression benefit, providing 250000px.

Optic nerve stimulationES optimistically assumed constrained by occupied space rather than collateral tissue damage (with axons being pushed aside instead of destroyed by needle). A 50um surface spacing between threads is optimistically assumed to allow 5um diameter electrodes to expand nerve diameter ~1%, optimistically assumed close to acceptable.

Optic tracts (mostly aka. &#39;optic radiations&#39;) are other axons assumed anatomically similar to optic nerve.

'
_
_
_ ' ' # TODO: Future Work: variable statements with descriptions instead of numbers and equations
_t ' WARNING: More &#39;perceptualCompression&#39; reliance may incur computationally prohibitive iterative calibration.'
_e_ perceptualCompression=10
_e_ stimulationES_diameter=0.005
_
_t ' '
_e_ retina_pixels=250000
_
_t ' '
_ mm
_e_ opticNerve_threadSpacing=0.050
_e_ opticNerve_thickness=1
_e_ opticNerve_length=25
_e_ opticNerve_electrodesPerThread=50
_e_ ' opticNerve_expansion=$(_clc "($stimulationES_diameter ^2) / ($opticNerve_threadSpacing^2)")'
_o_ _safeEcho_newline 'opticNerve_expansion=' "$opticNerve_expansion"
_e_ ' opticNerve_stimulationES=$(_clc "( ( $opticNerve_thickness / $opticNerve_threadSpacing )^2 ) * $opticNerve_length * $opticNerve_electrodesPerThread")'
_e_ ' opticNerve_pixels=$(_clc "$opticNerve_stimulationES * $perceptualCompression")'
_o_ _safeEcho_newline 'opticNerve_pixels=' "$opticNerve_pixels"
_
_t ' '
_ mm
_e_ opticTracts_threadSpacing=0.050
_e_ opticTracts_thickness=3
_e_ opticTracts_length=25
_e_ opticTracts_electrodesPerThread=50
_e_ ' opticTracts_expansion=$(_clc "($stimulationES_diameter ^2) / ($opticTracts_threadSpacing^2)")'
_o_ _safeEcho_newline 'opticTracts_expansion=' "$opticTracts_expansion"
_e_ ' opticTracts_stimulationES=$(_clc "( ( $opticTracts_thickness / $opticTracts_threadSpacing )^2 ) * $opticTracts_length * $opticTracts_electrodesPerThread")'
_e_ ' opticTracts_pixels=$(_clc "$opticTracts_stimulationES * $perceptualCompression")'
_o_ _safeEcho_newline 'opticTracts_pixels=' "$opticTracts_pixels"
_
_t ' '
_e_ totalES=3000000
_e_ relevantNeuronsPerDesiredNeuron=0.05
_e_ ' neocortex_pixels=$(_clc "$totalES * $relevantNeuronsPerDesiredNeuron * $perceptualCompression")'
_o_ _safeEcho_newline 'neocortex_pixels=' "$neocortex_pixels"
_
_t ' '
_o_ _safeEcho_newline 'desiredPixels=' "$desiredPixels"
_e_ ' observedPixels=$(_clc "$retina_pixels + $opticTracts_pixels + $neocortex_pixels")'
_o_ _safeEcho_newline 'observedPixels=' "$observedPixels"
_ _page ' ' ###
_heading3 'Display Panel (Repurposing neuralBits as Improved Graphical Display Addressing)'
_t 'Visual stimulation by external LCD/OLED/LED display panels, supplementing or improving neural interface spatial resolution, may use the same addressing/multiplexing/compression components usable for direct neural interfaces. Particularly useful for upgrading existing headsets with higher resolution panels, intra-ocular retina implant, or bypassing the limitations of DisplayPort/SteamVR hardware/software (ie. by compression/USB3).

Auditory stimulation is already trivial - at least if proper care is taken to flatten apparent frequency response.


Hard > Frame > Packet+infinityBits > Backhaul > Codec > ActiveMatrix > LCD/OLED/LED > Lens > Wet-Retina


Unusually, codec may use IIR filters and differences from neighboring pixels.

'
_
_ 'ATTENTION: Although 60Hz is very much adequate, longer term the VR display must seem &#39;invisible&#39; to users in all practical situations (no commonly observable artifacts, even when specifically looked for). Refresh rates >240Hz <360Hz may be necessary.'
_e_ codecCompression=10
_e_ ' bandwidth=$(_clc "( $desiredPixels * 24 * 180 ) / $codecCompression ")'
_o_ _safeEcho_newline 'bandwidth=' "$bandwidth"






 
