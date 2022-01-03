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
_heading1 'lithoDive'
_t 'Desktop automatic multilayer photolithography prototyping for 3D printing (ie. resin/electroplating/casting, multiphoton, deposition/etching, etc), flexible PCB manufacture, and transistor circuitry (eg. CMOS) fabrication. Techniques for maximizing overlay precision, minimizing capital cost, and manufacturing machines to make machines as may be necessary or as may workaround availability. Compatible with 405nm-10nm, <50nm@193nm multiple patterning linewidths, <5nm@193nm overlay. Maskless, or in-place mask manufacturing and swapping. Slow fabrication and inefficient consumables use may be justified by &#39;lights out&#39;, compact, low-capital, self-contained, small volume manufacture. Emphasis on production of open-source wetware/neural/mechanical &#39;full dive&#39; interface - CAVE displays (ie. large LCD/OLED panels), flexible PCBs (including interconnect &#39;ribbon&#39; cables), GPU, MCU, mechDive tunneling, and mechDive exoskeleton, hardware.

Convenient rapid prototyping of electronic circuitry, and small-volume manufacture of unavailable components, without user intervention, at the highest useful resolution possible (<2nm overlay), is now feasible. At the very least, such hardware should provide a more approachable, more educational, opportunity to experiment with modern photolithography optics, etching, and transistor circuitry manufacture.'
_heading2 'Introduction'
_t 'Where the tradeoff of reducing from very large, very expensive, factory machines, to &#39;desktop&#39; prototyping, is expected to fall, is the &#39;field of view&#39;. Rather than tens of millimeters and hundreds of gigabits of patterning, an area of as little as a micrometer diameter and less than one kilobit is expected to scan slowly across a workpiece.

Three issues are expected to predominate design of such a prototyping &#39;desktop&#39; fabricator, when used at (ie. <100nm) high resolution. At low resolution (ie. ~300nm), none of these issues are relevant, with resolution and conveneince still useful for tasks substantially beyond commercially available services (eg. sub-mm resin 3D printing).

*) Overlay. Accuracy of alignment from previous imaging exposure to next, limits resolution, due to multiple patterning.
*) Mirror and Spatial Light Modulator surface accuracy, roughness, and reflectivity, if EUV compatible, mitigated somewhat by small dimensions and adaptive optics.
*) Dust. Mitigated somewhat by keeping all tools on one flat table which slabs can move across autonomously. At high resolutions, liquids and gasses used for polishing, coating, and etching, must be pure.


Much of the design software and relevant hardware has been deliberately proven by the successful &#39;TazIntermediate&#39; project, and related projects before that.

Modern science and manufacturing technology has emerged a widely available plethora of hardware and software sufficient for individuals and small businesses to theirselves prototype all manufacturable technology, including making the prototyping technology theirselves.

*) Semiconductor lasers (ie. 405nm).
*) Pulsed YAG lasers (ie. tattoo removal lasers from eBay) for heating plasmas to EUV stimulated emission (at least if synchronized and possibly modified for semiconductor laser pumping).
*) Labs already having milliwatt desktop EUV light sources possibly already usable with suitable lithography tools.
*) Microscope objectives.
*) EUV flat/spherical mirrors (which may be sliced in half if necessary) (from Edmund Optics).
*) EUV mirror grinding and sputter coating to picometer flatness by interferometric alignment at longer wavelengths.
*) Assorted metal parts (eg. extrusions, brackets, plain bearings).
*) Linear and flexure bearings.
*) Expansion (ie. piezo) actuators and step-slip actuators.

*) PatchRap all-purpose stranded Cat6A S/FTP (shielded/foil twisted pair) cabling standards.

*) Software and VM integration (including filesystem and serial communications) by &#39;ubiquitous bash&#39; .
*) Klipper firmware scheduling of mechanical and optical events corrected by low-latency computer feedback (eg. camera based computer vision of workpiece and overlay).
*) Connection of Klipper hardware serial networks to VM software serial networks by &#39;ubiquitous bash&#39; .
*) VR &#39;hardware-in-the-loop&#39; simulation through CARDinal IPC connected to Klipper hardware serial networks and VM emulated serial networks.
*) VR &#39;software-in-the-loop&#39; simulation through CARDinal IPC connected to standalone executables with subroutines shared directly with Klipper firmware compiler.

*) Solid-state disks of high capacity for operating systems with all software installed and integrated.

*) Parametric Geometry (Sketch/Extrude/Assemble) by FreeCAD contained with &#39;assembly&#39; modules by &#39;ubiquitous bash&#39; .
*) Programmatic Geometry by OpenSCAD/TinkerCAD .
*) PCB layout geometry by gEDA with _gEDA_designer_geometry .
*) VLSI layout geometry by GNU Electric .
*) Bill-of-Materials (aka. &#39;BOM&#39;) hierarchical consolidation by BOM_designer .
*) Documentation by scriptedIllustrator, Xournal, with Qalculate and GNU Octave backends.

*) GravitySketch/MakeVR/etc for VR contemplation, rehearsal, demonstration of assembly, cabling, labor (if any), etc.

*) Building and testing of operating systems and installed software by &#39;ubiquitous bash&#39; for RasPi, x64 BIOS/UEFI, LiveCD/LiveUSB, VM/VPS/Cloud, with hibernation snapshotting.
*) Software largely compatible as Linux Guest VM under MSW Host both managed by &#39;ubiquitous bash&#39; (ie. &#39;ubiquitous bash&#39; directly MSW compatible). Only very rare cases (ie. GravitySketch) standalone and proven cost-effective to use through MSW natively.


No manual conversions of information from fully parametric &#39;Geometry&#39; (with Bill-of-Materials) to &#39;Stamp&#39; (G-Code, photomasks, scale model geometry, etc, automatically exported).

No intervention from raw materials to prototype multilayer circuitry.

No need for particularly difficult to install, proprietary, or otherwise expensive software.

Convenient uninterrupted design work by people, while the rapid prototyping &#39;just works&#39;, is entirely feasible and appropriate.



Convenience, cost, availability, and versatility, have arguably been the limitations of existing desktop lithography, prototyping services, and existing products. Whenever possible, the narrow selection of microcontrollers, FPGAs, and similar components are used to approximate small portions of completed solutions worthy of a large manufacturing run at high capital expense and risk, which large companies may then be reasonably unwilling to carry out at all. Prototyping and small volume manufacture of some technology for niche users whose needs cannot be immediately met by existing resources, has remained elusive.

Desktop lithography (eg. e-beam, AFM) may not be convenient, slow with manual intervention between layers. CMOS prototyping services can be expensive (>>$10k) and possibly complex to work with, worth wholly outsourcing. Technically feasible fabrication (eg. of unusual LCD/OLED display dimensions/resolutions, sub-mm resolution 3D printing) may not be available as prototyping services, all capacity exclusively dedicated to high-volume manufacturing. Existing products (eg. MCUs/FPGAs/GPUs) may have dimensions too large for many uses (ie. ~2mm MCUs), insufficient performance (ie. FPGAs), may be unavailable due to supply/demand issues (ie. GPUs), or may be unusable for some purpose due to underemphasis of some single-threading performance or bandwidth (ie. CPUs, GPUs).
'
_heading3 'Presented'
_t 'As may be plausible.'
_heading4 'Sketch Illustrations'
_t '
*) Tool - &#39;flatTool&#39; - as a wall (ie. vertical Rigid Table) mounted to gantry. Heavy mass (>>100kg) acceleration allowed - taking advantage of inexpensive modern linear bearings, stepper/servo motors, metal frames, etc. Cube brackets as alignment stops allow tool to be dismounted from gantry within minutes for convenient assembly/maintenance. Multiple beampaths to same workpiece area (ie. combining - high-wear EUV low-NA mirror, low-wear DUV high-NA lens, electronBeam, scanningProbe, etc) may be possible .

*) Positioning hardware. Wide area (>1m), high speed (>50mm/s), high acceleration (>>0.1G), high precision (<1nm), accessible around all sides for fast assembly and maintenance.
 *) Gantry Six-Axis (Pitch/Roll/Yaw, X/Y/Z) on Rigid Table. Extreme precision (<<300nm) over a large area (>1m) by combining usual linear bearings with minimal gantry flexure, step-slip, and anchoring. Heavy tool (ie. >>100kg) compatible.
 *) Slabs with Six-Axis actuators - both expansion and step-slip - to move workpieces with extreme (<<1nm) precision.

*) Gantry may slide to ends of table, swapping multiple gantries to change tool, or may slide off end of table with or without tool on a quick change mount as well, for maintenance/assembly.

*) Cartridge associated with slab hardware. Workpieces never leave their moving slabs. Automatic loaders for FOUP (Front Opening Unified Pod, 300mm wafers), FOSB (Front Opening Shipping Box), and SMIF (Standard Mechanical Interface, 200mm wafers) industry standard cartridges may transfer to/from such slab cartridges.

*) Optical mounting and alignment hardware (low-cost).

*) Mirror, lens, workpiece (eg. silicon wafer) grinding tool.

*) Piezoelectric and thermal expansion actuators with battery protective and remote bias electronics for nanopositioning, step-slip, and adaptive optics.

*) Optical beampath - &#39;multiExposureTool&#39;. Optical lens light source (spatial filtering, temporal decoherence, spatial decoherence), projection (shadow, beam shadow, beam steering), microscopy (beam splitting, beam profiling, low coherence tomography), etc. Modular arrangements optimized for compactness, low cost, and compatibility (possibility of using mirror microscope objectives for spatial filters and such up to 193nm).'
_heading4 'Calculators'
_t '*) Fabrication time per area per layer - feed rate, field of view, power (watts, amperes, etc), dose (watt hours, joules, photons, coulombs, etc) per area.

*) Fabrication time for GPU, &#39;neuralBits&#39;.'
_heading2 'Conclusions'
_t 'Overlay alignment apparently must be through the same optics/mechanics as exposure. Solid materials always seem able to expand at least several nanometers per few tens of centimeters under the best possible (<<1degC) temperature stability. Segmented mirror beamsplitters injecting long wavelength light, low power alignment illumination, scatter/morie camera observation of exposure illumination, etc, may be appropriate. Long-wavelength interferometry is comparable to subwavelength through-beam optical overlay, and has already been extended to the extraordinary resolution required to detect gravity waves. ASML&#39;s logo is a morie pattern, seemingly not for nothing.

Theoretically, pervasive displacement detection across all optical components, and better than EUV light interferometry, may allow accurate measurements of such small deformations (ie. <<2nm) between components for overlay between different instruments, sufficient to extend multiple patterning resolution. Actively feedback driven interferometers at longer wavelengths under high optical power and high resolution camera observation may be capable of <<1nm accuracy. Such would necessarily resemble gravity wave detectors in capability, distributing the high optical power across many pixels of a cryogenic sensor, correlating long exposures, statistically determining all full step boundaries, and ignoring any mechanical stepping information. Most obvious other particles for such measurements (eg. X-ray photons, electrons, neutrinos, heavy ions, etc) do not interact usefully for interferometry, scatter unhelpfully, cannot focus across long distances, are unproductively expensive, or otherwise cannot pervasively sample feasibly compact (ie. not astronomically large) beampaths.




Adaptive optics are possible, as piezoelectric unimorph mirrors coated for EUV, with low-latency correction by computer readout of overlay alignment.

Overlay alignment marks must be at regular intervals, more than one per field of view.


Practice photolithography exposures should not attempt to maximize pitch (ie. resolution) until a continuous means of testing (eg. continuous tape as workpiece, all resist spraying/etching chemical steps completely automatic, projection into another imaging microscope, scatter/morie camera) is ready. 

Microphones should be attached throughout sensitive optical projection, calibrated to approximately measure nanometers of displacement by inertia, with frequency range of concern between the lowest frequency at which components vibrate independently through the highest frequency at which dampening takes effect (a passband much less than 1Hz-20kHz is expected relevant).


Nanoimprint lithography may multiply the productivity of a maskless tool. Interconnects may be patterned first by photolithography, then frequently occurring circuitry may be added between interconnects by nanoimprint lithography. Defective &#39;cores&#39; and such may be disconnected from interconnects ablatively.

 


Resin/electroplating/casting at sub-mm resolution low-resolution photolithography is sufficient to substantially ease development of high-resolution photolithography and especially particleBeam/scanningProbe lithography. More than the small components (eg. electrostatic lenses, electromagnetic lenses) used directly, machinery to manufacture essential parts (eg. lens grinding tool, probe tip grinding tool, etc) could be revised quickly.


Full microstepping resolution does actually happen with heavy loads and has been measured by optical microscope at 3um from 8000um/(360/1.8deg)/16microstep accelerating ~10lbs by NEMA17 stepper motor (ie. TazMega) . Backlash when changing direction is typically a more substantial limitation, and highly compressed spring-loaded anti-backlash bolts may not be entirely adequate.
'
_page ' ' ###
_heading2 'REFERENCE'
_t 'https://www.youtube.com/watch?v=R4kh9T5L1XY
	&#39;sales revenue to service revenue&#39;
		Quite a lot of maintenance. Something to avoid for prototyping tools if possible.
	&#39;software&#39; &#39;upgrades&#39;
	&#39;45 million lines&#39;
	MAJOR - &#39;resolution&#39; &#39;projection&#39; &#39;k1&#39; &#39;physical limit of 0.25&#39;
	&#39;EUV&#39; &#39;NA&#39; &#39;0.55&#39; &#39;critical dimension&#39; &#39;8 nanometers&#39;

https://wiki.hacdc.org/index.php/OpticalSubsystems
	Standard axis heights!


https://en.wikipedia.org/wiki/List_of_laser_types#/media/File:Commercial_laser_lines.svg
ArF 193nm lasers seem reasonably easy to construct, flowing reasonably common elemental gas through electrical discharge. Nitrogen 337.1nm lasers are even more easily and commonly constructed as an Earth atmospheric electrical discharge.

https://www.lasertack.com/en/200mw-375nm-laser-diode
	Interesting drop-in replacement for 405nm laser diode.


https://optlasers.com/mounts/
https://www.lasertack.com/en/optomechanics
https://www.lasertack.com/en/adjustable-mirror-holder
https://www.lasertack.com/en/micro-knife-edging-/-beam-combiner-module
	Many affordable optical mounts.

https://dberard.com/home-built-stm/
	Affordable &#39;DIY&#39; optical mounts.




https://hackaday.com/2015/12/10/esoteric-actuators/
	Piezo buzzers can be repurposed as 150V/0.1mm actuators.
	MAJOR - Crystal oscillators may be a higher quality source.
	Piezo achieves full six-axis at least with independent power supplies. Unfortunately may change over time under DC bias.

https://hackaday.io/project/4986-scanning-tunneling-microscope
	Cheap stepper motor driving a screw achieving theoretical ~6nm precision.

https://magao-x.org/publications/media/spie2018/Kautz_Manuscript.pdf
	1 microradian ?
	20nm/degC

https://www.youtube.com/watch?v=nMonZHMTra4
	Elastomeric material and corner posts applying orthogonal rigidity. Really convenient setup.

https://rechneronline.de/sehwinkel/angular-diameter.php
	Desired accuracy or precision - 0.1um , 10000um (1cm) , 10^-5radians == 10microradians

https://youtu.be/_w0Z2Y5vaAQ?t=662
https://www.youtube.com/watch?v=MdRwiI6VLmk
	Step size of 100nm X/Y and 30nm Z demonstrated with autofocus capable 405nm lithography projector.




https://en.wikipedia.org/wiki/IMEC
Sketches presented predate awareness of IMEC&#39;s involvement.
&#39;Neuropixels Technology&#39;
	&#39;The performance of the Neuropixels probes and their potential for transformational neuroscience experiments was described in a November 9, 2017 paper published in Nature.[24] In 2019, The New York Times reported that imec&#39;s Neuropixels technology is widely recognized as the most advanced method of gathering data from brain cells.[25]&#39;
&#39;Brain-On-Chip Research&#39;
'


_page ' ' ###

_ 'Number of square centimeters actually plausible to image, not number of square centimeters total within wafer diameter. Practical GPUs and &#39;neuralBits&#39; hardware is not expected to have a continuous area much less than 1cm^2 .'
_i wafer_300mm_cm2=600



_heading2 'Estimate - Photolithography Joules (Watt-Seconds) Constrained'
_e_ photolithography_joules_cm2='$(_clc " 1000 * (1 millijoule / 1 joule) " )'
_i photolithography_joules_mm2='$(_clc " $photolithography_joules_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'photolithography_joules_mm2= "$photolithography_joules_mm2"'
_i photolithography_joules_um2='$(_clc " $photolithography_joules_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'photolithography_joules_um2= "$photolithography_joules_um2"'

_e_ photolithography_watts='$(_clc " 0.01 * (1 milliwatt / 1 watt) " )'

_e_ photolithography_seconds_cm2='$( _clc " $photolithography_joules_cm2 / $photolithography_watts" )'
_o_ _safeEcho_newline 'photolithography_seconds_cm2= "$photolithography_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'

_i photolithography_seconds_wafer='$(_clc "$photolithography_seconds_cm2 * $wafer_300mm_cm2" )'
_ _o_ _safeEcho_newline 'photolithography_seconds_wafer= "$photolithography_seconds_wafer"'
_i photolithography_seconds_mm2='$(_clc " $photolithography_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'photolithography_seconds_mm2= "$photolithography_seconds_mm2"'
_i photolithography_seconds_um2='$(_clc " $photolithography_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'photolithography_seconds_um2= "$photolithography_seconds_um2"'





_heading2 'Estimate - E-Beam Coulombs (Ampere-Seconds) Constrained'
_e_ ebeam_coulombs_cm2='$(_clc " 10^-3 " )'
_i ebeam_coulombs_mm2='$(_clc " $ebeam_coulombs_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'ebeam_coulombs_mm2= "$ebeam_coulombs_mm2"'
_i ebeam_coulombs_um2='$(_clc " $ebeam_coulombs_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'ebeam_coulombs_um2= "$ebeam_coulombs_um2"'

_e_ ebeam_amperes='$(_clc " 10^-9 " )'

_e_ ebeam_seconds_cm2='$( _clc " $ebeam_coulombs_cm2 / $ebeam_amperes" )'
_o_ _safeEcho_newline 'ebeam_seconds_cm2= "$ebeam_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'

_i ebeam_seconds_wafer='$(_clc "$ebeam_seconds_cm2 * $wafer_300mm_cm2" )'
_ _o_ _safeEcho_newline 'ebeam_seconds_wafer= "$ebeam_seconds_wafer"'
_i ebeam_seconds_mm2='$(_clc " $ebeam_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'ebeam_seconds_mm2= "$ebeam_seconds_mm2"'
_i ebeam_seconds_um2='$(_clc " $ebeam_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'ebeam_seconds_um2= "$ebeam_seconds_um2"'




_heading2 'Estimate - Scanning FOV Mechanically (mm/s) Constrained'
_e_ fov_diameter_mm='$(_clc "10 * ((1 micrometer) / (1 millimeter))" )'
_e_ fov_speed_mmPerSecond='300'
_i fov_area_cm2='$(_clc " ( $fov_diameter_mm )^2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_o_ _safeEcho_newline 'fov_area_cm2= "$fov_area_cm2"'
_i fov_speed_cmPerSecond='$(_clc " $fov_speed_mmPerSecond * ((1 * millimeter) / (1 * centimeter)) " )'
_o _safeEcho_newline 
_e_ fov_seconds_cm2='$( _clc " 1 / ( $fov_area_cm2 * $fov_speed_cmPerSecond ) " )'
_o_ _safeEcho_newline 'fov_seconds_cm2= "$fov_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'
_o _safeEcho_newline 
_e_ fov_seconds_cm3='$( _clc " ( $fov_seconds_cm2 * (1 / ( $fov_diameter_mm * ((1 centimeter) / (1 millimeter)) ) ) " )'
_o_ _safeEcho_newline 'fov_seconds_cm3= "$fov_seconds_cm3"'
_o _safeEcho_newline 'seconds per cm^3.
Keep in mind this is still at ~300nm expected resolution (10micrometer is the FOV not resolution) - trading resolution for FOV (and much faster scanning) is entirely possible.'
_t '

High-wattage (ie. >1W @ >405nm) laser (eg. for sub-mm resin 3D printing, thermal/ablative lithography, and flexible PCB photolithography) is expected to exceed stable travel acceleration for low mass optical projection tools.
'

_i fov_seconds_wafer='$(_clc "$fov_seconds_cm2 * $wafer_300mm_cm2" )'
_ _ _o_ _safeEcho_newline 'fov_seconds_wafer= "$fov_seconds_wafer"'
_i fov_seconds_mm2='$(_clc " $fov_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _ _o_ _safeEcho_newline 'fov_seconds_mm2= "$fov_seconds_mm2"'
_i fov_seconds_um2='$(_clc " $fov_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _ _o_ _safeEcho_newline 'fov_seconds_um2= "$fov_seconds_um2"'




_heading2 'Estimate - Scanning Probe Mechanically (mm/s) Constrained'
_e_ probe_diameter_mm='$(_clc "300 * ((1 nanometer) / (1 millimeter))" )'
_e_ probe_speed_mmPerSecond='1'
_e_ probe_parallelism='1'
_i probe_area_cm2='$(_clc " ( $probe_diameter_mm )^2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_o_ _safeEcho_newline 'probe_area_cm2= "$probe_area_cm2"'
_i probe_speed_cmPerSecond='$(_clc " $probe_speed_mmPerSecond * ((1 * millimeter) / (1 * centimeter)) * $probe_parallelism" )'
_e_ probe_seconds_cm2='$( _clc " 1 / ( $probe_area_cm2 * $probe_speed_cmPerSecond ) " )'
_o_ _safeEcho_newline 'probe_seconds_cm2= "$probe_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'
_t '

Biology and supposedly &#39;nanotechnology&#39; &#39;self-replication&#39; is essentially massively parallel scanning probe lithography with severe inefficiency from exceptionally frequent overlay markings (including neural axon growth markings). Fused Filament Fabrication is also a scanning probe technology, mostly appropriate for objects with mostly homogeneous bulk materials.

Manufacturing throughput in number of patterns (ie. transistors) per second is not obviously promising for scanning probe (or &#39;self-replication&#39;) and must be the basis for diverting substantial investment away from a proven track record.'

_i probe_seconds_wafer='$(_clc "$probe_seconds_cm2 * $wafer_300mm_cm2" )'
_ _o_ _safeEcho_newline 'probe_seconds_wafer= "$probe_seconds_wafer"'
_i probe_seconds_mm2='$(_clc " $probe_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'probe_seconds_mm2= "$probe_seconds_mm2"'
_i probe_seconds_um2='$(_clc " $probe_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'probe_seconds_um2= "$probe_seconds_um2"'



_heading2 'Estimate - Wafers Per Hour (marketing specification) Constrained'

_heading3 'Parallel E-Beam (prototyping)'
_e_ marketing_prototyping_wafersPerHour=1
_i marketing_prototyping_wafersPerSecond='$(_clc "$marketing_prototyping_wafersPerHour / 3600" )'
_e_ marketing_prototyping_seconds_cm2='$( _clc " ( 1 / $marketing_prototyping_wafersPerSecond ) / $wafer_300mm_cm2 " )'
_o_ _safeEcho_newline 'marketing_prototyping_seconds_cm2= "$marketing_prototyping_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'

_i marketing_prototyping_seconds_wafer='$(_clc "$marketing_prototyping_seconds_cm2 * $wafer_300mm_cm2" )'
_ _o_ _safeEcho_newline 'marketing_prototyping_seconds_wafer= "$marketing_prototyping_seconds_wafer"'
_i marketing_prototyping_seconds_mm2='$(_clc " $marketing_prototyping_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'marketing_prototyping_seconds_mm2= "$marketing_prototyping_seconds_mm2"'
_i marketing_prototyping_seconds_um2='$(_clc " $marketing_prototyping_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'marketing_prototyping_seconds_um2= "$marketing_prototyping_seconds_um2"'

_heading3 'Photolithography EUVL (factory)'
_e_ marketing_factory_wafersPerHour=170
_i marketing_factory_wafersPerSecond='$(_clc "$marketing_factory_wafersPerHour / 3600" )'
_e_ marketing_factory_seconds_cm2='$( _clc " ( 1 / $marketing_factory_wafersPerSecond ) / $wafer_300mm_cm2 " )'
_o_ _safeEcho_newline 'marketing_factory_seconds_cm2= "$marketing_factory_seconds_cm2"'
_o _safeEcho_newline 'seconds per cm^2.'

_i marketing_factory_seconds_wafer='$(_clc "$marketing_factory_seconds_cm2 * $wafer_300mm_cm2" )'
_ _o_ _safeEcho_newline 'marketing_factory_seconds_wafer= "$marketing_factory_seconds_wafer"'
_i marketing_factory_seconds_mm2='$(_clc " $marketing_factory_seconds_cm2 * (((1 * millimeter)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'marketing_factory_seconds_mm2= "$marketing_factory_seconds_mm2"'
_i marketing_factory_seconds_um2='$(_clc " $marketing_factory_seconds_cm2 * (((1 * micrometer)^2) / ((1 * centimeter)^2)) " )'
_ _o_ _safeEcho_newline 'marketing_factory_seconds_um2= "$marketing_factory_seconds_um2"'








_page ' ' ###

_heading2 'Estimate - Fabrication Area'

_heading3 'neuralBits'
_ 'Transmission lines assumed on order of ~1um thickness and/or multilayer. Minimum trestle/bundle/thread thickness assumed ~50um for needle punch durability.'

_e_ length_cm=10
_e_ width_cm=10
_e_ depth_mm=2.5

_e_ totalTrestle=50
_e_ totalBundle=2500
_e_ totalThread=94674

_e_ totalTrestle_cm2='$(_clc " $totalTrestle * $length_cm * ( 225 * (1 micrometer / 1 centimeter) ) ")'
_o_ _safeEcho_newline 'totalTrestle_cm2= "$totalTrestle_cm2"'
_e_ totalBundle_cm2='$(_clc " $totalBundle * ( $width_cm / $totalTrestle ) * ( 75 * (1 micrometer / 1 centimeter) )")'
_o_ _safeEcho_newline 'totalBundle_cm2= "$totalBundle_cm2"'
_e_ totalThread_cm2='$(_clc " $totalThread * ( $depth_mm * (1 millimeter / 1 centimeter) ) * ( 35 * (1 micrometer / 1 centimeter) )")'
_o_ _safeEcho_newline 'totalThread_cm2= "$totalThread_cm2"'
_e_ neuralBits_cm2='$(_clc "ceil( $totalTrestle_cm2 + $totalBundle_cm2 + $totalThread_cm2 )" )'
_o_ _safeEcho_newline 'neuralBits_cm2= "$neuralBits_cm2"'
_t '

Area greater than length multiplied by width of &#39;neuralBits&#39; is entirely feasible - strongly recommend stacking threads as is plausible for substrate fabricated by some layer bonding, wire bonding, surface mount soldering, deposition, or resin 3D printing. Reducing thread/ES counts and such is not recommended, ~3M ES for neocortex strongly preferred, especially for sensory input.

Imaged area may be smaller than &#39;neuralBits&#39; total area - expect some of flexible substrate will not be patterened with circuitry. Transmission lines, electrodes, etc, may be much thinner than trestles/bundles/threads - only analog amplifier transistors are expected to necessarily occupy a large area.'


_heading3 'GPU'

_ 'Example estimate roughly based on publicly known NVIDIA RTX 3090 GPU (or similar) specifications from &#39; https://en.wikipedia.org/wiki/List_of_Nvidia_graphics_processing_units#GeForce_30_series &#39; (or similar). Or example estimate may derive from reasonable estimates of plausible designs.'


_e_ gpu_dollars=2000

_t '

'


_ 'Relatively simple arithmetic cores, unlike x64. Comparable GPU, &#39;TPU&#39; devices seem to have ~5M transistors per core. Comparable RISC CPU devices seem to have ~100k transistors per core, which may be a more reasonable plausible design.'
_e_ gpu_core_transistors=5392531

_e_ gpu_core=5248
_e_ gpu_transistors='$(_clc "$gpu_core_transistors * $gpu_core" )'
_o_ _safeEcho_newline 'gpu_transistors= "$gpu_transistors"'

_t '

'

_ '3072kB * 2 (ie. 1 DRAM transistor + 1 capacitor)'
_ 'DRAM may use one transistor and capacitor. SRAM may use six transistors.'
_ 'May disregard for estimation from public specifications of commodity GPU. Reasonable expectations may not be met. Total transistor count divided to core count may be more accurate.'
_ _e_ gpu_core_cache_transistors='$(_clc "3072 * 1000 * 8 * 1" )'
_ _e_ gpu_transistors='$(_clc "$gpu_transistors + $gpu_core_cache_transistors" )'
_ _o_ _safeEcho_newline 'gpu_transistors= "$gpu_transistors"'

_ 'Multiplier is not expected to exceed reasonable values for clock frequency multiplication and/or number of ALUs per core (ie. <<100).'
_e_ gpu_freq='$(_clc "2 * 10^9" )'
_e_ gpu_mult='$(_clc "10" )'

_e_ gpu_mips='$(_clc "$gpu_core * $gpu_freq" )'
_o_ _safeEcho_newline 'gpu_mips= "$gpu_mips"'

_t '

'

_i gpu_diameter_mm='$(_clc "sqrt( ( $gpu_transistors * (45 * (1 nanometer / 1 centimeter))^2 ) ) * ( (1 * centimeter) / (1 * millimeter) ) )" )'
_o_ _safeEcho_newline 'gpu_diameter_mm= "$gpu_diameter_mm"'

_t '

'

_e_ gpu_layers=35
_e_ gpu_cm2='$(_clc "$gpu_transistors * (45 * (1 nanometer / 1 centimeter))^2 * $gpu_layers" )'
_o_ _safeEcho_newline 'gpu_cm2= "$gpu_cm2"'




_page ' ' ###

_heading2 'Estimate - Cost, Production (factory - imager maximum throughput only)'

_ 'Mostly recent ASML machines.'
_i world_imagers=100
_i world_seconds_cm2='$(_clc " $marketing_factory_seconds_cm2 / $world_imagers ")'


_heading3 'neuralBits'

_e_ world_neuralBits_seconds='$(_clc "$neuralBits_cm2 * $world_seconds_cm2" )'
_o_ _safeEcho_newline 'world_neuralBits_seconds= "$world_neuralBits_seconds"'

_e_ world_neuralBits_perQuarter='$(_clc "( 3600 / $world_neuralBits_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'world_neuralBits_perQuarter= "$world_neuralBits_perQuarter "'

_e_ world_neuralBits_dollars='$(_clc "$gpu_dollars *  ( $neuralBits_cm2 / $gpu_cm2 ) " )'
_o_ _safeEcho_newline 'world_neuralBits_dollars= "$world_neuralBits_dollars "'



_heading3 'GPU'

_e_ world_gpu_seconds='$(_clc "$gpu_cm2 * $world_seconds_cm2" )'
_o_ _safeEcho_newline 'world_gpu_seconds= "$world_gpu_seconds"'

_ 'Roughly     170 * 600 * (0.5) * 100 * 24 * 90 = 44064000000  .'
_ 'Roughly     WPH * cm2 * chips * imagers * hours * days'
_e_ world_gpu_perQuarter='$(_clc "( 3600 / $world_gpu_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'world_gpu_perQuarter= "$world_gpu_perQuarter "'











_heading2 'Estimate - Cost, Production (prototyping)'


_heading3 'neuralBits'

_e_ photolithography_neuralBits_seconds='$(_clc "$neuralBits_cm2 * $photolithography_seconds_cm2" )'
_o_ _safeEcho_newline 'photolithography_neuralBits_seconds= "$photolithography_neuralBits_seconds"'
_e_ photolithography_neuralBits_perQuarter='$(_clc "( 3600 / $photolithography_neuralBits_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'photolithography_neuralBits_perQuarter= "$photolithography_neuralBits_perQuarter "'

_t ' '
_e_ fov_neuralBits_seconds='$(_clc "$neuralBits_cm2 * $fov_seconds_cm2" )'
_o_ _safeEcho_newline 'fov_neuralBits_seconds= "$fov_neuralBits_seconds"'
_e_ fov_neuralBits_perQuarter='$(_clc "( 3600 / $fov_neuralBits_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'fov_neuralBits_perQuarter= "$fov_neuralBits_perQuarter "'

_heading3 'GPU'

_e_ photolithography_gpu_seconds='$(_clc "$gpu_cm2 * $photolithography_seconds_cm2" )'
_o_ _safeEcho_newline 'photolithography_gpu_seconds= "$photolithography_gpu_seconds"'
_e_ photolithography_gpu_perQuarter='$(_clc "( 3600 / $photolithography_gpu_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'photolithography_gpu_perQuarter= "$photolithography_gpu_perQuarter "'

_t ' '
_e_ fov_gpu_seconds='$(_clc "$gpu_cm2 * $fov_seconds_cm2" )'
_o_ _safeEcho_newline 'fov_gpu_seconds= "$fov_gpu_seconds"'
_e_ fov_gpu_perQuarter='$(_clc "( 3600 / $fov_gpu_seconds ) * 24 * 90" )'
_o_ _safeEcho_newline 'fov_gpu_perQuarter= "$fov_gpu_perQuarter "'










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
	#cp "$scriptLib"/"$1".pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/lithoDive.pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	
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


