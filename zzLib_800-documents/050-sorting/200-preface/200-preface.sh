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


source <( "$current_consolidateVariables_script" )








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
_t 'Copyright (C) 2021- mirage335
See additional copyright notice in the file for license conditions.
See license.txt for universalTechnologySpecificationTextbook license conditions'
_heading1 'universalTechnologySpecificationTextbook'
_t 'from existing information.

Arguably a *more complete* theory of intelligence.

Preface.


Winners at the game of life bring the fullest diversity and quality to more players.

A transition from no wealth (ie. what animals are born with), through wealth living on us (ie. creating technological tools), to us living on and once again independent of wealth (ie. everyone born with the benefits of &#39;self-driving AI&#39; and &#39;Virtual Reality&#39; across an interstellar habitat throughout uninhabited space, of computers and energy generators). Completing this transition from biological to technological competence, for a populace already exhausted from video conferencing, as well as for developers who want and work for better, along with shareholders who demand their executives effort for steadier returns at minimal risk, is all in the public interest, now representing substantial &#39;public trust&#39;.




Assurance that most people the universe can well support will *eventually* have - especially of *developers* eventually having - *uninterrupted, immersive, unlobotomized, challenging experiences* solving the problems of life - *cognition* having mostly more *interesting things to do* than the pocket calculator work of *automation* - as well as having unfettered wetware repair/replacement through their own neural interfaces - such assurance is a liability for &#39;public trust&#39;. Such reasonable assurance of eventually reaching the point where any life can be lived settles concerns so all of the public - especially developers - can *delegate* trust to *existing organizations*.

Having a plan as reasonable assurance, a basic enumeration of possible technologies, was an essential step to reducing the strenuousness and risks of technology development, so more persons have the opportunity to find out where they might want to participate, or if the world really needs so much effort at all, and also so organizations have the cognizance to better identify promising candidates and proposals. Such transparency lends credibility to reasonable assurance so all of the public - especially developers - can *delegate* trust to *existing organizations*.

Human society not having committed to a reasonable exit strategy, having instead much apparent culture of eternal sacrifice, significantly motivated the substantial effort in creating this document. Hopefully this has created the opportunity for *delegating* more trust to *existing organizations*.




Remaining technologies are well within the means of &#39;community&#39; (ie. FLOSS, makerspace/hackerspace, biohacking) developers not only to promote but to outright create. So, show us some commoditization, get us interoperable, portable, and efficient technologies, open the source code. Then our interests as open-source developers will be more aligned to *delegate* some of that to *existing organizations*.

CARDinal (VR metaverse shared space) especially is well within the resources of the FLOSS community to create. So are neuralBits, lithoDive, cognitionSplicer, sleeveDive, or even just grafting living neural tissue into embryonic tissue to integrate its memories (ie. amortality). All well within the means of a makerspace/hackerspace effort. So we can help or *delegate* to *existing organizations*.



By gamers, for gamers. A well balanced self-emergent open multiplayer world actually fulfills that promise, has many productive uses, and when such a world is not headed for vaporware, such players will happily mind their own business.



Doubtless, allow us developers our own neural interfaces, full read/write to them, and decent VR metaverse simulation software code - let us have these technologies, leave us alone and we will at least go away - maybe even volunteer helpfully.

Personally, author &#39;mirage335&#39; is more interested in life as a typical &#39;player&#39; than as any sort of game &#39;developer&#39;, solely steps up to minimize risk, and will step down from all other capacities once the self-driving AI and Virtual Reality habitat are safely deployed.


Facebook, supposedly now Meta, cannot succeed in attracting diverse talents if their intent is to de-commoditize the &#39;internet&#39; into a rebranded proprietary &#39;Internet Explorer&#39; as a feeble exploit of this last transition in human history. Much benefit was had from FLOSS competition as such before, and author &#39;mirage335&#39; hopes, will be had again if necessary.'





_page ' ' ###
_heading2 'Disclaimer'
_t 'Author &#39;mirage335&#39; supports any reasonable path, valuing that many other persons have reasonable ideas, often adding new abilities and imagination.



Purpose of this document is mostly if not entirely as a loose &#39;almanac&#39; . Possibilities, are enumerated.

Capital intense is expected minimal - this is not a proposal for de-commoditized or otherwise expensive projects.

Mostly, this is about what is possible, rarely if at all narrowing what should or must happen to a single possibility. Not everything, if anything, posited, should be taken literally.

Nothing herein is intended to unduly influence academic discussion, add acceptable terminology for academic publication, claim any academic credit whatsoever, show any disagreement with any public policy, or have any political effect whatsoever.



DISCLAIMER: Plausible concepts, attributed sources, oversimplifications, resonably. Rigorous mere academia NOT primary.

DISCLAIMER: Reasonable risk of missing attributions may be taken if free web links are not obviously offered - acknowledgment may be limited to no &#39;originality&#39;, no &#39;links&#39; - essential &#39;facts&#39; from obvious sources only.

WARNING: Extensive research notes may be less recent, less accurate, less complete, internally inconsistent, and misinterpreted.'






_page ' ' ###
_heading2 '*Dedication*'
_t 'To whom diligently magnify the light for life, especially the engineers and electricians most recently heard from at the Titanic.

To the developers of Free-Libre / Open Source Software (FLOSS) &#39;web browser&#39; software.



To those needing a tomorrow much better than a slightly worse yesterday.

To those who encourage persistence in difficult projects.



To those who would help, encouraging difficult projects to continue.



To diversity and quality of life.



To any persons or peoples I perhaps may not yet have thought to mention here.'



_heading2 'Appreciation'
_t 'PCBWay is particularly appreciated for prototype PCB manufacture and complete electronics assembly from design files, timely and affordable.

Pimax has done much for the world, continuing their long trend of leading the world with availability of professionally useful high-FOV and high-resolution Virtual Reality.

Starlink/SpaceX has started the process of replacing unmaintainably labor intensive terrestrial networks with cheaply commoditized standardized satellites.'






_page ' ' ###

_heading2 'Pondering'
_t 'A quick release to FLOSS, rather than for-profit proprietary designs and textbooks, obviates issues of mass production. Far short of manufacturing runs and bringing products to market, individuals can simply give FLOSS design assembly standardized files to manufacturers, receiving small numbers of finished products at near marginal costs, with no marketing cost built-in.


"a subject of inquiry which can on no account be neglected"
"general who loses a battle makes but few calculations beforehand"
"cleverness has never been seen associated with long delays"
-Sun Tzu, Art of War, https://www.gutenberg.org/files/132/132-h/132-h.htm

"The man who asks a question is a fool for a minute, the man who does not ask is a fool for life."
-Confucius

"If all else fails, retreat."
-Thirty Six Stratagems, https://en.wikipedia.org/wiki/Thirty-Six_Stratagems

"no instance of a country having benefited from prolonged warfare"
-Sun Tzu, Art of War, https://www.gutenberg.org/files/132/132-h/132-h.htm

Before solving perceived problems, first seek every opportunity to inquire. Ask what is unknown, suggest what may be known. When solving problems, quickly find all truths. When the situation is known, bring immediate victory, or immediately retreat. Ensure there will be no dwaddling.



"Disturb the water and catch a fish."
-Thirty Six Stratagems, https://en.wikipedia.org/wiki/Thirty-Six_Stratagems

"What you do not wish for yourself, do not do to others."
-Confucius, https://en.wikipedia.org/wiki/Confucius

Widely distribute anything of one&#39;s own, surrounding what may become favorable. What is withheld, may be withheld in turn.



"Any product that needs a manual to work is broken."
"To make an embarrassing admission, I like video games."
"People should pursue what they&#39;re passionate about. That will make them happier than pretty much anything else."
"Life is too short for long-term grudges."
"There have to be reasons that you get up in the morning and you want to live. Why do you want to live? What&#39;s the point? What inspires you? What do you love about the future? If the future does not include being out there among the stars and being a multi-planet species, I find that incredibly depressing."
-Elon Musk, https://www.brainyquote.com/authors/elon-musk-quotes

Seems to recognize many aspects of a very strong case for commoditization of the experience of playing a video game across an interstellar habitat constructed by self-driving AI.'






_page ' ' ###

_heading2 'Reading the Extensively Non-Linear Documentation'
_t 'Executives contemplating technology development proposals may find concepts alone sufficient, reading only a relevant part of the document.

Developers of complete hardware/software designs may require a more realistically detailed explanation. Frequent annotation and tabbing of printed copy, and searching of electronic copy, are strongly recommended for design use.


As one example, spatial filtering as explained in &#39;problemSolversGuide&#39; is illustrated as a pinhole filter from multiple point sources of light. In practice, spatial filtering usually begins with focusing most of the light, as illustrated by &#39;lithoDive&#39;.'


_heading2 'Suggesting Reading for the Extensively Non-Linear Documentation'
_t 'Something for everyone here, so please direct people towards what interests them, be that the hive mind and mind uploading of cognitionSplicer, the summary of modern design principles from problemSolversGuide, VR metaverse shared 3D space software from CARDinal, VR without CNS neural interfaces as described by mechDive, etc'









_page ' ' ###
_ _heading2 'Introduction'
_ _t ' '






_heading2 'Presented'
_ _heading3 'Presented'
_t '*) problemSolversGuide - An &#39;executive summary&#39; of how to develop technology in this universe.

*) Neural interface software and hardware, for &#39;brain upload&#39;, &#39;hive-mind&#39;, &#39;Virtual Reality&#39;, etc.
*) Mechanical interface hardware (ie. exoskeleton) for &#39;Virtual Reality&#39;.

*) Metaverse shared 3D space multiplayer software (ie. CARDinal).

*) Hardware for automatic desktop prototyping <50nm linewidth (eg. resing/electroplating/casting, multiphoton deposition, multilayer PCB, CMOS). 

*) Software design for self-driving AI.

As may be plausible. &#39;MetaEngine&#39; from &#39;ubiquitous_bash&#39;, among other existing resources, may be relevant to quickly implementing designs as described and illustrated herein (ie. better than UNIX pipes).'





_heading2 'Conclusions'
_t '*) At ~100billion stars in Milky Way galaxy, and many galaxies beyond that, and ~10^24 persons/star, there is no need to compete for control over interstellar habitats. Every person alive on Earth (~10billion) for the next several decades at least, can have their own personal star. At ~10^24 inhabitants, if as few as 1/10^12 players have interests favorable to someone else&#39;s, that someone alive today will have plenty of volunteers creating solutions relevant to their needs. There is truly nothing to gain by fighting for any kind of dominance or control over the rules of any interstellar VR habitat.

*) Self-Driving AI universally *is* &#39;Artificial General Intelligence&#39;. Navigation through spacetime from a single embodiment is the fundamental problem to solve for any &#39;cognition&#39;, &#39;automation&#39;, or any kind of problem solving &#39;intelligence&#39;, because a universe predominated by electrons and photons dancing around predominantly finite unchangeable solid matter, is entirely reducible to one single question - where do I go or no?

*) Combining cognitionSplicer with artificial neural networks in something like a modularAI framework raises the interesting possibility of obviating the stability and training time issue of self-driving AI . Most if not all of what the more expensive artificial neural networks are needed for is solving object recognition problems, such applications can tolerate resetting of the neural network every few seconds.


*) Virtual Reality has the long term potential to provide the entertainment at the end point of human technological development, but also, to make the process of technological development much more fun and intuitive, obviating purely dry symbology in favor of more experimentation with simulation of the effects represented by that symbology, to the point of voxelGrid .


*) Dyson spheres (especially of satellite constellations), star lifting, etc, have already long been adequately hypothesized. Designs used should maximize diversity and quality of life (ie. should neither quickly expend nor substantially waste stellar energy reserves).


*) Top down (many rules, arbitrary) has the advantage of avoiding unnecessary unpleasantness - such incomprehensible nuances as the misalignment of neural and bacterial circadian rhythms. Unfortunately, top-down itself results from unpleasant Player develops Automation (PdA) effort, and to identify what is or not necessary to &#39;gameplay&#39; requires taking this beyond a point of diminishing returns. Bottom up (few rules, &#39;big bang&#39;) has the advantage of bringing out all possible Player vs Player and Player vs Environment interactions. However, bottom up does not avert unnecessary unpleasantness - notably parasites and falling asteroids. 
 *) Top down requires an abundance of caution to avoid severe stagnation.
 *) Bottom up requires a high tolerance of neutral and negative results.
 *) ACKNOWLEDGEMENT - Top down and bottom up terminology is from Sword Art Online (SAO) by Reki Kawahara , albeit possibly used in a slightly broader context.


*) Exploration
 *) Venture out to new territory. Careless navigation is sent back for a loop without reward of novelty, or results in encountering danger. Diligent navigation is rewarded by discovering new scenery (and opportunities for resources which make further discoveries possible later). Determination to remain diligent is learned. Exploration may be calibrate learning of determination versus random carelessness, especially during &#39;infancy&#39;.
*) Combat
 *) Player versus Environment
  *) Usually supports Player versus Player both as speed/precision practice and indirectly as a means of obtaining food/resources.
 *) Player versus Player
  *) Relative test of ability. Sometimes friendly for more social species, as practice for later combat between groups.
 *) Player develops Automation
  *) Symbolic manipulation motivated by absence of resources for direct experimentation. Extreme cases of this (extensive software projects) so far have been either unique to human beings, or delegated to inherent evolutionary/genetic algorithm (DNA code development). Such activities result in more automation (eg. software, DNA, hardware design).
*) Regeneration
 *) Speculative. Learning neural networks may not be &#39;indefinitely&#39; stable, some partial periodic reset may be required. For complex biological neural networks today, so far, this seems to happen by complete individual death, but at least at the cost of some side effects, there definitely must be healthier workarounds.

*) Player develops Automation is symbolic gobbledygook manipulation required by insufficient resources to educate and use intuition more experimentally. Such is more suitable for pocket calculator &#39;automation&#39; than &#39;cognition&#39;. Spending much of a lifespan with *little opportunity for experimentation* is an *abuse of cognition*.



*) neuralBits...
 *) Commodity components many years old (ie. SerDes chips, USB3 FPGA), corrosion testing, laser cutting, surface coating, <2mil PCB fabrication, atomic-force probe or electron-beam fabrication of minimal surface area CMOS/polyamide packetizing, codec, ADC/DAC, and amplifier circuitry - are sufficient and well within the combined prototyping resources of &#39;makerspace&#39;, &#39;hackerspace&#39;, and &#39;biohacking&#39; communities today. A combined community open-source effort could overcome this hurdle independently.

*) lithoDive...
 *) Convenient rapid prototyping of electronic circuitry, and small-volume manufacture of unavailable components, without user intervention, at the highest useful resolution possible (<2nm overlay), is now feasible. At the very least, such hardware should provide a more approachable, more educational, opportunity to experiment with modern photolithography optics, etching, and transistor circuitry manufacture.

*) CARDinal...
 *) All of the algorithms specified for CARDinal are straightforward without any plausible major gaps. Ability to load terrain files, import 3D objects into game engines without interruption, import real-time framebuffer video streams, and control 3D object positions, is well documented for major game engines (especially Unity). All necessary inter-process-communication and networking
is available from both MSW and Linux OS kernels. Both MSW and Linux/Cygwin OS can integrate other programs through simultaneously batch/bash interpretable anchor shell scripts from &#39:ubiquitous bash&#39:. Compiled code (ie. C/C++/similar) may be relied upon entirely by standalone clients (eg. Oculus Quest, Android), or use cloud services may be used (eg. if avionics VM is desired by
such users).'




_page ' ' ###
_heading2 'Roadmap and Timeline'
_t 'Insofar as in terms of what is possible, rather than what could cause delays, optimistic. Insofar as in terms of reasonable development time expectations, pessimistic. Efficient parallel workflow, simultaneously solving multiple interrelated issues as usual, assumed (eg. lithoDive must be pursued before sleeveDive). Units is weeks, at approximately between ~60hour/week (10hr*6day) to ~112hour/week (16hr*7day).


All numbers are added to total (ie. these are not strictly categories, an item number does not include development time for a sub-item).




2) Legacy - MSW Host VM control under ubiquitous bash.
 d) Legacy - high speed multiplatform IPC of game object grid data (C implementation of metaEngine scene graph manager).
 +) Legacy - IPC message publication service.


*) Software Distribution
 *) MSW (VR) Host *or* Linux OpenHMD and such.
 *) Linux Software/Hardware/Wetware Design
  *) Cloud build service (ubiquitous bash).
  +) LiveCD/LiveUSB.
   +) Resettable and Nonpersistent.
   +) Hibernation Snapshotting (Save State without Virtualization).
   +) Persistent internal storage.
 *) Linux PanelVM (nominally Gentoo)
  *) Cloud build service.

2) Soldered Metal Plate (or taped/glued Carbon Fiber) Liquid Cooled PC Enclosure (ie. cryogenicComputer)




*) CARDinal
 *) Geometry Solver (voxels to polygons and vice versa, procedural modeling, import/export to reasonably common openly usable formats).
 *) Local Object storage, repositioning, and collision detection (MetaEngine).
  1) C/VRAM shared memory 2D triple framebuffer implementation.
  2) C/VRAM polygon implementation (ie. C implementation of metaEngine scene graph manager).
  5) C/VRAM voxelGrid and edge compression implementation.
  +) Bash/Filesystem infrequent update reposition import implementation.
 *) IPC protocol and implementations.
  4) C library for game engine object (including triple framebuffer) import, repositioning, and collision event reporting.
   *) Unity, FLOSS compatibility.
 x) Command Line, Screen Scraping, File Manager, etc (easily outsourced).

*) cognitionSplicer
 3) TX/RPT event lists to/from local object storage (MetaEngine).
 3) Artificial Neural Network (adequate experimental substitute for wetware).
 4) RPT correlation, iterative rewrite, overlay experiments.

*) memoryRegneration
 2) Partial reset simulation experiment, integrated with cognitionSplicer, evaluating the re-learning and continious performance of an ANN periodically gravitated mostly but not completely towards default.

5) VR Neural decoder/encoder for stimulation only ES precept calibration and conversion of sensory fields to precepts as stimulation ES patterns.
 4) Sensory nervous system ANN emulator.


*) neuralBits
 3) Circuitry.
 5) Automatic layout of repetitive circuitry and wiring into trestles, bundles, threads.
 5) USB3 FPGA, SerDes experiments.
 3) USB3 FPGA software design - &#39;drivers&#39; - compatible with IPC protocol, emulated neuralBits hardware with artificial neural network.
  *) Implementation connecting and compatible with cognitionSplicier, ANN emulators, etc.


*) mechDive
 2) Prototype oversized (>>20mm instead of 2mm) tunneling (including pump) hardware design (3D printable by shapeways, commodity tungsten wire cables, etc).
 2) Artificial muscle bowden cable experiments.
 3) Prototype eddyCurrentBrake .
 3) FlexActuator - tool system at physical limits of compactness and reach into materials (ie. mechDive tunneling mounted to CNC) (ie. &#39;needleHours&#39; if operated manually).


*) Position Trackers
 3) Prototype Object Emitter.
 5) Prototype Speckle Sense.

*) TazIntermediate
 4) Rehearsal Assembly in VR, demonstrating correct pre-tensioning by bolt offsets.

3) Mass production of precise optical mounts, tables, enclosures.

*) CoreFusion(s)
 3) Hardware designs upgraded with latest concepts from lithoDive.
  *) Rigid belt/pinion.
  *) Electronics always mounted close to tool, not independent of gantry.
  *) Slab.
  *) Cartridge.
 3) Klipper firmware control of hardware through IPC message publication.
 3) Prototype lithoDive capable of sub-mm resin printing and multilayer flexible PCB fab.
  3) High-vacuum, wet etch/deposition spray, 
  3) Ultra-pure water, etc.
  *) Vibration isolation experiments (tennis balls or air inflated).
 9) Completely automatic from raw materials to chips.


4) sleeveDive


24) Game development, modularAI, motivation?



+) GNUelectric Transistor Design Experiment
*) OpenHMD Pimax Vision 8kX, OpenHMD Pimax 12K, etc

<130 person weeks (<2.41 person years)
Such projects as &#39;ubiquitous_bash&#39;, &#39;scriptedIllustrator&#39;, &#39;BOMdesigner&#39;, &#39;gEDAdesigner&#39;, &#39;arduinoUbiquitous&#39;, &#39;PatchRap&#39;, &#39;TazIntermediate&#39;, perhaps others, have benefited much more greatly from increasing commoditization through better tools for solving interrelated issues. Such ttrack record may be a more realistic estimate.




From track record for comparable scale projects, instead of total of worst case for each item, expectations may be much more realistic, albeit in fact optimistic.
16) CARDinal
12) neuralBits
04) mechDive
04) Position Trackers
02) Mass production of precise optical mounts, tables, enclosures.
24) CoreFusion(s)

<62 person weeks (<1.15 person years)'






_page ' ' ###
_heading2 'Redistribution and Preservation'
_t 'Due to AGPLv3 copyright, availability of an electronic copy with printed copies is *required*. Shipping USB flash storage (better usability) or optical disc storage (better archival), is recommended.

Printed books should be provided as two copies so at least one may be marked extensively by annotation and tabbing.'



_heading2 'Contributing'
_t 'Please be considerate of the author&#39;s purpose in creating this document and the necessary complexity of including third-party content.

Purpose - technology development plans &#39;almanac&#39;. Any document better optimized for third-party comprehension is a separate *downstream project*, and will not be feasible to automatically synchronize upstream until well after such technology has been developed. While some effort has been made for readability by persons not already actively developing such technology, mostly, that is not and will not be the purpose of this document

Complexity - as a dynamic document extensively combining self-modifying interleaved shell code and markup, equation solving, Xournal sketches, modular shell scripts, etc, editing this document requires some perusal of the directory structure, and of &#39;ubiquitous_bash&#39;, &#39;scriptedIllustrator&#39;, etc. 

Any third-party usability of this document at all is mostly if not entirely a byproduct of the desire to compose &#39;creative&#39; (not yet routine) technical work into a loose &#39;almanac&#39; because the author expects to be too exhausted for much &#39;creativity&#39; during any implementation effort.


Suggestions for any improvements will be strongly filtered for expediency and necessity. Please submit pull requests with all regression, authorship, copyright, etc, issues already clearly negligible for best results. Please also consider keeping your own copies of your repository history in case of any issues (ie. copyright claims) with hosting or possible fumbles with such issues.


Contributors to the repository of this book, may at sole entirely arbitrary discretion of author &#39;mirage335&#39;, be eligable to claim an equal or greater share of something like 20% or 80% of profits so long as these have been set aside, awarded on a case-by-case and first-come-first-serve basis, possibly with some priority for claimants with significant potential for improving related open-source technology, with the rationale for each claim and award a matter of public record. Such awards are donations and may not be given if there is any reasonable perception of &#39;quid-quo-pro&#39;, or if international/tax issues are substantial. Remaining profits after that may be distributed to author &#39;mirage335&#39;.'






_heading2 'Third Party Copyright, Attribution, etc'
_t 'Few third-party copyrighted works are included, all with AGPLv3 compatible license, and most if not all having been hosted by Wikipedia. If it wasn&#39;t at least safe enough for Wikipedia, it&#39;s not safe for the repository history.

Reasonable efforts have been made to attribute sources.'



_heading2 'Copyright'
_t 'universalTechnologySpecificationTextbook
This file is part of universalTechnologySpecificationTextbook.

universalTechnologySpecificationTextbook is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

universalTechnologySpecificationTextbook is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with universalTechnologySpecificationTextbook.  If not, see &lt;http://www.gnu.org/licenses/&gt;.
'




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
current_internal_CompressedFunctions_bytes='12383'
current_internal_CompressedFunctions_cksum='4000152164'
current_internal_CompressedFunctions='
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'
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


