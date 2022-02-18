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












_i currentByte=8


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
_heading1 'CARDinal'
_t 'CARDinal Computer Automated Rendering Diffusion (CARD) with Cardinal Numbered WORLD Balance (Cardinal)

Specifications - protocols, algorithm flow, bandwidth estimates - for standalone netcode/inter-process-communication executable to securely share and interact geometric objects (eg. player avatars, vehicles, tools, visual effects) balanced by class (eg. fighter, interceptor, carrier) while also integrating the shared 3D spaces (WORLDs) by trade limitations, travel, and efficient instancing to reputable player run dedicated servers.


*) Encapsulation - *everything* is a &#39;playerItem&#39;, specified by &#39;CARDinal playerItem Message Byte Allocation&#39; . Positions, rotations, always authoritatively controlled by one player. Game engines (eg. Unity, Unreal, CryEngine, F/LOSS) are all expected to interoperability import these objects (eg. 2D and 3D player avatars, tools, vehicles, voice chat clips, VM framebuffer images, etc) and positions, even for internal purposes (eg. vehicle position updates from external flight model simulation programs exclusively receiving HOTAS inputs).


*) Anti-cheat. Visibility cheating prevented by not sending any objects to other players until their avatars/vehicles/tools/etc &#39;playerItem&#39; has been checked with a rough terrain model. After-the-fact claims prevented by accurate position/rotation coordinates, logging consequential coordinates, and confirmation of plausibility by other players. Faking of a type of cognition (eg. human wetware by software) may be mitigated by statistical comparison of position/rotation coordinate patterns and responses to occasional induced jitter from other players clients (similar to CAPTCHA statistical expectations). Frequent repeat offending and anti-cheat exploit searching mitigated by reputation (NOT relying on commercial price) gating (limits on activities of apparently new players).

*) Automation either prohibited from accessing other player&#39;s playerItem positions or prohibited entirely, by anti-cheat statistical comparison of position/rotation coordinate patterns. Any autopilot or autoaim is forced to preform the same cognition visual object recognition as a player would, or prevented entirely.

*) Trade out-of-WORLD limited or prohibited by statistical position/rotation pattern comparison (preventing unauthorized long-term account transfer) and transaction rate limits between players.

*) Economically valuable proof-of-cognition activities (eg. monster spawn rates) are limited and processed client side (ie. a monster is a &#39;playerItem&#39; from the encountering player&#39;s client) per rules from WORLD server. Player claims are checked statistically, as well as by any other players in same instance. Earnings cheating is prevented while real-time WORLD server bandwidth and processing is avoided.

*) Balancing statistically between classes of avatars/vehicles/tools/etc. Swords/shields can be slight bullet magnets, statistically balancing skilled longsword users near equally against high rates of fire by ranged weapon users at medium range (at long range both may carry an additional sniper weapon). Vehicles of air-to-air types can be of fighter (high turn rate) or interceptor (high speed/acceleration rate) classes, statistically balanced equally in 1v1 contests (with fighters having a >50% probability of escaping the merge to turn and retaliate with the interceptor at a severe disadvantage in evasive maneuvering).

*) Crime and punishment. Players attacking other neutral or allied players unprovoked may be regarded as enemies of all. Such players if caught by other players may be limited in their activities, while catching players earn proportionate rate-limited bounties and return of undisposed valuables.

*) Anti-harassment. Rules can be established to require players to prove identity, and/or if some conditions are met (eg. defeated in PvP ambush by authorized moderator with proven identity), to report a player&#39;s known identity (eg. IPv6 address).


*) Visual Effects and Consequential Action distinction. Only a &#39;playerItem&#39; capable of causing a consequential event (eg. victory, defeat) is necessarily shared with other players or visible. Visual Effects may be limited only in shared visibility conditions (eg. distance from player&#39;s avatar, during conflict) to prevent distraction. Players may always have any Visual Effects &#39;playerItem&#39; visible to theirselves (eg. screen scraping from desktop applications, VM framebuffer images, interactive keyboard/mouse, avionics, etc).

*) Interoperability. Any program may send and update a &#39;playerItem&#39; . Screen scraping programs send existing 2D desktops and 2D applications (eg. spreadsheets) as a &#39;playerItem&#39; with attached framebuffer images. Any 3D application may directly send an interactive &#39;playerItem&#39;. Also, existing 2D desktop applications (eg. web browsers) are expected to remain widely useful.


*) User interface hardware compatibility. Modularity emphasis - avatar/vehicle/tool positions sent from external programs within allowable limits - ensures not only &#39;VR&#39; displays/headsets/controllers but also traditional &#39;flat screen&#39;/&#39;gamepad&#39/HOTAS/keyboard/mouse hardware interfaces continue to offer a comfortable experience.

*) Terrain redundancy compatible between game engines (eg. Unity, Unreal, CryEngine, F/LOSS), facilitating player choice of scenery quality, hardware. Players using high-end resources for the best visual experience (eg. CryEngine forests), can join other players who may be using lower cost or more portable hardware and software (eg. &#39;Linux standalone VR headsets, Linux smartphones, etc&#39;). Instead of terrain features (eg. vegetation) specific to one proprietary game engine, multiple terrain files may be provided by WORLD server (as &#39;playerItem&#39;). Vegetation and such providing partial cover must provide full cover with the lower-end &#39;low-poly&#39; hardware and game engines lacking vegetation.

*) Bring own avatar, vehicle, tool, etc. Avatar/vehicle/tool/etc simulation programs are entirely separately run by players, with WORLD servers only specifying maximum acceleration/speed/turn limits per class. WORLD server may supply flight model limits for specific classes of avatars, tools (eg. sword, mace, gun), vehicles (eg. fighter, interceptor, bomber, UAV), which players may override with more limited flight models (eg. switching to an FA18C flight model for carrier landing practice). Players are expected to bring their own avionics (ie. Linux Virtual Machines), flight decks (eg. presence or absence of canopy obstructions), flight/engine model limits, etc.


*) Experimental physics (eg. fluid, thrust, lift, etc) simulation as visual effect, converted to consequential events if WORLD server allows and appropriate. Limited set of materials allows the basic functions of additive tooling, subtractive tooling, thrust, and lift, conversion to flight model limits and such. While interesting, usually WORLD servers are expected to strictly limit or disallow such &#39;innovation&#39;. Real-time problem solving is a better contest of cognition, proof-of-cognition is the basis of a robust WORLD economy, simulation resolution cannot replace experimentation for state-of-the-art manufacturing, and historically extraordinarily complicated manufacturing technology improvements over decades have only brought less than orders-of-magnitude differences between generations of vehicles (eg. P-51 turns of ~280knots/~8g).


*) Proof-of-cognition (person-hour) as WORLD economy basis and exchange rate limits between WORLD servers.

*) Travel and trade between WORLDs as rate limited, high inflation, no-history, periodic transaction confirmation list swaps between founding WORLD accredited and reputable WORLD servers. Robust, low-resource consumption, low-consequence, accounting.


*) Bandwidth efficiency, backups to players, interruption tolerance, graceful degradation. Bandwidth as low as 9600baud . Essential &#39;playerItem&#39; marked by &#39;boneTag&#39; (eg. right hand, head) filtered for exclusive transmission to other players when connectivity is degraded.


*) Instancing roaming, to servers/LANs owned by reputable players, swapping to higher capacity servers/WANs as needed, in real-time. Any reputable player&#39;s or their group&#39;s own server is used by default, players wandering close to the space a WORLD server has an instance reservation record for connect to that server. Without the complexities and records-per-second limits of peer-to-peer distribution (ie. &#39;blockchain&#39;, drastically reduces reliability and bandwidth cost issues. WORLD server centralized bandwidth is only used for consequential records (eg. victories, player corporation territories, terrain object unique identifiers, flight model limits, instance reservations, etc).

*) Astronomical objects being position translation only (no rotation), with geocentric stellar orbits, removes substantial complexities from perfectly synchronizing object motion and instance roaming to planetary surfaces, which also simplifies synchronizing player avatars to fast vehicles and their avionics displays (ie. aerospacecraft). Fast planetary rotations, lag in apparent &#39;speed of light&#39; between instances, complexities of tracking workarounds, are all avoided by placing stars in ~5kls/0.05c or ~100kls/1c *geocentric* orbits, with no planetary rotation. Economics and ecosystems contend with the same constraints - day/night, interplanetary/interstellar deltaV, etc - while the *risk of software bugs* is *drastically* improved.

*) Voxel Grid fluid physics distributed at low bandwidth between computers using compressed edge grayscale perceptually lossless video compression.


*) CARDinal messages are always trivial announcements to any shared channel, usually a dedicated instancing server and/or WORLD server in a star network topology, but also shared channel inter-process-communication bus (as provided by &#39;ubiquitous bash&#39;, Virtual Machine emulated serial/COM/UART ports, shared serial/UART bus wires, radio &#39;frequency&#39; FDMA/CDMA channels, raw WiFi/Bluetooth/Ethernet frames/packets, multicast, ring networks, etc. Especially helpful to add controllers (eg. HOTAS) by UART without mapping through legacy interfaces (eg. keyboard bindings) by sending information directly as a &#39;playerItem&#39; from the device.

*) Amateur radio by HF ALE or 24hr duration HF transmission can connect players or transfer essential backups globally without any other infrastructure. Client and WORLD server software, for amateur radio use, must be able to disable encryption (including any authentication) entirely. Player impersonation can be identified and corrected from presence of a player in an instance server without matching authentic WORLD server login or agreement of other players - real-time authentication/encryption is NOT necessary. Rate limits inherently prevent severe damage due to impersonation.

'
_page ' ' ###
_heading2 'Introduction'
_t 'Since we rather easily can, as a matter of our own self-interest in living, we must create a habitat all plausible species would be rather happy to share.

All of the algorithms specified for CARDinal are straightforward without any plausible major gaps. Ability to load terrain files, import 3D objects into game engines without interruption, import real-time framebuffer video streams, and control 3D object positions, is well documented for major game engines (especially Unity). All necessary inter-process-communication and networking is available from both MSW and Linux OS kernels. Both MSW and Linux/Cygwin OS can integrate other programs through simultaneously batch/bash interpretable anchor shell scripts from &#39;ubiquitous bash&#39;. Compiled code (ie. C/C++/similar) may be relied upon entirely by standalone clients (eg. Oculus Quest, Android), or use cloud services may be used (eg. if avionics VM is desired by such users).

Some useful code for inter-process-communication and 3D space object storage already exists as reference implementations within &#39;ubiquitous bash&#39;, &#39;MetaEngine&#39; included with &#39;ubiquitous bash&#39;, and &#39;metaBus&#39 demonstration of &#39;MetaEngine&#39; (all of which predates and is unrelated to any other substantial &#39;metaverse&#39; marketing promotion).
'
_heading3 'Presented'
_t '*) Algorithms for Instancing Roaming, Coordinates Referencing, Latency Compensation, Trade between WORLDs.
*) CARDinal playerItem Message Byte Allocation (playerItem is all-purpose).
*) Coordinates optimized for bandwidth.
*) Bandwidth and users per bandwidth calculations.

As may be plausible.'
_heading2 'Conclusions'
_t 'CARDinal is the object-sharing netcode and inter-process communication part of a larger system. Tools to create those objects (including existing CAD modeling programs), and the founding WORLDs (which may provide the most populous shared spaces and most extensive proof-of-cognition), are also essential.

CARDinal must specifically facilitate compatibility between objects. Beyond compatibility mechanics, game design is beyond the scope of CARDinal.

CARDinal&#39;s most significant feature is the opportunity to depart from the &#39;objects and behavior provided with game&#39; model historic of pre-packaged games to objects and behavior provided instead by players theirselves in realtime. Developers attempting to integrate other complex software - to the point of simulated avionics using simulated displays from virtual machines with full operating systems - especially benefit, as they will be able to implement game interactive object behavior in smaller, separate, codebases.



Three founding WORLDs in particular may provide for some initial diversity and quality of life.

*) Mix of swords/bullets/towns/forests, emphasizing roughly human scale activity, single planet. Inspired as similar to all of SAO. Vehicle based tools (ie. aerospace fighter cannons) ineffective or unusable. Players may lay &#39;foundations&#39; for their own buildings, so *everything* is player driven except the planetary terrain (which has dense vegetation and such). PvE may be more emphasized here, but PvP and player corporations are allowed.
*) Mix of important fighters, bombers, carriers, and logistics, ships. Inspired as a mix of Elite Dangerous, EvE Online, Descent FreeSpace . PvP is emphasized strongly. Some resources may be more available from here, making trade with these aerospace fighter pilots important.
*) More or less Earth-like. Detailed physics (ie. voxelGrid) emphasized. Realistic speed/acceleration limits in effect - players will not be doing interstellar travel for a long time here.

Trade and travel between WORLDs seamlessly part of game mechanics. Scenario here is for a player to make a &#39;profession&#39; with a comfortable home somewhere on &#39;Swordland&#39; planet or on a carrier bunk, fly a fighter with custom flight deck avionics and canopy from the nearest flat place, join up with a corporation&#39;s carrier group, fly fighter escort or bomber against another corporation&#39;s logistics in a major way, assist a land conflict on a nearby planet, set &#39;FA-18C&#39; flight model limits to practice a carrier landing, debrief, catapult back into space, punch &#39;jump drive&#39; address (IPv6 address) for Swordland planet, find a clearing outside a decent town (don&#39;t bother with strafing fire above dense &#39;immortal object&#39; forests and towns), hover down, walk into town, have blacksmith polish the swords for tomorrow&#39;s duels, buy some rounds for the aerospace cannon, and happily pay a few reputable local developers for more work customizing a new drop-in avionics virtual machine.


RADAR/IR sensors might be short-range only and energy density may be limited at &#39;Swordland&#39; planet to preclude finding large numbers of potential &#39;victims&#39; under forests and towns from above. Calling an airstrike on known coordinates is reasonable, but expected less common than simply putting a sword or trigger on those coordinates.




Reducing Coordinate Resolution or Diameter to worse than perceptual lossless does not substantially reduce bandwidth. Astronomical object position lists are compressed by approximately one third if galaxy diameter and resolution are appropriate. Instancing objects to 100km^3 shared spaces reduces real-time bandwidth by approximately half.

Star coordinates and total stars must be kept to a reasonable minimum for practical WORLDs. Players can move to instances at different stars/planets without waiting for downloading if their astronomical object list (including geometry models or procedural algorithms) is complete. Regular offsite backups of corporation star/planet ownership to all players best safeguards significant investments of player proof-of-cognition from WORLD server issues

Periodic (eg. quarter-hourly) updating of astronomical object lists can reduce complexity when adding new stars and planets, at negligible bandwidth cost (8000 stars, 20bytes positions).




Either CARDinal software or SpaceX Starlink/Starship (adding much bandwidth as a worldwide lower latency IPv6 network) would substantially obviate many of the latency, bandwidth, and compatibility, issues, but not to the point of sharing voxel grids (presumably >10Mbit) between all remote players globally and simultaneously. Starlink especially has the ability to reduce latency between players on opposite sides of Earth.


Virtual &#39;real-estate&#39; economic values (and appropriate cooperation/conflict) at galactic scale will be at constrained locations for resource extraction and logistics, while at planetary scale player walking distance convenience is expected to provide the constraints for land/foundation pricing.
'
_page ' ' ###
_heading2 'REFERENCE'
_t '
https://www.researchgate.net/publication/325816971_IPSME-_Idempotent_PublishSubscribe_Messaging_Environment/fulltext/5b272585aca272277fb70011/IPSME-Idempotent-Publish-Subscribe-Messaging-Environment.pdf
 &#39;IPSME- Idempotent Publish/Subscribe Messaging Environment&#39;
	Some of the netcode concepts may or may not have some similarlities.
'
_heading2 'ACKNOWLEDGEMENT'
_t '*) Sword Art Online by Reki Kawahara . Significant world building offered a hopeful approach to common game mechanics and added relevant terminology (notably CARDinal itself).

*) Elite Dangerous by Frontier Developments . As an example of everything not to do. No significant concepts or functional gameplay mechanics were learned from Elite Dangerous. Possibly Frontier Developments may never have brought a non-obvious concept or non-obvious functional gameplay mechanic. Frontier Developments&#39;s most significant achievement is a reasonable approximation of an unnecessarily realistic Milky Way galaxy approximation by rough object assignment combined with procedural terrain generation. Significant obvious unnecessarily missed potential for a more naturally harmonious multiplayer virtual habitat was more substantially demonstrated. But more than that, the hostility of PvE players who believe the galaxy cannot be shared with even the most basic legitimate PvP game mechanics (ie. &#39;PowerPlay&#39; &#39;open-only&#39;), resulting from too much support for only far less legitimate PvP play styles, is a testament to the very real social dangers of negligent community management built on a business model of blatant vaporware.


*) &#39;shaw&#39; of &#39;#omi-ethics&#39; channel of &#39;AngellXR&#39; &#39;Discord&#39; server of &#39;OMI&#39; project
 *) for protocol buffers suggestion and link to &#39;IPSME&#39; papers (also &#39;humbletin&#39; for &#39;IPSME&#39; mention)
 *) for &#39;upwork&#39; ention
 *) for &#39;XRPK&#39; mention though that is definitely too complex to use directly in place of compatibility with multiple formats
 *) &#39;VRM&#39; humanoid avatar ... &#39;gltf&#39; ... &#39;normal mapping&#39;
*) &#39;humbletin&#39; - &#39; https://github.com/omigroup/omigroup/discussions/8 &#39;  &#39; https://web.archive.org/web/20211202131827/https://github.com/omigroup/omigroup/discussions/8 &#39;
*) &#39;Lyuma&#39; - quarternions mention

*) &#39;SAO&#39; may have inspired &#39;Original Sword Skill&#39; mechanic. Maximum neuromuscular coordination rates were likely considered much earlier in some other contexts.
'
_page ' ' ###
_heading2 'Coordinate Resolution, KeyFrame Format, Astronomical Objects'
_ '# 27byte &#39;Complete&#39; 2.00ly Diameter 25um Resolution Address
# 20byte &#39;Galactic&#39; 2.00ly Diameter 10m Resolution Address
# 12byte &#39;Instance&#39; 100km Diameter 25um Resolution Address'

_t 'Separation of 5ly between stars is usual as with a habitable area of Milky Way galaxy. Density may be increased to ~0.05ly between stars without causing issues of reducing deltaV or possible collisions between geocentric star orbits at ~100kls .

Thickness of 0.25ly and diameter of 2ly is reasonably sufficient for all ecosystems and economics, total stars 8000 (0.25ly/0.05ly==5stars thick, 2ly/0.05ly==40stars diameter). Such guarantees nearly an entire star for any future trade, travel, cooperation, conflict, etc, per million persons from Earth, which per planet is at least one order of magnitude less than expected or historic reasonably diverse population density. Approximately 1600 paths will exist from one &#39;side&#39; of galaxy to another, which may be desirable to constrain to a reasonably expected number (ie. dozens) of large player corporation alliances.
'
_heading3 '27byte &#39;Complete&#39; 2.00ly Diameter 25um Resolution Address'
_ 'Reducing diameter to 0.25ly (expected galaxy thickness) does not reduce address length by as much as 4 bits, so not worthwhile.
# 27 byte address (9bytes, ^3dimension)
currentLightYears=0.25 ; currentResolution=0.000025 ; _clc "0.18033688 * log(((9.454255*10^15) * "$currentLightYears") / "$currentResolution")"
# # 8.2946997
currentLightYears=2.00 ; currentResolution=0.000025 ; _clc "0.18033688 * log(((9.454255*10^15) * "$currentLightYears") / "$currentResolution")"
# # 8.6696997'
_e_ diameter_lightYears=2.00
_e_ resolution_meters=0.000025
_e_ dimensions=3
_e_ '_clc "ceil(0.18033688 * log(((9.454255*10^15) * "$diameter_lightYears") / "$resolution_meters")) * $dimensions"'
_o_ _safeEcho_newline 'bytes.'

_heading3 '20byte &#39;Galactic&#39; 2.00ly Diameter 10m Resolution Address'
_e_ diameter_lightYears=2.00
_e_ diameter_dimensions=2
_e_ thickness_lightYears=0.25
_e_ thickness_dimensions=1
_e_ resolution_meters=10
_e_ '_clc "( ceil(0.18033688 * log(((9.454255*10^15) * "$diameter_lightYears") / "$resolution_meters")) * $diameter_dimensions ) + ( ceil(0.18033688 * log(((9.454255*10^15) * "$thickness_lightYears") / "$resolution_meters")) * $thickness_dimensions )"'
_o_ _safeEcho_newline 'bytes.'

_heading3 '12byte &#39;Instance&#39; 100km Diameter 25um Resolution Address'
_ 'currentMeters=100000 ; currentResolution=0.000025 ; solve "( (2^(x*8))  == (  ( "$currentMeters" ) * 1/"$currentResolution"  ), x)"'
_e_ diameter_meters=100000
_e_ resolution_meters=0.000025
_e_ dimensions=3
_e_ '_clc "( ceil(0.18033688 * log( ("$diameter_meters") / "$resolution_meters")) * $dimensions )"'
_o_ _safeEcho_newline 'bytes.'



_heading2 'Rotation Angular Resolution (6Byte), KeyFrame Format, Disagreements'
_t 'Rotation angular resolution reasonably limited to ~0.25m@3500m (~0.006deg) . Interactions (or imminent interactions) between objects require rotations communicated accurately (both for visualization and confirmation before the fact by other players). Longest such interactions are ballistic and optical, which for roughly human sized machinery and optics, is limited by chaotic and quantum physics.

Rotation coordinates are absolute X/Y/Z degrees from no rotation, with this absolute directionality inherited from a 3D space in which astronomically large objects (ie. stars, planets) are arranged geocentrically with no rotation (only translation), and have absolute position coordinates.

Players are authoritative for the position and rotation of their own playerItem (eg. avatar, vehicle, tool), and any adjustments in apparent position is a deterministically applied client side only to other players apparent positions. Euler angle &#39;gimbal lock&#39;, as well as quarternions, are avoided by keyframes resetting to the absolute position and rotation claims made by players clients. Disagreements are accepted as is and logged occasionally for anti-cheat statistics.
'
_ 'One byte per axis rotation would have a resolution of only ~1.4deg, which is very substantially noticeable even at some distance, and is not substantial compression. Discouraged.'
_e_ rotationBytes=6
_e_ dimensions=3
_e_ '_clc "360 / 2^($rotationBytes/$dimensions*$currentByte))"'
_o_ _safeEcho_newline 'degrees.'




_page ' ' ###

_heading2 'Bandwidth - Object Positions and Rotations'
_ '# 27byte &#39;Complete&#39; 2.00ly Diameter 25um Resolution Address
# 20byte &#39;Galactic&#39; 2.00ly Diameter 10m Resolution Address
# 12byte &#39;Instance&#39; 100km Diameter 25um Resolution Address'

_heading3 'Galactic Astronomical KeyFrame bits/Second'
_e_ stars=8000
_e_ planetsPerStar=10
_e_ bytesPerObject=20
_e_ instantFramesPerDay=96
_i instantFramesPerSecond='$(_clc "$instantFramesPerDay / (3600*24)")'
_e_ 'galactic_baud=$(_clc "( $stars * $planetsPerStar * $instantFramesPerSecond ) / $currentByte ")' 
_o_ _safeEcho_newline 'galactic_baud= "$galactic_baud"'
_o_ _safeEcho_newline ' Average , baud , bitsPerSecond , NOT Bytes .'
_ '
# Suggested parameters for experimental netcode.

currentInstantFramesPerSecond=5
currentIncrementFramesPerSecond=60
currentInstantFrameBytesPerBone=27
currentIncrementFrameBytesPerBone=2
'

_heading3 'Instance KeyFrame bits/Second'

_heading4 'Degraded - <4800bits/Second Minimal Bandwidth'
_e_ instantFrameBytesPerPosition=12
_e_ instantFrameBytesPerRotation=6

_ 'Any interaction with any tool (eg. emitting a projectile) is a relatively rare (presumed negligible) event which *always* incurs a keyframe due to requirement for absolute accuracy.'
_ 'Using &#39;63&#39; or &#39;191&#39; as &#39;origin&#39; and nonlinear values of +/-200% if origin 63 and +/-200x if origin 191, a single byte can specify an exponential change in acceleration, which combined with three keyframes, allows clients to deterministically and agreeably approximate smooth acceleration curves at a high rate. '
_e_ incrementFrameBytesPerPosition=1
_e_ incrementFrameBytesPerRotation=1
_t ' '

_e_ instantFrameBytesPerBone='$(_clc "$instantFrameBytesPerPosition + $instantFrameBytesPerRotation" )'
_e_ incrementFrameBytesPerBone='$(_clc "$incrementFrameBytesPerPosition + $incrementFrameBytesPerRotation" )'

_e_ incrementFramesPerSecond=15
_e_ instantFramesPerSecond=2

_ 'Few players are expected to more than &#39;dual-wield&#39; effectively. Bones not causing essential action (ie. visual effects, facial expression, detailed posture, etc) are on an &#39;as bandwidth is available&#39; basis.'
_e_ bonesPerPlayer=4

_e_ 'playerDegraded_baud=$(_clc "( ($instantFrameBytesPerBone * $instantFramesPerSecond) + ($incrementFrameBytesPerBone * $incrementFramesPerSecond) ) * $bonesPerPlayer * $currentByte")'
_o_ _safeEcho_newline 'playerDegraded_baud= "$playerDegraded_baud"'
_o_ _safeEcho_newline ' Average , baud , bitsPerSecond , NOT Bytes .'

_heading4 'Player Bandwidth - Nominal'
_e_ instantFrameBytesPerPosition=12
_e_ instantFrameBytesPerRotation=6

_e_ incrementFrameBytesPerPosition=1
_e_ incrementFrameBytesPerRotation=1
_t ' '

_e_ instantFrameBytesPerBone='$(_clc "$instantFrameBytesPerPosition + $instantFrameBytesPerRotation" )'
_e_ incrementFrameBytesPerBone='$(_clc "$incrementFrameBytesPerPosition + $incrementFrameBytesPerRotation" )'

_e_ incrementFramesPerSecond=60
_e_ instantFramesPerSecond=10

_ 'Few players are expected to more than &#39;dual-wield&#39; effectively. Bones not causing essential action (ie. visual effects, facial expression, detailed posture, etc) are on an &#39;as bandwidth is available&#39; basis.'
_e_ bonesPerPlayer=80

_e_ 'playerNominal_baud=$(_clc "( ($instantFrameBytesPerBone * $instantFramesPerSecond) + ($incrementFrameBytesPerBone * $incrementFramesPerSecond) ) * $bonesPerPlayer * $currentByte + ceil($galactic_baud)")'
_o_ _safeEcho_newline 'playerNominal_baud= "$playerNominal_baud"'
_o_ _safeEcho_newline ' Average , baud , bitsPerSecond , NOT Bytes .'












_page ' ' ###


_heading2 'Bandwidth - Internet Total, Starlink Total, Starlink Added'
_e_ totalInternet_terabits=500
_t ' '

_e_ starlinkPerSatellite_terabits=0.020

_e_ starlinkTotalSatellites_immediate=2600

_e_ starlinkTotalSatellites_expected=42000

_e_ 'starlinkTotalShare_immediate=$(_clc "( $starlinkPerSatellite_terabits * $starlinkTotalSatellites_immediate ) / $totalInternet_terabits")'
_o_ _safeEcho_newline 'starlinkTotalShare_immediate= "$starlinkTotalShare_immediate"'
_t ' '

_e_ 'starlinkTotalShare_expected=$(_clc "( $starlinkPerSatellite_terabits * $starlinkTotalSatellites_expected ) / $totalInternet_terabits")'
_o_ _safeEcho_newline 'starlinkTotalShare_expected= "$starlinkTotalShare_expected"'




_heading2 'Bandwidth - Players'

_heading3 'per Internet'

_e_ '_clc "(( $totalInternet_terabits ) * 10^12) / $playerDegraded_baud"'
_t ' '
_e_ '_clc "(( $totalInternet_terabits ) * 10^12) / $playerNominal_baud"'

_heading3 'per Starlink'

_e_ '_clc "(( $starlinkPerSatellite_terabits * $starlinkTotalSatellites_immediate ) * 10^12) / $playerDegraded_baud"'
_t ' '
_e_ '_clc "(( $starlinkPerSatellite_terabits * $starlinkTotalSatellites_immediate ) * 10^12) / $playerNominal_baud"'

_heading3 'per Starlink (expected)'

_e_ '_clc "(( $starlinkPerSatellite_terabits * $starlinkTotalSatellites_expected ) * 10^12) / $playerNominal_baud"'


_heading3 'per 20Gbit/Second (eg. Starlink satellite)'

_e_ '_clc "floor( (20 * 10^9) / $playerDegraded_baud )"'

_heading3 'per 100Mbit/Second (eg. dedicated amateur cubesat)'

_e_ '_clc "floor( (100 * 10^6) / $playerDegraded_baud )"'

_heading3 'per 115200bit/Second (eg. USB UART for HOTAS and similar peripherial controllers)'

_e_ '_clc "floor( (115200) / $playerDegraded_baud )"'

_heading3 'per 9600bit/Second (eg. POTS phone modem)'

_e_ '_clc "floor( (9600) / $playerDegraded_baud )"'



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
	#cp "$scriptLib"/"$1".pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	pdfunite "$scriptLib"/"$1".pdf "$scriptLib"/CARDinal.pdf "$scriptAbsoluteFolder"/"$1".pdf
	
	
	
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


