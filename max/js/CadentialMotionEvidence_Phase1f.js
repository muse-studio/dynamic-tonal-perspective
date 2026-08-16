autowatch = 1;
inlets = 4;
outlets = 4;

// Cadential Motion Evidence / Phase 1f
//
// inlet 0: previous Scale Degree Class (1..7)
// inlet 1: current Scale Degree Class (1..7)
// inlet 2: melodicDiatonicSteps
// inlet 3: current nearest diatonic MIDI pitch
//
// outlet 0: motionType code
//   0 = none
//   1 = VII->I
//   2 = IV->III
//   3 = II->I
//   4 = II->III
//   5 = IV->V
//   6 = VI->V
// outlet 1: motionStrength
// outlet 2: candidateFrameOrigin MIDI pitch
// outlet 3: candidateScaleDegreeClass (=1 when tonic candidate is known, else 0)
//
// Important:
// This operator DOES NOT update Relative Tonal Frame.
// It only emits local evidence for a candidate frame origin.

var prevClass = 0;
var currClass = 0;
var steps = 0;
var currPitch = 0.0;

function msg_int(v) {
    if (inlet === 0) prevClass = v;
    else if (inlet === 1) currClass = v;
    else if (inlet === 2) { steps = v; evaluate(); }
}
function msg_float(v) {
    if (inlet === 3) { currPitch = v; evaluate(); }
    else msg_int(Math.round(v));
}

function evaluate() {
    if (prevClass < 1 || prevClass > 7 || currClass < 1 || currClass > 7) return;

    var type = 0;
    var strength = 0.0;
    var candidate = 0.0;
    var candidateClass = 0;

    // Strong motions
    if (prevClass === 7 && currClass === 1 && steps === 1) {
        type = 1;
        strength = 1.0;
        candidate = currPitch;   // current note is tonic candidate
        candidateClass = 1;
    }
    else if (prevClass === 4 && currClass === 3 && steps === -1) {
        type = 2;
        strength = 1.0;
        // current is III, tonic is 4 semitones below in major
        candidate = currPitch - 4.0;
        candidateClass = 1;
    }

    // Secondary motions
    else if (prevClass === 2 && currClass === 1 && steps === -1) {
        type = 3;
        strength = 0.5;
        candidate = currPitch;
        candidateClass = 1;
    }
    else if (prevClass === 2 && currClass === 3 && steps === 1) {
        type = 4;
        strength = 0.4;
        candidate = currPitch - 4.0;
        candidateClass = 1;
    }
    else if (prevClass === 4 && currClass === 5 && steps === 1) {
        type = 5;
        strength = 0.4;
        // current is V, tonic is 7 semitones below
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }
    else if (prevClass === 6 && currClass === 5 && steps === -1) {
        type = 6;
        strength = 0.3;
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }

    outlet(3, candidateClass);
    outlet(2, candidate);
    outlet(1, strength);
    outlet(0, type);
}
