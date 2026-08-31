// InnerVoiceTargets_Phase1i_diatonic36
// SIGMUS Phase 1 demo-safe harmony
//
// inlet 0: leadScaleDegreeClass (1..7)
// inlet 1: frameOriginMIDI
// inlet 2: leadInterpretedPitch
//
// outlet 0: Voice 1 target MIDI pitch = diatonic 3rd below Lead
// outlet 1: Voice 2 target MIDI pitch = diatonic 6th below Lead
//
// Major Relative Tonal Frame only.
// Bass path remains separate and unchanged.

inlets = 3;
outlets = 2;

var leadDegree = null;
var frameOrigin = null;
var leadPitch = null;

// zero-based diatonic offsets within a major scale
var scale = [0, 2, 4, 5, 7, 9, 11];

function msg_int(v) { handleInput(v); }
function msg_float(v) { handleInput(v); }

function handleInput(v) {
    if (inlet === 0) {
        leadDegree = Math.round(v);
        if (leadDegree < 1 || leadDegree > 7) {
            leadDegree = null;
            return;
        }
    } else if (inlet === 1) {
        frameOrigin = v;
    } else if (inlet === 2) {
        leadPitch = v;
    }
    calculate();
}

// Convert an extended zero-based diatonic position to MIDI pitch.
// position 0 = tonic at frameOrigin, 1 = II, ... 7 = tonic one octave up.
// Handles negative positions correctly.
function diatonicPositionToMidi(pos) {
    var octave = Math.floor(pos / 7);
    var degreeIndex = pos - octave * 7;
    return frameOrigin + 12 * octave + scale[degreeIndex];
}

function calculate() {
    if (leadDegree === null || frameOrigin === null || leadPitch === null) return;

    // Find the diatonic occurrence of the declared lead degree nearest to
    // the current interpreted Lead pitch. This keeps register tied to Lead.
    var degreeIndex = leadDegree - 1;
    var base = frameOrigin + scale[degreeIndex];
    var octave = Math.round((leadPitch - base) / 12.0);
    var leadDiatonicPos = degreeIndex + 7 * octave;

    // A diatonic third below = two scale steps down.
    var voice1Pos = leadDiatonicPos - 2;

    // A diatonic sixth below = five scale steps down.
    var voice2Pos = leadDiatonicPos - 5;

    var voice1Pitch = diatonicPositionToMidi(voice1Pos);
    var voice2Pitch = diatonicPositionToMidi(voice2Pos);

    // Safety: generated inner voices must remain below actual Lead.
    while (voice1Pitch >= leadPitch) voice1Pitch -= 12;
    while (voice2Pitch >= leadPitch) voice2Pitch -= 12;

    outlet(1, voice2Pitch);
    outlet(0, voice1Pitch);
}

function reset() {
    leadDegree = null;
    frameOrigin = null;
    leadPitch = null;
}
