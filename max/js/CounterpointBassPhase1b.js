autowatch = 1;
inlets = 3;
outlets = 4;

// inlet 0: lead scale degree (1..7)
// inlet 1: frame origin MIDI
// inlet 2: reset bang
// outlet 0: bass scale degree
// outlet 1: bass MIDI pitch
// outlet 2: lead motion
// outlet 3: bass motion

var origin = 60.0;
var prevLead = 0;
var prevBass = 1;

function msg_float(v) {
    if (inlet === 1) {
        origin = v;
        return;
    }
    if (inlet === 0) {
        processDegree(Math.round(v));
    }
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

function candidates(lead) {
    var table = {
        1: [1, 4],
        2: [5, 7],
        3: [1, 6],
        4: [4, 2],
        5: [1, 3],
        6: [4, 6],
        7: [5, 2]
    };
    return table[lead] || [1, 5];
}

function score(lead, cand) {
    var s = 0;

    if (prevLead !== 0) {
        var leadMotion = signedStep(prevLead, lead);
        var bassMotion = signedStep(prevBass, cand);

        if (leadMotion > 0 && bassMotion < 0) s += 3;
        else if (leadMotion < 0 && bassMotion > 0) s += 3;
        else if (bassMotion === 0) s += 2;
        else if (leadMotion !== 0 && bassMotion !== 0 &&
                 ((leadMotion > 0) === (bassMotion > 0))) s -= 1;

        s -= Math.max(0, Math.abs(bassMotion) - 2);
    }

    if (cand === 1) s += 1.0;
    if (cand === 5) s += 0.7;
    if (cand === 4) s += 0.5;

    return s;
}

function processDegree(lead) {
    if (lead < 1 || lead > 7) return;

    var cs = candidates(lead);
    var best = cs[0];
    var bestScore = score(lead, best);

    for (var i = 1; i < cs.length; i++) {
        var candidateScore = score(lead, cs[i]);
        if (candidateScore > bestScore) {
            best = cs[i];
            bestScore = candidateScore;
        }
    }

    var leadMotion = (prevLead !== 0) ? signedStep(prevLead, lead) : 0;
    var bassMotion = signedStep(prevBass, best);
    var bassPitch = origin - 12.0 + degreeSemitone(best);

    outlet(3, bassMotion);
    outlet(2, leadMotion);
    outlet(1, bassPitch);
    outlet(0, best);

    prevLead = lead;
    prevBass = best;
}
