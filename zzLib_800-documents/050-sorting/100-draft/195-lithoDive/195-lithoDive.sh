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
_e_ fov_seconds_cm3='$( _clc " ( $fov_seconds_cm2 * (1 / ( $fov_diameter_mm * ((1 millimeter) / (1 centimeter)) ) ) " )'
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


