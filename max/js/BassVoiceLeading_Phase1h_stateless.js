autowatch = 1;
inlets = 4;
outlets = 5;

// Bass Voice Leading / Phase 1h
//
// inlet 0: targetDegree (Scale Degree Class 1..7) -- evaluation trigger
// inlet 1: frameOriginPitch (MIDI pitch of degree I)
// inlet 2: previousPitch (Bass Part State.previousPitch; <= 0 means undefined)
// inlet 3: reset bang
//
// outlet 0: targetPitch
// outlet 1: movementSemitones
// outlet 2: voiceLeadingScore (Phase 1h provisional)
// outlet 3: validCandidates (list)
// outlet 4: selectedRegister (MIDI octave number)
//
// Phase 1h voice range: E2-E4 = MIDI 40-64.
// Degree->pitch uses a diatonic major-frame mapping for the current
// Relative Tonal Frame origin. Mode-dependent mapping is future work.

var frameOriginPitch = 60.0;
var previousPitch = -1.0;

var MIN_PITCH = 40;
var MAX_PITCH = 64;
var RANGE_CENTER = (MIN_PITCH + MAX_PITCH) / 2.0;
var degreeSemitones = [0, 2, 4, 5, 7, 9, 11];

function msg_int(v) {
    if (inlet === 0) evaluate(Math.round(v));
    else if (inlet === 1) frameOriginPitch = v;
    else if (inlet === 2) previousPitch = v;
}

function msg_float(v) {
    if (inlet === 0) evaluate(Math.round(v));
    else if (inlet === 1) frameOriginPitch = v;
    else if (inlet === 2) previousPitch = v;
}

function bang() {
    if (inlet === 3) previousPitch = -1.0;
}

function candidatesForDegree(degree) {
    var pcPitch = frameOriginPitch + degreeSemitones[degree - 1];
    var result = [];

    // Enumerate a deliberately wide octave range, then filter by voice range.
    for (var octaveShift = -60; octaveShift <= 60; octaveShift += 12) {
        var p = pcPitch + octaveShift;
        if (p >= MIN_PITCH && p <= MAX_PITCH) result.push(p);
    }

    result.sort(function(a,b) { return a-b; });
    return result;
}

function nearestCandidate(candidates, referencePitch) {
    var best = candidates[0];
    var bestDistance = Math.abs(best - referencePitch);

    for (var i = 1; i < candidates.length; i++) {
        var d = Math.abs(candidates[i] - referencePitch);
        if (d < bestDistance) {
            best = candidates[i];
            bestDistance = d;
        }
    }
    return [best, bestDistance];
}

function midiOctave(pitch) {
    // MIDI 60 = C4
    return Math.floor(pitch / 12) - 1;
}

function provisionalScore(distance) {
    // Diagnostic only in Phase 1h. Selection itself uses minimum distance.
    return 1.0 / (1.0 + distance);
}

function evaluate(degree) {
    if (degree < 1 || degree > 7) return;

    var candidates = candidatesForDegree(degree);
    if (candidates.length === 0) return;

    var reference = (previousPitch > 0) ? previousPitch : RANGE_CENTER;
    var selected = nearestCandidate(candidates, reference);
    var targetPitch = selected[0];
    var movement = (previousPitch > 0) ? Math.abs(targetPitch - previousPitch) : 0.0;
    var score = provisionalScore(movement);

    // Output diagnostic information before targetPitch.
    outlet(4, midiOctave(targetPitch));
    outlet(3, candidates);
    outlet(2, score);
    outlet(1, movement);
    outlet(0, targetPitch);

    // Stateless Voice Leading:
    // previousPitch is supplied externally from Part State.
    // This operator does not update or retain Part State.
}
