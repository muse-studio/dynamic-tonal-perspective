{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            50.0,
            50.0,
            1000.0,
            680.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "d-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        15.0,
                        700.0,
                        30.0
                    ],
                    "text": "動的調性視 / Dynamic Tonal Perspective — Piece and Lecture Demo",
                    "fontsize": 18.0,
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        15.0,
                        760.0,
                        28.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        45.0,
                        760.0,
                        20.0
                    ],
                    "text": "Lead voice + four generated parts = five-voice solo choir. Relative Tonal Frame can be locked, moved, or tracked experimentally.",
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        45.0,
                        900.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-input-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        82.0,
                        210.0,
                        20.0
                    ],
                    "text": "1. Audio input and pitch tracking",
                    "fontsize": 14.0,
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        80.0,
                        250.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-adc",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        25.0,
                        112.0,
                        45.0,
                        45.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        110.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-ingain-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        82.0,
                        120.0,
                        55.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 4.0,
                    "presentation": 1,
                    "presentation_rect": [
                        80.0,
                        118.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-ingain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        140.0,
                        120.0,
                        85.0,
                        20.0
                    ],
                    "text": "input gain",
                    "presentation": 1,
                    "presentation_rect": [
                        145.0,
                        118.0,
                        80.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-ingain-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        170.0,
                        45.0,
                        22.0
                    ],
                    "text": "*~ 1.",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-method-num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        82.0,
                        170.0,
                        45.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 1,
                    "maximum": 2,
                    "presentation": 1,
                    "presentation_rect": [
                        80.0,
                        150.0,
                        45.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-method-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        132.0,
                        170.0,
                        220.0,
                        20.0
                    ],
                    "text": "pitch method: 1=fzero~, 2=fluid.pitch~",
                    "presentation": 1,
                    "presentation_rect": [
                        130.0,
                        150.0,
                        210.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pitchop",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "patching_rect": [
                        25.0,
                        210.0,
                        118.0,
                        22.0
                    ],
                    "text": "PitchOperatorDemo",
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pitch-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        25.0,
                        250.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        190.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pitch-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        108.0,
                        250.0,
                        110.0,
                        20.0
                    ],
                    "text": "current pitch (MIDI)",
                    "presentation": 1,
                    "presentation_rect": [
                        105.0,
                        190.0,
                        120.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-level-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        25.0,
                        280.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        220.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-level-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        108.0,
                        280.0,
                        90.0,
                        20.0
                    ],
                    "text": "input level",
                    "presentation": 1,
                    "presentation_rect": [
                        105.0,
                        220.0,
                        90.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-current-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        312.0,
                        82.0,
                        22.0
                    ],
                    "text": "s currentPitch"
                }
            },
            {
                "box": {
                    "id": "d-load-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        205.0,
                        112.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 1.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-method",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        205.0,
                        142.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 2",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tonality-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        370.0,
                        82.0,
                        300.0,
                        20.0
                    ],
                    "text": "2. Relative Tonal Frame / Tonality State",
                    "fontsize": 14.0,
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        80.0,
                        330.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tracker",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "patching_rect": [
                        370.0,
                        210.0,
                        165.0,
                        22.0
                    ],
                    "text": "js js/TonalityTrackerPhase1.js",
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-calibrate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        370.0,
                        112.0,
                        88.0,
                        22.0
                    ],
                    "text": "calibrate 0",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        110.0,
                        90.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-cal-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        463.0,
                        112.0,
                        170.0,
                        20.0
                    ],
                    "text": "capture current tone as Do",
                    "presentation": 1,
                    "presentation_rect": [
                        445.0,
                        110.0,
                        175.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        370.0,
                        142.0,
                        45.0,
                        22.0
                    ],
                    "text": "reset",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        145.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-newsession",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        422.0,
                        142.0,
                        77.0,
                        22.0
                    ],
                    "text": "newsession",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        405.0,
                        145.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tracking-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        510.0,
                        142.0,
                        24.0,
                        24.0
                    ],
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        145.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tracking-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        540.0,
                        143.0,
                        98.0,
                        22.0
                    ],
                    "text": "prepend tracking",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tracking-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        642.0,
                        143.0,
                        160.0,
                        20.0
                    ],
                    "text": "experimental automatic follow",
                    "presentation": 1,
                    "presentation_rect": [
                        530.0,
                        145.0,
                        190.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-offset-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        370.0,
                        175.0,
                        70.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": -12.0,
                    "maximum": 12.0,
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        180.0,
                        70.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-offset-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        447.0,
                        175.0,
                        90.0,
                        22.0
                    ],
                    "text": "prepend offset",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        542.0,
                        175.0,
                        210.0,
                        20.0
                    ],
                    "text": "manual Frame Origin offset (semitones)",
                    "presentation": 1,
                    "presentation_rect": [
                        425.0,
                        180.0,
                        225.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-major",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        655.0,
                        112.0,
                        72.0,
                        22.0
                    ],
                    "text": "mode major",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        660.0,
                        110.0,
                        75.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-minor",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        734.0,
                        112.0,
                        72.0,
                        22.0
                    ],
                    "text": "mode minor",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        740.0,
                        110.0,
                        75.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-frame-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        370.0,
                        250.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        220.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-frame-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        454.0,
                        250.0,
                        90.0,
                        20.0
                    ],
                    "text": "Frame Origin",
                    "presentation": 1,
                    "presentation_rect": [
                        435.0,
                        220.0,
                        90.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-relative-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        370.0,
                        280.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        250.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-relative-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        454.0,
                        280.0,
                        95.0,
                        20.0
                    ],
                    "text": "relative pitch",
                    "presentation": 1,
                    "presentation_rect": [
                        435.0,
                        250.0,
                        95.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-maint-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        565.0,
                        250.0,
                        65.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        220.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-maint-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        634.0,
                        250.0,
                        125.0,
                        20.0
                    ],
                    "text": "maintenance Evidence",
                    "presentation": 1,
                    "presentation_rect": [
                        630.0,
                        220.0,
                        145.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-fit-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        565.0,
                        280.0,
                        65.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        250.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-fit-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        634.0,
                        280.0,
                        75.0,
                        20.0
                    ],
                    "text": "frame fit",
                    "presentation": 1,
                    "presentation_rect": [
                        630.0,
                        250.0,
                        85.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-adjust-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        565.0,
                        310.0,
                        65.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        280.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-adjust-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        634.0,
                        310.0,
                        135.0,
                        20.0
                    ],
                    "text": "adjustment Evidence",
                    "presentation": 1,
                    "presentation_rect": [
                        630.0,
                        280.0,
                        145.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-stability-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        565.0,
                        340.0,
                        65.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        310.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-stability-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        634.0,
                        340.0,
                        75.0,
                        20.0
                    ],
                    "text": "stability",
                    "presentation": 1,
                    "presentation_rect": [
                        630.0,
                        310.0,
                        85.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-status-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        370.0,
                        340.0,
                        72.0,
                        22.0
                    ],
                    "text": "prepend set",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-status-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        447.0,
                        340.0,
                        95.0,
                        22.0
                    ],
                    "text": "unformed",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        350.0,
                        340.0,
                        120.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-state-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        370.0,
                        375.0,
                        100.0,
                        22.0
                    ],
                    "text": "print DTP_STATE"
                }
            },
            {
                "box": {
                    "id": "d-load-track",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        815.0,
                        142.0,
                        95.0,
                        22.0
                    ],
                    "text": "loadmess tracking 0",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-origin",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        815.0,
                        172.0,
                        102.0,
                        22.0
                    ],
                    "text": "loadmess setorigin 60",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-offset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        815.0,
                        202.0,
                        95.0,
                        22.0
                    ],
                    "text": "loadmess offset 0.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        815.0,
                        232.0,
                        95.0,
                        22.0
                    ],
                    "text": "loadmess mode major",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-harmony-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        365.0,
                        270.0,
                        20.0
                    ],
                    "text": "3. Scale-aware five-voice harmony",
                    "fontsize": 14.0,
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        280.0,
                        300.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-harmony",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "patching_rect": [
                        25.0,
                        465.0,
                        188.0,
                        22.0
                    ],
                    "text": "js js/DiatonicHarmonyGenerator.js",
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-preset-choir",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        395.0,
                        78.0,
                        22.0
                    ],
                    "text": "preset choir",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        310.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-preset-close",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        110.0,
                        395.0,
                        78.0,
                        22.0
                    ],
                    "text": "preset close",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        105.0,
                        310.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-preset-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        195.0,
                        395.0,
                        76.0,
                        22.0
                    ],
                    "text": "preset open",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        190.0,
                        310.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-preset-cluster",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        278.0,
                        395.0,
                        88.0,
                        22.0
                    ],
                    "text": "preset cluster",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        275.0,
                        310.0,
                        90.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-preset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        430.0,
                        105.0,
                        22.0
                    ],
                    "text": "loadmess preset choir",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-int-bass",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        25.0,
                        505.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        355.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-int-tenor",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        92.0,
                        505.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        90.0,
                        355.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-int-alto",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        159.0,
                        505.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        160.0,
                        355.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-int-sop",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        226.0,
                        505.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        230.0,
                        355.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-int-labels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        530.0,
                        280.0,
                        20.0
                    ],
                    "text": "Bass         Tenor          Alto        Soprano (target MIDI pitches)",
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        380.0,
                        290.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-target-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        560.0,
                        72.0,
                        22.0
                    ],
                    "text": "prepend set",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-target-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        103.0,
                        560.0,
                        205.0,
                        22.0
                    ],
                    "text": "target pitches",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        415.0,
                        270.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-degree-num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        315.0,
                        560.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        300.0,
                        415.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-degree-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        370.0,
                        560.0,
                        90.0,
                        20.0
                    ],
                    "text": "melody degree",
                    "presentation": 1,
                    "presentation_rect": [
                        355.0,
                        415.0,
                        95.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-degree-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        315.0,
                        590.0,
                        72.0,
                        22.0
                    ],
                    "text": "prepend set",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-degree-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        392.0,
                        590.0,
                        70.0,
                        22.0
                    ],
                    "text": "Do",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        300.0,
                        445.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-output-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500.0,
                        410.0,
                        320.0,
                        20.0
                    ],
                    "text": "4. Five voices, safety gate, output, and recording",
                    "fontsize": 14.0,
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        360.0,
                        360.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-dry-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        500.0,
                        465.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-bass-v",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "patching_rect": [
                        555.0,
                        440.0,
                        142.0,
                        22.0
                    ],
                    "text": "VoiceGeneratorSmooth",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tenor-v",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "patching_rect": [
                        555.0,
                        480.0,
                        142.0,
                        22.0
                    ],
                    "text": "VoiceGeneratorSmooth",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-alto-v",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "patching_rect": [
                        555.0,
                        520.0,
                        142.0,
                        22.0
                    ],
                    "text": "VoiceGeneratorSmooth",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sop-v",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "patching_rect": [
                        555.0,
                        560.0,
                        142.0,
                        22.0
                    ],
                    "text": "VoiceGeneratorSmooth",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-bass-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        715.0,
                        440.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-tenor-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        715.0,
                        480.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-alto-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        715.0,
                        520.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sop-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        715.0,
                        560.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-dry",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        500.0,
                        505.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        400.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-bass",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        765.0,
                        440.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        650.0,
                        400.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-tenor",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        765.0,
                        480.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        650.0,
                        435.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-alto",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        765.0,
                        520.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        650.0,
                        470.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-sop",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        765.0,
                        560.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        650.0,
                        505.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500.0,
                        535.0,
                        45.0,
                        20.0
                    ],
                    "text": "Lead",
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        400.0,
                        45.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-part-labels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825.0,
                        440.0,
                        90.0,
                        140.0
                    ],
                    "text": "Bass\n\nTenor\n\nAlto\n\nSoprano"
                }
            },
            {
                "box": {
                    "id": "d-load-dry",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        925.0,
                        440.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.36",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-bass",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        925.0,
                        470.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.16",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-tenor",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        925.0,
                        500.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.16",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-alto",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        925.0,
                        530.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.16",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-sop",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        925.0,
                        560.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.16",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sum1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        500.0,
                        620.0,
                        32.0,
                        22.0
                    ],
                    "text": "+~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sum2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        540.0,
                        620.0,
                        32.0,
                        22.0
                    ],
                    "text": "+~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sum3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        580.0,
                        620.0,
                        32.0,
                        22.0
                    ],
                    "text": "+~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-sum4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        620.0,
                        620.0,
                        32.0,
                        22.0
                    ],
                    "text": "+~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-threshold-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        680.0,
                        620.0,
                        55.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 0.2,
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        445.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-threshold-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        740.0,
                        620.0,
                        85.0,
                        20.0
                    ],
                    "text": "voice gate",
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        445.0,
                        85.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gate-gt",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        680.0,
                        650.0,
                        45.0,
                        22.0
                    ],
                    "text": "> 0.006",
                    "outlettype": [
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gate-change",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        730.0,
                        650.0,
                        50.0,
                        22.0
                    ],
                    "text": "change",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gate-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        785.0,
                        650.0,
                        72.0,
                        22.0
                    ],
                    "text": "pack 0 80",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-gate-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "patching_rect": [
                        862.0,
                        650.0,
                        42.0,
                        22.0
                    ],
                    "text": "line~",
                    "outlettype": [
                        "signal",
                        "bang"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-proc-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        620.0,
                        680.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-final-sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        500.0,
                        680.0,
                        32.0,
                        22.0
                    ],
                    "text": "+~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-clip",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        500.0,
                        715.0,
                        95.0,
                        22.0
                    ],
                    "text": "clip~ -0.95 0.95",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-master-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        500.0,
                        750.0,
                        42.0,
                        22.0
                    ],
                    "text": "*~",
                    "outlettype": [
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "d-master-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        550.0,
                        750.0,
                        52.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "minimum": 0.0,
                    "maximum": 1.0,
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        485.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-master-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        606.0,
                        750.0,
                        70.0,
                        20.0
                    ],
                    "text": "master",
                    "presentation": 1,
                    "presentation_rect": [
                        560.0,
                        485.0,
                        70.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-master",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        680.0,
                        750.0,
                        88.0,
                        22.0
                    ],
                    "text": "loadmess 0.55",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-threshold",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        780.0,
                        750.0,
                        95.0,
                        22.0
                    ],
                    "text": "loadmess 0.006",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "d-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        895.0,
                        710.0,
                        20.0,
                        70.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        790.0,
                        395.0,
                        20.0,
                        135.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        930.0,
                        710.0,
                        45.0,
                        45.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        830.0,
                        395.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-record",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [
                        1000.0,
                        710.0,
                        78.0,
                        22.0
                    ],
                    "text": "sfrecord~ 2"
                }
            },
            {
                "box": {
                    "id": "d-record-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1000.0,
                        745.0,
                        42.0,
                        22.0
                    ],
                    "text": "open",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        830.0,
                        465.0,
                        45.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-record-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1048.0,
                        745.0,
                        25.0,
                        22.0
                    ],
                    "text": "1",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        880.0,
                        465.0,
                        25.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-record-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1078.0,
                        745.0,
                        25.0,
                        22.0
                    ],
                    "text": "0",
                    "outlettype": [
                        ""
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        910.0,
                        465.0,
                        25.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-safety-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        640.0,
                        430.0,
                        70.0
                    ],
                    "text": "Performance order: 1) DSP on at low master level. 2) Sing tonic and click “calibrate 0”. 3) Select harmony. 4) Move Frame offset or enable tracking. 5) Use open / 1 / 0 to record.",
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        500.0,
                        440.0,
                        72.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-dependency-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        720.0,
                        430.0,
                        45.0
                    ],
                    "text": "Pitch method 2 requires FluCoMa. Method 1 uses Max built-in fzero~. Voice shifting uses Max gizmo_loadme via pfft~.",
                    "presentation": 1,
                    "presentation_rect": [
                        20.0,
                        585.0,
                        440.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-load-track-ui",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        925.0,
                        202.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "d-load-offset-ui",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        925.0,
                        232.0,
                        82.0,
                        22.0
                    ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "d-present-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        790.0,
                        500.0,
                        20.0
                    ],
                    "text": "Open in Presentation Mode. Disable Presentation Mode to inspect the implementation graph.",
                    "presentation": 1,
                    "presentation_rect": [
                        500.0,
                        585.0,
                        440.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pl-bass",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825.0,
                        440.0,
                        70.0,
                        20.0
                    ],
                    "text": "Bass",
                    "presentation": 1,
                    "presentation_rect": [
                        710.0,
                        400.0,
                        60.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pl-tenor",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825.0,
                        480.0,
                        70.0,
                        20.0
                    ],
                    "text": "Tenor",
                    "presentation": 1,
                    "presentation_rect": [
                        710.0,
                        435.0,
                        60.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pl-alto",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825.0,
                        520.0,
                        70.0,
                        20.0
                    ],
                    "text": "Alto",
                    "presentation": 1,
                    "presentation_rect": [
                        710.0,
                        470.0,
                        60.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-pl-sop",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825.0,
                        560.0,
                        70.0,
                        20.0
                    ],
                    "text": "Soprano",
                    "presentation": 1,
                    "presentation_rect": [
                        710.0,
                        505.0,
                        70.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-panic",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1015.0,
                        780.0,
                        35.0,
                        22.0
                    ],
                    "text": "0.",
                    "presentation": 1,
                    "presentation_rect": [
                        830.0,
                        505.0,
                        38.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "d-panic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1055.0,
                        780.0,
                        75.0,
                        20.0
                    ],
                    "text": "PANIC MUTE",
                    "presentation": 1,
                    "presentation_rect": [
                        873.0,
                        505.0,
                        95.0,
                        20.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "d-adc",
                        0
                    ],
                    "destination": [
                        "d-ingain-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-num",
                        0
                    ],
                    "destination": [
                        "d-ingain-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-in",
                        0
                    ],
                    "destination": [
                        "d-ingain-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-method-num",
                        0
                    ],
                    "destination": [
                        "d-pitchop",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-method",
                        0
                    ],
                    "destination": [
                        "d-method-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-pitchop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-pitch-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        1
                    ],
                    "destination": [
                        "d-level-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-current-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-calibrate",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-reset",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-newsession",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracking-toggle",
                        0
                    ],
                    "destination": [
                        "d-tracking-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracking-prepend",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-offset-num",
                        0
                    ],
                    "destination": [
                        "d-offset-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-offset-prepend",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-major",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-minor",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-track",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-origin",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-offset",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-mode",
                        0
                    ],
                    "destination": [
                        "d-tracker",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        0
                    ],
                    "destination": [
                        "d-frame-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        1
                    ],
                    "destination": [
                        "d-relative-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        2
                    ],
                    "destination": [
                        "d-maint-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        3
                    ],
                    "destination": [
                        "d-fit-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        4
                    ],
                    "destination": [
                        "d-adjust-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        5
                    ],
                    "destination": [
                        "d-stability-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        6
                    ],
                    "destination": [
                        "d-status-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-status-prepend",
                        0
                    ],
                    "destination": [
                        "d-status-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        7
                    ],
                    "destination": [
                        "d-state-print",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tracker",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-major",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-minor",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-preset-choir",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-preset-close",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-preset-open",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-preset-cluster",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-preset",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-mode",
                        0
                    ],
                    "destination": [
                        "d-harmony",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        0
                    ],
                    "destination": [
                        "d-int-bass",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        1
                    ],
                    "destination": [
                        "d-int-tenor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        2
                    ],
                    "destination": [
                        "d-int-alto",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        3
                    ],
                    "destination": [
                        "d-int-sop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        4
                    ],
                    "destination": [
                        "d-target-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-target-prepend",
                        0
                    ],
                    "destination": [
                        "d-target-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        5
                    ],
                    "destination": [
                        "d-degree-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        6
                    ],
                    "destination": [
                        "d-degree-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-degree-prepend",
                        0
                    ],
                    "destination": [
                        "d-degree-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-dry-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gain-dry",
                        0
                    ],
                    "destination": [
                        "d-dry-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-bass-v",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-tenor-v",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-alto-v",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-ingain-mul",
                        0
                    ],
                    "destination": [
                        "d-sop-v",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        0
                    ],
                    "destination": [
                        "d-bass-v",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        1
                    ],
                    "destination": [
                        "d-tenor-v",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        2
                    ],
                    "destination": [
                        "d-alto-v",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-harmony",
                        3
                    ],
                    "destination": [
                        "d-sop-v",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-bass-v",
                        0
                    ],
                    "destination": [
                        "d-bass-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tenor-v",
                        0
                    ],
                    "destination": [
                        "d-tenor-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-alto-v",
                        0
                    ],
                    "destination": [
                        "d-alto-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sop-v",
                        0
                    ],
                    "destination": [
                        "d-sop-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gain-bass",
                        0
                    ],
                    "destination": [
                        "d-bass-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gain-tenor",
                        0
                    ],
                    "destination": [
                        "d-tenor-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gain-alto",
                        0
                    ],
                    "destination": [
                        "d-alto-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gain-sop",
                        0
                    ],
                    "destination": [
                        "d-sop-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-dry",
                        0
                    ],
                    "destination": [
                        "d-gain-dry",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-bass",
                        0
                    ],
                    "destination": [
                        "d-gain-bass",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-tenor",
                        0
                    ],
                    "destination": [
                        "d-gain-tenor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-alto",
                        0
                    ],
                    "destination": [
                        "d-gain-alto",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-sop",
                        0
                    ],
                    "destination": [
                        "d-gain-sop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-bass-mul",
                        0
                    ],
                    "destination": [
                        "d-sum1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-tenor-mul",
                        0
                    ],
                    "destination": [
                        "d-sum1",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sum1",
                        0
                    ],
                    "destination": [
                        "d-sum2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-alto-mul",
                        0
                    ],
                    "destination": [
                        "d-sum2",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sum2",
                        0
                    ],
                    "destination": [
                        "d-sum3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sop-mul",
                        0
                    ],
                    "destination": [
                        "d-sum3",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sum3",
                        0
                    ],
                    "destination": [
                        "d-sum4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-sum4",
                        0
                    ],
                    "destination": [
                        "d-proc-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-level-num",
                        0
                    ],
                    "destination": [
                        "d-gate-gt",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-threshold-num",
                        0
                    ],
                    "destination": [
                        "d-gate-gt",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gate-gt",
                        0
                    ],
                    "destination": [
                        "d-gate-change",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gate-change",
                        0
                    ],
                    "destination": [
                        "d-gate-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gate-pack",
                        0
                    ],
                    "destination": [
                        "d-gate-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-gate-line",
                        0
                    ],
                    "destination": [
                        "d-proc-gate",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-dry-mul",
                        0
                    ],
                    "destination": [
                        "d-final-sum",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-proc-gate",
                        0
                    ],
                    "destination": [
                        "d-final-sum",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-final-sum",
                        0
                    ],
                    "destination": [
                        "d-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-clip",
                        0
                    ],
                    "destination": [
                        "d-master-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-num",
                        0
                    ],
                    "destination": [
                        "d-master-mul",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-master",
                        0
                    ],
                    "destination": [
                        "d-master-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-threshold",
                        0
                    ],
                    "destination": [
                        "d-threshold-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-mul",
                        0
                    ],
                    "destination": [
                        "d-meter",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-mul",
                        0
                    ],
                    "destination": [
                        "d-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-mul",
                        0
                    ],
                    "destination": [
                        "d-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-mul",
                        0
                    ],
                    "destination": [
                        "d-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-master-mul",
                        0
                    ],
                    "destination": [
                        "d-record",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-record-open",
                        0
                    ],
                    "destination": [
                        "d-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-record-start",
                        0
                    ],
                    "destination": [
                        "d-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-record-stop",
                        0
                    ],
                    "destination": [
                        "d-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-track-ui",
                        0
                    ],
                    "destination": [
                        "d-tracking-toggle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-load-offset-ui",
                        0
                    ],
                    "destination": [
                        "d-offset-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-panic",
                        0
                    ],
                    "destination": [
                        "d-master-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-bass-v",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-tenor-v",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-alto-v",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "d-pitchop",
                        0
                    ],
                    "destination": [
                        "d-sop-v",
                        2
                    ]
                }
            }
        ],
        "autosave": 0,
        "openinpresentation": 1
    }
}
