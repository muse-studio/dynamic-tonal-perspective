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
        "rect": [ 134.0, 159.0, 1000.0, 680.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "d-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 15.0, 700.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 15.0, 760.0, 27.0 ],
                    "text": "動的調性視 / Dynamic Tonal Perspective — Piece and Lecture Demo"
                }
            },
            {
                "box": {
                    "id": "d-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 45.0, 760.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 45.0, 900.0, 20.0 ],
                    "text": "Lead voice + four generated parts = five-voice solo choir. Relative Tonal Frame can be locked, moved, or tracked experimentally."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "d-input-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 82.0, 210.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 80.0, 250.0, 22.0 ],
                    "text": "1. Audio input and pitch tracking"
                }
            },
            {
                "box": {
                    "id": "d-adc",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 25.0, 112.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 110.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-ingain-num",
                    "maxclass": "flonum",
                    "maximum": 4.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 82.0, 120.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 118.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-ingain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 120.0, 85.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 145.0, 118.0, 80.0, 20.0 ],
                    "text": "input gain"
                }
            },
            {
                "box": {
                    "id": "d-ingain-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 170.0, 45.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "id": "d-method-num",
                    "maxclass": "number",
                    "maximum": 2,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 82.0, 170.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 150.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-method-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 132.0, 170.0, 220.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 130.0, 150.0, 210.0, 20.0 ],
                    "text": "pitch method: 1=fzero~, 2=fluid.pitch~"
                }
            },
            {
                "box": {
                    "id": "d-pitchop",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 25.0, 210.0, 118.0, 22.0 ],
                    "text": "PitchOperatorDemo"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-pitch-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 250.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 190.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-pitch-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 108.0, 250.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 190.0, 120.0, 20.0 ],
                    "text": "current pitch (MIDI)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-level-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 280.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 220.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-level-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 108.0, 280.0, 90.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 220.0, 90.0, 20.0 ],
                    "text": "input level"
                }
            },
            {
                "box": {
                    "id": "d-current-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 312.0, 82.0, 22.0 ],
                    "text": "s currentPitch"
                }
            },
            {
                "box": {
                    "id": "d-load-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 205.0, 112.0, 75.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "id": "d-load-method",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 205.0, 142.0, 75.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "d-tonality-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 370.0, 82.0, 300.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 80.0, 330.0, 22.0 ],
                    "text": "2. Relative Tonal Frame / Tonality State"
                }
            },
            {
                "box": {
                    "id": "d-tracker",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 370.0, 210.0, 154.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "TonalityTrackerPhase1.js",
                        "parameter_enable": 0
                    },
                    "text": "js TonalityTrackerPhase1.js"
                }
            },
            {
                "box": {
                    "id": "d-calibrate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 112.0, 88.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 110.0, 90.0, 22.0 ],
                    "text": "calibrate 0"
                }
            },
            {
                "box": {
                    "id": "d-cal-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 463.0, 112.0, 170.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 445.0, 110.0, 175.0, 20.0 ],
                    "text": "capture current tone as Do"
                }
            },
            {
                "box": {
                    "id": "d-reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 142.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 145.0, 50.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "d-newsession",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 422.0, 142.0, 77.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 405.0, 145.0, 80.0, 22.0 ],
                    "text": "newsession"
                }
            },
            {
                "box": {
                    "id": "d-tracking-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 510.0, 142.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 145.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "d-tracking-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 143.0, 98.0, 22.0 ],
                    "text": "prepend tracking"
                }
            },
            {
                "box": {
                    "id": "d-tracking-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 642.0, 143.0, 167.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 530.0, 145.0, 190.0, 20.0 ],
                    "text": "experimental automatic follow"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-offset-num",
                    "maxclass": "flonum",
                    "maximum": 12.0,
                    "minimum": -12.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 370.0, 175.0, 70.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 180.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-offset-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 447.0, 175.0, 90.0, 22.0 ],
                    "text": "prepend offset"
                }
            },
            {
                "box": {
                    "id": "d-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 542.0, 175.0, 220.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 425.0, 180.0, 225.0, 20.0 ],
                    "text": "manual Frame Origin offset (semitones)"
                }
            },
            {
                "box": {
                    "id": "d-major",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 655.0, 112.0, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 660.0, 110.0, 75.0, 22.0 ],
                    "text": "mode major"
                }
            },
            {
                "box": {
                    "id": "d-minor",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 734.0, 112.0, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 740.0, 110.0, 75.0, 22.0 ],
                    "text": "mode minor"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-frame-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 370.0, 250.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 220.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-frame-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 454.0, 250.0, 90.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 435.0, 220.0, 90.0, 20.0 ],
                    "text": "Frame Origin"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-relative-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 370.0, 280.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 250.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-relative-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 454.0, 280.0, 95.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 435.0, 250.0, 95.0, 20.0 ],
                    "text": "relative pitch"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-maint-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 250.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 220.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-maint-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.0, 250.0, 130.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 630.0, 220.0, 145.0, 20.0 ],
                    "text": "maintenance Evidence"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-fit-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 280.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 250.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-fit-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.0, 280.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 630.0, 250.0, 85.0, 20.0 ],
                    "text": "frame fit"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-adjust-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 310.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 280.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-adjust-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.0, 310.0, 135.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 630.0, 280.0, 145.0, 20.0 ],
                    "text": "adjustment Evidence"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-stability-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 340.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 310.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-stability-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.0, 340.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 630.0, 310.0, 85.0, 20.0 ],
                    "text": "stability"
                }
            },
            {
                "box": {
                    "id": "d-status-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 340.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "d-status-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 447.0, 340.0, 95.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 340.0, 120.0, 22.0 ],
                    "text": "forming"
                }
            },
            {
                "box": {
                    "id": "d-state-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 370.0, 375.0, 103.0, 22.0 ],
                    "text": "print DTP_STATE"
                }
            },
            {
                "box": {
                    "id": "d-load-track",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 142.0, 115.0, 22.0 ],
                    "text": "loadmess tracking 0"
                }
            },
            {
                "box": {
                    "id": "d-load-origin",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 172.0, 125.0, 22.0 ],
                    "text": "loadmess setorigin 60"
                }
            },
            {
                "box": {
                    "id": "d-load-offset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 202.0, 106.0, 22.0 ],
                    "text": "loadmess offset 0."
                }
            },
            {
                "box": {
                    "id": "d-load-mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 232.0, 127.0, 22.0 ],
                    "text": "loadmess mode major"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "d-harmony-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 365.0, 270.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 280.0, 300.0, 22.0 ],
                    "text": "3. Scale-aware five-voice harmony"
                }
            },
            {
                "box": {
                    "id": "d-harmony",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 25.0, 465.0, 178.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "DiatonicHarmonyGenerator.js",
                        "parameter_enable": 0
                    },
                    "text": "js DiatonicHarmonyGenerator.js"
                }
            },
            {
                "box": {
                    "id": "d-preset-choir",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 395.0, 78.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 310.0, 80.0, 22.0 ],
                    "text": "preset choir"
                }
            },
            {
                "box": {
                    "id": "d-preset-close",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 110.0, 395.0, 78.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 310.0, 80.0, 22.0 ],
                    "text": "preset close"
                }
            },
            {
                "box": {
                    "id": "d-preset-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 395.0, 76.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.0, 310.0, 80.0, 22.0 ],
                    "text": "preset open"
                }
            },
            {
                "box": {
                    "id": "d-preset-cluster",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 278.0, 395.0, 88.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 275.0, 310.0, 90.0, 22.0 ],
                    "text": "preset cluster"
                }
            },
            {
                "box": {
                    "id": "d-load-preset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 430.0, 126.0, 22.0 ],
                    "text": "loadmess preset choir"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-int-bass",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 505.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 355.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-int-tenor",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 92.0, 505.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 90.0, 355.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-int-alto",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 159.0, 505.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 160.0, 355.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-int-sop",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.0, 505.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 230.0, 355.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-int-labels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 530.0, 332.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 380.0, 332.0, 20.0 ],
                    "text": "Bass         Tenor          Alto        Soprano (target MIDI pitches)"
                }
            },
            {
                "box": {
                    "id": "d-target-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 560.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "d-target-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 103.0, 560.0, 205.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 415.0, 270.0, 22.0 ],
                    "text": "52.95 67.03 70.98 72.06"
                }
            },
            {
                "box": {
                    "id": "d-degree-num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 315.0, 560.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 300.0, 415.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-degree-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 370.0, 560.0, 90.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 355.0, 415.0, 95.0, 20.0 ],
                    "text": "melody degree"
                }
            },
            {
                "box": {
                    "id": "d-degree-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 590.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "d-degree-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 392.0, 590.0, 70.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 300.0, 445.0, 80.0, 22.0 ],
                    "text": "La"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "d-output-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 410.0, 320.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 360.0, 360.0, 22.0 ],
                    "text": "4. Five voices, safety gate, output, and recording"
                }
            },
            {
                "box": {
                    "id": "d-dry-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 500.0, 465.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "d-bass-v",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 440.0, 142.0, 22.0 ],
                    "text": "VoiceGeneratorSmooth"
                }
            },
            {
                "box": {
                    "id": "d-tenor-v",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 480.0, 142.0, 22.0 ],
                    "text": "VoiceGeneratorSmooth"
                }
            },
            {
                "box": {
                    "id": "d-alto-v",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 520.0, 142.0, 22.0 ],
                    "text": "VoiceGeneratorSmooth"
                }
            },
            {
                "box": {
                    "id": "d-sop-v",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 560.0, 142.0, 22.0 ],
                    "text": "VoiceGeneratorSmooth"
                }
            },
            {
                "box": {
                    "id": "d-bass-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 440.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "d-tenor-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 480.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "d-alto-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 520.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "d-sop-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 560.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-gain-dry",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 500.0, 505.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 400.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-gain-bass",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 765.0, 440.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 400.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-gain-tenor",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 765.0, 480.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 435.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-gain-alto",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 765.0, 520.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 470.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-gain-sop",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 765.0, 560.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 505.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 535.0, 45.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 400.0, 45.0, 20.0 ],
                    "text": "Lead"
                }
            },
            {
                "box": {
                    "id": "d-part-labels",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 440.0, 54.0, 100.0 ],
                    "text": "Bass\n\nTenor\n\nAlto\n\nSoprano"
                }
            },
            {
                "box": {
                    "id": "d-load-dry",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 440.0, 88.0, 22.0 ],
                    "text": "loadmess 0.36"
                }
            },
            {
                "box": {
                    "id": "d-load-bass",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 470.0, 88.0, 22.0 ],
                    "text": "loadmess 0.16"
                }
            },
            {
                "box": {
                    "id": "d-load-tenor",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 500.0, 88.0, 22.0 ],
                    "text": "loadmess 0.16"
                }
            },
            {
                "box": {
                    "id": "d-load-alto",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 530.0, 88.0, 22.0 ],
                    "text": "loadmess 0.16"
                }
            },
            {
                "box": {
                    "id": "d-load-sop",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 560.0, 88.0, 22.0 ],
                    "text": "loadmess 0.16"
                }
            },
            {
                "box": {
                    "id": "d-sum1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 500.0, 620.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "d-sum2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 540.0, 620.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "d-sum3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 580.0, 620.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "d-sum4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 620.0, 620.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-threshold-num",
                    "maxclass": "flonum",
                    "maximum": 0.2,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 680.0, 620.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 445.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-threshold-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 740.0, 620.0, 85.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 445.0, 85.0, 20.0 ],
                    "text": "voice gate"
                }
            },
            {
                "box": {
                    "id": "d-gate-gt",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 680.0, 650.0, 49.0, 22.0 ],
                    "text": "> 0.006"
                }
            },
            {
                "box": {
                    "id": "d-gate-change",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 730.0, 650.0, 50.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "d-gate-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 785.0, 650.0, 72.0, 22.0 ],
                    "text": "pack 0 80"
                }
            },
            {
                "box": {
                    "id": "d-gate-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 862.0, 650.0, 42.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "d-proc-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 620.0, 680.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "d-final-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 500.0, 680.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "d-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 500.0, 715.0, 95.0, 22.0 ],
                    "text": "clip~ -0.95 0.95"
                }
            },
            {
                "box": {
                    "id": "d-master-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 500.0, 750.0, 42.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "d-master-num",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 550.0, 750.0, 52.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 485.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "d-master-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 606.0, 750.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 485.0, 70.0, 20.0 ],
                    "text": "master"
                }
            },
            {
                "box": {
                    "id": "d-load-master",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 750.0, 88.0, 22.0 ],
                    "text": "loadmess 0.55"
                }
            },
            {
                "box": {
                    "id": "d-load-threshold",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 750.0, 95.0, 22.0 ],
                    "text": "loadmess 0.006"
                }
            },
            {
                "box": {
                    "id": "d-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 895.0, 710.0, 20.0, 70.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 790.0, 395.0, 20.0, 135.0 ]
                }
            },
            {
                "box": {
                    "id": "d-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 930.0, 710.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 830.0, 395.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "d-record",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1000.0, 710.0, 78.0, 22.0 ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "d-record-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1000.0, 745.0, 42.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 830.0, 465.0, 45.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "d-record-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1048.0, 745.0, 25.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 880.0, 465.0, 25.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "d-record-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1078.0, 745.0, 25.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 910.0, 465.0, 25.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "d-safety-note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 640.0, 430.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 20.0, 500.0, 440.0, 47.0 ],
                    "text": "Performance order: 1) DSP on at low master level. 2) Sing tonic and click “calibrate 0”. 3) Select harmony. 4) Move Frame offset or enable tracking. 5) Use open / 1 / 0 to record."
                }
            },
            {
                "box": {
                    "id": "d-dependency-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 720.0, 430.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 585.0, 440.0, 33.0 ],
                    "text": "Pitch method 2 requires FluCoMa. Method 1 uses Max built-in fzero~. Voice shifting uses Max gizmo_loadme via pfft~."
                }
            },
            {
                "box": {
                    "id": "d-load-track-ui",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 202.0, 75.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "d-load-offset-ui",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 925.0, 232.0, 82.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "d-present-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 790.0, 502.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 585.0, 502.0, 20.0 ],
                    "text": "Open in Presentation Mode. Disable Presentation Mode to inspect the implementation graph."
                }
            },
            {
                "box": {
                    "id": "d-pl-bass",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 440.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 710.0, 400.0, 60.0, 20.0 ],
                    "text": "Bass"
                }
            },
            {
                "box": {
                    "id": "d-pl-tenor",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 480.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 710.0, 435.0, 60.0, 20.0 ],
                    "text": "Tenor"
                }
            },
            {
                "box": {
                    "id": "d-pl-alto",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 520.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 710.0, 470.0, 60.0, 20.0 ],
                    "text": "Alto"
                }
            },
            {
                "box": {
                    "id": "d-pl-sop",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 560.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 710.0, 505.0, 70.0, 20.0 ],
                    "text": "Soprano"
                }
            },
            {
                "box": {
                    "id": "d-panic",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1015.0, 780.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 830.0, 505.0, 38.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "d-panic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1055.0, 780.0, 82.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 873.0, 505.0, 95.0, 20.0 ],
                    "text": "PANIC MUTE"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "d-ingain-mul", 0 ],
                    "source": [ "d-adc", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum2", 1 ],
                    "source": [ "d-alto-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-alto-mul", 0 ],
                    "source": [ "d-alto-v", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum1", 0 ],
                    "source": [ "d-bass-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-bass-mul", 0 ],
                    "source": [ "d-bass-v", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-master-mul", 0 ],
                    "source": [ "d-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-degree-display", 0 ],
                    "source": [ "d-degree-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-final-sum", 0 ],
                    "source": [ "d-dry-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-clip", 0 ],
                    "source": [ "d-final-sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-alto-mul", 1 ],
                    "source": [ "d-gain-alto", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-bass-mul", 1 ],
                    "source": [ "d-gain-bass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-dry-mul", 1 ],
                    "source": [ "d-gain-dry", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sop-mul", 1 ],
                    "source": [ "d-gain-sop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tenor-mul", 1 ],
                    "source": [ "d-gain-tenor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gate-pack", 0 ],
                    "source": [ "d-gate-change", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gate-change", 0 ],
                    "source": [ "d-gate-gt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-proc-gate", 1 ],
                    "source": [ "d-gate-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gate-line", 0 ],
                    "source": [ "d-gate-pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-alto-v", 1 ],
                    "order": 0,
                    "source": [ "d-harmony", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-bass-v", 1 ],
                    "order": 0,
                    "source": [ "d-harmony", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-degree-num", 0 ],
                    "source": [ "d-harmony", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-degree-prepend", 0 ],
                    "source": [ "d-harmony", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-int-alto", 0 ],
                    "order": 1,
                    "source": [ "d-harmony", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-int-bass", 0 ],
                    "order": 1,
                    "source": [ "d-harmony", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-int-sop", 0 ],
                    "order": 1,
                    "source": [ "d-harmony", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-int-tenor", 0 ],
                    "order": 1,
                    "source": [ "d-harmony", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sop-v", 1 ],
                    "order": 0,
                    "source": [ "d-harmony", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-target-prepend", 0 ],
                    "source": [ "d-harmony", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tenor-v", 1 ],
                    "order": 0,
                    "source": [ "d-harmony", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-alto-v", 0 ],
                    "order": 1,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-bass-v", 0 ],
                    "order": 3,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-dry-mul", 0 ],
                    "order": 4,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-pitchop", 0 ],
                    "order": 5,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sop-v", 0 ],
                    "order": 0,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tenor-v", 0 ],
                    "order": 2,
                    "source": [ "d-ingain-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-ingain-mul", 1 ],
                    "source": [ "d-ingain-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gate-gt", 0 ],
                    "source": [ "d-level-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gain-alto", 0 ],
                    "source": [ "d-load-alto", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gain-bass", 0 ],
                    "source": [ "d-load-bass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gain-dry", 0 ],
                    "source": [ "d-load-dry", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-ingain-num", 0 ],
                    "source": [ "d-load-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-master-num", 0 ],
                    "source": [ "d-load-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-method-num", 0 ],
                    "source": [ "d-load-method", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-offset-num", 0 ],
                    "source": [ "d-load-offset-ui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "source": [ "d-load-preset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gain-sop", 0 ],
                    "source": [ "d-load-sop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gain-tenor", 0 ],
                    "source": [ "d-load-tenor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-threshold-num", 0 ],
                    "source": [ "d-load-threshold", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tracking-toggle", 0 ],
                    "source": [ "d-load-track-ui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-dac", 1 ],
                    "order": 2,
                    "source": [ "d-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-dac", 0 ],
                    "order": 3,
                    "source": [ "d-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-meter", 0 ],
                    "order": 4,
                    "source": [ "d-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-record", 1 ],
                    "order": 0,
                    "source": [ "d-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-record", 0 ],
                    "order": 1,
                    "source": [ "d-master-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-master-mul", 1 ],
                    "source": [ "d-master-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-pitchop", 1 ],
                    "source": [ "d-method-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-offset-prepend", 0 ],
                    "source": [ "d-offset-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-master-num", 0 ],
                    "source": [ "d-panic", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-current-send", 0 ],
                    "order": 2,
                    "source": [ "d-pitchop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "order": 1,
                    "source": [ "d-pitchop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-level-num", 0 ],
                    "source": [ "d-pitchop", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-pitch-num", 0 ],
                    "order": 3,
                    "source": [ "d-pitchop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tracker", 0 ],
                    "order": 0,
                    "source": [ "d-pitchop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "source": [ "d-preset-choir", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "source": [ "d-preset-close", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "source": [ "d-preset-cluster", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-harmony", 0 ],
                    "source": [ "d-preset-open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-final-sum", 1 ],
                    "source": [ "d-proc-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-record", 0 ],
                    "source": [ "d-record-open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-record", 0 ],
                    "source": [ "d-record-start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-record", 0 ],
                    "source": [ "d-record-stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum3", 1 ],
                    "source": [ "d-sop-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sop-mul", 0 ],
                    "source": [ "d-sop-v", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-status-display", 0 ],
                    "source": [ "d-status-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum2", 0 ],
                    "source": [ "d-sum1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum3", 0 ],
                    "source": [ "d-sum2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum4", 0 ],
                    "source": [ "d-sum3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-proc-gate", 0 ],
                    "source": [ "d-sum4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-target-display", 0 ],
                    "source": [ "d-target-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-sum1", 1 ],
                    "source": [ "d-tenor-mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tenor-mul", 0 ],
                    "source": [ "d-tenor-v", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-gate-gt", 1 ],
                    "source": [ "d-threshold-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-adjust-num", 0 ],
                    "source": [ "d-tracker", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-fit-num", 0 ],
                    "source": [ "d-tracker", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-frame-num", 0 ],
                    "source": [ "d-tracker", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-maint-num", 0 ],
                    "source": [ "d-tracker", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-relative-num", 0 ],
                    "source": [ "d-tracker", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-stability-num", 0 ],
                    "source": [ "d-tracker", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-state-print", 0 ],
                    "source": [ "d-tracker", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-status-prepend", 0 ],
                    "source": [ "d-tracker", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "d-tracking-prepend", 0 ],
                    "source": [ "d-tracking-toggle", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}