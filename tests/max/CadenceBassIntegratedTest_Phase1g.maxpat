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
        "rect": [ 59.0, 106.0, 1140.0, 340.0 ],
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 1120.0, 20.0 ],
                    "text": "Phase 1g Integrated Test — Lead MIDI -> Scale Degree -> Cadential Evidence -> Counterpoint Bass"
                }
            },
            {
                "box": {
                    "id": "leadlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 50.0, 120.0, 20.0 ],
                    "text": "Lead MIDI pitch"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "lead",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 72.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "originlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 50.0, 120.0, 20.0 ],
                    "text": "Frame Origin"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "origin",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 72.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "resetlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 50.0, 100.0, 20.0 ],
                    "text": "Reset"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 260.0, 72.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "interp",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 20.0, 125.0, 250.0, 22.0 ],
                    "text": "../../max/ScaleDegreeInterpreterExtended_v2"
                }
            },
            {
                "box": {
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 125.0, 55.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "cad",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 420.0, 125.0, 255.0, 22.0 ],
                    "text": "../../max/CadentialMotionEvidence_Phase1f_v3"
                }
            },
            {
                "box": {
                    "id": "bass",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 760.0, 125.0, 245.0, 22.0 ],
                    "text": "../../max/CounterpointBassGenerator_Phase1g"
                }
            },
            {
                "box": {
                    "id": "degree",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "degreel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 215.0, 105.0, 20.0 ],
                    "text": "degree"
                }
            },
            {
                "box": {
                    "id": "extended",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 100.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "extendedl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 215.0, 105.0, 20.0 ],
                    "text": "Extended"
                }
            },
            {
                "box": {
                    "id": "steps",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 180.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "stepsl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 215.0, 105.0, 20.0 ],
                    "text": "steps"
                }
            },
            {
                "box": {
                    "id": "ctype",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "ctypel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 420.0, 215.0, 105.0, 20.0 ],
                    "text": "cad type"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "strength",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 500.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "strengthl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 215.0, 105.0, 20.0 ],
                    "text": "cad strength"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "candidate",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 590.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "candidatel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 590.0, 215.0, 105.0, 20.0 ],
                    "text": "candidate origin"
                }
            },
            {
                "box": {
                    "id": "bdegree",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 760.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "bdegreel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 215.0, 105.0, 20.0 ],
                    "text": "Bass degree"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "bpitch",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 840.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "bpitchl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 840.0, 215.0, 105.0, 20.0 ],
                    "text": "Bass MIDI"
                }
            },
            {
                "box": {
                    "id": "bmotion",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 930.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "bmotionl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 930.0, 215.0, 105.0, 20.0 ],
                    "text": "Bass motion"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "cscore",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1010.0, 190.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "cscorel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1010.0, 215.0, 105.0, 20.0 ],
                    "text": "cad score"
                }
            },
            {
                "box": {
                    "id": "hint",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 270.0, 1046.0, 33.0 ],
                    "text": "Test with Frame Origin 60. Enter 71 then 72: cadence type 1 / strength 1.0 should bias the selected Bass toward degree I. The Bass lead trigger is deferlow'ed so cadence evidence is updated first."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "bdegree", 0 ],
                    "source": [ "bass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bmotion", 0 ],
                    "source": [ "bass", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bpitch", 0 ],
                    "source": [ "bass", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cscore", 0 ],
                    "source": [ "bass", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bass", 4 ],
                    "order": 0,
                    "source": [ "cad", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bass", 3 ],
                    "order": 0,
                    "source": [ "cad", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "candidate", 0 ],
                    "source": [ "cad", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ctype", 0 ],
                    "order": 1,
                    "source": [ "cad", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "strength", 0 ],
                    "order": 1,
                    "source": [ "cad", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bass", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cad", 2 ],
                    "source": [ "interp", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cad", 1 ],
                    "order": 0,
                    "source": [ "interp", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cad", 0 ],
                    "order": 0,
                    "source": [ "interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer", 0 ],
                    "order": 1,
                    "source": [ "interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "degree", 0 ],
                    "order": 2,
                    "source": [ "interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "extended", 0 ],
                    "source": [ "interp", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "steps", 0 ],
                    "order": 1,
                    "source": [ "interp", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "interp", 0 ],
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bass", 1 ],
                    "order": 0,
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "interp", 1 ],
                    "order": 1,
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bass", 2 ],
                    "order": 0,
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "interp", 2 ],
                    "order": 1,
                    "source": [ "reset", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}
