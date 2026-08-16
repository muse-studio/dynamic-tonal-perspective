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
        "rect": [ 59.0, 106.0, 1130.0, 360.0 ],
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 980.0, 20.0 ],
                    "text": "Phase 1f Integrated Test v2 — Lead MIDI -> Extended Scale Degree -> Cadential Motion Evidence"
                }
            },
            {
                "box": {
                    "id": "hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 35.0, 980.0, 20.0 ],
                    "text": "Input only Lead MIDI pitch and Frame Origin. Try 71->72, 77->76, 74->72."
                }
            },
            {
                "box": {
                    "id": "leadlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 75.0, 120.0, 20.0 ],
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
                    "patching_rect": [ 20.0, 98.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "originlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 75.0, 120.0, 20.0 ],
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
                    "patching_rect": [ 150.0, 98.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "resetlab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 75.0, 100.0, 20.0 ],
                    "text": "Reset history"
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
                    "patching_rect": [ 280.0, 98.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "interp",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 20.0, 150.0, 250.0, 22.0 ],
                    "text": "../../max/ScaleDegreeInterpreterExtended_v2"
                }
            },
            {
                "box": {
                    "id": "n0",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 230.0, 105.0, 20.0 ],
                    "text": "degree"
                }
            },
            {
                "box": {
                    "id": "n1",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 95.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 95.0, 230.0, 105.0, 20.0 ],
                    "text": "Extended"
                }
            },
            {
                "box": {
                    "id": "n2",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 185.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 185.0, 230.0, 105.0, 20.0 ],
                    "text": "Diatonic Pos"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "n3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 285.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 230.0, 105.0, 20.0 ],
                    "text": "deviation"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "n4",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 375.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 230.0, 105.0, 20.0 ],
                    "text": "relative"
                }
            },
            {
                "box": {
                    "id": "n5",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 465.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 465.0, 230.0, 105.0, 20.0 ],
                    "text": "melodic steps"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "n6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.0, 205.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "nl6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 570.0, 230.0, 105.0, 20.0 ],
                    "text": "nearest MIDI"
                }
            },
            {
                "box": {
                    "id": "cad",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 690.0, 150.0, 215.0, 22.0 ],
                    "text": "../../max/CadentialMotionEvidence_Phase1f_v3"
                }
            },
            {
                "box": {
                    "id": "co0",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 690.0, 205.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "col0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.0, 230.0, 105.0, 20.0 ],
                    "text": "prev degree"
                }
            },
            {
                "box": {
                    "id": "co1",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 770.0, 205.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "col1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 770.0, 230.0, 105.0, 20.0 ],
                    "text": "motion type"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "co2",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 850.0, 205.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "col2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 850.0, 230.0, 105.0, 20.0 ],
                    "text": "strength"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "co3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 930.0, 205.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "col3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 930.0, 230.0, 105.0, 20.0 ],
                    "text": "candidate origin"
                }
            },
            {
                "box": {
                    "id": "co4",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1030.0, 205.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "col4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1030.0, 230.0, 105.0, 20.0 ],
                    "text": "candidate class"
                }
            },
            {
                "box": {
                    "id": "legend",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 285.0, 810.0, 33.0 ],
                    "text": "motion type: 1=VII->I, 2=IV->III, 3=II->I, 4=II->III, 5=IV->V, 6=VI->V. Previous degree is reconstructed internally, so no zl reg/order dependency remains."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "co0", 0 ],
                    "source": [ "cad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "co1", 0 ],
                    "source": [ "cad", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "co2", 0 ],
                    "source": [ "cad", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "co3", 0 ],
                    "source": [ "cad", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "co4", 0 ],
                    "source": [ "cad", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cad", 2 ],
                    "order": 0,
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
                    "destination": [ "n0", 0 ],
                    "order": 1,
                    "source": [ "interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n1", 0 ],
                    "source": [ "interp", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n2", 0 ],
                    "source": [ "interp", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n3", 0 ],
                    "source": [ "interp", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n4", 0 ],
                    "source": [ "interp", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n5", 0 ],
                    "order": 1,
                    "source": [ "interp", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "n6", 0 ],
                    "order": 1,
                    "source": [ "interp", 6 ]
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
                    "destination": [ "interp", 1 ],
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "interp", 2 ],
                    "source": [ "reset", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}
