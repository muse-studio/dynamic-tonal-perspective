autowatch = 1;
inlets = 3;
outlets = 7;

// Counterpoint Bass Generator / Phase 1d
// Adds parallel perfect 5th / octave avoidance.
//
// inlet 0: Lead scale degree (1..7)
// inlet 1: Frame Origin MIDI
// inlet 2: reset bang
//
// outlet 0: Bass scale degree
// outlet 1: Bass MIDI pitch
// outlet 2: Lead motion
// outlet 3: Bass motion
// outlet 4: consonance class (2=3rd/6th, 1=P5/P8, 0=dissonant)
// outlet 5: resulting interval class (0..11)
// outlet 6: parallel-perfect flag (normally 0 for selected result)

var origin = 60.0;
var prevLead = 0;
var prevBass = 1;
var prevIntervalClass = -1;

function msg_float(v) {
    if (inlet === 1) { origin = v; return; }
    if (inlet === 0) processDegree(Math.round(v));
}
function msg_int(v) { msg_float(v); }

function bang() {
    if (inlet === 2) {
        prevLead = 0;
        prevBass = 1;
        prevIntervalClass = -1;
    }
}

function wrapDegree(d) { return ((d - 1) % 7 + 7) % 7 + 1; }

function degreeSemitone(d) {
    var scale = [0,2,4,5,7,9,11];
    return scale[wrapDegree(d)-1];
}

function signedStep(a,b) {
    var x=b-a;
    if (x>3) x-=7;
    if (x<-3) x+=7;
    return x;
}

function intervalClass(lead,bass) {
    var x=degreeSemitone(lead)-degreeSemitone(bass);
    return ((x%12)+12)%12;
}

function consonanceScore(ic) {
    if (ic===3 || ic===4 || ic===8 || ic===9) return 4.0;
    if (ic===0 || ic===7) return 2.0;
    if (ic===5) return -2.0;
    return -4.0;
}

function consonanceClass(ic) {
    if (ic===3 || ic===4 || ic===8 || ic===9) return 2;
    if (ic===0 || ic===7) return 1;
    return 0;
}

function isPerfect(ic) { return ic===0 || ic===7; }

// Phase 1d definition:
// previous and candidate intervals are both the SAME perfect class
// (P8/unison -> P8/unison, or P5 -> P5), and both voices move
// in the same direction. Such a candidate is rejected with a large penalty.
function parallelPerfect(lead,cand) {
    if (prevLead===0 || prevIntervalClass<0) return 0;
    var ic=intervalClass(lead,cand);
    if (!isPerfect(prevIntervalClass) || !isPerfect(ic)) return 0;
    if (prevIntervalClass!==ic) return 0;

    var lm=signedStep(prevLead,lead);
    var bm=signedStep(prevBass,cand);
    if (lm===0 || bm===0) return 0;
    return ((lm>0)===(bm>0)) ? 1 : 0;
}

function score(lead,cand) {
    var ic=intervalClass(lead,cand);
    var s=consonanceScore(ic);

    if (parallelPerfect(lead,cand)) s-=100.0;

    if (prevLead!==0) {
        var lm=signedStep(prevLead,lead);
        var bm=signedStep(prevBass,cand);

        if (lm>0 && bm<0) s+=3.0;
        else if (lm<0 && bm>0) s+=3.0;
        else if (bm===0) s+=2.0;
        else if (lm!==0 && bm!==0 && ((lm>0)===(bm>0))) s-=1.0;

        s-=Math.max(0,Math.abs(bm)-2);
    }

    if (cand===1) s+=0.8;
    if (cand===5) s+=0.4;
    if (cand===4) s+=0.2;
    return s;
}

function processDegree(lead) {
    if (lead<1 || lead>7) return;

    var best=1;
    var bestScore=score(lead,best);
    for (var cand=2; cand<=7; cand++) {
        var sc=score(lead,cand);
        if (sc>bestScore) {
            best=cand;
            bestScore=sc;
        }
    }

    var lm=(prevLead!==0) ? signedStep(prevLead,lead) : 0;
    var bm=signedStep(prevBass,best);
    var ic=intervalClass(lead,best);
    var pp=parallelPerfect(lead,best);
    var bassPitch=origin-12.0+degreeSemitone(best);

    outlet(6,pp);
    outlet(5,ic);
    outlet(4,consonanceClass(ic));
    outlet(3,bm);
    outlet(2,lm);
    outlet(1,bassPitch);
    outlet(0,best);

    prevLead=lead;
    prevBass=best;
    prevIntervalClass=ic;
}
