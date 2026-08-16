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
        "rect": [ 59.0, 106.0, 1280.0, 520.0 ],
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 744.0, 323.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 836.0, 356.0, 115.0, 22.0 ],
                    "text": "makenote 127 1000"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 391.0, 59.0, 22.0 ],
                    "text": "noteout 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 884.0, 327.0, 40.0, 22.0 ],
                    "text": "* 127."
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 1120.0, 20.0 ],
                    "text": "Phase 1h Integrated Test — Lead MIDI -> Scale Degree -> Cadential Evidence -> Counterpoint Bass -> HarmonyGenerator Voice Leading"
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
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 430.0, 1180.0, 20.0 ],
                    "text": "Set Frame Origin=60. Set targetPitchMode=2. Enter Lead pitches. CounterpointBass Phase 1g supplies Bass Target Degree to HarmonyGenerator; HarmonyGenerator Phase 1h selects the Bass register. "
                }
            },
            {
                "box": {
                    "id": "sendpitch",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 105.0, 90.0, 22.0 ],
                    "text": "s currentPitch"
                }
            },
            {
                "box": {
                    "id": "modelab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 285.0, 130.0, 20.0 ],
                    "text": "targetPitchMode"
                }
            },
            {
                "box": {
                    "id": "mode",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 307.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "sendmode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 90.0, 307.0, 115.0, 22.0 ],
                    "text": "s targetPitchMode"
                }
            },
            {
                "box": {
                    "id": "loudlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 360.0, 285.0, 130.0, 20.0 ],
                    "text": "generated loudness"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "loud",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 360.0, 307.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "harm",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 540.0, 307.0, 165.0, 22.0 ],
                    "text": "../../max/HarmonyGenerator_Phase1h"
                }
            },
            {
                "box": {
                    "id": "harmLab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 285.0, 250.0, 20.0 ],
                    "text": "Phase 1h target pitch / interval generation"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "interval",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 540.0, 365.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "intlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 390.0, 110.0, 20.0 ],
                    "text": "pitch interval"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "loudout",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 680.0, 365.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "loutlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 680.0, 390.0, 110.0, 20.0 ],
                    "text": "loudness"
                }
            },
            {
                "box": {
                    "id": "lmMode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 345.0, 80.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "lmLoud",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 360.0, 345.0, 90.0, 22.0 ],
                    "text": "loadmess 0.16"
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
                    "destination": [ "harm", 1 ],
                    "source": [ "bdegree", 0 ]
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
                    "destination": [ "interval", 0 ],
                    "source": [ "harm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loudout", 0 ],
                    "source": [ "harm", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "harm", 2 ]
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
                    "order": 0,
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sendpitch", 0 ],
                    "order": 1,
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loud", 0 ],
                    "source": [ "lmLoud", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode", 0 ],
                    "source": [ "lmMode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "harm", 2 ],
                    "source": [ "loud", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "loudout", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sendmode", 0 ],
                    "source": [ "mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-6", 0 ]
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
                    "destination": [ "harm", 0 ],
                    "order": 1,
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "interp", 1 ],
                    "order": 2,
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
