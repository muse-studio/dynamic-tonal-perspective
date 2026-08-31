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
        "rect": [ 59.0, 106.0, 980.0, 470.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 102.0, 85.0, 22.0 ],
                    "text": "r reset_history"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 354.0, 20.0 ],
                    "text": "Bass Part State / Phase 1h — external previousPitch history loop"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "degree",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "origin",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 173.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "dl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 65.0, 109.0, 20.0 ],
                    "text": "Bass targetDegree"
                }
            },
            {
                "box": {
                    "id": "ol",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 65.0, 98.0, 20.0 ],
                    "text": "frameOriginPitch"
                }
            },
            {
                "box": {
                    "id": "trigDegree",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 30.0, 130.0, 45.0, 22.0 ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "state",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 56.0, 165.0, 45.0, 22.0 ],
                    "text": "f -1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "prevMon",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.0, 204.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "prevLab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 190.0, 155.0, 150.0, 20.0 ],
                    "text": "previousPitch used"
                }
            },
            {
                "box": {
                    "id": "bvl",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 249.0, 379.0, 22.0 ],
                    "text": "BassVoiceLeading_Phase1h"
                }
            },
            {
                "box": {
                    "id": "trigTarget",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 30.0, 278.0, 45.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "targetMon",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 317.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "resetVal",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 130.0, 45.0, 22.0 ],
                    "text": "-1."
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outTarget",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 350.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outMove",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 129.0, 350.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outScore",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 350.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outCand",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 291.0, 350.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outOct",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 399.0, 350.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outPrev",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.5, 245.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "lab0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 21.0, 385.0, 66.0, 20.0 ],
                    "text": "targetPitch"
                }
            },
            {
                "box": {
                    "id": "lab1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 385.0, 65.0, 20.0 ],
                    "text": "movement"
                }
            },
            {
                "box": {
                    "id": "lab2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 201.0, 385.0, 55.0, 20.0 ],
                    "text": "VL score"
                }
            },
            {
                "box": {
                    "id": "lab3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 282.0, 385.0, 95.0, 20.0 ],
                    "text": "valid candidates"
                }
            },
            {
                "box": {
                    "id": "lab4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 390.0, 385.0, 92.0, 20.0 ],
                    "text": "selected octave"
                }
            },
            {
                "box": {
                    "id": "lab5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 438.5, 280.0, 110.0, 20.0 ],
                    "text": "previousPitch used"
                }
            },
            {
                "box": {
                    "id": "note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 428.0, 903.0, 33.0 ],
                    "text": "Event order: stored previousPitch is emitted first, then targetDegree triggers Voice Leading. The selected targetPitch is stored into [f -1.] through its cold inlet for the next event."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "outCand", 0 ],
                    "source": [ "bvl", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outMove", 0 ],
                    "source": [ "bvl", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outOct", 0 ],
                    "source": [ "bvl", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outScore", 0 ],
                    "source": [ "bvl", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trigTarget", 0 ],
                    "source": [ "bvl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trigDegree", 0 ],
                    "source": [ "degree", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resetVal", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bvl", 1 ],
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bvl", 2 ],
                    "order": 1,
                    "source": [ "prevMon", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outPrev", 0 ],
                    "order": 0,
                    "source": [ "prevMon", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "state", 1 ],
                    "source": [ "resetVal", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "prevMon", 0 ],
                    "source": [ "state", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outTarget", 0 ],
                    "source": [ "targetMon", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bvl", 0 ],
                    "source": [ "trigDegree", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "state", 0 ],
                    "source": [ "trigDegree", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "state", 1 ],
                    "midpoints": [ 65.5, 303.0, 108.60546875, 303.0, 108.60546875, 162.0, 91.5, 162.0 ],
                    "source": [ "trigTarget", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetMon", 0 ],
                    "source": [ "trigTarget", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}