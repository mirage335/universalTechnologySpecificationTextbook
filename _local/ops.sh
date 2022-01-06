#Enable search if "vm.img" and related files are missing.
export ubVirtImageLocal="false"

export ub_anchor_autoupgrade="true"

#export ub_anchor_specificSoftwareName="experimental"
#export ub_anchor_user="true"



_documents_callScriptedIllustrator() {
	_messagePlain_nominal 'init: _documents_callScriptedIllustrator: '"$1"
	
	"$@"
}



_consolidate_documents() {
	# Twice, to update any documents used by other documents.
	cd "$scriptAbsoluteFolder"/zzLib_800-documents
	_messageNormal ' consolidate_documents: find: scriptedIllustrator (round01,02)'
	find "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft -iname '*.sh' -not -iname '*.txt.sh' -exec "$scriptAbsoluteLocation" _documents_callScriptedIllustrator {} \;
	_messageNormal ' consolidate_documents: find: scriptedIllustrator (round02,02)'
	find "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft -iname '*.sh' -not -iname '*.txt.sh' -exec "$scriptAbsoluteLocation" _documents_callScriptedIllustrator {} \;
	
	_messageNormal ' consolidate_documents: specific'
	local currentIteration
	for currentIteration in $(seq 1 2)
	do
		_documents_callScriptedIllustrator "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/200-preface/200-preface.sh
		_documents_callScriptedIllustrator "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/200-preface/200-preface-errata.sh
		_documents_callScriptedIllustrator "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/201-copyright/201-copyright.sh
	done
	
	rm -f "$scriptAbsoluteFolder"/document.pdf > /dev/null 2>&1
	
	
	
	
	export currentPersonReadable_toc_script=
	export currentPersonReadable_toc_script="$scriptAbsoluteFolder"/zzLib_800-documents/799-automatic/799-tableOfContents.sh
	export currentPersonReadable_toc="$scriptAbsoluteFolder"/zzLib_800-documents/799-automatic/_lib/tableOfContents.txt
	_unite_with_bookmarks "$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/200-preface/200-preface.sh.pdf "0" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/200-preface/200-preface-errata.sh.pdf "0" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/799-automatic/799-tableOfContents.sh.pdf "0" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/100-problemSolversGuide/100-problemSolversGuide.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/100-problemSolversGuide/100-problemSolversGuide-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/170-cognitionSplicer/170-cognitionSplicer.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/170-cognitionSplicer/170-cognitionSplicer-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/140-neuralBits/140-neuralBits.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/140-neuralBits/140-neuralBits-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/155-mechDive/155-mechDive.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/155-mechDive/155-mechDive-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/190-CARDinal/190-CARDinal.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/190-CARDinal/190-CARDinal-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/195-lithoDive/195-lithoDive.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/195-lithoDive/195-lithoDive-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/150-positionTrackers/150-positionTrackers.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/175-sleeveDive/175-sleeveDive.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/175-sleeveDive/175-sleeveDive-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/199-cryogenicComputer/199-cryogenicComputer.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/199-cryogenicComputer/199-cryogenicComputer-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/199-flightDeck/199-flightDeck.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/199-toys/199-toys.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/180-modularAI/180-modularAI.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/181-motivation/181-motivation.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/181-motivation/181-motivation-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/185-memoryRegeneration/185-memoryRegeneration.sh.pdf "1" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/100-draft/185-memoryRegeneration/185-memoryRegeneration-errata.sh.pdf "2" \
	"$scriptAbsoluteFolder"/zzLib_800-documents/050-sorting/201-copyright/201-copyright.sh.pdf "1"
	
	
	mv "$scriptAbsoluteFolder"/document_tmp.pdf "$scriptAbsoluteFolder"/document.pdf > /dev/null 2>&1
	
	
	echo _____
	sleep 20
}












