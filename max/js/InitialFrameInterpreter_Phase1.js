// InitialFrameInterpreter_Phase1.js
//
// Phase 1
// initialInterpretedPitch と declaredInitialScaleDegree から
// Relative Tonal Frame の初期 frameOriginMIDI を求める。
//
// inlet 0: initialInterpretedPitch (MIDI pitch)
// inlet 1: declaredInitialScaleDegree (1..7)
//
// outlet 0: frameOriginMIDI
//
// Phase 1 assumptions:
// - labelInterpretationMode = relative
// - diatonic major scale
// - degree 1..7 -> 0,2,4,5,7,9,11 semitones
//
// octaveOffset / absolute interpretation はここでは扱わない。

inlets = 2;
outlets = 1;

var initialInterpretedPitch = null;
var declaredInitialScaleDegree = null;


// Major scale semitone offsets
var degreeOffsets = [
    0,   // dummy: index 0 is unused
    0,   // I
    2,   // II
    4,   // III
    5,   // IV
    7,   // V
    9,   // VI
    11   // VII
];


function msg_int(v) {
    handleInput(v);
}


function msg_float(v) {
    handleInput(v);
}


function handleInput(v) {
    if (inlet === 0) {
        initialInterpretedPitch = v;
    }
    else if (inlet === 1) {
        declaredInitialScaleDegree = Math.round(v);

        if (declaredInitialScaleDegree < 1 ||
            declaredInitialScaleDegree > 7) {
            post(
                "InitialFrameInterpreter_Phase1: " +
                "declaredInitialScaleDegree must be 1..7\n"
            );
            declaredInitialScaleDegree = null;
        }
    }

    calculateFrameOrigin();
}


function calculateFrameOrigin() {
    if (initialInterpretedPitch === null ||
        declaredInitialScaleDegree === null) {
        return;
    }

    var offset =
        degreeOffsets[declaredInitialScaleDegree];

    var frameOriginMIDI =
        initialInterpretedPitch - offset;

    outlet(0, frameOriginMIDI);
}


function reset() {
    initialInterpretedPitch = null;
    declaredInitialScaleDegree = null;
}