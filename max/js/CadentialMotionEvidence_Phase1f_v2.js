autowatch = 1;
inlets = 3;
outlets = 5;

// Cadential Motion Evidence / Phase 1f v2
//
// inlet 0: current Scale Degree Class (1..7)
// inlet 1: melodicDiatonicSteps
// inlet 2: current nearest diatonic MIDI pitch
//
// Previous degree class is reconstructed from current degree and melodic steps,
// avoiding ordering/state problems in the Max patch.
//
// outlet 0: reconstructed previous degree class
// outlet 1: motionType
//   0 = none
//   1 = VII->I
//   2 = IV->III
//   3 = II->I
//   4 = II->III
//   5 = IV->V
//   6 = VI->V
// outlet 2: motionStrength
// outlet 3: candidateFrameOrigin MIDI pitch
// outlet 4: candidateScaleDegreeClass (=1 when tonic candidate known, else 0)

var currClass = 0;
var steps = 0;
var currPitch = 0.0;

function wrapClass(d) {
    return ((d - 1) % 7 + 7) % 7 + 1;
}

function msg_int(v) {
    if (inlet === 0) {
        currClass = v;
        evaluate();
    }
    else if (inlet === 1) {
        steps = v;
    }
}

function msg_float(v) {
    if (inlet === 2) { currPitch = v; evaluate(); }
    else msg_int(Math.round(v));
}

function evaluate() {
    if (currClass < 1 || currClass > 7) return;

    // currentPosition - previousPosition = steps
    // Therefore previous class = current class - steps, wrapped to 1..7.
    var prevClass = wrapClass(currClass - steps);

    var type = 0;
    var strength = 0.0;
    var candidate = 0.0;
    var candidateClass = 0;

    if (prevClass === 7 && currClass === 1 && steps === 1) {
        type = 1; strength = 1.0;
        candidate = currPitch;
        candidateClass = 1;
    }
    else if (prevClass === 4 && currClass === 3 && steps === -1) {
        type = 2; strength = 1.0;
        candidate = currPitch - 4.0;
        candidateClass = 1;
    }
    else if (prevClass === 2 && currClass === 1 && steps === -1) {
        type = 3; strength = 0.5;
        candidate = currPitch;
        candidateClass = 1;
    }
    else if (prevClass === 2 && currClass === 3 && steps === 1) {
        type = 4; strength = 0.4;
        candidate = currPitch - 4.0;
        candidateClass = 1;
    }
    else if (prevClass === 4 && currClass === 5 && steps === 1) {
        type = 5; strength = 0.4;
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }
    else if (prevClass === 6 && currClass === 5 && steps === -1) {
        type = 6; strength = 0.3;
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }

    outlet(4, candidateClass);
    outlet(3, candidate);
    outlet(2, strength);
    outlet(1, type);
    outlet(0, prevClass);
}
