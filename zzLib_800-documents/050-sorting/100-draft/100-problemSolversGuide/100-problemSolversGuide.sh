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
_heading1 'problemSolversGuide'
_t 'Universal charting a course (symbolic manipulation) to maneuvers through space of predominantly electrons and photons which give rise to the electromagnetic interactions of resistance, inductance, capacitance, and amplification, of which all complex systems may be modeled and then navigated. Emphasis on enabling non-technical persons in leadership positions to evaluate proposals both for adequate modeling of consequential effects, and proposals to design experiments (ie. build prototypes).

Demystifying seemingly technical problem solving.'
_heading2 'Introduction'
_t 'Possibly quite close to as &#39;executive summary&#39; short as the universe gets.

*) Few common origins of all problems in the universe.
*) Reduction to other problems.
*) How far problems must be reduced to constituents.
 *) Limits to iterative problem solving (entropy, evolutionary genetic algorithm, etc).
*) Why to reduce problems as far as possible (ie. identify FUNDAMENTAL) when opportunity is available.
 
*) For decision making leaders (ie. executives).

*) Fundamental, if obvious, reasoning.'
_heading3 'Presented'
_t '*) Economics - defining project success, value of experimentation as entertainment, scarcity of capital, commoditization, enjoyable problem solving as a desirable experience to maximize, etc.
*) Planning - solvable problem complexity limits (guess entropy), learning curve of symbolic manipulation, reduction of problems, problem solving algorithm by internal modeling/simulation, qualifying help and proposals by plausibility, etc.

*) Mathematics - importance of mathematics, colloquialism of mathematics, avoiding overuse of mathematics, equivalence of all mathematics to single instruction (turing completeness), etc.


*) Cognition vs Automation


*) Statistics - Noise, Signals, Statistics, Digital Communications over Analog, Cryptography

*) Modulation Equivalence - Amplitude or Frequency changes imply both amplitude and frequency shifting.



*) Circuitry - describing any machinery in a universe predominantly of electromagnetic photons.

*) Feedback - Motivation and Control of anything in the universe by operational amplifiers (and software, neural, people, organizational equivalents) from the concept of multiplying differences in quantity.



*) Optics, Physics, Quantum Physics, Signal Processing Algorithms, Control Algorithms.



*) Some common technologies (eg. collimated displays, envelope amplitude detecting).

As may be plausible, skipping some less useful details for faster comprehension of essential concepts.'
_heading2 'Conclusions'
_t 'Readers of this guide, or students, are expected to ask questions of a knowledgeable professional with industry experience. Self-learning may be possible, but this guide may not have been tested or otherwise proven for that use. Career academics with purely abstract (ie. symbolic), rather than pragmatic, experience, 


A competent instructor should, within a day, be able to bring a small group (<5) motivated students, to a reasonably useful understanding, within *less than one single day*, even if completely unfamiliar with science or engineering and having at least a somewhat less than high-school &#39;education&#39; understanding of relevant logic .

Due to concepts stemming from a two particle universe inevitably being *highly interrelated*, breaking into multiple sessions not recommended, and may be orders of magnitude less efficient. At best, previous instruction must be completely reviewed for complete understanding at the beginning of each session. *Being prepared for a long day is strongly recommended*.

Complete understanding of each concept is a prerequisite for understanding others. Do NOT skip a topic if any student is having difficulty. Students having *much more difficulty demonstrating understanding* of concepts *are usually highly valuable* for both understanding and retention by other participating students of otherwise similar background. Do NOT underestimate this effect - students being from the same professional team or office is much more predictive of their ability to learn these concepts cooperatively than similar education, socioeconomic status, etc.


Circuits, Feedback, Signal Processing Algorithms, Control Algorithms, are the most universal and least commonly already deeply understood concepts to emphasize.'

_page ' ' ###
_heading2 'REFERENCE'
_t 'https://web.archive.org/web/20150116020204/http://gozips.uakron.edu/~veillet/Faraday7.html
	&#39;square root is important, because if you can achieve *negative* production, then you can have *imaginary* success&#39;
		A clever point.

https://en.wikipedia.org/wiki/Thought_experiment



https://tvtropes.org/pmwiki/pmwiki.php/Administrivia/TropesAreTools
	&#39;Human beings are natural pattern-seekers and storytellers. We make use of stories to convey truths, examine and exchange ideas, speculate on the future and discuss consequences. To do this, we must have a basis for our discussion, a new language to show us what we are looking at today. So our storytellers use tropes to let us know what things about reality we should put aside and what parts of fiction we should take up.&#39;

https://tvtropes.org/pmwiki/pmwiki.php/TropesAreNotBad/TropesAreTools


https://en.wikipedia.org/wiki/Automated_planning_and_scheduling
https://en.wikipedia.org/wiki/Backward_chaining
https://en.wikipedia.org/wiki/Forward_chaining
https://en.wikipedia.org/wiki/State_space_search
https://en.wikipedia.org/wiki/Sussman_Anomaly


https://en.wikipedia.org/wiki/One-instruction_set_computer

https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion
https://en.wikipedia.org/wiki/Navier%E2%80%93Stokes_equations

https://en.wikipedia.org/wiki/Shannon%E2%80%93Hartley_theorem


https://en.wikipedia.org/wiki/Electric_current
https://en.wikipedia.org/wiki/Voltage_divider
https://en.wikipedia.org/wiki/Operational_amplifier
https://en.wikipedia.org/wiki/Operational_amplifier_applications


https://en.wikipedia.org/wiki/Future_Circular_Collider#Criticism
https://www.vox.com/future-perfect/2019/1/22/18192281/cern-large-hadron-collider-future-circular-collider-physics


https://en.wikipedia.org/wiki/Higgs_boson
	&#39;standard model, which reduces all of reality to a dozen or so particles and four forces&#39;

http://gnuradio.4.n7.nabble.com/IIR-filter-td40994.html
http://www.earlevel.com/main/2013/10/13/biquad-calculator-v2/






https://theory.labster.com/oxidation-state-periodic/




https://en.wikipedia.org/wiki/Surplus_killing
	&#39;zooplankton&#39;

https://en.wikipedia.org/wiki/Learning_curve

https://en.wikipedia.org/wiki/2021_Suez_Canal_obstruction

https://en.wikipedia.org/wiki/SIGSALY

https://en.wikipedia.org/wiki/Phase-shift_keying
	&#39;Although the root concepts of QPSK and 4-QAM are different, the resulting modulated radio waves are exactly the same.&#39;

https://en.wikipedia.org/wiki/Jellium

https://www.youtube.com/watch?v=nQcT3GqxH44'


_heading2 'REFERENCE (unknown)'
_t 'A documentary once cited attempts by personnel aware of an impending tsunami to warn appropriate authorities by reaching out to organizations which might have the necessary contact information. In the words of one of those persons, &#39; flipping through the [proverbial] phone book is dangerous &#39; . Example from memory is intended only to illustrate the real dangers of &#39; tunnel vision &#39; whether nearing an impending disaster or only in a competitive economy. Illustrates the need for &#39;agile&#39; frequent reevaluation of whether current research directions have a possibility or statistical likelihood of bringing timely results.'



_heading2 'ATTRIBUTION'
_t 'Much more extensive documentation of such attribution may be available in document source code.


Splatter Q9.jpg
CC BY-SA 4.0
https://en.wikipedia.org/wiki/File:Splatter_Q9.jpg
https://creativecommons.org/licenses/by-sa/4.0/
Hp.Baumeler
File:Splatter Q9.jpg
	Modified by downscaling and re-encoding to reduce file size.


Tux_ecb.jpg
Date 	20 May 2006
Source 	http://en.wikipedia.org/wiki/Image:Tux_ecb.jpg
Author 	en:User:Lunkwill
Permission
(Reusing this file) 	This image is derived from File:Tux.jpg, and therefore requires attribution. All uses are permitted provided that Larry Ewing, the owner of the original image, who requires that you mention him, his email address, lewing@isc.tamu.edu, and The GIMP, according to http://www.isc.tamu.edu/~lewing/linux/.


Public_key_encryption.svg
https://en.wikipedia.org/wiki/File:Public_key_encryption.svg
&#39;Original illustration by David Göthberg, Sweden.
Released by David as public domain.
Date 	7 August 2006
Source 	Own work
Author 	Davidgothberg&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;


ComplexSinInATimeAxe.gif
https://commons.wikimedia.org/wiki/File:ComplexSinInATimeAxe.gif
&#39;Date 	9 November 2007 (upload date)
Source 	flash file
Author 	user:Nashev&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;
	Modified by converting animated gif to single frame.


Double-conversion_superheterodyne_receiver_block_diagram.svg
https://commons.wikimedia.org/wiki/File:Double-conversion_superheterodyne_receiver_block_diagram.svg
&#39;Date 	6 January 2016
Source 	Own work
Author 	Chetvorno&#39;
&#39;I, the copyright holder of this work, hereby publish it under the following license:
Creative Commons CC-Zero 	This file is made available under the Creative Commons CC0 1.0 Universal Public Domain Dedication.
The person who associated a work with this deed has dedicated the work to the public domain by waiving all of their rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.&#39;


SR_Flip-flop_Diagram.svg
https://en.wikipedia.org/wiki/File:SR_Flip-flop_Diagram.svg
&#39;Date 	17 June 2006
Source 	Own Drawing in Inkscape 0.43
Author 	jjbeard
Permission
(Reusing this file) 	PD&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;


Amplifier_Circuit_Small.svg
https://commons.wikimedia.org/wiki/File:Amplifier_Circuit_Small.svg
https://commons.wikimedia.org/wiki/User:Twisp
&#39;Date 	24 February 2008
Source 	Own work
Author 	Twisp&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;


Basic.sch.png
https://raw.githubusercontent.com/HacDC/AudioToResistance/master/Basic.sch.png
https://github.com/HacDC/AudioToResistance
https://github.com/HacDC/AudioToResistance/blob/master/license.txt
Relevant files as declared above, obtained under a &#39;GPLv3 license&#39;. They, and all modifications to them, retain that license, which is provided with them, unless a different license is noted in their file.
Author of the image file is &#39;mirage335&#39;, so if included in a project by &#39;mirage335&#39; with an &#39;incompatible&#39; license, the file is then also available under the license of that project.


amplifierSchematic.png
https://raw.githubusercontent.com/mirage335/Mirage335BiosignalAmp/master/amplifierSchematic.png
https://github.com/mirage335/Mirage335BiosignalAmp
https://github.com/mirage335/Mirage335BiosignalAmp/blob/master/license.txt
Relevant files as declared above, obtained under a &#39;GPLv3 license&#39;. They, and all modifications to them, retain that license, which is provided with them, unless a different license is noted in their file.
Author of the image file is &#39;mirage335&#39;, so if included in a project by &#39;mirage335&#39; with an &#39;incompatible&#39; license, the file is then also available under the license of that project.


Tacoma-narrows-bridge-collapse.jpg
https://en.wikipedia.org/wiki/File:Tacoma-narrows-bridge-collapse.jpg
&#39;This work is in the public domain in the United States because it is a work prepared by an officer or employee of the United States Government as part of that person’s official duties under the terms of Title 17, Chapter 1, Section 105 of the US Code. Note: This only applies to original works of the Federal Government and not to the work of any individual U.S. state, territory, commonwealth, county, municipality, or any other subdivision. This template also does not apply to postage stamp designs published by the United States Postal Service since 1978. (See § 313.6(C)(1) of Compendium of U.S. Copyright Office Practices). It also does not apply to certain US coins; see The US Mint Terms of Use.
This file has been identified as being free of known restrictions under copyright law, including all related and neighboring rights.&#39;
&#39;File history&#39;
&#39;Date/Time&#39; &#39;23:33, 16 January 2010&#39;
&#39;User&#39; &#39;Botaurus-stellaris&#39;


Finite_element_triangulation.svg
https://en.wikipedia.org/wiki/File:Finite_element_triangulation.svg
https://commons.wikimedia.org/wiki/User:Oleg_Alexandrov
&#39;Date 	15 June 2007, 02:18 (UTC)
Source 	self-made, with en:Matlab
Author 	Oleg Alexandrov&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;


Tensile_testing_on_a_coir_composite.jpg
https://commons.wikimedia.org/wiki/File:Tensile_testing_on_a_coir_composite.jpg
https://commons.wikimedia.org/wiki/User:Kerina_yin
&#39;Date 	25 April 2011
Source 	Own work
Author 	Kerina yin&#39;
&#39;I, the copyright holder of this work, hereby publish it under the following license:
Creative Commons CC-Zero 	This file is made available under the Creative Commons CC0 1.0 Universal Public Domain Dedication.
The person who associated a work with this deed has dedicated the work to the public domain by waiving all of their rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.&#39;


Lorentz_factor_inverse.svg
https://en.wikipedia.org/wiki/File:Lorentz_factor_inverse.svg
https://commons.wikimedia.org/w/index.php?title=User:Vanzandtj
&#39;Date 	27 March 2016
Source 	/tmp/Lorentz_factor_inverse.svg
Author 	Vanzandtj&#39;
&#39;I, the copyright holder of this work, hereby publish it under the following license:
Creative Commons CC-Zero 	This file is made available under the Creative Commons CC0 1.0 Universal Public Domain Dedication.
The person who associated a work with this deed has dedicated the work to the public domain by waiving all of their rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.&#39;


Electron-Positron_nuclear_Pair_production_Feynman_Diagram.gif
https://en.wikipedia.org/wiki/File:Electron-Positron_nuclear_Pair_production_Feynman_Diagram.gif
&#39;Date 	11 May 2004
Source 	http://www.jick.net/~jess/hr/skept/EMC2/node9.html
Author 	Jess H. Brewer&#39;
&#39;This logo image consists only of simple geometric shapes or text. It does not meet the threshold of originality needed for copyright protection, and is therefore in the public domain. Although it is free of copyright restrictions, this image may still be subject to other restrictions. See WP:PD#Fonts and typefaces or Template talk:PD-textlogo for more information.&#39;


EM-Wave.gif
CC BY-SA 4.0
https://commons.wikimedia.org/wiki/File:EM-Wave.gif
https://creativecommons.org/licenses/by-sa/4.0/
And1mu
File:EM-Wave.gif
	Modified by converting animated gif to single frame.


Simple_Periodic_Table_Chart-en.svg
https://commons.wikimedia.org/wiki/File:Simple_Periodic_Table_Chart-en.svg
https://commons.wikimedia.org/wiki/User:Offnfopt
&#39;This work has been released into the public domain by its author, Offnfopt. This applies worldwide.
In some countries this may not be legally possible; if so:
Offnfopt grants anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;
&#39;This file is made available under the Creative Commons CC0 1.0 Universal Public Domain Dedication.
The person who associated a work with this deed has dedicated the work to the public domain by waiving all of their rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.&#39;
&#39;Date 	9 September 2017
Source 	Own work
Author 	Offnfopt&#39;


standard-model.png
https://raw.githubusercontent.com/mlubej/standard-model/master/figs/standard-model.png
https://github.com/mlubej/standard-model
https://github.com/mlubej/standard-model/blob/master/README.md
https://github.com/mlubej/standard-model/blob/master/LICENSE
Relevant files as declared above, obtained under a &#39;GPLv3 license&#39;. They, and all modifications to them, retain that license, which is provided with them, unless a different license is noted in their file.


Electron-scattering.svg
CC BY-SA 4.0
https://en.wikipedia.org/wiki/File:Electron-scattering.svg
https://creativecommons.org/licenses/by-sa/4.0/
https://commons.wikimedia.org/wiki/User:KCVelaga
KCVelaga
File:Electron-scattering.svg


Series_RC_capacitor_voltage.svg
https://en.wikipedia.org/wiki/File:Series_RC_capacitor_voltage.svg
&#39;Date 	31 March 2006 (original upload date)
Source 	No machine-readable source provided. Own work assumed (based on copyright claims).
Author 	No machine-readable author provided. Ktims assumed (based on copyright claims).&#39;
&#39;User:Ktims&#39;
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;


Butterworth_Filter_Orders.svg
https://en.wikipedia.org/wiki/File:Butterworth_Filter_Orders.svg
https://commons.wikimedia.org/wiki/User:Inductiveload
&#39;I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
In some countries this may not be legally possible; if so:
I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.&#39;
&#39;Date 	18 October 2007
Source 	Own work
Author 	Inductiveload&#39;


Lichtenberg_figure_in_block_of_Plexiglas.jpg
https://commons.wikimedia.org/wiki/File:Lichtenberg_figure_in_block_of_Plexiglas.jpg
&#39;The copyright holder of this file allows anyone to use it for any purpose, provided that the copyright holder is properly attributed. Redistribution, derivative work, commercial use, and all other use is permitted.&#39;
&#39;Source 	http://www.capturedlightning.com
Author 	Bert Hickman&#39;




'





_heading2 'ACKNOWLEDGEMENT'
_t 'Sword Art Online, at the beginning of the GGO arc, explicitly mentions that the elementary particles (ie. electrons and photons) of both the &#39;real&#39; and &#39;virtual&#39; worlds are the same (because the computer processors are still using these same particles). As a reader, "mirage335" greatly appreciated that moment of brilliance from the author Reki Kawahara, although "mirage335" wishes to note having long arrived at similar conclusions, having exhaustively ruled out every other possibility of using other particles (especially, any compact way such as microscopic black holes, of detecting neutrinos as a replacement for inertial position tracking).'




_page ' ' ###
source "$scriptLib"/MODULE-01-economics.txt.sh

_page ' ' ###
source "$scriptLib"/MODULE-02-planning.txt.sh


source "$scriptLib"/MODULE-03-mathematics_etc.txt.sh
source "$scriptLib"/MODULE-04-technical.txt.sh

source "$scriptLib"/MODULE-10-physics.txt.sh
source "$scriptLib"/MODULE-11-algorithms_etc.txt.sh












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
	
	# Consolidating self, a 'draftedDocument' (usually an Xournal sketch), two separate documents (usually also created by a scriptedIllustrator script).
	#pdfseparate "$scriptLib"/draftedDocument.pdf -f 1 -l 2 "$scriptLib"/draftedDocument-%d.pdf
	#pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/draftedDocument-*.pdf "$scriptAbsoluteFolder"/z01-templateArticle.pdf "$scriptAbsoluteFolder"/z02-templateArticle.pdf "$scriptAbsoluteFolder"/"$1".pdf
	#rm -f "$scriptLib"/'draftedDocument-'*'.pdf' > /dev/null 2>&1
	
	# Copy self, as is.
	cp "$scriptLib"/"$1".pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	
	
	
	
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


