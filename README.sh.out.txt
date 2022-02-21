
Copyright (C) 2021,2022- mirage335
See the end of the file for license conditions.
See license.txt for universalTechnologySpecificationTextbook license conditions.


Self-Driving AI builds habitat throughout uninhabited galaxies and most of the Milky Way. Virtual Reality efficiently creates unlimited space for as many people as possible. Many people continue living on planetary surfaces.

Details of how to build all of the technologies to make this possible are described here. Also, some discussion of what should be done and why. Something of a &#39;how-to&#39; guide.




_ Reading _
Terse. Somewhat a combination of a little &#39;policy&#39; (mostly in the preface), a little &#39;philosophy&#39; (mostly in the problemSolversGuide, defining real success as happiness) and a lot of technology designs.

	problemSolversGuide
A guide to technology development for newbies. Mostly can be summarized as &#39;universe is very simple, just a bunch of electrons, photons, and here are the few useful things that can be made from those&#39;.
*) Exhaustively defines real success as happiness.
*) Exhaustively explains the universe predominted by just electrons and photons is very simple.
 *) Technology is simple (even biology) - feedback and logic gates.
 *) Activities are categorically simple (eg. exploraton, PvP, PvE).
*) No handwavium or unobtainum.

	cognitionSplicer
Brain copying and brain-to-brain connection software algorithms for neural interfaces. How to correlate neural activity recordings to synapses and connectomes. Amount of neural activity and electrode sites that must be recorded. Amount of computer time. Electrode site calibration from correlating neural activity to connectomes.

	neuralBits
Neural interface (CNS) sufficient for virtual reality, brain copying, brain-to-brain connection. PCB layout, threads punched at breakaway. Why other neural interface designs would be less optimum for human brain as-is.

	mechDive
Directional tunneling and similar tools for minimially invasive surgery, especially for PNS nerve interfaces. Mechanical full-dive VR exoskeleton and low-cost mechanical tactile pixels. Eddy current brake and artificial muscle bowden cable pullers to power exoskeleton and/or directional tunneling. These separate &#39;mechDive&#39; technologies are closely related by their underlying mechanical technology, though minimally invasive surgery and VR exoskeletons are obviously very different purposes.

	CARDinal
Object, position, rotation message specification for shared 3D spaces. Inter-process communication using that message specification between game engine and standalone programs (eg. flight model, avionics, VR desktop overlay). Limited trade between WORLDs without persistent blockchain. Anti-cheat by statistics and reputation without prohibiting automation entirely. Visual effects (eg. fluid physics) compressed and distinct from consequential actions checked by anti-cheat. Bandwidth estimates relative to existing and expected internet, Starlink, amateur radio cubesat, etc, networks.  Possibly vaguely similar in principle to VRChat specifications.

	lithoDive
Photolithography and high-resolution low-maintenance 3D printing tool, thoroughly automated and EUV compatible. Estimated time to prototype own neural interface and GPU hardware using this low-cost machine. Illustrations of best optical principles, compact optics packages, low cost optical mounts, etc.

	positionTrackers
Track object position using a microcontroller with low-cost redundant inertia, magnetic, optical emitters/sensors, and laser speckle (equivalent to a laser optical mouse). Low cost PCB layout. Integrates rather than replaces existing VR controllers. Usable as a VR controller, VR exoskeleton force-feedback sensing, or as 3D printer calibration, etc. Similar to existing Oculus/Vive/etc VR controllers.

	sleeveDive
Brain in a vat.

	cryogenicComputer
Computer in a thin metal box. More compact, more reliably completely cooled to very low temperatures.

	flightDeck
Flight &#39;simpit&#39; chair, convenient and nearly typical avionics controls layout, flight sim computer (ie. &#39;gaming PC&#39; peripherial wiring, mechDive full-dive VR exoskeleton mounting to pitch/roll/yaw axis.

	modularAI
Self-Driving AI algorithm architecture. Self-Driving AI is &#39;Artificial General Intelligence&#39; - where to go and where not to go is the problem all &#39;intelligence&#39; always solves in a universe predominated by electrons photons. Algorithm illustrated passes messages to a shared bus, sending conclusions in a few categories into a feedback loop that causes behavior and modifies future behavior. Realtively low-priority, as the unsolved technical issue for the AI industry today is insufficient computer vision performance, with the industry already apparently making excellent progress.



 '_image' 'https://github.com/mirage335/mirage335_author/raw/main/zzLib_895-reference/from_uTST/neuralBits-zEXCERPTED-diagram-picture.png' '40%'
 '_image' 'https://github.com/mirage335/mirage335_author/raw/main/zzLib_895-reference/from_uTST/sleeveDive-extraction.png' '60%'
 '_picture' 'https://github.com/mirage335/mirage335_author/raw/main/zzLib_895-reference/from_uTST/problemSolversGuide-amplifier-commonEmitter.png' '20%'
 '_image' 'https://github.com/mirage335/mirage335_author/raw/main/zzLib_895-reference/from_uTST/lithoDive-flatTool.png' '80%'
 '_image' 'https://github.com/mirage335/mirage335_author/raw/main/zzLib_895-reference/from_uTST/cognitionSplicer-topographicMapping.png' '80%'

_ PDF Download _
_r '
<a href="https://raw.githubusercontent.com/mirage335/universalTechnologySpecificationTextbook/main/universalTechnologySpecificationTextbook.pdf">https://raw.githubusercontent.com/mirage335/universalTechnologySpecificationTextbook/main/universalTechnologySpecificationTextbook.pdf</a>
'

 '_page' ' 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


_ Usage _
[0;37;100m[0;34m ./_consolidate_documents.bat [0m[0m

Resulting &#39;document.pdf&#39; and other PDF files are rather large binary object output (>15MB) excluded from git repository history. Rename &#39;document.pdf&#39; to &#39;universalTechnologySpecificationTextbook.pdf&#39; when appropriate.

 '_page'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


_ Design _
Mostly uses &#39;scriptedIllustrator&#39; . Some files may use resources from other files, using path variables defined by &#39;zzLib_800-documents/consolidateVariables.sh&#39; .

Unusually...
*) Some content (eg. Xournal files) is only combined into PDF output.
*) Xournal, text, and other files, are included.
*) MODULE scripts may be included by the &#39;scriptedIllustrator&#39; documents.
*) Qalculate is explicitly set as backend by override of &#39;_clc&#39; and &#39;_solve&#39; functions.
*) Output of many separate documents is combined into a single PDF with Table of Contents.

Consequently, shell output and PDF are the intended output formats. Other markup (eg. HTML) is disabled by default, may not have been tested, would NOT completely include some content (eg. Xournal files), and would NOT be self-modifying as is.

 '_page'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


_ Safety _
Please use this information responsibly, especially in due diligence. Documents here show what is technically feasible, not what anyone can do, much less safely or economically. Expect software to freeze, machines to degrade, wetware to clog, and worse. Account for the plausibility of every component and assembly, design contingencies, and most of all, plan completely for every failure mode with redundancy.

To anyone contemplating implementing the technology described here as-is, BEWARE, documenting the obvious or useless was out of scope. Best practices, modern techniques, subtle pitfalls, and possible misconceptions, may not have been mentioned in every case. A very well educated intuition of the subject matter and unrelenting due diligence will be strictly required.

To anyone contemplating using invasive medical technology of any kind - DON&#39;T - unless you can actually quantify the risks statistically from directly comparable experiments. Modern technology and science can quantify all of the relevant risks, but the sources of risk are very numerous and not all widely understood. Modern medicine is already arguably much too aggressive in understating the risks of introducing subtle yet severe lifelong deficiencies.

If you proceed with surgery of any kind with less than very strong abundance of caution and skepticism, you WILL cause serious collateral damage.

If you think the author is reckless or not personally all too aware of medicine gone horribly wrong, you would be very, very much mistaken.


Really, if you needed reminding that accidents costing life or limb are undeniably tragic, much less that outright direct brain damage is most tragic of all, then you should re-read this safety warning multiple times, and maybe not read other stuff here at all. Seriously, you have been warned, your accident is your accident.

 '_page'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


_ Reference _

https://github.com/mirage335/universalTechnologySpecificationTextbook
 Git Repository for universalTechnologySpecificationTextbook

 '_page'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


_ Copyright _

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






