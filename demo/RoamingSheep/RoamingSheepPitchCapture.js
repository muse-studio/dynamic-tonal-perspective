inlets = 4;
outlets = 3;

var currentPitch = 0.0;
var currentRms = 0.0;
var history = [];
var windowSize = 20;
var minimumSamples = 12;
var rmsThreshold = 0.02;
var minimumPitch = 48.0;
var maximumPitch = 84.0;
var maximumMedianDeviation = 0.6;

function msg_float(value) {
    if (inlet === 0) {
        currentPitch = value;
    } else if (inlet === 1) {
        currentRms = value;
    }
}

function bang() {
    if (inlet === 2) {
        samplePitch();
    } else if (inlet === 3) {
        capturePitch();
    }
}

function samplePitch() {
    var valid = isCurrentPitchValid();

    history.push(valid ? currentPitch : null);
    while (history.length > windowSize) {
        history.shift();
    }

    outlet(2, valid ? 1 : 0);
    if (valid) {
        outlet(0, currentPitch);
    }
}

function capturePitch() {
    var values;
    var representative;
    var deviations;
    var deviation;

    if (!isCurrentPitchValid()) {
        return;
    }

    values = numericHistory();
    if (values.length < minimumSamples) {
        return;
    }

    representative = median(values);
    deviations = [];
    for (var i = 0; i < values.length; i++) {
        deviations.push(Math.abs(values[i] - representative));
    }
    deviation = median(deviations);

    if (deviation > maximumMedianDeviation) {
        return;
    }

    outlet(1, representative);
}

function isCurrentPitchValid() {
    return currentRms >= rmsThreshold &&
        currentPitch >= minimumPitch &&
        currentPitch <= maximumPitch;
}

function numericHistory() {
    var values = [];
    for (var i = 0; i < history.length; i++) {
        if (history[i] !== null) {
            values.push(history[i]);
        }
    }
    return values;
}

function median(values) {
    var sorted = values.slice(0).sort(function (a, b) { return a - b; });
    var middle = Math.floor(sorted.length / 2);

    if (sorted.length % 2) {
        return sorted[middle];
    }
    return (sorted[middle - 1] + sorted[middle]) * 0.5;
}

function clear() {
    history = [];
    currentPitch = 0.0;
    currentRms = 0.0;
    outlet(2, 0);
}
