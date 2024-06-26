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

*) Scratch genome design may become possible within the next few years or less, possibly before and/or as a means to achieve, effective neural interfaces. Multiple exaflops of computing is becoming available somewhat sooner than might have been anticipated, due to the appparently lengthy delay transitioning the highest performance GPUs and similar devices (eg. Tesla &#39;Tile&#39;) to EUVL until, as a milestone, the release of the &#39;RTX 4090&#39; .


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


