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
_t '*) Neural correlates of consciousness other than mere computing (eg. voltage gradients, molecules, etc, to which specific inputs account for conscious perceptions of sight/sound/touch/taste/smell/etc) may not be ruled out presently. Hardware may claim to have these conscious experiences, while in fact only emulating the behavior to make such a claim (ethically would need to be treated as sentient in either case). Consequently, interfacing wetware to hardware by neural interface and bioreactor (or similar more efficient technology) may be preferable (ie. lower risk) rather than replacing wetware with hardware. 

*) Replacement of entire genome in all cells, possibly by successive replace/erase/write CRISPR, is now recognized as a possible alternative to some of the functionality of a neural interface, or at least a possible means of reducing the geometric constraints on a neural interface. Replacing or repairing neurons/synapses would still require sufficient remaining original neurons/synapses for longevity use (ie. similar spatial resolution and memory stability expectations would apply both to neuron repair/replacement as would apply to neural interface electrode sites).


*) At ~100billion stars in Milky Way galaxy, and many galaxies beyond that, and ~10^24 persons/star, there is no need to compete for control over interstellar habitats. Every person alive on Earth (~10billion) for the next several decades at least, can have their own personal star. At ~10^24 inhabitants, if as few as 1/10^12 players have interests favorable to someone else&#39;s, that someone alive today will have plenty of volunteers creating solutions relevant to their needs. There is truly nothing to gain by fighting for any kind of dominance or control over the rules of any interstellar VR habitat.

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
current_internal_CompressedFunctions_bytes="12375"
current_internal_CompressedFunctions_cksum="3023785929"
current_internal_CompressedFunctions="
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"
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


