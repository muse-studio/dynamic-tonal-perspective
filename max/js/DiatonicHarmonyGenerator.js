/*
DiatonicHarmonyGenerator.js
Scale-aware four-part generator for Max's [js] object.
Together with the dry lead voice, this produces a five-voice solo choir.

Inlet 0: current pitch (MIDI-note float)
Inlet 1: Frame Origin (MIDI-note float)
Inlet 2: control messages
  mode <major|minor>
  preset <choir|close|open|cluster|unison>
  ranges <0|1>
  detune <0|1>
  dump

Outlets:
  0 Bass interval in semitones
  1 Tenor interval
  2 Alto interval
  3 Soprano interval
  4 target-pitch list
  5 melody scale-degree index
  6 melody degree name
*/

autowatch = 1;
inlets = 3;
outlets = 7;

setinletassist(0, "current pitch");
setinletassist(1, "Frame Origin");
setinletassist(2, "mode and preset controls");

var MAJOR = [0, 2, 4, 5, 7, 9, 11];
var MINOR = [0, 2, 3, 5, 7, 8, 10];
var DEGREE_NAMES = ["Do", "Re", "Mi", "Fa", "Sol", "La", "Ti"];
var scale = MAJOR;
var modeName = "major";

var currentPitch = 60.0;
var frameOrigin = 60.0;
var hasPitch = false;
var hasOrigin = true;
var presetName = "choir";
var degreeOffsets = [-7, -2, 2, 4];
var enforceRanges = true;
var detuneEnabled = true;
var detune = [-0.05, 0.03, -0.02, 0.06];

var partRanges = [
    [36.0, 55.0],
    [47.0, 67.0],
    [55.0, 76.0],
    [60.0, 86.0]
];

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
        var candidate = origin + scaleSemitone(i);
        var distance = Math.abs(pitch - candidate);
        if (distance < bestDistance) {
            bestDistance = distance;
            bestIndex = i;
        }
    }
    return bestIndex;
}

function fitToRange(target, minimum, maximum) {
    var value = target;
    if (!enforceRanges) {
        return value;
    }
    while (value < minimum) {
        value += 12.0;
    }
    while (value > maximum) {
        value -= 12.0;
    }
    return value;
}

function recompute() {
    if (!hasPitch || !hasOrigin) {
        return;
    }

    var melodyDegree = nearestScaleDegree(currentPitch, frameOrigin);
    var targets = [];
    var intervals = [];
    var i;

    for (i = 0; i < 4; i += 1) {
        var targetDegree = melodyDegree + degreeOffsets[i];
        var targetPitch = frameOrigin + scaleSemitone(targetDegree);
        targetPitch = fitToRange(targetPitch, partRanges[i][0], partRanges[i][1]);
        if (detuneEnabled) {
            targetPitch += detune[i];
        }
        targets.push(targetPitch);
        intervals.push(targetPitch - currentPitch);
    }

    outlet(0, intervals[0]);
    outlet(1, intervals[1]);
    outlet(2, intervals[2]);
    outlet(3, intervals[3]);
    outlet(4, targets);
    outlet(5, melodyDegree);
    outlet(6, DEGREE_NAMES[modulo(melodyDegree, 7)]);
}

function msg_float(value) {
    var number = Number(value);
    if (!isFinite(number)) {
        return;
    }
    if (inlet === 0) {
        currentPitch = number;
        hasPitch = true;
        recompute();
    } else if (inlet === 1) {
        frameOrigin = number;
        hasOrigin = true;
        recompute();
    }
}

function msg_int(value) {
    msg_float(value);
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
    recompute();
}

function preset(value) {
    var name = String(value).toLowerCase();
    presetName = name;
    if (name === "close") {
        degreeOffsets = [-4, -2, 2, 4];
    } else if (name === "open") {
        degreeOffsets = [-7, -4, 4, 7];
    } else if (name === "cluster") {
        degreeOffsets = [-2, -1, 1, 2];
    } else if (name === "unison") {
        degreeOffsets = [0, 0, 0, 0];
    } else {
        presetName = "choir";
        degreeOffsets = [-7, -2, 2, 4];
    }
    recompute();
}

function ranges(value) {
    enforceRanges = Number(value) !== 0;
    recompute();
}

function detunevoices(value) {
    detuneEnabled = Number(value) !== 0;
    recompute();
}

function dump() {
    recompute();
}

function anything() {
    var args = arrayfromargs(arguments);
    var name = String(messagename).toLowerCase();
    if (name === "mode") {
        mode(args[0]);
    } else if (name === "preset") {
        preset(args[0]);
    } else if (name === "ranges") {
        ranges(args[0]);
    } else if (name === "detune" || name === "detunevoices") {
        detunevoices(args[0]);
    } else if (name === "dump") {
        dump();
    } else {
        post("DiatonicHarmonyGenerator: unknown message '" + messagename + "'.\n");
    }
}
