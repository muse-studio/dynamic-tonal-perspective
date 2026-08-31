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
        "rect": [ 100.0, 100.0, 720.0, 430.0 ],
        "boxes": [
            {
                "box": {
                    "comment": "Observed Pitch",
                    "id": "in-observed",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 45.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "voiceInputMode: 0=MIDI keyboard, 1=Mic",
                    "id": "in-mode",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 45.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "voiceActive",
                    "id": "in-active",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 475.0, 45.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "observed-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 335.0, 36.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "comment": "valid Observed Pitch",
                    "id": "out-observed",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 380.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "mode-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 245.0, 90.0, 46.0, 22.0 ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "mode-select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 245.0, 135.0, 51.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "midi-open-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 175.0, 185.0, 40.0, 22.0 ],
                    "text": "t 1 b"
                }
            },
            {
                "box": {
                    "id": "mic-reset-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "bang" ],
                    "patching_rect": [ 260.0, 185.0, 50.0, 22.0 ],
                    "text": "t b 0 b"
                }
            },
            {
                "box": {
                    "id": "active-change",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 475.0, 85.0, 49.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "active-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 475.0, 115.0, 32.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "active-state",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 385.0, 185.0, 29.5, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "mic-event-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 475.0, 135.0, 36.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "active-select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 475.0, 185.0, 51.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "inactive-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 455.0, 230.0, 40.0, 22.0 ],
                    "text": "t 0 b"
                }
            },
            {
                "box": {
                    "id": "delay-150",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 535.0, 230.0, 62.0, 22.0 ],
                    "text": "delay 150"
                }
            },
            {
                "box": {
                    "id": "stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 345.0, 230.0, 35.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "still-active-select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 535.0, 275.0, 35.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "mic-open-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 535.0, 305.0, 36.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "open-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 535.0, 335.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 85.0, 380.0, 560.0, 20.0 ],
                    "text": "Mic: close immediately on voiceActive=0; open only after 150 ms and a second active check. MIDI: open immediately."
                }
            }
        ],
        "lines": [
            { "patchline": { "source": [ "in-observed", 0 ], "destination": [ "observed-gate", 1 ] } },
            { "patchline": { "source": [ "observed-gate", 0 ], "destination": [ "out-observed", 0 ] } },
            { "patchline": { "source": [ "in-mode", 0 ], "destination": [ "mode-trigger", 0 ] } },
            { "patchline": { "source": [ "mode-trigger", 2 ], "destination": [ "mic-event-gate", 0 ] } },
            { "patchline": { "source": [ "mode-trigger", 1 ], "destination": [ "mic-open-gate", 0 ] } },
            { "patchline": { "source": [ "mode-trigger", 0 ], "destination": [ "mode-select", 0 ] } },
            { "patchline": { "source": [ "mode-select", 0 ], "destination": [ "midi-open-trigger", 0 ] } },
            { "patchline": { "source": [ "mode-select", 1 ], "destination": [ "mic-reset-trigger", 0 ] } },
            { "patchline": { "source": [ "midi-open-trigger", 1 ], "destination": [ "stop-delay", 0 ] } },
            { "patchline": { "source": [ "midi-open-trigger", 0 ], "destination": [ "observed-gate", 0 ] } },
            { "patchline": { "source": [ "mic-reset-trigger", 2 ], "destination": [ "stop-delay", 0 ] } },
            { "patchline": { "source": [ "mic-reset-trigger", 1 ], "destination": [ "observed-gate", 0 ] } },
            { "patchline": { "source": [ "mic-reset-trigger", 0 ], "destination": [ "active-state", 0 ] } },
            { "patchline": { "source": [ "in-active", 0 ], "destination": [ "active-change", 0 ] } },
            { "patchline": { "source": [ "active-change", 0 ], "destination": [ "active-trigger", 0 ] } },
            { "patchline": { "source": [ "active-trigger", 1 ], "destination": [ "active-state", 1 ] } },
            { "patchline": { "source": [ "active-trigger", 0 ], "destination": [ "mic-event-gate", 1 ] } },
            { "patchline": { "source": [ "mic-event-gate", 0 ], "destination": [ "active-select", 0 ] } },
            { "patchline": { "source": [ "active-select", 0 ], "destination": [ "inactive-trigger", 0 ] } },
            { "patchline": { "source": [ "active-select", 1 ], "destination": [ "delay-150", 0 ] } },
            { "patchline": { "source": [ "inactive-trigger", 1 ], "destination": [ "stop-delay", 0 ] } },
            { "patchline": { "source": [ "inactive-trigger", 0 ], "destination": [ "observed-gate", 0 ] } },
            { "patchline": { "source": [ "stop-delay", 0 ], "destination": [ "delay-150", 0 ] } },
            { "patchline": { "source": [ "delay-150", 0 ], "destination": [ "active-state", 0 ] } },
            { "patchline": { "source": [ "active-state", 0 ], "destination": [ "still-active-select", 0 ] } },
            { "patchline": { "source": [ "still-active-select", 0 ], "destination": [ "mic-open-gate", 1 ] } },
            { "patchline": { "source": [ "mic-open-gate", 0 ], "destination": [ "open-one", 0 ] } },
            { "patchline": { "source": [ "open-one", 0 ], "destination": [ "observed-gate", 0 ] } }
        ],
        "autosave": 0
    }
}
