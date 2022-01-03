"
object event
 Variables:
  ES_int; //eg. &#34;000000000000000001&#34;
  ES_str; //eg. &#34;ES_000_000_000_000_000_001&#34;
  CK_int; //eg. &#34;000000000000000001&#34;
  CK_str; //eg. &#34;CK_000_000_000_000_000_001&#34;

// Observing ~10^12 events/hour from ~10^6 ES is a reasonable expectation.
// (10^6) * 50Hz * 3600 = 1.8E11
object LI[0,000100000000000000]
 Variables:
  event
 Functions:
  numberOfES() //eg. &#34;000000000003000000&#34;
  numberOfCK() //eg. &#34;000000000100000000&#34;
   numberOfCK_ms() //eg. &#34;000000000000100000&#34;

object ES[0,LI.numberOfES]
 Variables
  bin_delay[0,LI.numberOfCK_ms()/2]
  bin_totalTime
 Functions
  bin_eventsPerSecond(delayBinNumber)

// DISCLAIMER: May be inconsistent and incorrect, not tested in any way.
RX_ES_int=&#34;ES_000_000_000_000_000_001&#34;;
for ( currentEvent=0; currentEvent <= length(LI); currentEvent++ ) {
	// no event at chosen RX ES
	if ( LI[currentEvent].event.ES_int != RX_ES_int );
	
	// chosen RX ES emitted a TX event
	if ( LI[currentEvent].event.ES_int == RX_ES_int ) {
		// find preceeding events at all other ES
		// OPTIMIZATION - Instead, a small number of events from &#34;currentEvent&#34; , not 0. Direct synapses in neocortex may be milliseconds apart, indirect synapses may be a multiple of that.
		for ( currentPreceedingEvent=0; currentPreceedingEvent <= currentEvent; currentPreceedingEvent++ ) {
			// some other ES emitted a TX event, count in the corresponding bin
			if ( LI[currentPreceedingEvent].event.ES_int != RX_ES_int ) && ( LI[currentPreceedingEvent].event.ES_int != &#34;&#34; ) {
				//bin window, usually 2ms for action potentials, possibly longer (eg. fMRI)
				currentBinDelay=abs(LI[currentEvent].CK_int/1000/2 - LI[currentPreceedingEvent].CK_int/1000/2)
				ES.bin_delay[currentBinDelay]
				ES.totalTime+=2 
			}
		}
	}
}

// if not within ambient normal, then third ES has an RPT correlation to RX_ES_int at 2ms delay
ES[3].bin_EventsPerSecond(1)
"
