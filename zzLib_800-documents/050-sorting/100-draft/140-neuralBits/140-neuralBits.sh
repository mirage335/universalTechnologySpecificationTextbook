#!/usr/bin/env bash

# Dependencies.
# May need 'ubiquitous_bash.sh" in "$PATH".
# GNU Octave, Qalculate - usually dependency of 'calculator' scripts
# recode - usually dependency of 'markup documentation' scripts
# wkhtmltopdf - may be necessary for accurate conversion from HTML to PDF

# NOTICE: README !
# 
# 
# 
# NOTICE: README !

# CAUTION: As a user, you should have been provided a virtual machine or cloud services to run this script - 'ubiquitous bash' provides functions to ease the use of either and both. An SELinux, AppArmor, unprivileged ChRoot, or similar context may be acceptable as well. Routinely modifying, sharing, and running code, may otherwise put both users and organizations at possibly unnecessary risk.


# Copyright and related rights only waived via CC0 if all specified conditions are met.
# *) EITHER, a single file directly output from 'scriptedIllustrator' (which is GPLv3 licensed), OR, not otherwise claimed under other any copyright license.
# *) Is a documentation script including this message which also predominantly creates or represents markup (eg. 'scriptedIllustrator.sh', 'scriptedIllustrator.html', 'scriptedIllustrator.mediawiki.txt').
# *) NOT part of a program to compress, embed, and assemble, functions and other code (waiver does NOT apply to 'tinyCompiler_scriptedIllustrator.sh' ).

# To the extent possible, related software (ie. 'tinyCompiler_scriptedIllustrator.sh' from 'scriptedIllustrator') remains otherwise copyrighted (ie. GPLv3 license).
# Specifically, please do not use 'scriptedIllustrator' code to distribute unpublished proprietary means of creating 'current_internal_CompressedFunctions' .
# Specifically, please do not misconstrue this copyright waiver to negate any copyright claimed when such a documentation script is part of another project or another copyright notice is present (ie. 'otherwise claimed').

# 'For the avoidance of doubt, any information that you choose to store within your own copy' ... 'remains yours' ... 'using' ... 'to publish content doesn't change whatever rights you may have to that content.'
# Although this project has no relation to TiddlyWiki, as stated above, vaguely similar copyright principles are expected to apply. - https://tiddlywiki.com/static/License.html

#__README_uk4uPhB663kVcygT0q_README__


_document_collect() {
# NOTICE: COLLECT

_findConsolidate_procedure() {
	local current_consolidateScriptFilename
	current_consolidateScriptFilename="$2"
	[[ "$current_consolidateScriptFilename" == "" ]] && current_consolidateScriptFilename='consolidateVariables.sh'
	
	[[ "$ub_findConsolidate_maxheight" -gt "120" ]] && return 1
	let ub_findConsolidate_maxheight="$ub_findConsolidate_maxheight"+1
	export ub_findConsolidate_maxheight
	
	if [[ -e ./"$current_consolidateScriptFilename" ]]
	then
		_getAbsoluteLocation ./"$current_consolidateScriptFilename"
		#_getAbsoluteFolder ./"$current_consolidateScriptFilename"
		return 0
	fi
	
	[[ "$1" == "/" ]] && return 1
	
	! cd .. > /dev/null 2>&1 && return 1
	
	_findConsolidate_procedure "$@"
}
_findConsolidate() {
	local localFunctionEntryPWD
	localFunctionEntryPWD="$PWD"
	
	cd "$1"
	
	_findConsolidate_procedure "$@"
	
	cd "$localFunctionEntryPWD"
}
export current_consolidateVariables_script=$(_findConsolidate "$scriptAbsoluteFolder")
( [[ "$current_consolidateVariables_script" == "" ]] || [[ ! -e "$current_consolidateVariables_script" ]] ) && exit 1

#source <( "$scriptAbsoluteFolder"/./../?????/?????.sh )
source <( "$current_consolidateVariables_script" )

#$zzLib_800_documents="$current_consolidateVariables_script"
#$zzLib_895_reference








export fromDocuments_boilerplateDisclaimer=$(cat "$zzLib_800_documents_____boilerplate_____disclaimer")



export fromSelfFolder_something_pseudocode=$(cat "$scriptLib"/something_pseudocode.cpp 2>/dev/null)

export fromSelfFolder_errata=$(cat "$scriptLib"/REVIEW-errata.txt 2>/dev/null)















# NOTICE: COLLECT
}



_document_main() {
#a
#b
# NOTICE: DOCUMENT
#__HEADER_uk4uPhB663kVcygT0q_HEADER__
_ _o date --iso-8601
_o_ _safeEcho_newline "$fromDocuments_boilerplateDisclaimer"
_ _v "$fromDocuments_boilerplateDisclaimer"
_heading1 'neuralBits'
_t 'Software frames and packets to hardware transistor logic to wetware neuron action potentials. Down to flexible PCB layout, SerDes chips, multiplexed addressable ADC/DAC, amplifiers. No Turing completeness.

Commercially economical (cost effective for all living sentient beings) &#39;whole-brain&#39 brain computer interfaces are now feasible. Immediate applications include low-cost &#39;Virtual Reality&#39; (ie. human) habitat, &#39;Virtual Reality&#39; assisted software/hardware design, &#39;Virtual Reality&#39; (re)training, &#39;brain upload&#39;, &#39;hive mind&#39;. Accurate neural command entry, memory transfer, virtual perception input, motor output recognition, and sufficient muscle activation suppression are possible.

For plausible software design, Virtual Reality applications can use the simple calibrations of well established &#39;neural decoders&#39; while &#39;brain upload&#39; and &#39;hive mind&#39; connectome and synaptic weights RPT correlation algorithms are available from &#39;cognitionSplicer&#39;.'
_heading2 'Introduction'
_t 'Published hardware designs (eg. &#39;NeuraLink&#39; already have most features. Improving number and density of Electrode Sites is straightforward cost (ie. manufacturability) and wiring (ie. surgical) optimization. Improving long-term stability after implantation, if not already adequate, has been shown entirely possibile by reducing apparent mechanical stiffness (eg. with excellent results known for mesh electrodes).

Keep in mind long-term stability is not essential - &#39;brain upload&#39; once is enough to &#39;save a life&#39; and transfer to more compatible wetware.

State of the art microelectrode arrays have been reviewed, and their principles combined to enumerate some parameters and techniques towards scaling up towards 3 million analog electrodes. Footprints occupied by various components - particularly amplifiers and addressing - are factored into simple equations which are hoped to illustrate some feasibility limits. 

Some sources, quotes, and review of &#39;state of the art&#39; microelectrode arrays (especially &#39;mesh&#39; electrodes) may be included as &#39;errata&#39;.

Urgent consolidation of the most useful design concepts for quick reference during intensive hardware/software/wetware design may postpone a more concise summary of existing science and technology (ie. sources mentioned in &#39;errata&#39;. Perusal of &#39;errata&#39; (with expert assistance if needed) is more strongly recommended than usual if attempting to design prototypes, acknowledge important research, or inform possible stakeholders. Press in particular are reasonably required to exercise extreme due diligence far beyond the apparent norms of their profession, to the point of becoming honest experts, or heavily funding research, theirselves.'
_heading3 'Presented'
_t '*) Component connections - hardware --> backhual packetizer --> codec (optional) --> addressing counters --> ADC/DAC/amplifier --> multiplexing matrix (optional) --> wetware .
*) Transmission line quantity, bandwidth, parametric geometry, calculator table.
*) Visual spatial resolution (particularly extreme and expected unnecessary).
*) Codec, Analog ADC/DAC/Amplifier .
*) Tentative flexible PCB layout.

As may be plausible.

Any terminology introduced is NOT a proposal for external use, and may perhaps provide for internal disambiguation beyond the needs of any professional speciality. External requests to explicitly state a withdraw of any implied proposal for third party naming conventions will be given priority over any internal needs. I have no intention to get in the way of established professional academic researchers by suggesting any change in their terminology.'
_heading2 'Conclusions'
_t 'Commodity components many years old (ie. SerDes chips, USB3 FPGA), corrosion testing, laser cutting, surface coating, <2mil PCB fabrication, atomic-force probe or electron-beam fabrication of minimal surface area CMOS/polyamide packetizing, codec, ADC/DAC, and amplifier circuitry - are sufficient and well within the combined prototyping resources of &#39;makerspace&#39;, &#39;hackerspace&#39;, and &#39;biohacking&#39; communities today. A combined community open-source effort could overcome this hurdle independently.

Extracting whole-brain neural tissue samples is not complicated and has long already been widely available at low-cost (eg. from &#39;Brain Bits LLC&#39;).

Most imperative is to get software/hardware developers read-write access to all essential parts of their own neural tissue. Expect that developers and their sponsors will be and absolutely must be first and unfettered.

Low spatial resolution of neural interface limiting the resolution of objects for &#39;brain uploading&#39; purposes may be compensated by VR retraining. Developers may urgently need unfettered read-write access and exocortex software/wetware/hardware specifically to rapidly identify and correct any severe qualitative deficiencies which substantially lengthen or prevent VR retraining.


Scaling to 3million analog electrodes (across the entire neocortex) is feasible and a desirable performance benchmark.

Scaling to several million electrodes write-only across the entire visual system - including inputs along the length of the entire optic nerve and surface of the entire visual cortex - is feasible but possibly challenging enough to justify some short-term continued use of a conventional LCD/OLED/LED &#39;display&#39; panels. Assuming better than 10x compression of electrodes connected to precepts, to perceived equivalent &#39;pixel&#39; resolution may be a risky assumption.

Resolution beyond expected 0.1mm/1% may be beyond point of diminishing returns.

Recording sites for &#39;brain uploading&#39; ordered by expected priority at 0.1mm/1% (neural processing cell/axon) or >100% (nerve/vertebrae transmission) - inferior temporal gyrus, corpus callosum, entire temporal lobe, somatosensory cortex, prefrontal cortex, hippocampus, entire neocortex, entire amygdala, vertebrae, glossopharyngeal nerve, vestibulocochlear nerve (inertial cues), olfactory nerve, terminal nerve (uncertain), trigeminal nerve (possibly magnetic cues), remaining cranial/peripheral nerves, all nerve endings (eg. by &#39;neural dust&#39; in sensory tissue implanted under guidance towards locations causing CNS evoked potentials), all remaining neural tissue.

So called &#39;grandmother cell&#39; research strongly implicates the inferior temporal gyrus of the temporal lobe of the cerebral neocortex. This is particularly strong evidence considering the visual nature of the stimuli considered.'
_page ' ' ###
_heading2 'REFERENCE'
_t 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6914248/
https://www.biorxiv.org/content/10.1101/703801v1.full.pdf
 An Integrated Brain-Machine Interface Platform With Thousands of Channels
	&#39;Neuralink&#39; &#39;System B&#39;
	&#39;192 capacitors&#39; ... &#39;3072&#39;
	&#39;Maximum differential input range, mVPP&#39; ... &#39;7.2mV&#39;
	Graph apparently shows ~60uV high-frequency spikes, <180uV low-frequency local field potentials. A 6uV noise floor seems reasonable, though a 1uV ADC resolution at local field potential frequency (ie. <50Hz) may be useful.
	&#39;Number of Channels&#39; ... &#39;3,072&#39; ... &#39;750mW&#39; ... &#39;(23×18.5×2)mm3&#39;
		sqrt(23000×18500)/sqrt(3072) == 372um * 2000um
	&#39;Polymer threads on parylene-c substrate.&#39;

https://github.com/mirage335/Mirage335BiosignalAmp/blob/master/AmpSpreadsheet.ods

https://www.4pcb.com/trace-width-calculator.html
	&#39;1um&#39 ... &#39;Length 1cm&#39 ... &#39;Resistance 1.32e+5 ohms&#39;

https://www.frontiersin.org/articles/10.3389/fnins.2019.00208/full
https://www.frontiersin.org/articles/10.3389/fnins.2019.00208/full#supplementary-material
 &#39;Single-Cell Electrical Stimulation Using CMOS-Based High-Density Microelectrode Arrays&#39;
	&#39;we were able to stimulate the axon initial segments (AIS) with charges of less than 2 pC&#39; ... &#39;Stimulation signals as low as 70 mV or 100 nA, with pulse durations as short as 18 μs, yielded measurable action potential initiation and propagation.&#39;
	&#39;stimulation frequency was 1 Hz for both modalities&#39;
	&#39;electrode voltage and keeping it significantly below 0.8-1 V to obviate water electrolysis and cell and electrode damage&#39;
	&#39;capacitiance values of ~1.4 nF for Pt-black and ~0.07 nF for bright Pt electrodes&#39;
	&#39;charge needed to evoke APs in current is, indeed, by two orders of magnitude lower than in voltage mode&#39;
	&#39;ammounted to 0.02pC/um^2 with out HD-MEA, while, for example, retinal implants currently work with 3.5pC/um^2&#39; ... &#39;A small size of electrodes and their dense packing may prove beneficial to stimulate neurons and could improve stimulation accuracy of prosthetic implants while enabling lower power consumption.&#39;
	&#39;26,400 bidirectional electrodes at a pitch 0f 17.5um and an electrode area of 5 x 9 um^2&#39;

https://www.ti.com/lit/ds/symlink/iso124.pdf
	&#39;1-pF isolating capacitors&#39; ... &#39;input is duty-cycle modulated and transmitted digitally&#39; ... &#39;ISO124 contains 250 transistors&#39;
	&#39;Noise 4uV*sqrt(Hz)&#39; ... &#39;Output voltage +/-10V&#39;

https://hackaday.io/project/177881-the-transistorpixel
	&#39;TransistorPixel&#39
		Nice demonstration of an addressable pixel using only a small number of discrete transistors.


https://iopscience.iop.org/article/10.1088/1741-2552/aa8b4f/pdf
 A review on mechanical considerations for chronically-implanted neural probes
	&#39;low Young&#39;s modulus polymers&#39; &#39;hard substrates&#39; &#39;variety of means&#39; &#39;reduction&#39; &#39;probe width and thickness&#39; &#39;soft hydrogel coatings&#39; &#39;release in device tethering&#39;
	&#39;temporary stiffness&#39; &#39;buckling&#39; &#39;detailed description&#39;
	&#39;bioresorbable&#39;
	&#39;next generation&#39;







https://www.beis.de/Elektronik/DeltaSigma/DeltaSigma.html
https://en.wikipedia.org/wiki/Voltage-controlled_oscillator

https://www.youtube.com/watch?v=TXtQZQNE_iE


https://hackaday.io/project/28833-microhacks/log/157535-just-how-fast-are-74auc-gates


https://en.wikipedia.org/wiki/Phase-locked_loop#Implementing_a_digital_phase-locked_loop_in_software

https://en.wikipedia.org/wiki/Phase_detector

https://en.wikipedia.org/wiki/Frequency-division_multiple_access


https://avs.scitation.org/doi/10.1116/1.1492700
https://web.archive.org/web/20171113212455/https://avs.scitation.org/doi/10.1116/1.1492700


https://www.hackster.io/news/hello-world-on-the-ultra96-using-vitis-89a06b18fa3a
https://zipcpu.com/blog/2017/10/07/study-interfaces.html
https://hackaday.io/project/8449-hackaday-ttlers/log/147939-ecl-or-ctl-whats-the-fastest-topology-for-discrete-gates-updated


https://hackaday.io/project/8449-hackaday-ttlers/log/147939-ecl-or-ctl-whats-the-fastest-topology-for-discrete-gates-updated


https://en.wikipedia.org/wiki/Multi-gigabit_transceiver
https://en.wikipedia.org/wiki/SerDes


https://www.mouser.com/Semiconductors/Interface-ICs/Serializers-Deserializers-Serdes/_/N-6678u?Rl=6678uZer5jZ1yx761sZ1yxgjx0SGT&Ns=Pricing|0
	DS99R105, DS99R106


https://raspberrypi.stackexchange.com/questions/87846/how-fast-can-gpio-pins-toggle


https://www.daycounter.com/Calculators/Thermal-Noise-Calculator.phtml


https://www.ti.com/lit/an/scaa126/scaa126.pdf
https://web.archive.org/web/20210319195436/https://www.ti.com/lit/an/scaa126/scaa126.pdf
https://www.ti.com/lit/an/scaa126a/scaa126a.pdf


https://en.wikipedia.org/wiki/LVCMOS


https://smile.amazon.com/RotoMetals-Low-Melting-Point-Alloy-Ingot/dp/B001QUVQE2/
https://smile.amazon.com/dp/B001QUXA8M/

https://ece.engin.umich.edu/stories/the-michigan-probe-changing-the-course-of-brain-research


https://hackaday.com/tag/usb-3-0/
	&#39;FX3 is a neat little chip that has a 100-MHz General Programmable Interface (GPIF) bus that basically lets it act like an easy to use FPGA&#39; ... &#39;200 megabytes per second&#39; (1.6Gb/s)

https://en.wikipedia.org/wiki/Optic_radiation
https://www.researchgate.net/figure/The-optic-radiations-ex-vivo-samples-Left-inferior-view-Basal-structures-cortex_fig3_233888164


https://en.wikipedia.org/wiki/IMEC
Sketches presented predate awareness of IMEC&#39;s involvement.
&#39;Neuropixels Technology&#39;
	&#39;The performance of the Neuropixels probes and their potential for transformational neuroscience experiments was described in a November 9, 2017 paper published in Nature.[24] In 2019, The New York Times reported that imec&#39;s Neuropixels technology is widely recognized as the most advanced method of gathering data from brain cells.[25]&#39;
	&#39;Brain-On-Chip Research&#39;
'
_page ' ' ###
source "$scriptLib"/MODULE-conduits.txt.sh
source "$scriptLib"/MODULE-conduits-table_geometryLinesBandwidth.txt.sh
source "$scriptLib"/MODULE-conduits-frame.txt.sh
source "$scriptLib"/MODULE-conduits-pinout.txt.sh
_page ' ' ###
source "$scriptLib"/MODULE-visual.txt.sh
_page ' ' ###
source "$scriptLib"/MODULE-analog.txt.sh
_page ' ' ###
source "$scriptLib"/MODULE-codec.txt.sh
_ _page ' ' ###
_ _heading2 'Something - pseudocode'
_ _o_ _safeEcho_newline "$fromSelfFolder_something_pseudocode"
_ _page ' ' ###
_ _o date --iso-8601
_ _o_ _safeEcho_newline "$fromDocuments_boilerplateDisclaimer"
_ _heading2 'errata'
_ _v "$fromSelfFolder_errata"
#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__
# NOTICE: DOCUMENT
#y
#z
echo -e '\n\n'
}



# NOTICE: Overrides - new functions .


# NOTICE: Overrides - new functions .


#####Functions. Some may be from 'ubiquitous bash' .
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
current_internal_CompressedFunctions_bytes="12593"
current_internal_CompressedFunctions_cksum="1833038819"
current_internal_CompressedFunctions="
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
AAGESf2TBwA/5o/XscRn+wIAAAAABFla"
! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1
source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )
unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
# https://github.com/mirage335/scriptedIllustrator
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
! _tiny_criticalDep && exit 1

# Special Global Variables
_tiny_set_strings


#####Import ( 'ubiquitous bash' ) .
# WARNING: Do NOT invoke complicated 'ubiquitous bash' functions directly (ie. call "ubiquitous_bash.sh" as a binary from PATH instead) .
# WARNING: If '--call' parameter is changed, 'trap' conflict may occur in some functions (ie. ( '_test_default' ) .
# Keeps "$scriptAbsoluteLocation" pointing to this script file (not 'ubiquitous_bash.sh' ), intentionally.
# Import of 'ubiquitous_bash.sh' intended ONLY to provide most recent 'message' and similar functions.
#_messagePlain_probe() { return; }
! type -p "ubiquitous_bash.sh" > /dev/null 2>&1 && exit 1
[[ "$ubiquitousBashID" != "uk4uPhB663kVcygT0q" ]] && exit 1
current_script_path=$(type -p "ubiquitous_bash.sh")
[[ ! -e "$current_script_path" ]] && exit 1
! ls -l "$current_script_path" 2>/dev/null | grep 'ubiquitous_bash.sh$' > /dev/null 2>&1 && exit 1
export importScriptLocation=$(_getScriptAbsoluteLocation)
export importScriptFolder=$(_getScriptAbsoluteFolder)
. "$current_script_path" --call
unset current_script_path
#_messagePlain_probe "$scriptAbsoluteLocation"
#exit 0



#a
#b
#c
#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__
#1
#2
#3



#8
#9
#0
#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__
#x
#y
#z

# NOTICE: Overrides ( 'ops.sh' equivalent ).

_default_procedure() {
	! _safePath "$scriptLib" && echo 'fail: _safePath' && return 1
	
	# Consolidating self, a 'draftedDocument' (usually an Xournal sketch), two separate documents (usually also created by a scriptedIllustrator script).
	#pdfseparate "$scriptLib"/draftedDocument.pdf -f 1 -l 2 "$scriptLib"/draftedDocument-%d.pdf
	#pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/draftedDocument-*.pdf "$scriptAbsoluteFolder"/z01-templateArticle.pdf "$scriptAbsoluteFolder"/z02-templateArticle.pdf "$scriptAbsoluteFolder"/"$1".pdf
	#rm -f "$scriptLib"/'draftedDocument-'*'.pdf' > /dev/null 2>&1
	
	# Copy self, as is.
	#cp "$scriptLib"/"$1".pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/neuralBits.pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	
	
	rm -f "$scriptLib"/"$1".pdf > /dev/null 2>&1
}
_default() {
	! type -p qalculate > /dev/null 2>&1 && exit 1
	_solve() {
		_qalculate_solve "$@"
	}
	_clc() {
		_qalculate "$@"
	}
	
	local current_deleteScriptLocal
	current_deleteScriptLocal="false"
	[[ ! -e "$scriptLocal" ]] && current_deleteScriptLocal="true"
	
	"$scriptAbsoluteLocation" DOCUMENT > "$scriptAbsoluteLocation".out.txt
	
	#_scribble_markdown "$@"
	#_scribble_html "$@"
	_scribble_pdf "$@"
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation" | sed 's/\.[^.]*$//')
	#_scribble_html "$@"
	#[[ -e "$scriptAbsoluteFolder"/"$currentScriptBasename".html ]] && "$scriptAbsoluteFolder"/"$currentScriptBasename".html _test
	rm -f "$scriptAbsoluteFolder"/"$currentScriptBasename".html > /dev/null 2>&1
	
	
	mv -f "$scriptAbsoluteFolder"/"$currentScriptBasename".pdf "$scriptLib"/"$currentScriptBasename".pdf
	_default_procedure "$currentScriptBasename"
	
	mv -f "$scriptAbsoluteFolder"/"$currentScriptBasename".pdf "$scriptAbsoluteFolder"/"$currentScriptBasename".sh.pdf
	
	
	[[ "$current_deleteScriptLocal" == "true" ]] && [[ -e "$scriptLocal" ]]  && rmdir "$scriptLocal"
	sleep 3
}

# NOTICE: Overrides ( 'ops.sh' equivalent ).


_test() {
	"$scriptAbsoluteLocation" _test_default "$@"
}

if ! [[ "$1" == '_'* ]] && [[ "$1" == 'DOCUMENT' ]]
then
	_document_collect
	_document_main
fi

! [[ "$1" == '_'* ]] && [[ "$1" == 'DOCUMENT' ]] && exit 0
if [[ "$1" == '_'* ]]
then
	"$@"
	exit "$?"
fi



_default "$@"






exit 0
# Append base64 encoded attachment file here.
__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__


