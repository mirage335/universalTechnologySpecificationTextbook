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
current_internal_CompressedFunctions_bytes="12585"
current_internal_CompressedFunctions_cksum="2064524179"
current_internal_CompressedFunctions="
/Td6WFoAAATm1rRGAgAhARwAAAAQz1jM4cn5JGBdAC+ciKYksL89qRi90TdMvSwSEM6J8ipM2rR/Iqc/oYbShD5P+hKgz3ONSu7BhrUf8OSN4oZ8BL1e7m0JQ33pEQs007VTHA7nLczyIuWiilZSo+0zB132
DrV189uAlZ6oqD3MK7bjrSmuGreEaBOC+z5QkGUPIDVaXfJmDg73/A1Y9JqRKxtli7ZDurfX2t/Z3m6RV6ku3LwPHl2qt8/kbWEubRkY3Fl2VTTFWjQ8Z9qfpBK4YyV7fw3X3hcUmN6Fz+u2P8eCSl/fCnNX
HtvGeiwoJbZ3wje2iPvqVhHoy0BMVkEDcSqWo+znkV0BwqE45qLsZQ9IGG1CzglgciwcOU2fdsqKBFC5XA3WYFGg6uZ2q4mvn5jWR+FbeUz7YjupLAvLl7DE+daOBWzzyYeFrcMhDk1QeqOKpv41V0GTTqAm
Z7lRbPrhk3oRY/kBiQGZSfRuxTSmIc1zevrFy6JWcZkCJayU/wQ+XEKdvF51XHH+OYrSuhIxvk6G+Ce0sbTr3GBfVRQYdRpxeOs48xNaEfmBf6GZcWUMx5L3LA4cup19vL4O75JjKbnlJeYdoRCjtcPE7A8S
82KbKVXWm5n1ADflKsnTX3CVTSu7uS4pVXHlludUnC/0dCPIaO2WxpZTXETnBW0SD0f3HTs7UDEzwk7eMHnoe3xk/cdsh16yyG0jPOBLHEqULsotf/cimpgvkZlFxPNFKvrB2sVBDpjr393u8l5sSqQ9L5Vr
QgGi6nBnxhDESgC1fMuEusvr6Sli1rR/+c0ap1SksGpO2TEUmhLB2btBz2JAuC6RRnqPSeJB5e7Ye3lLZgz7qHahujxIhELZ6Ig37WMvcLn/BMoXxtrpqAx3WQEFwPU+GEqAYIYrxdNFO0vmXqIu7mijEGNN
3Kz52PfEP9wuiJegjzcwG1SjieemTZAy5HeBzXmyNh8NuIdpHzxX83tVQ6zn4W8eFh94YUkd8LPxqapxW9+5Ljru6KBXErt6eoQ1JzryMghYRXroIw6cezM5nO29ERbDgwMaWHM8HHSnsRVwOyHrn3h6dSYW
FRI5yIxuHcZpSxIl+Wcyy7l04D052ZLSwIr3bVXp4Wl8UN43ZjFk500/N03EAhnaDm33ejErcZzg3IyCf9KDULz2vjN1ZMLj0f8szC8Yd5LbbQJ0QaXtts9dioTUAtjmI2n0Nua2iP8U6I2yFW4q1flLmWgw
dwxuvholhSJhoQ1mvtYG9GHKOnerwBFiSgokDlXpGx/wWLEggdJzD83Gsc970UUKaPclxZq9t53+B7POZLqRi9MT1bN4M5xVNF9BpfIOMoXjjfCBdMsMg9KiWzl5MampEj+sO3zuoQacK51dsC8fF1kx/Ipo
T0+57cS1KCKaDzB3/U2HEY855HTDewfULt1Mox+DjNi+SoyNEej/2dvZj2k7gc6F2P4cYp0XlGset9wxtH8+3HkTBns+M9aR3+kzI/CW6vSnkHXti9l/usvJEofd55FM+ZveKRq4OmWB9Oq1ruDmZeB3ti5H
l9Be+OF5pyJ7O4nKeKvq36QuxgvvKFuWDH8YrEDrrLKvQA2ZwqPfB/Dx301jgKu2lHwCC5Cr6asX/Tjo71N7833otVOmbW18/ev2R0aUgZKsqzPZIqFX1x9DpRggWTuQOX49oKJA3lS+k80eCsgjWZ3NwHHB
JNS03KTfjGNYL21M5FopczHLlOKA3NfxtRVtvC3ptJwtqiQYiRhRFdiUmrckYzPNf/WZmL6FouTxTXHf/8KnqYdZ0a/shLqxbCEkIwYD7IZlBIXfZukhiP6kefFP2XGAvV7HC93XH3BC1oYnPQBRcKtLLn5C
zda+MyZGKU7AXhq1EleGh62Y/vDec7Bgz3UwJtR+8YBCdQ8/Xcf4mORqcw5ELeSC/sZESq/ZT4uHAWXlbxnvzRXvDJ58sFyghbkx9mNwpWRFrj39Hq3TTm9NkSX/ExPFblReiwO3+1d5czQOEU8JnpKwbXak
iZTSx0rJ6xz5YqpuDxrnSOA9Ti+KiK6yFVv5gZJsPa9opyNifSPEsLjaULtj3MT0jHSHlwYMPOm3ZU5anWZ9zLnlZDFk+5W9aVR/+HHjmTDgYiD/2lVhvyGFs0RFnIjj0W1Yrr0Qh7RR/STZo3Uj4PsS01jS
XFU1MAfvrY5cOFVq3gGq/BcYNU22RhC4TjfS9SLCd9Rrp8795lN2bSnGVKQ7eCrYdqYvCzLQ5RjV/jRfze8GD8XuJfOitXktggA4TGfdN2an12568jtS+q125ACbgQsG6KbDJ6HDEIk7PfdymVGeLNP58IfV
Ti9a8Wv3gxx1o9cP105zLp3eY+BXgXxpJpM0PwQ9C6SDYTYgWhLyJIL3s80HCWKRoNzfKE5+FpmuIodKb6nrgjQM2iMrkzD1grRPrIweqC2IvgUUp76cXjIWapPPJKoRAis9rOzsqZfOqwe4dCaJPjS7hodF
HOUHrNeKwCtOP73IH4yMLIWcTQkcR4cH2ycD+GoyrsM1KfK8rRf1sA2exEaj1gBbL2X90zTFijyIQp5ACcTa7g2erPu7xNzRNLL4lcAtRuduONBy7H3bokwhxUVT9XYKK6vxOsGBN9rqJ32dBCki2eznhSvG
YY7hDmldozOVzv70Ht4XupfIlhujDJ4CAVyp20SPKzFsyuI5O47AKB7bJ6KeNvsN3dn8PJFniSfpCxiksP4mSGD6c4fFUOKU1sqta3v8sgkEZIxqjtcEVkfWMvK6fVIb6z66P2kDSqBE++icHbYkIr+dczrx
6GLgOXvNFml1WJUyhpmyhkIJzZ/geu6ET9wonX4MZ/NEmC8jxUNFR/hfM+yH2sYL+1K4zI+kNhe0+iPdJYSpbxC3hOlYg5wsF0a72YOfikpkwp+2SdL5ItnyCkVTqMJVpDMSDppFsb1IcSm3oVLlTCOYpQxi
xNDpvrwfzm5INJXutfAgTnsuAAcaEIojAwo9N/+SBWcckzuXDR4OwDi3RV1muOvBjokJxIdAPtWJ+uNEVP0lXh+h0NtQ7ef04SfuYp9LQG1xMkglcvFZ44jp/L5G4NN4WnJJhKab539tSqdbMdDrRiLrsuC4
KjR5btxXS1fiSUefE3W9qquvHNtMwRv9qt7/tgp4kckjZDTdaAM4WwGCYEC9eJ33tHTEZgxobI4tTXzxKD93o7RNcbN+eBPz1W7arLFUw7UKXkFhnRAmBTDSj/P8ySF5JwFiMEbVvKkkSj+3hHxq24lP0DWe
bdvJiFScA14alr3I07py9lZWD9UR3gELPvUOOTjZTZFa/vhuWAnyljLH/4p80SFhGtQdb++HcHzGk4k7evlC592eqvrEWC0CNNaHc2ctlHdrFNBKtGv3im1zayJ/QQvyoWJlnVLipNSIoPgZwnqi3lsfQTV+
AW2YnCodAd+Enmodt2y9Xw/Q27GD2S6wcdA9m60jczMnZJsOYV0NYgzz/ZjKaUAZEIBE9rM/Vd6W6X6CrGee08DLsw5cIgCNZnIQ7sLBUIxwQ3VuqkErGUtL1VC1p+pYsy76GYuc+S/bNAfg6vuhMV6Al9cD
WG8Qgo86UfnjNnlnHID+CshbwCAF/8czf265Nm8rl9fD9XwOBzTp6Dz/3KSSSaUuq2/H932CVK843dTEjIjOvvCVqsQP0uINf6/9s1PE9PmRZK2AHj/fIFs7jdNOwBq6uzLkGBuCRMygIYpWFZCV/5fZcnHd
0oS3SjMIT9GKngPDZ58uqHTciyhivUb7cmJiLDj0r7W7z5SAV54nDl8W5r9ShfnFGh0TKvD96VYZtiOLqw0N4ulrsOzv1uP5/gVJgQ6PXEmQVsmmPn9JuIFLXWJzajSaru8A4lQU0aitRE9bUzeQw2f+PW0o
PsquEgX1/dvwpsM/kE5IttCX0n87HBc9BI0wa7FULmjPlpu//v3qJld2oZyJvzy63hzlQgSl2xqBe9+2SLxQkrBMr5vAPsbjwK2Aq8S7TwiUidfCYQ4sF8YMdow6AwYQciBIdjU+ExAm5NtspJWAezNx4Gl2
YwdrVhUaqyUpNIkySpbqkT4YbaYAQIWSl8QCD/IIVGD6yaNdH+sTLXiZUWe4+bbk5xN499DhaEjwCaoQ+JJSEE5Xdzf0VRUICRK/I5MU2GiXVwdVOQKHDsJaWW3KJXg81i8BJeDT3DisB0B6vIYcaoVwQ3BU
6xa9WdrddAwEYOVkjpYcQT2TW0yzaauqcuEsZ1Mt6b4zi75HrJDmYZGJom49DqOtJMYKjYhGPZ+TqZo/luUyhhdGGrwMWACJkwByVMyeIZwlUdLPWwaOABa72izEOwLdXdhU7p9gvDIm09/Fda3YNw4yuZb8
GSi8sucRV3lHLw0L9HasiXyEiDV3MupQjo1hlap6fJ2r8nxuuAXSqbdM1r+l3GcU5x8U6qFO8aoDDGyqnR+el9d8JSJ99y1ekZmY3XxPQmHvE870iJZUANJbnzgBCzRg7zZxc843dc6N7st3QKbfTzOg6jxe
zsawU4xMPrv7URnsSOAYxyBq/sHvSDvus63KH1JhyFoxsVy+0Cdljm3ZWuYN8rLDvdUsehLNha5etCcmbdaTPlXIKXV5d0sfbGq0GRM90r6nAwAxL8XKlBInmZvGiX7fscy2hh3DcTuyBYVG8xHz8gFNKCT9
UC4daVZcZhRLUMyc0cSHiiWOK1PxyAbk16R81kyPFwkitvNzjoTU7jkenMT/L/YP6BSY2uCBHlsR4leoQjfkuqjy4q0Fq8aVLhtEnB+Pa/2kVkp0bC9U53hWcaLFO+QZ83jB8Bt0WhPOatwCDByV8yombVcc
KLUEr5AaXI3M1qjDlZQTSFTp8tGQQeaYfLesRVv2U5rwpgkcLWuu4QYmcfHcnqkTflCGy2t0dEnwJ7VVA80hVzkjuAMcbiNTf5PyvsE7+n9yPxiEJklTI2PPL15A+pV40VzOXKwgyn0N+qXGDegdMZpkxg1R
543OPXaiGw5/USM9kubWnRbD1NjMwaV2I8HntSPve62baDP0rqciqD18Q/P6fEx8Gta1E/kj/4S85L8XD28/+q6xIqpFbTRsg823rf1avY8a/UkpSkkVYv4zh0K06bwWZUW6aYlM/wj93lWP89wlb0yXv9ja
B8PTNzM0kyp9tZiIslR3Yyng4zqNBtsH3bHzJ+P3yJy/JMnsYkvKzOZmD7OU2L5m0l7jciZMm6jzUaBzvyzxbUHLxT3iO2kFbDXTXKwGLvxIwBnDN7Lg4mL6hvsVQEvGqnNkDtXlAeARErhsg3VdcrF4dWCT
V57xTGU9ZJsL3VtWs350G5CdPq2NvRMIXDcYf1jLvGtRT7LXNG+pM6bVrdaeMxLXsQDHhAYGdgcdnoM5mjd7rL62+1RQoIKMVO2917MiyBLnyfWQ2ZlDSmEWh/DNp5z6c3/+YTgrDAlabRUAiJeNHTrltkn8
/Nqh/t+PeovBWMMpZcLK1PnSE+3e1DHHQYRwcdmLFc++Lwq32uUwRVDPmXNUyPXH2MUk502hPSZkeR9tIeyg9oQbMaJgPFU/NMhBsTertbdmIrOhPzUTMjLDF0j/mIJbzBhp5uXQgbUHA2snqq/Fk0T/ETA3
Nx1LQQGnjVvJPLb1NSv+GlAxFNGQ8DFalSf/zsGpDq4RjrR+UFiXCqH25MqWJaqg2jrsb2GPx8BhkxaJzfwFWCw9wUPGKZiE9giRUkwQLTutsUjqMpV5JDEH4LqhLbBQdvc7oKKzx96Y6W1cj1h8o65svWEh
WEpJhyGaB8KPRTVHmBjX/jSTUeefBlYrjHQKWyMu74jjnHDqud0ypJGRbiQZPJP/dEjnOzLiMt23jqT69O5HeVephmTAVAnyOUBWY59JXwYZUDgYambnqwSkch/zcZSzgevKT7nyLbrACgGbQXycXT+YJ2+M
V9o5hl44DhnI72yug4d7Qko2WaoVVXEZvOfqJ/oMlQQsK2daap4HgOK70N9LIEEjgsio4NdBSRnkHrueni1hUAqj0cjn549bg86rzRZG8rSvJWXWk7Ikeku8YjWjHps2kEkLVA4pZ68JccawPYOZ9ajhC2mW
yWjj3iTnMC4AU0q4QpBSkt3lbeSxbWMR5asf4IXSsNAlsDeyGstCqWQULdCNlrz9brKAHhHhVUQKlQC6TPcrA0m6IanqJVTNerd3MhvfBTDX1hX4vuhcttCDdrk7yTNsreABtbMZZwAPFmVpJ5Q9Lp0obkd2
oxU4gpRBmP+JTEzTzcLBi6gTVLvJQog+eSYpuqaQpS9r0SG9wqdBUvaNQDUNcQoems8rO2GhDIIZkK6TF7QZ8OFc8t7IFDF5EkLk2G37I0x2rA3BnjTfsHyGYr/1BH5gsoug2MUaWDRpKmdbrwjef6QeSYQx
kXXMQuoktGZx21G6ZvkcATBA6Sive/dz6gUsA+UpnpU+DCBybiOpC7GAmDl3rARoyP/mBy3CqGfnbW4vBZv3d5db0t5o9TmqnUbwGWnijp1NYJLh2+YpaqB3rRKeMlwU7oy5kbXV6rkFQwrccPW2nVuIdHAb
hOn2wnF1RMu+iCPPNSnJjjx1u/5TIvioD/NTc+Tb1c9FOIh16esD29VWLCUP9dZaj7aThqmd+ryPcRyJZTFbPe/XUKazko9+X9lzi3QIVqOnAr/eQxk95nT52SZhhc+JopiiTGnggymWYMM84XFyHNrIL0w+
p044bgh93vSW3P7C1j4GG+kT9FgTdsSxN/11MpMJWy0q6Zr+6WOcdialLTYOcanTaDJGYyangRMSH79Z997qzRAU2lBjMHvF3/azDdVZC/+cGUkLyoKQXCmWjwlo1P0ceQebcnvYk+11aRVffpXNwiZlCy3R
42pN+mn1uLrCDn0rqRTc7aV/EaQ7mLNCLQfzr5zqH8VcYKiArwvYpgc/AXgPfzzY6JcfejZZ6MfAt3SL422CHVRPRdCzdyL/ZBrVPDastNBIbjL97e2bkdGH6TE3AWt30U8z1BmQsZcwOmBABjb8iO7V28RG
ge6IOzmXLtPl9AURKRbCNIViafHyQGYELQRJ2mzkRbzU2jItaR2GeuSo32gd7eEfff7biAC9DZuXI9SJkWC4R7ldm3Xru4kjXMVCnvFus4//Zm9Sam9a8Uf+kYsMxi++mrRvf8qEt9ZaVpbfZoSh0nxWKa8D
Bo9dEthkUG9mVBj3O5RkeVNE4aXKrPKV4TPUqJ/ZLKR3/y9ZGRH7JWfhtMsgzeD4HfiGYUszDwMv4bRZG4EbbfBN2732w/xhFml94UjQjusQtPWxYjMSEYadqntmU9x9PG2xKk582nA4JgnU1cEXmlKcKBt6
1WTz2V5m9I9fINoraBlYkenck8obFQcBR0j85kuOex4N9q3cEbPUJI1nS+XQ5/5NW9D/Aj9+ER7t0fLF//ve3XCHRtgEZTqdjkWU9Qnw7BePpwhg3fvEgC4dBzPS+MQ7L+JKTKr948MXs6D6S2m9KR5OkN8+
INBW/BgMaKp/HwbePL4JdOOql8qThJ08xsuSmzxx4zZU9VLnIMVgmPxVV2Z90Tgukeoo0BeXNCz7d2U5FwbqaF4cskFmbj1h9p1vpe+BrwGjH3UNclnsVlv1mPW2/sNosLDNok+4nbgNjKPO1FF1Sxa8fUIZ
inTIqEL4zC5AbWRGxWOX+nxBQcL2ALZ2jNB+ERV9liLBYZh2bcQx7ttKl32HqEqff3MLvaRnbgSoPxC3yQBECVZTVkMyf6bYGOMTXzcfUTMLGVivRgTXu9EUjl7IMwb7k8trRhGIgpXKBCXqhbAMnSgmR+x5
T4MK7AC5j2WPwC+FTUcq09ehCz2Ab6p08a1xqCt5V5Yyge01+6g3k/5ngC/rOghWV8HbzqjKizuX/piM+l9WvGG33gd6mhxwm3shWzK86Rzq5s+uER1YgbH8fnuUjz2deGC3NyUNSWvIST+Ssvcb8tsVIdqS
i0hF8RL2IW9jsG3ybkvH2EYJGY0zbZ0V0tho1olhFPcTatrMzbv8f1Dvm5e7AKJcMW18iG/1rnMKUqx0vXUmRwY1aqbT7hHnfbTNu+MUWTDj4tNBpdYlynDITfufsK5/16p+UphsAFHcMKZ4SSxJ58C+K0pG
FqpNExlmMPQhprg4fQOH8dsIrxe552sAxDX2hBU+0C6BVCRiOSak029OEeUQvNckv2fLVX7nzdko9LP7LrfZJsZuk1GPCYuYj9Ovd+pmaOIP5D0Oagrp90ZfMRvdL9NBC9wEc+S5hZ2cbVGWTht2vTYBEjSe
J5zuFr69ObS/rXrS0e+pN2gCLtJcaEn6MbDHfKO8RB7YHbvmH/NSCyHgpPJff3IOerbs/GBZLyn+j+YelgORQmlRGtLulXFArgCYt4tQ97twWXT0K6UkRLfPxSDK9LcIlNlTff5l+cgmD0TDTgtBWK+axHKM
LuuwZ90N+HrmeHS/TLiUZWW//jvLvYns8osVfTlNffHvvzeUCNifa1KACWxA++82VLGmJd8ck2tPs14wEO3gaJJkmEJ7LKSIoPf3wH0qmn6RONrWwtoCeGpGss3K/tGHxokQyWRtT2KgbRFT7eJ7nqbCtgF3
+swCcR8wbY/bAxyL2dnAkPBaPXXQdf0Dnz68XEvUAMjpbzyamv5RzQMvGw65VqU6V9Z1mQI2HK1MI1hS9b28QE7Bdw5tTh6EhbILGFbhYHqFP04YzLUF6mqAE5oQXDSz8UxaBbp31MXieiP6oo39B36kimSC
tqN7//Z6r2l2nS99I0PeBjF5wDQnGqh9kn4c9ine8uWIic82Pil+d7KorGvjvM9cDr3cpOqRBNP/ruoXhDHrxVt+iz9TycetYvscdWjYocCXcN5izUaihimgVI/lw1EGU7+hurEfjVPtuBghQkDilQppdesH
bWRS75OqyW+31pfxs+ejNrpQ0GLrtKtwkRhBhSa7Kwbi+6ueSR532g4NOh+uv0WJiSIpkkIo9M3V2DL4Ct9+fdOya+qs377WRTp5hUsDq9OAYFU3xlVlmeL5n8S2YFklYgorJkvnDf5pWGv/xtRqwjw8ry5a
8KQbUfES+aI9mJpuAqaB0giGWiKKRSANV0IenWfogkNp2GcjgMilHgs4W6c6p9jTlbHHnOx4Oc+28IvlnruKA2QFofMvtAiTbbL2hVpbk1Slhh5PKcAG+dIbfvX9L5ZXBDp6eoitDOd67SVSK+f7WCmDsikf
9NRMvGVDxIp0bw1+ynNeb/J14tPZJdNt9r5Y5+TeSeAsTtAb1yzsEBUyOzV3TDOJhcsOGlJYCZkwWU/NVgUhl2SfqiwGwYkb/7hdkHwHG7RC0fHeE7ZUx6CznmEVtMeSghekWMmVSdp3z8vrN2prG924unVE
sIy08FcRJeRyJ1ugnBKcM7vq5TlvpV56whW8z19Zdd3J+xyuXZmJLCv1/JnF4hVDhI8s2/y99+oVT4NGPTQ1E+m5FsBA2R20z1VPmLvNkpEN0yUjWtNOBt1q0uuFKW/Z2Eb3eISj/hrkCmapdQfsP88Pwb5B
Bh5I6PkxU8HsYlXZNixVYT1+2c36A8R8vmR592F68GcIRhSpWgGNZJ/rbdITR/5q1maLIUAC5TEiRHjbjiKgm/jkOsZU2V+dENuccPjAzzX9cXoE7dtzFhVZCERNzym1rna92KLcmOzjzvQSHR8HejFIVPcw
GP1iCJIqKytyGBvBcKd3mJyRImFUF/ClafaKpEux99K3Q5QM/8Y8Jf8bimNqWB9GwFYxPcTYg5TczUEsF7LtdwKhms0/ckt+McN6Wna3t+H7fclzp1z//LwfSpNYBP35x5G/pJKf/VSOtFj1Dm8rHQHKADMh
4JxWgh1Ggr7VAFy33E5M3BUqgkbbKPC7dwmi8XlkxKqU5gZIP5IAafZhTdn4ddOJVIMkDzlQ1W8GbTiBAGt9E/4J2fz1ZP1QixuPJkzuZssBnQthHG0llrgDEly945nv4nvoz6R4S0mPYdN+FO2B2ivcl7G0
+sDMSwbjQDM6CRjllGlwtRJ1VUvEui0eX+TJlFwOSaAuasjGqtXpkEUZ33mX4kF99A1aXMHmQ3T2RpiO1ZBMRrQWRarsq/jegv2R9cA/8BePLsO5JRb7XN4vwB4KoerHUTOzRQDx4+bafGY0oU9xXVv7fbST
uxaAHU6ao9ILrdZVLxBhoeba6aDEkVlP+LIG/T5SUJCklRymhF/N/+ksy0zCJ9Q5/B72jVfJ8uqH6rWCeMn/TkxKvKziGqimMk6ACLMfLu25cPioPn11Ugj0hevT5+Y/mneqoY6agi2+98wI9RawbWbaVXgJ
MMt95nwtykv6at2cnuqP/ISNdxZmGQprQH0hsd71hyzYjvY7gLA4B3tGemZq2CySRZmOD7rZDYCNHjilH4aGVGaSr4ynECKxQe/BCjEx1uMkyqxMECg95KGBnljtZyUP0P9PJlTQ7fo2G+G8w0Q0uqr4Iz1N
21CDyHGCFscy//1MfV5H/n7MRpjhavYzdoyG7d86joCLvKNuW87RXkVlxlh2vNZ1z7ypn1ubf4icINU6v295dF8qaDn7gSXUgyKbmciRZCKP91xM83O0Ak3tO+YZ4bLklWuSoV4ew+zO+/c/y3il2i9Kjrj9
p7UuemIie8raHZeNgxWQJ/4qa1PRVoQGwloXHoEwRLl4HQChO+ZiQvK0Xy4V3pagrsFJmo6X6pbfedQ/kSvLHLPgPLUHuNVnSXl9RbkaknZFLw0VwG9VeO+F7+5hqgSgLobLBixfprAViqXGFoJahfucOuC3
D7lV9a+2xgagUlG+xjHS95XNbK6BEkdA6qin5CCfbso+n8WS+rBAGcTYTpKM+Z82Bw0R4YpF5/zJeG2atGOZwCsOi+RcDUy47F+yMReElZcEeHufZgmVy7OPfw49eeamnWzAVldeIv3eCbyfBJyAsNy8Fnmj
t5v4+nkAYnXfjbiOcnTDs6Z/4A4K55Tpzcj+E4QETtNtBSErps+Ik7JpP3rBLZFj8OA8atdj5n6gqiLaepWlSAxh+29D1OzhZpPjVHF6Y142HvFoRiBLLhzfu1vtNajiRC9urSALOG2kLmvNKDL2YsFbu2St
Xh1Nocv6Uvfl4sAQQ/s4gsRu5FR57SOyJiNuIDr9InrWRV3zu3q1Kf9ZP5Q27FcmWyxZRHmZvRLReXO2pJmp2O3hi2eYNuMLr6MBE/LmKzVvdx2DzmGyKPs8ma6Xggnc7ok1rEqD4eOXC8uQtDJHBPfJ6kxl
cQ1eSZWy3Ux435n170hbMGx7yURWYFJ4c3Pob8pyVjvwo9rSFGb+APNWTkwZ9Tw99XSfmQCVN9R3bl5zo77xhaGUUxJM1cSOJofmsPJEnpXCq+2SCE8LGJoi5oRtNnlFVgo3vJ8ZCldZG6bsKo/w1jxE0bU3
Wqg18GdMEh7Qnsvz8mk7iV4jyIDawuisPL3rg3NlNrcU45lOFx6pmIZv2JK3KEghAgGa8V7C0mOyNkC8A1MvHpvRoSUIRjgxyIWSrQWsPp//tGvHthMhKLd2MHeazscFjf9qqvoA4Q+H5XtIOGWK1PzqHr4f
K1JuKv6f3nKyBlXXl0pE9XSlH4p12H6nGyYbBsaLaZQk8EEfUZRxaYoG7j6pUcEUjg3DMrbUUD+jlOopJEihbAQeGzw+T8PjjVFbxbRMq0tIF2Yej0VpJ8DXL7BmmS/04R4kY19Hvx7oLzhKcgre5IZOVsz/
gms1y2BKUKtaMR0Bc13wl8VUc82wP3qDwaeJJr5+znG/+UkZ++4YcbfEfxk38OmHhkLbuinQPnDXW8SMx/qW+85hH8K03JG9EX/PXelenMR9mtVWhV43GqF0TIYAnIfIphPDGaKPYvWPmZmdr7IdMconn6Ou
hcoCCDGFFbnfDVHEeLia+rk2kz1+3xjYbrm8zNL2ysOlIcxpNpXhXKHdp4oGpnhuwu7ohiD24+xzJ3j9XiEKJubI9QhcfmoBs503Q9nIveFmtQycsTGWXIUr5mMKTfOMKpgK6eAoMTMsk14Q9gv4krDT3txl
qnLj/mpSodTmeTnMa2EC8QRwfGiGcALP3PiGNWbiwebwcnEOiSY45rW6Ghl/4vA4R+1JUh2d6lsWi7XuF5QYlJI5KuuLziP7fjtX3oTDlF+iUvhzMYiBLIKY+9IlVfQfdOg4tdz0kHsGlMrgiNjFKOlTx7kQ
EfOxkHkHQXkHnapJzNlwHM95NVBiq+rZM2mQWqxdTwZzV1OJGmhOLrLSYh3ACBMGMUoyHGUMZeadKnL+C2D14Nz4OVgyxiXEbdg9E6P6F0BOol2m8maPl2F5ei7qlxobbcVkqgsZJBWiC3bsSSConLSvncmV
BUkTnbAfHIm3Ytdv0nmJY6mduKuNApVrNpnFea3wLAICypAl90fkyPPInJB7vjfjFPPEAEqL8fHKY9/LZZ+BKXf5JZd3E5kmDYVK2l6LcgKNfUpp3H7TcuIWPzhlmTcOUMg7AAAn7Xolxw6y7gAB/Ej6kwcA
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


