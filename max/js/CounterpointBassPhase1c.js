autowatch = 1;
inlets = 3;
outlets = 5;

// Counterpoint Bass Generator / Phase 1c
// inlet 0: Lead scale degree (1..7)
// inlet 1: Frame Origin MIDI
// inlet 2: reset bang
//
// outlet 0: Bass scale degree
// outlet 1: Bass MIDI pitch
// outlet 2: Lead motion
// outlet 3: Bass motion
// outlet 4: consonance class
//
// Phase 1c adds vertical consonance scoring.
// No inversion model, parallel-5th/8ve prohibition, or cadence model yet.

var origin = 60.0;
var prevLead = 0;
var prevBass = 1;

function msg_float(v) {
    if (inlet === 1) {
        origin = v;
        return;
    }
    if (inlet === 0) processDegree(Math.round(v));
}

function msg_int(v) {
    msg_float(v);
}

function bang() {
    if (inlet === 2) {
        prevLead = 0;
        prevBass = 1;
    }
}

function wrapDegree(d) {
    return ((d - 1) % 7 + 7) % 7 + 1;
}

function degreeSemitone(d) {
    var scale = [0, 2, 4, 5, 7, 9, 11];
    return scale[wrapDegree(d) - 1];
}

function signedStep(a, b) {
    var x = b - a;
    if (x > 3) x -= 7;
    if (x < -3) x += 7;
    return x;
}

// Candidate set is deliberately broad enough that consonance can compete
// with contrary-motion preference.
function candidates(lead) {
    var result = [];
    for (var d = 1; d <= 7; d++) result.push(d);
    return result;
}

// Interval class from bass to lead in semitones, reduced mod 12.
function intervalClass(lead, bass) {
    var x = degreeSemitone(lead) - degreeSemitone(bass);
    return ((x % 12) + 12) % 12;
}

// Simplified Phase-1 counterpoint consonance:
// 3rds/6ths strongest; P5/P8 allowed; 2nds/7ths/4th discouraged.
function consonanceScore(ic) {
    if (ic === 3 || ic === 4 || ic === 8 || ic === 9) return 4.0;
    if (ic === 0 || ic === 7) return 2.0;
    if (ic === 5) return -2.0;
    return -4.0;
}

function consonanceClass(ic) {
    if (ic === 3 || ic === 4 || ic === 8 || ic === 9) return 2; // imperfect
    if (ic === 0 || ic === 7) return 1;                         // perfect
    return 0;                                                   // dissonant
}

function score(lead, cand) {
    var s = consonanceScore(intervalClass(lead, cand));

    if (prevLead !== 0) {
        var lm = signedStep(prevLead, lead);
        var bm = signedStep(prevBass, cand);

        if (lm > 0 && bm < 0) s += 3.0;
        else if (lm < 0 && bm > 0) s += 3.0;
        else if (bm === 0) s += 2.0;
        else if (lm !== 0 && bm !== 0 && ((lm > 0) === (bm > 0))) s -= 1.0;

        s -= Math.max(0, Math.abs(bm) - 2);
    }

    // Mild tonal anchoring only; weaker than consonance/motion.
    if (cand === 1) s += 0.8;
    if (cand === 5) s += 0.4;
    if (cand === 4) s += 0.2;

    return s;
}

function processDegree(lead) {
    if (lead < 1 || lead > 7) return;

    var cs = candidates(lead);
    var best = cs[0];
    var bestScore = score(lead, best);

    for (var i = 1; i < cs.length; i++) {
        var sc = score(lead, cs[i]);
        if (sc > bestScore) {
            best = cs[i];
            bestScore = sc;
        }
    }

    var lm = (prevLead !== 0) ? signedStep(prevLead, lead) : 0;
    var bm = signedStep(prevBass, best);
    var ic = intervalClass(lead, best);
    var bassPitch = origin - 12.0 + degreeSemitone(best);

    outlet(4, consonanceClass(ic));
    outlet(3, bm);
    outlet(2, lm);
    outlet(1, bassPitch);
    outlet(0, best);

    prevLead = lead;
    prevBass = best;
}
