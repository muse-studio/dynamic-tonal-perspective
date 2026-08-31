autowatch = 1;
inlets = 5;
outlets = 8;

// Counterpoint Bass Generator / Phase 1g
// Phase 1d + Cadential Motion Evidence.
//
// inlet 0: Lead Scale Degree Class (1..7) -- evaluation trigger
// inlet 1: Frame Origin MIDI
// inlet 2: reset bang
// inlet 3: cadential motion type (0..6)
// inlet 4: cadential motion strength (0..1)
//
// Cadential policy (Phase 1):
// Strong VII->I / IV->III evidence biases Bass toward V->I.
// Secondary evidence gives a weaker tonic/dominant directional bias.
// This is generation scoring, NOT a Relative Tonal Frame update.
//
// outlets:
// 0 bass degree
// 1 bass MIDI pitch
// 2 lead motion
// 3 bass motion
// 4 consonance class
// 5 interval class
// 6 parallel-perfect flag
// 7 cadence contribution to selected candidate score

var origin = 60.0;
var prevLead = 0;
var prevBass = 1;
var prevIntervalClass = -1;
var cadenceType = 0;
var cadenceStrength = 0.0;

var scale = [0,2,4,5,7,9,11];

function msg_int(v) {
    if (inlet === 0) processDegree(v);
    else if (inlet === 1) origin = v;
    else if (inlet === 3) cadenceType = v;
    else if (inlet === 4) cadenceStrength = v;
}
function msg_float(v) {
    if (inlet === 0) processDegree(Math.round(v));
    else if (inlet === 1) origin = v;
    else if (inlet === 3) cadenceType = Math.round(v);
    else if (inlet === 4) cadenceStrength = v;
}
function bang() {
    if (inlet === 2) {
        prevLead = 0;
        prevBass = 1;
        prevIntervalClass = -1;
        cadenceType = 0;
        cadenceStrength = 0.0;
    }
}

function wrapDegree(d) { return ((d-1)%7+7)%7+1; }
function degreeSemitone(d) { return scale[wrapDegree(d)-1]; }

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

// Cadential contribution to candidate scoring.
// Strong resolution arriving on tonic (VII->I or II->I):
//   Bass I is strongly preferred; Bass V is a secondary option.
// Strong IV->III supports tonic-function arrival without forcing it as hard.
// Other secondary motions only provide gentle functional direction.
function cadenceScore(lead,cand) {
    var s = cadenceStrength;
    if (s <= 0.0 || cadenceType===0) return 0.0;

    if (cadenceType===1) {          // VII -> I
        if (cand===1) return 6.0*s;
        if (cand===5) return 2.0*s;
    }
    else if (cadenceType===2) {     // IV -> III
        if (cand===1) return 4.5*s;
        if (cand===6) return 1.5*s;
    }
    else if (cadenceType===3) {     // II -> I
        if (cand===1) return 4.0*s;
        if (cand===5) return 1.5*s;
    }
    else if (cadenceType===4) {     // II -> III
        if (cand===1) return 2.0*s;
        if (cand===6) return 1.0*s;
    }
    else if (cadenceType===5) {     // IV -> V
        if (cand===5) return 2.0*s;
        if (cand===1) return 0.8*s;
    }
    else if (cadenceType===6) {     // VI -> V
        if (cand===5) return 1.5*s;
        if (cand===1) return 0.6*s;
    }
    return 0.0;
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

    s += cadenceScore(lead,cand);
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
    var cadContribution=cadenceScore(lead,best);
    var bassPitch=origin-12.0+degreeSemitone(best);

    outlet(7,cadContribution);
    outlet(6,pp);
    outlet(5,ic);
    outlet(4,consonanceClass(ic));
    outlet(3,bm);
    outlet(2,lm);
    outlet(1,bassPitch); //not use
    outlet(0,best);

    prevLead=lead;
    prevBass=best;
    prevIntervalClass=ic;
}
