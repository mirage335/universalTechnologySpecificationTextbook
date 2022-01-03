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
current_internal_CompressedFunctions_bytes='12383'
current_internal_CompressedFunctions_cksum='4000152164'
current_internal_CompressedFunctions='
/Td6WFoAAATm1rRGAgAhARwAAAAQz1jM4cZwI8xdAC+ciKYksL89qRi90TdMvSwSEM6J8ipM2rR/Iqc/oYbShD5P+hKgz3ONSu7BhrUf8OSN4oZ8BL1e7m0JQ33pEQs007VTHA7nLczyIuWiilZSo+0zB132
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
Kqfcc3ACQ7smygeKtLcR6Yu2XbWeFQp7xXF64QANaauEn1B468J6DKVmL9sPEn9OKeyzE+rXG5BLgwnmxGp2g3Rhxx3y6gsH/wbcZt/EkkeDHELsx5sk8KyriY2Yb1OjUYeiQWCV745Tq8BbqT0JTEOXJFqY
ZkfG/WYAkps/wfTT+b+czthQNz8B0JuJntuzO/HsdY7JSr7SPeY7cAMvkDbR1epRioPKBodiUom92THF/8n9TImGVLJ3lckK+aWCvhBJob0hGYjwLjOMstBkRebvv9bo2ANqu8BQN91NEoeR8VkBiUy2ehI3
Ul+mzc8lMLKxtat5c2eyVLu3rHb+iA3WUBs6CPP+iQ6TVQ7XmqVVcgxi8is8XQmiQGd2yAqYV85msD8IFnuqu7VI7CvrB04tHBYhT6LaUl8Wbsy7p4T2J3LgCkZAKtC0/8dWF9Pw2YBV041WL6VpclpjvyzX
iUcR1tcsAYFY+JkMV2+m9Z/EfWTUVq0Bw+lU+zuJVIA5wRFyr82TK8co+1athO+Jb6wDwUZlKCbjv6FfDwbM7YSeXMfZyv1xWnD0DRljF+47kBHrLpC9LodM12kpS7DFP2JM+qrKI+dOlYyqss6SBE3ulVGN
WpAklVS+q6XfmxKybZktfJMBVF0D6foOmV8mzrzo0/p9p0Zr1O+XyR0NRpYlvcDs+lN1R/sxT1PEy8dhpDSQXw+LTZeeNyFxrMOfRlf6YzjraAXQrXn1gdfqVObw/ZhSwwPyDd9LpfxHzKG7QQHE7hfl+Evx
oQxAxdXG3wXWdRwkKG4nTxji/gDKadNFslALspS7pO7isIsvWI3TxmpJdAHEXaMi/0SLniCnQ3LhAIv5dcutwot5mZoFCuKajSHI+kOAAOhg+LNVw4ffXC1QXEgsDfq8dN2ExSqZEHlRi5LdOin6iFuGLXgu
G1UlvO4Tk2JwV4jUfj3fL81js6XdUAaZPQqIV2duze1kw57XewLN04NTuuKTMcClXjT+SEpx+k7uYx1IP0aA+o3W6BH7HfMtPeNsLdaiqyP0mwZftiY6HY4deCB85ZPkxAdmYtgyGIJkKB39rbZGoId1d+bi
jigAiPEYJRZIPGlJDlmQCAoKXXn7OJ7ghv0savd6FZww8h76adWAZ6Nq9iboTDQSL/D2a0rLsnRn/mSz4Qr9d8D50DSxcLwgk7V6TXl5i/PLM5pLRStZ78EfhNWTRb9+xLsnssNDIxG/zJiDinpP4Trtz0Te
U25PNTYcjGyEFTEKQraCD/0XyOUhxfjV90xhSVgU6x5bd3VLvhEPYOjRvbNC/6qi27PaKsLckKvloeB/mloq9Y/Tk1wq5fDuonS/vHUaaTIedpM+BT8tOnLjCEbKabQARk4hwM0KtECJTpXBbaPj32JyKhHY
+DnZRW2aXBltUUDJAT4vWhkEl6bc6xfCXWyKQKPPYfd7PlVq+9zMKrCTzeSFNyLyGhyW+MkL/GtZJMBge1aF3+uY55ozhgHP/q9UJ1/Y1XqUV4sAQNGSgkvbe3jupppZWcKc4uLtC/skzolONl4mkNtF0NBO
ntIn/7OpJGK2qcDyhHgZj5+UF46TRzFwNJIGk/1Qon/aQHce9eLS3UhrAG+WYY7VbZ0NE5vt21tJZj5piRF75QeZ+nHB9g4VgG2hRAwQ30Qjbgp7SkdCT9S5FfV7FYsn3mDRFF/YwNPtWcmiWLxdMp+kOnBI
zut+6ePknGCXFHzSJJgtrmqDf8MeiL2ewOD1AgWTXIAIPrtZFoBRjhbpsai8kHWhLicQAP7hyIr+DJC7S9iPzaoCrwzWjablHaaMPDgz+AoTCJGul8EmE9DBxmi23lw4CFIio5M9JEQ0AurL593qhOQkJkoS
uhK6tTWQLmp60gxqfnGqFrF8V0cj+/dNON9iiGpXAeuxrLiN9qTF+atVad+xNcB3BnHGs2v4H8W/p4o8CYnK5lsZX/SosiD5zQc2VMlHQISFlxCfHBcsA4nnamAT6WsEe0LG/7et1z9AI3fHcGXjB8MScuE4
PGx2eedGUNOeSZIwRTjidZ5lD7SwZjC8FIBKWo3+DwopJfF12/4hryGUz2NTvAKjtNtYXV3JaFqoW+vuKVQkjtIduYh6s7Umn2fDvMSeNm1PmrFSbS2F1Q5HuJr7ITxrz7lsxM2VhrYP0Uw8/pkUCCw/KQ/f
WdpaGQ58Ilj8mptPHCss/bE7RP9GuWL81hLF1mcHz+iMeH+jvV5JOa/m+CcBGct2fhbv1sWeMbHnkh1lE0fp/cn/Wy/TMahj/tz8uP7CD298kYn/Mr90G8NJlSJX7C4xvqPDvMgmid77PwpOkWsr2uhEi8yr
3NKfiloqbf03O0WhSzf8DAnPR0GYzuVzdZ1oNZMeCY62QVgPMmL7OKP6lYFQKLuuEVZn3SwvnEQDwbhw9PePHBSiyQn5b3Vqie53ig7apkvgmQrrhOYlsI4Bz3/1ZhOSK4FswVqNiDGQXHMObWxL6qSgdDbC
6hlNlZJAAm4g5IyESoclklsQGCT/Z3I6QOkGw3hrSVGVOdsZszw8qc5xSjhHustjFEQcQGBqcWrqkeGVuOXV7au8UzcTA7Rdpdv3QRDKwQMsWshBAWf1qDESsi4x/M319tL0G6Y38p3LbmA7hDQvxrLi5tp7
BTFCnwzBvxG52CZlRH5V2jMeRp4SPVCZHZHTG+ES+yCBLTQKcrhd3KttBCCllNvsifvzE5SZttY6R74jCxlDPmiKrseGt9hzI8RjcZdtf8tSO6nijGOUYVIV5+FluOrzewhWt9BpNUEOpWTCFiIRJ8N9ABDP
lE00zWNsX2OB+3yKa/SF2hW8wAzwa2qcfVo2dLUFPQxkD4CGIXavZvn92DiNXMvoRETG87UND6av/1/dfGqb8C4ZgDhC4Wrmg32XRece582ksKwJam7iTd/2w8qt+hDHTCX7Mvk2HhetjHFDSC6wyDC0j+Az
bI99Q9huUfV6KqMf0r3Gi29QynsPG2WN1EKd6HMbSTEmXPdx2neRteuEUn2mZR6aOwSlWSTdOiPpq3joSf4ZE8mAJmUCt7vTn7Se77AWnwNsezSnw17D0UXV3s/+y2a4jMM2+ihbCOruFHBdMtaQaGnsinhi
/z2CMkQrvWhL7Duz+7NmCjjbXQ9OfXBBRRyNafNgv7retX1jdQ3Ofw9eisGcgPv+fheIHkH2Cndnw+wa6vljHdTmhaNAXcK6ytnabkwYEHLQ/keidK9tZI8X6yXpEdK/UDPKZcx2d+/axosMAF4TqvE8VDc2
NiDy06akzhPguqh85K4tVXRsoY0Nh/dvFZRHxhvD01criZAJX3AzSljBOpYe06Cs0pS3Bz6HxB/aA5nZsB2nHgySpTWfEeTNFRWkpE7Iu2vnouE3AMZvK+0H1NyvicmH73waOLkSFYyVsIPx+5EpwmhiInG9
LLMrZJMVlBN7yRi1EHgPiA+Qr+tqvxx26FoRykx5GZHC1/lXVvsqwpfyKk/eNnntIgKfuxWl/1VKrt5Ko9iibnoQDHTON78t5DIw+Xbdjfq7/K7GYqsoE2+c8hyUMi73x2oYBlyeZpiKIv0xFdTW5FEx/idD
oFHbyf3+SYK3W4wbWiYgGmbRR8eJN+SAI+7xHSyct5vZWjtzVQ2mCM4Bznj8gdGu7SDpO/5MltAqWB0PRos81DVrY8Z2O9GAo9wFtLfVvDmxR8yPB8YCCWHjYgFjp5iPdaAAVd/u5GWa/o3BD9FhcQ79BWuj
fWJpNCJQxrlEnGGX0O66O0yj33/OYzTCBnevctVx0B8PxUIfkz1ZeYN+BrC+wkEYPYWgN/0Drq6z6Vci1PSuAlBo9sCioj1rPqhly8V/soEhX4Y4UnTcDFJsrApSgPQuEhhE5Y0bJYozfi5dwr0gsV9T3O5h
eVo7iq4qNP7Z7xCJ1TzRp9BI6Y/sAtH1EK2e01H8NCF5343JHCWm6fKM4j3GZoiBKlCXyhzVi3XSTlQ7diAvZp9TR1WTLFEza8uDUiPbRu1/vE5HXkTLeD+iCXHSBNYowSvaus3J56G3pyrjJx0/Ac8cPJX5
I39qlz8Uh1kpMdkVKAgcFpoUIoQ0z0M8GDIKdn03FjBTSxn8Zm9cszeOJEkC1dEogic/j2aPtmqJVMB7OPSxXGfYLOq5YYHOdc9NzikCWluZ1QVrLUDpIyyspJqPiI80ZXxJLpDQP0sMCQyFvhzfFEfQpQ7q
UhUBPdDxKxEL0UK86UEHMqJtpcILnuQSK++zpKQWxhA+ZM4gciSeybdHHYPwyAnGvMVhMJbmGcgZOmTLqCAdkFW2moZO90YhpU6WqevYFAhwfvQxAaQ7MAM3PHk1e1gS+5o5vJ4mUyiUfJAWTGyqa7/AEgVr
/pgm8aKrYKULSU/csL7eKp6h7DsLil8b29HgTQ25fb26BB5i4C3ESQUAH8c3PSWaPodn1PYlE4sQ9ZEYBHOyZzU1mMiaId1I31Kx6jAFjJduwLaIyUVd/vUJ1yvq+Ltw8mnfUjws8XH7eZ5vo85Wzdqhu8tf
jVv1doziV1sDoSzlvNjUuSQ81twAUDmDFNsH9mfYWv/95IkvI4EkS1lqMOdt9Cm9FsCuMjY0L1c4UlKfLteFc0S5/F3SqJG4wb9z2z5KQdhx+z+drab8SxCLAJtg9hxdcpn5QYNpi3Z018iiOsbacgAl4v9T
Z2NK9L64A7hnqigEprTRhxzk05wcAa4p5p8lu/rv7SFlsrites2YBFQlnK1fVyi8D4GbD3dSL6YNmW2CtQoy8LlZPUeEcLEbr1Ok7uAypn52SCelCD7F4miZQeFvcCPpftQGdP4dIY9lflncUtLv+gfRBjqU
MaaI+vFzsAXgWPI3/L8cTiUv0wT/mY2COPum+QSbj/8TkQjuqeo5pkuUgxhyBAJnl6Z8R8G2CWkgveFWhKoqRLD4ZEZ8H4YDvPzuf9bCESWAA+NistIGl0awWXZeEpFPNcVF5Bz7y4xyHBucadEdDEQFUmHw
W2WKfYQTPQnWyhmf4UEznIsVuGtq7neIhh6ePPao8hbj21zdvKyljTVOlDpy1OZhejLk3vhijid4xd1C08ZMFLDP+rICQfnxxDGtsJayap3lPBvE+7GJWFwihZWJHwk1qg4TFexHY039dhxxvFOXR+0PArNS
m/ONHM8eVmqM9txdxr+GTMofcDqQDz7l8+S4hVpONWciGFh8fEbkJ80EQ+20TfM14BR7o9D5vir3/3vohv2pgeFSu1lWqD7Q8qGxcDuODWDGCeeDN7cl1hbL+LgiTURjg7fvQIoFUvENx8mk8KjPeQXsKHyk
H06wUDaUHc8JRSCA7mCiEivCS8jyoda7CzvIbZpehwpCuP4ni3DNOvcN1MFN12YdWfc/Hr4+Wfozji8vchTsLGHle11ZWTXOIvN4KsfAQZtJF3GPNYh1XieDzub6eJJ+T4TX5WehWbUEwgevcO0mAPqOmoc5
6E5BcRF+Vm2p1UkPJdRN8H8c78/KtSyyPIzxP5xZeDsGS9X6fj6MQ8Umc/rHGi4HtW2BinI/AZfo1ihpfPT3DCYoUu3Vm4ENdoydluoQggr4OOpZuxCvyIXRhAPW2MQ9rinkYE3N4I4/x4L8QmuvmbmN5xcg
NxqE3aRzer5kzxVm3/M/Gcwy1EwKV4s9BnoHqfNw3rozYg6hWrt6RF7wuT8vHG2LpnqonaKHjwSyt2EL4dZmMn8cixfejhfO8f9PoKYCp0U+NFzNn5y94KGY7uKG6UYv3Tav1uYdLgnDckFV+27rOi/ncEke
vJac3iIt7I63RaQhmA5CvKHtmr3nqYoLW3lgo3CWgYl155OTWVhTt14bfFNG0l5LjNCPD20Ms88nXOnlkqs6qCJ9SBQAwx+1CDuqocxSPBaTWLZQOz8Yvz+Fx8NmUMrSLdFPQGEeel36pv3Ww5Zx/tATTtcm
X7tYNCSRGfhrRnjYkKvndaLQy06sDhqcOaOPZb7pgphZ2y4ouiaoP1KSf/pbERidime0v6LYOI4dTREBa7RWGDWTkT4vVoTrUThWVX7lQ2iL3c30oW4B1TO6CKcefTvMcXU4RWkNid7zqvBFL5PSqT+IeUdA
Cv3yxxmXt6MS+0WDgsijvBdLhwn5Q1Ap72e8FJMAG8wMdrnJ3RwT9Zv8D7PwTD2j3mvz+7sTTILxSz5ZkrouxiQbCv0Ci4RTUxvDnOiSz2R8CQCPZd9OS6psqaPQZr+o/dWAYYgrsJatEmD1wCLeKddzemN4
83+dtltEHb2RTJMr0YOWeUKva8ICw0X/5P8QfYcl2mU9pOZaKCXA57W2iQYtgZfCPlDJ74lc42biIrkgFUIOTVwKrXyFB7Jam8F5yl0WMAsom1IoR2Dlk7ANM5GeR2PCD5RayQW/Ub+tpywy0gX1uS5BULoW
mtP4mgSY6b1C48zzk/CuqqSspsJ5wxF8yzQyBxLX95yBgPvsvaBmbTyxlj7OOQzTdu6w/LE1IxIkYStyflKW+yp4kOUqmgqtfj79PFJzHPOR/CBSb9DM258P4thuZJpc9mPfRI7C5Eo8McINlIOqNiKEJpRW
00pLX10lw/+sIoIrZ3qzRN5bw36VAx0q5hFrQrHrIiBHhdZL7vepF/plZ0Q13l/6jMrWW3fAmJQSxZuGzb0a75FWE/uxodkOxH8RfVCXCYlWaU642LqZyndv54FwOkyItnmi5TW8tDCuXJlhu5/4ka5+hUSv
Ls69qI8zaDo2ipD/ZYalYTqipOXbY+eQCG0B0MuYbm1LB+oYT02EAJmCzDqnNmr1xwMtLLZS3VHLA0oqvhj8hccRCm5brhz0bG/U9ihApYoAOBnHl0zmcLqsZpJqaQFuHDNGP6MuxXR2IxRzoSnKuoTn/Way
+rjGJPRs1B9DDE44fxaTPOBMy0aDu8ovW7V4awsDOQZbSNg2sOnjwjhK51tzZqkW+YM3f96aQjzbsT9XWQ9Raw18Urro4fPwpkYFLzV6mrDzyXtdD5iACPZ/oinDp5CvgJkEgq5KR82Ld5SLbclPO32lplx0
EGo/nULCjqW8qUUT0wbaGj35Gt1SDqpU2DmNYnpx55y0+Q9Y0ix2Xwe4M1HOmwy/yDy7dBml4V8B3HjUiM5femRMQV5XpJft9hLjGxXt6ZMW9pu4FFMUoGrYm4Cx8BneaiIIhTy1iP67qzMI8LISpuuCxm2a
LKZRSUPdkRNwhJrz+S4LobAli+MYMi5K8ca2qw1k7UPXLBuqR0zGaaP8qgne+dKiNjeS95VJ3qj8IVlt/2WtA3U97MdNpqMli77sUIolpFbPFyK4OTo3mIRoxZDmIwdLGwnRL9ezNzNfsRbHFoqqyiDEna9O
8hY+xG/FsEZtMCCm0N1ZV9GVfiHkZgP0gEWQInyyZk7KOalJNXBrObaooiVh8j6wz/IKyhazM2tfTrGA1Lkm8VWJ+j5x0lkVKEjNWBLK5y0P+DttBtAsGJOhccFNGnDk6lrALSecRMR8faBaASf2rFkSGwJA
/1kLYBmgtNnAoW9QcmVkbplCB1JzA1/WZTbmw5IPHmA5O4LafD6t3izBkT4afToVODuqR54LGGQKZ7/99xTscqsnU0nLO1T+bUeUhy4ICxbseoWNxoj308P5nvqaiiEEPukMkAGH1QcLxILZiDoKXumyZp6e
hJt3b2QdeqsAPYtwPxICAIwHYBBkNm8Hdojpb3MqE7qpz7s+KUfY5EITB6x4PgFItDow1q0GuW4ZIgul1gG5fCU65quDr2G2sEBDKlvmxrRse9ig/+OXAV5mcoAweFimj32g52XIGd8tSt4qQTsz0+GbOb/w
Gy75052xPS0DPM/nQBtgrDlabCV3n5Qu2/6368Iip3rox+3dT8UiJgq+jUH12XNusmqw2rn48JS+kx2eVBjPRSWI9pbpSceY4vMwKcdhk25KRz8/zYRRDfVTsTGUwOCI4Jd2MBFQzkzmGeS64qPeaIgqjRHX
StEr0L6Q2DmH5iYOGz/OOV8noxFqhlpy4UMZEoAwR5UWL6Hxbmw+y1Uc5W9KRowD6i6679kpzY7R/pUWs7z8gtQY5XGIybycTA1OL6Fwkus4IaOcODFDgyaclSp3GYl2IsqSsxqI6v+wHiznH9cgkc5Gacot
Yi6Au/itgRiugU7gowSv7gcIYJneHsNjeiQvI+tY0nAW5mK/yi5/R/aWYocOmCoAld+1W/q4P8e6mQiQWxDBwsR9CQ3KQwW/zmUfJx1Se27IBsRnb190WCawwM+39FleiF4ne8fv6PjwnvTk2khPrAnTO8Pc
Algls0GNaC/rCZKvp9v0KPu7hGNaoiycfGs2VRAg/PltKsw9rzm7tYyG/TiyOkzIrRX+6yuJqckWBMh5Pq1jJ39xIrWKlk5pmb/yaj/5iZECkVYIOkRjD5ky23vbTYHkmFpa6A+ln6Gm7oPWIT6IGW9qKI6C
qn+uDleD0SOi6zj/ATdHdydzBFX+b7Qm4XpDTfVtWfmPUoMAmOeR8bJdgles0J7R2MxD7hVwI3ivvNDWSjEA2ftgO78Kuy7NhxJMBPdnuEKywfOJURsoCLrk5ylkcwSh89LlGSkl18ZszYT5M8EGAv9QrzBA
Jv2kujsKWOs11/fDqMWwapRfGhhj0VXq8MvlaMh32Cn0mjay5X5o0s8tYSeU74P0AtrVf2ZR9HbbebTYn5GQgR71HUWF7t79xRauvYttOkgq1MwTdli1KSDlmITuC79g1LVwxYHoyttMxt9Ntdbbo/9kRwaf
b427UGb7ov/V6cgreUs4wwR3CdssEEmCEHZWw2Pa6eeoa6Z56sMB08NHYRuXhm651tsivZJlhwEubmC0fR7hwsxpFOQfE1yGoBGklZ2MxifEbUhNzCJnmQ2qUY9I5OJ8kThRhkrwUBhwLwkx64BV8/tqWlAh
mIEQCahSO+wRS3VnfTKTtKbL+ESGaUT0J2iFUGlHyPYPMN5LMhWQoUIxPZWYt49s9lClNwkMuvWmHmUIi9lDHcH9GBsBWbd9QAPlkSfMh2Eo9LbxE+79AA2O/85t+y/RDlna2HOgA483sF6FXTuWIiNCtdRz
DaBUIF/nA7TqnVX2pWYBonHsv+T/8HJR3TBot7A3jO4JHYol9SGfmb0FmXz1uXXsuGXMEGvOZScK7aPKD6SfoQZTrbdYAMImcI8A8mdrAAHoR/GMBwCKzCVKscRn+wIAAAAABFla'
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


