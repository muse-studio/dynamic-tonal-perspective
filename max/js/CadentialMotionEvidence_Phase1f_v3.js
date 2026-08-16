autowatch = 1;
inlets = 3;
outlets = 5;

// Cadential Motion Evidence / Phase 1f v3
//
// inlet 0: current Scale Degree Class (1..7)  -> evaluation trigger
// inlet 1: melodicDiatonicSteps
// inlet 2: current nearest diatonic MIDI pitch
//
// outlet 0: reconstructed previous degree class
// outlet 1: motionType
// outlet 2: motionStrength
// outlet 3: candidateFrameOrigin MIDI pitch
// outlet 4: candidateScaleDegreeClass

var currClass = 0;
var steps = 0;
var currPitch = 0.0;

function wrapClass(d) {
    return ((d - 1) % 7 + 7) % 7 + 1;
}

// Max may deliver numerically integral values as int even when they
// conceptually represent MIDI pitch. Handle ALL inlets in both handlers.
function msg_int(v) {
    if (inlet === 0) {
        currClass = v;
        evaluate();              // class arrives last from interpreter; trigger here
    }
    else if (inlet === 1) {
        steps = v;
    }
    else if (inlet === 2) {
        currPitch = v;
    }
}

function msg_float(v) {
    if (inlet === 0) {
        currClass = Math.round(v);
        evaluate();
    }
    else if (inlet === 1) {
        steps = Math.round(v);
    }
    else if (inlet === 2) {
        currPitch = v;
    }
}

function evaluate() {
    if (currClass < 1 || currClass > 7) return;

    var prevClass = wrapClass(currClass - steps);

    var type = 0;
    var strength = 0.0;
    var candidate = 0.0;
    var candidateClass = 0;

    if (prevClass === 7 && currClass === 1 && steps === 1) {
        type = 1;
        strength = 1.0;
        candidate = currPitch;
        candidateClass = 1;
    }
    else if (prevClass === 4 && currClass === 3 && steps === -1) {
        type = 2;
        strength = 1.0;
        candidate = currPitch - 4.0;
        candidateClass = 1;
    }
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
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }
    else if (prevClass === 6 && currClass === 5 && steps === -1) {
        type = 6;
        strength = 0.3;
        candidate = currPitch - 7.0;
        candidateClass = 1;
    }

    outlet(4, candidateClass);
    outlet(3, candidate);
    outlet(2, strength);
    outlet(1, type);
    outlet(0, prevClass);
}
