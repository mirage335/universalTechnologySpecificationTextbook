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



export fromSelfFolder_RPT_correlator_pseudocode=$(cat "$scriptLib"/RPT_correlator_pseudocode.cpp 2>/dev/null)

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
_heading1 'cognitionSplicer'
_t 'Connectome and synaptic weights &#39;RPT correlation&#39;, overlay, from observed neural activity.

&#39;Brain upload&#39; and &#39;hive mind&#39; made possible by observing some activity from a living neural network rather than &#39;scanning&#39; &#39;dead&#39; or dormant &#39;neural tissue&#39;.'
_heading2 'Introduction'
_t 'Feasibility and usefulness are well founded conclusions.

Existing hardware and wetware may be entirely adequate. Minimally complex scaling of hardware designs to higher spatial resolution may be beneficial.
'
_heading3 'Presented'
_t '*) Software algorithm flow diagrams.
*) Computation times.
*) Sampling times.
*) Sampling/input bandwidths (eg. 10MHz, 500kHz, 50kHz, etc).
As may be plausible.'
_heading2 'Conclusions'
_t 'Reasonable reading, writing, and communication of human memory (objects, associations, priorities), may be feasible even from non-invasive (ie. MEG, TMS) brain interfaces, especially with minimal retraining in a VR environment. Perfect enough (ie. no retraining) memory transfers may be feasible from non-chronic invasive (ie. crude MEA) brain interfaces. Memories may have a spatial resolution parameter, much as any other object data (eg. as with visual image object pixels).

Recording small areas of brain activitiy sequentially is sufficient. Non-invasive interface in particular may benefit from sequentially &#39;scanning&#39; an expensive high resolution sensor array with a small observed area across the neocortex. Optogenetic sensors may benefit similarly. Microelectrode arrays may minimize bandwidth, ADC, and amplifier circuitry by multiplexing ES when intended only for connectome and synaptic weight recording (not sensory precepts).

Small timing and voltage offsets within the membrane of a single neuron may exist. Such may account for computational performance of biological networks orders of magnitude greater than the total number of synapses at ~300Hz analog bandwidth. Visualization of differences in these offsets between events may be feasible to infer from other observed activity. Such analysis is mostly anticipated as a diagnostic tool not obviously useful or necessary for any memory or information transfer.

Side channels (ie. by &#39;cross-examination&#39; under &#39;polygraph&#39;) have already long been sufficient to drastically reduce search space (eg. &#39;password&#39; digits) for any kind of authentication - what a person knows, what a person knows they have, or what a person knows they are. Nothing about &#39;brain computer interface&#39; changes the already urgent need for better secure storage, memory backups, self-wiping of mobile memory, or possibly of trusted authentication authorities.

Poor spatial resolution could plausibly obscure any connections which are within, or do not substantially activate, a large enough group of neurons. Poor temporal resolutions could obscure any connections which cause near equal changes in activity at near equal times. At least some useful results (eg. &#39;human connectome project&#39;) seem to have been obtained through fMRI - which relies on indirect indications having possibly the worst resolution simultaneously spatially and temporally .

More &#39;observedNeurons&#39; than 10k &#39;logical neurons&#39; or 10M &#39;physical neurons&#39; spread across the entire neocortex are significant performance benchmarks for a brain-computer interface. Fewer might suffice within a smaller region of the neocortex for some limited use cases.

Some basis for object memory recognition from recorded neural activity exists in the form of rough but recognizable images observed from neural recordings from the visual systems of animal models (ie. cats).'
_page
_heading2 'REFERENCE'
_t 'https://www.proteinatlas.org/humanproteome/brain/human+brain
	&#39;16227 genes detected above cut off in the brain&#39;
	&#39;2587 genes have an elevated expression&#39;
	&#39;488 brain enriched genes&#39;
	&#39;Most of the enriched genes encode proteins involved in transport and signaling&#39;
	&#39;2587 genes defined as elevated in the brain&#39;
	&#39;33 genes are only detected in the brain&#39;
	&#39;Regional expression within the brain&#39;
		&#39;1059 genes classified as regionally elevated&#39;
		&#39;Cerebellum has the most regionally enriched genes (n=214)&#39;
		&#39; interactive network plot of the regionally enriched and group enriched genes connected to their respective enriched region&#39;

https://onlinelibrary.wiley.com/doi/abs/10.1002/cne.902400410
	CITATION - &#39;Photoreceptor telodendria which emanate from the basal surface of the synaptic terminal and ramify laterally for up to 40 μm&#39;

https://raw.githubusercontent.com/mirage335/Mirage335BiosignalAmp/master/amplifierSchematic.png
	CITATION - Minimalist and exemplifying best principles.

https://arxiv.org/pdf/1906.01703.pdf
	CITATION - &#39;A typical neuron fires 5 - 50 times every second.&#39;'
_ ' ' # NOTICE: ###
_page
_heading2 'Example: Pessimistic Estimate - Recording Time - All Memories (Perfect Enough), Whole-Neocortex Interface, Physical Neurons from Million Electrode Site Micro-Electrode Array (MEA)'
_t '$dormantTime == Presume >1s .

$activeTime == Presume 0.0005s .

$observedNeurons == Presume spike sorting unusable, 10^6 electrode sites.

$desiredNeurons == 10^10

$synapsesPerNeuron == 10^4

$weakestSynapse == Negligible.

'
_e_ dormantTime=1
_e_ activeTime=0.0005
_e_ observedNeurons='10^6'
_e_ desiredNeurons='10^10'
_e_ synapsesPerNeuron='10^4'
_e_ weakestSynapse=1
_e_ _solve '"( \"signalsPerConversion\" == ( "$dormantTime" * ( "$dormantTime" / "$activeTime" ) ) , \"signalsPerConversion\" )"'
_e_ _solve '"( \"synapsesBetweenNeurons\" == ( "$observedNeurons" / ( "$desiredNeurons" / "$synapsesPerNeuron" ) ) , \"synapsesBetweenNeurons\" )"'
_e_ _solve '"( \"recordingTime\" == ( ( ( "$dormantTime" * ( "$dormantTime" / "$activeTime" ) )  *  ( "$observedNeurons" / ( "$desiredNeurons" / "$synapsesPerNeuron" ) ) )  *  "$weakestSynapse" ) , \"recordingTime\" )"'
_o _safeEcho_newline 'seconds.'
_t 'Strong inhibition and irregular synaptic weight geometric distribution may delay observations negligibly. A few hours or a few days is a resonably pessimistic expectation.'
_ ' ' # NOTICE: ###
_heading2 'Example: Pessimistic Estimate - Computation Time - All Memories (Perfect Enough), Whole-Neocortex Interface, Physical Neurons from Million Electrode Site Micro-Electrode Array (MEA)'
_t '$listSeconds == Assume a pessimistic three hours ~10k .

$eventsPerSecond == Assume pessimistic 100 .

$findMilliseconds == Assume a pessimistic 5000ms .

$observedNeurons == Assume 4M as near plausible limits for electrode density.

$arithmeticPerSecond == Assume 10 * 200TFLOPS GPUs, typical of a commonly available GPU, at reasonable total expense.

'
_e_ listSeconds=10000
_e_ eventsPerSecond=100
_e_ findMilliseconds=5000
_e_ observedNeurons=4000000
_e_ arithmeticPerSecond='$(_clc "(200*10^12) * 10")'
_o_ _safeEcho_newline 'arithmeticPerSecond=' "$arithmeticPerSecond"
_e_ _solve '"( \"computationTime\" = ( ( "$listSeconds" * "$eventsPerSecond" * "$observedNeurons" ) * ( "$findMilliseconds" * ( "$eventsPerSecond" * 0.001 ) * "$observedNeurons" ) ) / "$arithmeticPerSecond" , \"computationTime\" )"'
_o _safeEcho_newline 'seconds. Three months (90days) is approximately 7million seconds. One year is approximately 30million seconds.'
_page
_heading2 'Example: Pessimistic Estimate - Spatial Resolution - Visual Memories, Whole-Neocortex Interface, Logical Neurons from MagnetoEncephaloGraphy (MEG) or Transcranial Magnetic Stimulation (TMS)'
_t '$desiredNeurons == Assuming only shallow 2D cerebral neocortex surface (100cm^2) is available to MEG or TMS at relatively high resolution (between ~5mm^2 or ~0.1mm^2). A ~0.1mm resolution may be much nearer theoretical limits than existing hardware, possibly necessitating temporal patterning of TMS impedance measurement and TMS stimulation pulses.

$relevantNeuronsPerDesiredNeuron == Assume extremely pessimistically only ~0.05 of neurons in whole cerebral neocortex are in the occipital lobe or otherwise substantially store visual memories, greatly degrading possible spatial resolution.

$perceptualCompression == Seems compression of 10 from bitmap to frequency bin amplitudes and edges should be pessimistic enough.

$pixelsOrVoxels == Smaller than 100x100 texture is rather common. Maybe a person might recognize a composite object with 1000 features, or maybe a composite &#39;scenes&#39; of 10000 features. Other fundamental mathematical limits to random matching, and human short-term memory limits, may impose substantially smaller object feature counts. Seems pessimistic enough at ~10k.

'
_e_ desiredNeurons='$(_clc "( (100 * centimeter) / (5 * millimeter) )^2" )'
_o_ _safeEcho_newline 'desiredNeurons=' "$desiredNeurons"
_e_ relevantNeuronsPerDesiredNeuron=0.05
_e_ perceptualCompression=10
_e_ pixelsOrVoxels=10000
_e_ _solve '"( \"spatialResolution\" = "$desiredNeurons" * "$relevantNeuronsPerDesiredNeuron" * "$perceptualCompression", \"spatialResolution\" )"'
_e_ _solve '"( \"requiredSpatialResolution\" = ( "$pixelsOrVoxels" ) , \"requiredSpatialResolution\" )"'
_heading2 'Example: Pessimistic Estimate - Recording Time - Visual Memories, Whole-Neocortex Interface, Logical Neurons from MagnetoEncephaloGraphy (MEG) or Transcranial Magnetic Stimulation (TMS)'
_t '$dormantTime == Presume >1s .

$activeTime == Presume >0.010s (MEG bandwidth).

$observedNeurons == Assuming only shallow 2D cerebral neocortex surface (100cm^2) is available to MEG or TMS at relatively high resolution (between ~5mm^2 or ~0.1mm^2). A ~0.1mm resolution may be much nearer theoretical limits than existing hardware, possibly necessitating temporal patterning of TMS impedance measurement and TMS stimulation pulses.

$desiredNeurons == Equal to $observedNeurons. Assuming too little data will be available from the low spatial resolution.

$synapsesPerNeuron == Presume large groups of neurons may not meaningfully correlate to multiple other large groups.

$weakestSynapse == Negligible.

'
_e_ dormantTime=1
_e_ activeTime=0.010
_e_ observedNeurons='$(_clc "( (100 * centimeter) / (5 * millimeter) )^2" )'
_o_ _safeEcho_newline 'observedNeurons=' "$observedNeurons"
_e_ desiredNeurons="$observedNeurons"
_e_ synapsesPerNeuron=1
_e_ weakestSynapse=1
_e_ _solve '"( \"signalsPerConversion\" == ( "$dormantTime" * ( "$dormantTime" / "$activeTime" ) ) , \"signalsPerConversion\" )"'
_e_ _solve '"( \"synapsesBetweenNeurons\" == ( "$observedNeurons" / ( "$desiredNeurons" / "$synapsesPerNeuron" ) ) , \"synapsesBetweenNeurons\" )"'
_e_ _solve '"( \"recordingTime\" == ( ( ( "$dormantTime" * ( "$dormantTime" / "$activeTime" ) )  *  ( "$observedNeurons" / ( "$desiredNeurons" / "$synapsesPerNeuron" ) ) )  *  "$weakestSynapse" ) , \"recordingTime\" )"'
_o _safeEcho_newline 'seconds.'
_t 'Strong inhibition of such large &#39;logical neurons&#39; may delay observations by a few hours.'
_page
_heading2 'Spatial Resolution'
_t 'Capturing a person&#39;s sense of objects, associations, priorities, may require at least sufficient resolution for these objects to remain recognizable. Whether a neural interface has sufficient spatial resolution (observing sufficiently many and sufficiently small groups of neurons) may be crudely estimated by whether a hypothetical &#39;picture&#39; of a 2D *texture* in &#39;pixels&#39; or a &#39;model&#39; in &#39;voxels&#39; after proportional losses would remain recognizable.

Objects (eg. recognizable visual objects from visual memory in the visual cortex) represented within the correlated connectome and synaptic weights may have a *spatial resolution* in total perceptive fields as much as equal to &#39;desiredNeurons&#39;.

'
_o _messagePlain_probe_noindent '$desiredNeurons == Total neurons (in the composite neuron sense of an artificial neural network) from connectome and synaptic weights correlated by observed neural activity.

$relevantNeuronsPerDesiredNeuron == Proportion of $desiredNeurons mostly contributing the desired memories. Presumably usually better than ~0.05 .

$perceptualCompression == From bitmap pixelsOrVoxels, to frequency bin amplitudes and edges. Presumably usually better than 10x.


"( \"spatialResolution\" = \"desiredNeurons\" * \"relevantNeuronsPerDesiredNeuron\" * \"perceptualCompression\" )"'
_heading2 'Recording Time'
_t 'Duration of observed neural activity before each neuron will have repeatedly reacted (or not) to every other neuron at least indirectly, which may approximately be sufficient to correlate connectome and synaptic weights. Strong inhibition, irregular synaptic weight geometric distribution, and long axons may additionally impose a minimum recordingTime of a few seconds or a few months. Applicable to fMRI, EEG, ECOG, MEG, and MEA.

'
_o _messagePlain_probe_noindent '$dormantTime == Time between TX events. Usually 20ms (50Hz) or at worst plausibly 1000ms (1Hz).

$activeTime == Temporal resolution of TX event information. Usually 0.5ms (action potential bandwdith, 1mm axon at 2m/s, etc). Some diagnostic, scientific, or simulation use cases may be short as <0.002ms (<4um dendrite at 2m/s).

$observedNeurons == Total (logical) neurons observed (eg. number of electrode sites in MEA, number of discernable areas in MEG, etc).

$desiredNeurons == Total neurons (in the composite logical neuron sense of an artificial neural network) from connectome and synaptic weights correlated by observed neural activity. Usually 10^10 cerebral neocortex neurons, or equal to $observedNeurons.

$synapsesPerNeuron == Usually 10^4 if physical neurons (eg. MEA electrode sites) or 1.0 if observedNeurons is a small number of logical neurons (eg. MEG).

$weakestSynapse == Usually 1, negligible. At worst, roughly equal to $signalsPerConversion. After all, a synapse causing activity much less often than ambient "noise" will tend to "fire out of sync" more often and "lose their link". Otherwise, presumably >0.001 RPT events per synapse TX event.

"( \"signalsPerConversion\" == ( \"dormantTime\" * ( \"dormantTime\" / \"activeTime\" ) ) )"
"( \"synapsesBetweenNeurons\" == ( \"observedNeurons\" / ( \"desiredNeurons\" / \"synapsesPerNeuron\" ) ) )"
"( \"recordingTime\" == ( ( ( \"dormantTime\" * ( \"dormantTime\" / \"activeTime\" ) )  *  ( \"observedNeurons\" / ( \"desiredNeurons\" / \"synapsesPerNeuron\" ) ) )  *  \"weakestSynapse\" ) )"'
_ ' ' # NOTICE: ###
_page
_heading2 'Computation Time'
_t 'Correlation of neural activity to connectome and synaptic weights follows a summation algorithm followed by a normative statistic. TX events are converted to correlated RPT events. A similar algorithm is expected to correlate this smaller number of RPT events to other RPT events, establishing the order in which neurons are activated.

Inference of indirect neurons may require algorithmic iterative modeling of small artificial neural networks where activity is not completely accounted for by activity of other observedNeurons. Such modeling may benefit from structural assumptions (ie. a strong 90deg orthogonality between horizontal axons across 2D layers and vertical axons between 2D layers).

'
_o _messagePlain_probe_noindent 'Choose RX ES (Electrode Site).
All other ES given own bins of delay windows.
 TX event from LI (LIst).
  Count some preceding TX events from LI at other ES.
   Total events and total time added to bins of all other ES.
 TX event from LI... (loop)
Bin counts significantly higher or lower than ambient normal indicate RPT correlation between chosen RX ES, corresponding other ES of that bin, with corresponding delay of that bin.'
_t '
Each event found for a chosen RX ES will require iterating over at least recent history from LI.

'
_o _messagePlain_probe_noindent '$listSeconds == Linear multiplier. Usually approximately 3600*3hours (~10k) .

$eventsPerSecond == Usually 50Hz .

$findMilliseconds == Number of milliseconds previous to a TX event to find a TX event from a different neuron to count as an RPT correlation.

$observedNeurons == Total (logical) neurons observed (eg. number of electrode sites in MEA, number of discernible areas in MEG, etc). Maximum plausible for neocortex using MEA is likely ~4M .

$arithmeticPerSecond == Usually 200TFLOPS . Memory bandwidth may not be a problem if list is divided optimally.


"( \"computationTime\" = ( ( \"listSeconds\" * \"eventsPerSecond\" * \"observedNeurons\" ) * ( \"findMilliseconds\" * ( \"eventsPerSecond\" * 0.001 ) * \"observedNeurons\" ) ) / \"arithmeticPerSecond\" )"'
_t '
Other optimizations may be possible. An &#39;LI&#39; list may be divided into smaller &#39;LU&#39; lump of <<14bit numeric integers. Most RPT correlations will be short axons to only geometrically nearby neurons. Found RPT correlations can be ignored as soon as confidently identified once. Strong inhibition may be countered by using data taken at regular intervals rather than a longer continious recording.'
_ ' ' # NOTICE: ###
_page
_heading2 'RPT Correlation Computation - pseudocode'
_o_ _safeEcho_newline "$fromSelfFolder_RPT_correlator_pseudocode"
_ _page
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
current_internal_CompressedFunctions_bytes="12585"
current_internal_CompressedFunctions_cksum="2064524179"
current_internal_CompressedFunctions="
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
mnhJkLHEZ/sCAAAAAARZWg=="
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
	
	
	#pdfseparate "$scriptLib"/"$1".pdf "$scriptLib"/scriptedIllustrator_self-%d.pdf
	
	
	
	
	
	
	pdfseparate "$scriptLib"/cognitionSplicer.pdf -f 1 -l 3 "$scriptLib"/cognitionSplicer-%d.pdf
	
	
	
	
	
	pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/cognitionSplicer-*.pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	
	#pdfunite "$scriptLib"/scriptedIllustrator_self-1.pdf "$scriptLib"/scriptedIllustrator_self-2.pdf "$scriptLib"/scriptedIllustrator_self-3.pdf "$scriptLib"/scriptedIllustrator_self-4.pdf "$scriptLib"/scriptedIllustrator_self-5.pdf "$scriptLib"/scriptedIllustrator_self-6.pdf "$scriptLib"/cognitionSplicer-*.pdf "$scriptLib"/scriptedIllustrator_self-7.pdf "$scriptLib"/scriptedIllustrator_self-8.pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	rm -f "$scriptLib"'/scriptedIllustrator_self-'*'.pdf'
	
	rm -f "$scriptLib"/"$1".pdf > /dev/null 2>&1
	rm -f "$scriptLib"/'cognitionSplicer-'*'.pdf' > /dev/null 2>&1
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


