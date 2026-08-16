autowatch = 1;
inlets = 3;
outlets = 6;

// Scale Degree Interpreter / Phase 1e
// Major mode only.
//
// inlet 0: Lead MIDI pitch
// inlet 1: Frame Origin MIDI (= degree 1)
// inlet 2: reset bang
//
// outlet 0: Scale Degree Class (1..7)
// outlet 1: Extended Scale Degree (...,0,1..7,8,9,...)
// outlet 2: deviation from nearest diatonic scale tone (semitones)
// outlet 3: relative pitch from Frame Origin (semitones)
// outlet 4: melodic degree interval (difference in Extended Scale Degree)
// outlet 5: nearest diatonic target MIDI pitch

var origin = 60.0;
var prevExtended = null;

var pcs = [0, 2, 4, 5, 7, 9, 11];

function msg_float(v) {
    if (inlet === 1) {
        origin = v;
        prevExtended = null;
        return;
    }
    if (inlet === 0) processPitch(v);
}
function msg_int(v) { msg_float(v); }

function bang() {
    if (inlet === 2) prevExtended = null;
}

function floorDiv(a,b) {
    return Math.floor(a/b);
}

function nearestDiatonic(relative) {
    // Search a generous register range around the input.
    // This supports well beyond the intended ~2.5 octave vocal range.
    var approxOct = Math.floor(relative / 12.0);
    var best = null;

    for (var oct = approxOct - 2; oct <= approxOct + 2; oct++) {
        for (var i = 0; i < 7; i++) {
            var semitone = oct * 12 + pcs[i];
            var distance = Math.abs(relative - semitone);

            if (best === null || distance < best.distance) {
                best = {
                    semitone: semitone,
                    distance: distance,
                    degreeClass: i + 1,
                    extended: oct * 7 + (i + 1)
                };
            }
        }
    }
    return best;
}

function processPitch(pitch) {
    var relative = pitch - origin;
    var n = nearestDiatonic(relative);
    var deviation = relative - n.semitone;
    var melodicInterval = (prevExtended === null) ? 0 : n.extended - prevExtended;
    var targetPitch = origin + n.semitone;

    outlet(5, targetPitch);
    outlet(4, melodicInterval);
    outlet(3, relative);
    outlet(2, deviation);
    outlet(1, n.extended);
    outlet(0, n.degreeClass);

    prevExtended = n.extended;
}
