// InnerVoiceTargets_Phase1i_voiceorder.js
// SIGMUS Phase 1i: inner voices are always placed below the Player / Lead.
// inlet 0: leadScaleDegreeClass (1..7)
// inlet 1: frameOriginMIDI
// inlet 2: currentPitch (Interpreted Pitch of Player / Lead)
// outlets: voice1TargetPitch, voice2TargetPitch, voice1Degree, voice2Degree
//
// Voice order constraint:
//   Lead > Voice 1 > Voice 2
// Bass remains handled by the existing Bass Voice Leading path.
// Major scale only. Harmony table is provisional for the demo.

inlets = 3;
outlets = 4;

var leadDegree = null;
var frameOrigin = null;
var currentPitch = 60;
var prev1 = null;
var prev2 = null;

var offsets = [0, 0, 2, 4, 5, 7, 9, 11];
var table = {
    1:[3,5],
    2:[4,6],
    3:[5,1],
    4:[6,1],
    5:[7,2],
    6:[1,3],
    7:[2,4]
};

function msg_int(v) { input(v); }
function msg_float(v) { input(v); }

function input(v)
{
    if (inlet === 0) {
        leadDegree = Math.round(v);
    }
    else if (inlet === 1) {
        frameOrigin = v;
    }
    else {
        currentPitch = v;
    }

    calculate();
}

function reset()
{
    prev1 = null;
    prev2 = null;
}

function candidates(degree, lo, hi)
{
    var a = [];
    if (frameOrigin === null) return a;

    var pc = frameOrigin + offsets[degree];

    for (var k = -5; k <= 5; k++) {
        var p = pc + 12 * k;
        if (p >= lo && p <= hi) a.push(p);
    }

    return a;
}

function choose(degree, lo, hi, prev, desired)
{
    var a = candidates(degree, lo, hi);
    if (!a.length) return null;

    var best = a[0];
    var bestCost = 1e9;

    for (var i = 0; i < a.length; i++) {
        var p = a[i];
        var cost = Math.abs(p - desired);

        if (prev !== null) {
            cost += 0.8 * Math.abs(p - prev);
        }

        if (cost < bestCost) {
            bestCost = cost;
            best = p;
        }
    }

    return best;
}

function calculate()
{
    if (frameOrigin === null ||
        leadDegree === null ||
        leadDegree < 1 || leadDegree > 7) {
        return;
    }

    var d = table[leadDegree];

    // Strictly below the Player / Lead.
    var voice1Upper = Math.floor(currentPitch) - 1;
    var t1 = choose(
        d[0],
        48,
        Math.min(78, voice1Upper),
        prev1,
        currentPitch - 4
    );

    if (t1 === null) return;

    // Strictly below Voice 1 as well as below the Lead.
    var voice2Upper = Math.floor(t1) - 1;
    var t2 = choose(
        d[1],
        43,
        Math.min(71, voice2Upper),
        prev2,
        t1 - 4
    );

    if (t2 === null) return;

    prev1 = t1;
    prev2 = t2;

    outlet(3, d[1]);
    outlet(2, d[0]);
    outlet(1, t2);
    outlet(0, t1);
}
