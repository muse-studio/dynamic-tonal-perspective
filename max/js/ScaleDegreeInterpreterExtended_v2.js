autowatch = 1;
inlets = 3;
outlets = 7;

// Scale Degree Interpreter / Phase 1e revision
// Major mode only.
//
// Musical representation:
//   Scale Degree Class: 1..7
//   Extended Scale Degree: ..., -8,-7,...,-2, 1,2,...,7,8,...
//   (0 is NEVER used as a degree)
//
// Internal coordinate:
//   Diatonic Position: ..., -8,-7,...,-1,0,1,...,7,8,...
//   Frame Origin = position 0 = Extended Scale Degree 1
//
// inlet 0: Lead MIDI pitch
// inlet 1: Frame Origin MIDI
// inlet 2: reset bang
//
// outlet 0: Scale Degree Class (1..7)
// outlet 1: Extended Scale Degree (no zero)
// outlet 2: Diatonic Position (internal coordinate; zero allowed)
// outlet 3: deviation from nearest diatonic tone (semitones)
// outlet 4: relative pitch from Frame Origin (semitones)
// outlet 5: melodic diatonic steps (position difference)
// outlet 6: nearest diatonic target MIDI pitch

var origin = 60.0;
var prevPosition = null;
var pcs = [0,2,4,5,7,9,11];

function msg_float(v) {
    if (inlet === 1) {
        origin = v;
        prevPosition = null;
        return;
    }
    if (inlet === 0) processPitch(v);
}
function msg_int(v) { msg_float(v); }

function bang() {
    if (inlet === 2) prevPosition = null;
}

function nearestDiatonic(relative) {
    var approxOct = Math.floor(relative / 12.0);
    var best = null;

    for (var oct = approxOct - 2; oct <= approxOct + 2; oct++) {
        for (var i = 0; i < 7; i++) {
            var semitone = oct * 12 + pcs[i];
            var distance = Math.abs(relative - semitone);
            var position = oct * 7 + i; // tonic at origin => 0

            if (best === null || distance < best.distance) {
                best = {
                    semitone: semitone,
                    distance: distance,
                    degreeClass: i + 1,
                    position: position
                };
            }
        }
    }
    return best;
}

function positionToExtended(pos) {
    // Upward: pos 0->1, 1->2, ..., 7->8
    // Downward: pos -1->-2, -2->-3, ..., -7->-8
    if (pos >= 0) return pos + 1;
    return pos - 1;
}

function processPitch(pitch) {
    var relative = pitch - origin;
    var n = nearestDiatonic(relative);
    var extended = positionToExtended(n.position);
    var deviation = relative - n.semitone;
    var melodicSteps = (prevPosition === null) ? 0 : n.position - prevPosition;
    var targetPitch = origin + n.semitone;

    outlet(6, targetPitch);
    outlet(5, melodicSteps);
    outlet(4, relative);
    outlet(3, deviation);
    outlet(2, n.position);
    outlet(1, extended);
    outlet(0, n.degreeClass);

    prevPosition = n.position;
}
