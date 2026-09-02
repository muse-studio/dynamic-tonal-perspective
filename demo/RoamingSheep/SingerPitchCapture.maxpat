{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 169.0, 720.0, 440.0 ],
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-2",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 71.0, 181.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "mic audio before rs3chorus~",
                    "id": "audio-in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 35.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "capture bang",
                    "id": "capture-in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 35.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "pitch-detector",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "" ],
                    "patching_rect": [ 35.0, 95.0, 230.0, 49.0 ],
                    "text": "fzero~ @freqmin 80 @freqmax 1200 @size 2048 @period 128 @onsetperiod 128"
                }
            },
            {
                "box": {
                    "id": "to-midi",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 140.0, 50.0, 22.0 ],
                    "text": "ftom 0."
                }
            },
            {
                "box": {
                    "id": "rms",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 95.0, 122.0, 22.0 ],
                    "text": "average~ 4096 rms"
                }
            },
            {
                "box": {
                    "id": "rms-snapshot",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 300.0, 140.0, 82.0, 22.0 ],
                    "text": "snapshot~ 25"
                }
            },
            {
                "box": {
                    "id": "sample-clock",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 445.0, 95.0, 68.0, 22.0 ],
                    "text": "qmetro 25"
                }
            },
            {
                "box": {
                    "id": "start-clock",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 445.0, 55.0, 72.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "capture-js",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 35.0, 220.0, 210.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "RoamingSheepPitchCapture.js",
                        "parameter_enable": 0
                    },
                    "text": "js RoamingSheepPitchCapture.js"
                }
            },
            {
                "box": {
                    "comment": "Current Singer Pitch MIDI",
                    "id": "current-out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 315.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Captured Singer Pitch MIDI",
                    "id": "captured-out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 135.0, 315.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "voiceActive",
                    "id": "valid-out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.0, 315.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 365.0, 655.0, 20.0 ],
                    "text": "500 ms window (20 x 25 ms); capture requires >=12 valid samples, RMS >= 0.02, MIDI 48..84, median deviation <= 0.6 st"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "pitch-detector", 0 ],
                    "order": 1,
                    "source": [ "audio-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rms", 0 ],
                    "order": 0,
                    "source": [ "audio-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "capture-js", 3 ],
                    "source": [ "capture-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "captured-out", 0 ],
                    "source": [ "capture-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "current-out", 0 ],
                    "source": [ "capture-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "valid-out", 0 ],
                    "source": [ "capture-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "to-midi", 0 ],
                    "source": [ "pitch-detector", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rms-snapshot", 0 ],
                    "source": [ "rms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "capture-js", 1 ],
                    "source": [ "rms-snapshot", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "capture-js", 2 ],
                    "source": [ "sample-clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sample-clock", 0 ],
                    "source": [ "start-clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "capture-js", 0 ],
                    "order": 1,
                    "source": [ "to-midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "to-midi", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}