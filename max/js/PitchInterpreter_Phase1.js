autowatch = 1;

inlets = 7;
outlets = 8;

// Parameters
var wAbsolute = 1.0;
var wContinuity = 2.0;
var transitionHoldTime = 80.0;
var minimumInterpretationConfidence = 0.0;

// State
var referenceObservedPitch = null;
var previousInterpretedPitch = null;
var referenceIntonationDeviation = null;

var transitionCandidatePitch = null;
var transitionCandidateStartTime = null;

var currentPitchConfidence = 1.0;


// ---------- utility ----------

function nowMs() {
    return Date.now();
}

function clearTransitionCandidate() {
    transitionCandidatePitch = null;
    transitionCandidateStartTime = null;
}

function resetState() {
    referenceObservedPitch = null;
    previousInterpretedPitch = null;
    referenceIntonationDeviation = null;

    clearTransitionCandidate();
}


// ---------- Max messages ----------

function msg_float(v) {
    switch (inlet) {
        case 0:
            processObservedPitch(v);
            break;

        case 1:
            currentPitchConfidence = v;
            break;

        case 3:
            wAbsolute = v;
            break;

        case 4:
            wContinuity = v;
            break;

        case 5:
            transitionHoldTime = v;
            break;

        case 6:
            minimumInterpretationConfidence = v;
            break;
    }
}

function msg_int(v) {
    msg_float(v);
}

function reset() {
    resetState();
}

function bang() {
    if (inlet === 2) {
        resetState();
    }
}


// ---------- interpretation ----------

function processObservedPitch(observedPitch) {

    // Invalid / low-confidence observation:
    // do not contaminate interpretation state.
    if (currentPitchConfidence < minimumInterpretationConfidence) {
        return;
    }

    var nearestMidi = Math.round(observedPitch);

    // diagnostic: nearest MIDI
    outlet(3, nearestMidi);

    // First valid pitch
    if (previousInterpretedPitch === null) {

        previousInterpretedPitch = nearestMidi;
        referenceObservedPitch = observedPitch;
        referenceIntonationDeviation =
            observedPitch - previousInterpretedPitch;

        var initialDeviation =
            observedPitch - previousInterpretedPitch;

        outlet(7, 0.0);                         // continuityError
        outlet(6, Math.abs(initialDeviation));  // absolutePitchError
        outlet(5, Math.abs(initialDeviation));  // selectedScore
        outlet(4, previousInterpretedPitch);    // selectedCandidate
        outlet(2, 1);                           // transition detected
        outlet(1, initialDeviation);
        outlet(0, previousInterpretedPitch);

        return;
    }

    // Candidate generation
    var candidates = [
        nearestMidi - 1,
        nearestMidi,
        nearestMidi + 1
    ];

    var bestCandidate = candidates[0];
    var bestScore = Infinity;
    var bestAbsoluteError = Infinity;
    var bestContinuityError = Infinity;

    for (var i = 0; i < candidates.length; i++) {

        var candidate = candidates[i];

        var absoluteError =
            Math.abs(observedPitch - candidate);

        var candidateDeviation =
            observedPitch - candidate;

        var continuityError =
            Math.abs(
                candidateDeviation
                - referenceIntonationDeviation
            );

        var score =
            wAbsolute * absoluteError
            + wContinuity * continuityError;

        if (score < bestScore) {
            bestScore = score;
            bestCandidate = candidate;
            bestAbsoluteError = absoluteError;
            bestContinuityError = continuityError;
        }
    }

    // Diagnostics
    outlet(7, bestContinuityError);
    outlet(6, bestAbsoluteError);
    outlet(5, bestScore);
    outlet(4, bestCandidate);

    // Same interpreted pitch -> maintain
    if (bestCandidate === previousInterpretedPitch) {

        clearTransitionCandidate();

        var deviation =
            observedPitch - previousInterpretedPitch;

        outlet(2, 0);
        outlet(1, deviation);
        outlet(0, previousInterpretedPitch);

        return;
    }

    // New transition candidate
    var now = nowMs();

    if (transitionCandidatePitch !== bestCandidate) {

        transitionCandidatePitch = bestCandidate;
        transitionCandidateStartTime = now;

        outlet(2, 0);
        outlet(
            1,
            observedPitch - previousInterpretedPitch
        );
        outlet(0, previousInterpretedPitch);

        return;
    }

    // Candidate continues
    var transitionDuration =
        now - transitionCandidateStartTime;

    if (transitionDuration >= transitionHoldTime) {

        // Confirm transition
        previousInterpretedPitch =
            transitionCandidatePitch;

        referenceObservedPitch = observedPitch;

        referenceIntonationDeviation =
            observedPitch - previousInterpretedPitch;

        clearTransitionCandidate();

        outlet(2, 1);
        outlet(
            1,
            referenceIntonationDeviation
        );
        outlet(0, previousInterpretedPitch);

    } else {

        // Still waiting
        outlet(2, 0);
        outlet(
            1,
            observedPitch - previousInterpretedPitch
        );
        outlet(0, previousInterpretedPitch);
    }
}