/*
TonalityTrackerPhase1.js
Phase 1 Relative Tonal Frame tracker for Max's [js] object.

Inlet 0: current pitch as MIDI-note float.
Inlet 1: control messages:
  calibrate <scaleDegree 0..6>
  setorigin <midiPitch>
  offset <semitones>
  tracking <0|1>
  mode <major|minor>
  alpha <0..1>
  reset
  newsession
  dump

Outlets:
  0 frameOrigin
  1 relativePitch
  2 maintenanceEvidence
  3 frameFit
  4 adjustmentEvidence
  5 tonalStability
  6 frameStatus symbol
  7 state list
*/

autowatch = 1;
inlets = 2;
outlets = 8;

setinletassist(0, "current pitch (MIDI note float)");
setinletassist(1, "control messages");
setoutletassist(0, "Frame Origin");
setoutletassist(1, "relative pitch");
setoutletassist(2, "maintenance Evidence");
setoutletassist(3, "frame fit");
setoutletassist(4, "adjustment Evidence");
setoutletassist(5, "tonal stability");
setoutletassist(6, "Frame Status");
setoutletassist(7, "state list");

var MAJOR = [0, 2, 4, 5, 7, 9, 11];
var MINOR = [0, 2, 3, 5, 7, 8, 10];
var scale = MAJOR;
var modeName = "major";

var frameOrigin = 60.0;
var provisionalOrigin = 60.0;
var sessionPitchAnchor = 60.0;
var manualOffset = 0.0;
var hasCalibration = false;
var trackingEnabled = false;

var lastPitch = null;
var lastDegreeIndex = null;
var residualEma = 0.0;
var tonalStability = 0.5;
var frameStatus = "unformed";

var adjustmentAlpha = 0.055;
var residualSmoothing = 0.22;
var residualDeadband = 0.16;
var maximumAdjustmentPerUpdate = 0.045;
var minimumPitch = 36.0;
var maximumPitch = 96.0;

function clamp(value, minimum, maximum) {
    return Math.max(minimum, Math.min(maximum, value));
}

function modulo(value, modulus) {
    return ((value % modulus) + modulus) % modulus;
}

function scaleSemitone(index) {
    var octave = Math.floor(index / 7);
    var degree = modulo(index, 7);
    return octave * 12 + scale[degree];
}

function nearestScaleDegree(pitch, origin) {
    var bestIndex = 0;
    var bestDistance = 1e9;
    var i;
    for (i = -35; i <= 35; i += 1) {
        var target = origin + scaleSemitone(i);
        var distance = Math.abs(pitch - target);
        if (distance < bestDistance) {
            bestDistance = distance;
            bestIndex = i;
        }
    }
    return bestIndex;
}

/*
Choose a scale degree using both absolute fit and interval continuity.
This is deliberately simple. It lets a slowly drifting sustained note remain
on the same degree, while a clear melodic step can move to an adjacent degree.
*/
function chooseDegreeIndex(pitch, previousPitch, previousDegree, origin) {
    if (previousPitch === null || previousDegree === null) {
        return nearestScaleDegree(pitch, origin);
    }

    var observedInterval = pitch - previousPitch;
    var previousSemitone = scaleSemitone(previousDegree);
    var bestIndex = previousDegree;
    var bestCost = 1e9;
    var candidate;

    for (candidate = previousDegree - 4; candidate <= previousDegree + 4; candidate += 1) {
        var candidatePitch = origin + scaleSemitone(candidate);
        var fitCost = Math.abs(pitch - candidatePitch);
        var expectedInterval = scaleSemitone(candidate) - previousSemitone;
        var intervalCost = Math.abs(observedInterval - expectedInterval);
        var movementPenalty = 0.03 * Math.abs(candidate - previousDegree);
        var cost = fitCost + 0.72 * intervalCost + movementPenalty;
        if (cost < bestCost) {
            bestCost = cost;
            bestIndex = candidate;
        }
    }
    return bestIndex;
}

function emitState(pitch, relativePitch, maintenance, frameFit, adjustmentEvidence) {
    outlet(0, frameOrigin);
    outlet(1, relativePitch);
    outlet(2, maintenance);
    outlet(3, frameFit);
    outlet(4, adjustmentEvidence);
    outlet(5, tonalStability);
    outlet(6, frameStatus);
    outlet(7, [
        pitch,
        frameOrigin,
        relativePitch,
        maintenance,
        frameFit,
        adjustmentEvidence,
        tonalStability,
        trackingEnabled ? 1 : 0,
        lastDegreeIndex === null ? -999 : lastDegreeIndex
    ]);
}

function processPitch(value) {
    var pitch = Number(value);
    if (!isFinite(pitch) || pitch < minimumPitch || pitch > maximumPitch) {
        return;
    }

    var deltaPitch = lastPitch === null ? 0.0 : pitch - lastPitch;
    var maintenanceEvidence = clamp(1.0 - Math.abs(deltaPitch) / 4.0, 0.0, 1.0);

    var degreeIndex = chooseDegreeIndex(pitch, lastPitch, lastDegreeIndex, frameOrigin);
    var expectedPitch = frameOrigin + scaleSemitone(degreeIndex);
    var residual = pitch - expectedPitch;

    residualEma = (1.0 - residualSmoothing) * residualEma + residualSmoothing * residual;
    var frameFit = clamp(1.0 - Math.abs(residual) / 0.9, 0.0, 1.0);
    var adjustmentEvidence = clamp(Math.abs(residualEma) / 0.65, 0.0, 1.0) * maintenanceEvidence;

    var appliedAdjustment = 0.0;
    if (trackingEnabled && maintenanceEvidence > 0.42 && Math.abs(residualEma) > residualDeadband) {
        appliedAdjustment = clamp(
            adjustmentAlpha * residualEma,
            -maximumAdjustmentPerUpdate,
            maximumAdjustmentPerUpdate
        );
        frameOrigin += appliedAdjustment;
    }

    tonalStability = clamp(
        0.86 * tonalStability + 0.14 * (0.58 * maintenanceEvidence + 0.42 * frameFit),
        0.0,
        1.0
    );

    if (!hasCalibration) {
        frameStatus = "forming";
    } else if (Math.abs(appliedAdjustment) > 0.004) {
        frameStatus = "drifting";
    } else if (tonalStability >= 0.62) {
        frameStatus = "stable";
    } else {
        frameStatus = "forming";
    }

    lastPitch = pitch;
    lastDegreeIndex = degreeIndex;

    var relativePitch = pitch - frameOrigin;
    emitState(pitch, relativePitch, maintenanceEvidence, frameFit, adjustmentEvidence);
}

function msg_float(value) {
    if (inlet === 0) {
        processPitch(value);
    }
}

function msg_int(value) {
    msg_float(value);
}

function calibrate(degree) {
    if (lastPitch === null) {
        post("TonalityTrackerPhase1: sing a stable tone before calibration.\n");
        return;
    }
    var normalizedDegree = clamp(Math.round(Number(degree) || 0), 0, 6);
    sessionPitchAnchor = lastPitch;
    provisionalOrigin = lastPitch - scale[normalizedDegree];
    manualOffset = 0.0;
    frameOrigin = provisionalOrigin;
    hasCalibration = true;
    residualEma = 0.0;
    tonalStability = 0.55;
    lastDegreeIndex = normalizedDegree;
    frameStatus = "forming";
    emitState(lastPitch, lastPitch - frameOrigin, 1.0, 1.0, 0.0);
}

function setorigin(value) {
    var origin = Number(value);
    if (!isFinite(origin)) {
        return;
    }
    provisionalOrigin = origin;
    sessionPitchAnchor = origin;
    manualOffset = 0.0;
    frameOrigin = origin;
    hasCalibration = true;
    residualEma = 0.0;
    lastDegreeIndex = null;
    frameStatus = "forming";
    dump();
}

function offset(value) {
    var newOffset = Number(value);
    if (!isFinite(newOffset)) {
        return;
    }
    manualOffset = newOffset;
    frameOrigin = provisionalOrigin + manualOffset;
    residualEma = 0.0;
    lastDegreeIndex = null;
    frameStatus = trackingEnabled ? "forming" : "stable";
    dump();
}

function tracking(value) {
    trackingEnabled = Number(value) !== 0;
    residualEma = 0.0;
    frameStatus = trackingEnabled ? "forming" : (hasCalibration ? "stable" : "unformed");
    dump();
}

function alpha(value) {
    var newAlpha = Number(value);
    if (isFinite(newAlpha)) {
        adjustmentAlpha = clamp(newAlpha, 0.0, 1.0);
    }
}

function mode(value) {
    var name = String(value).toLowerCase();
    if (name === "minor") {
        scale = MINOR;
        modeName = "minor";
    } else {
        scale = MAJOR;
        modeName = "major";
    }
    lastDegreeIndex = null;
    residualEma = 0.0;
    dump();
}

function reset() {
    frameOrigin = provisionalOrigin + manualOffset;
    lastPitch = null;
    lastDegreeIndex = null;
    residualEma = 0.0;
    tonalStability = 0.5;
    frameStatus = hasCalibration ? "forming" : "unformed";
    dump();
}

function newsession() {
    frameOrigin = 60.0;
    provisionalOrigin = 60.0;
    sessionPitchAnchor = 60.0;
    manualOffset = 0.0;
    hasCalibration = false;
    trackingEnabled = false;
    lastPitch = null;
    lastDegreeIndex = null;
    residualEma = 0.0;
    tonalStability = 0.5;
    frameStatus = "unformed";
    dump();
}

function dump() {
    var pitch = lastPitch === null ? frameOrigin : lastPitch;
    var relativePitch = pitch - frameOrigin;
    emitState(pitch, relativePitch, 0.0, 0.0, 0.0);
}

function anything() {
    var args = arrayfromargs(arguments);
    var name = String(messagename).toLowerCase();
    if (name === "calibrate") {
        calibrate(args.length ? args[0] : 0);
    } else if (name === "setorigin") {
        setorigin(args[0]);
    } else if (name === "offset") {
        offset(args[0]);
    } else if (name === "tracking") {
        tracking(args[0]);
    } else if (name === "mode") {
        mode(args[0]);
    } else if (name === "alpha") {
        alpha(args[0]);
    } else if (name === "reset") {
        reset();
    } else if (name === "newsession") {
        newsession();
    } else if (name === "dump") {
        dump();
    } else {
        post("TonalityTrackerPhase1: unknown message '" + messagename + "'.\n");
    }
}
