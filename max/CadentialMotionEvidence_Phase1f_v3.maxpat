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
        "rect": [ 59.0, 106.0, 707.0, 285.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 566.0, 100.0, 107.0, 35.0 ],
                    "text": ";\rreset_history bang"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 474.0, 113.0, 85.0, 22.0 ],
                    "text": "r reset_history"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 950.0, 20.0 ],
                    "text": "Cadential Motion Evidence / Phase 1f v3 — handles integer MIDI messages; evaluate on degree-class arrival"
                }
            },
            {
                "box": {
                    "comment": "current degree class",
                    "id": "c",
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
                    "annotation": "",
                    "comment": "melodic diatonic steps",
                    "hint": "melodic diatonic steps",
                    "id": "s",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "current nearest MIDI",
                    "id": "m",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "cl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 87.0, 117.0, 20.0 ],
                    "text": "current degree class"
                }
            },
            {
                "box": {
                    "id": "sl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 229.0, 87.0, 127.0, 20.0 ],
                    "text": "melodic diatonic steps"
                }
            },
            {
                "box": {
                    "id": "ml",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 87.0, 118.0, 20.0 ],
                    "text": "current nearest MIDI"
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 130.0, 399.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "CadentialMotionEvidence_Phase1f_v3.js",
                        "parameter_enable": 0
                    },
                    "text": "js CadentialMotionEvidence_Phase1f_v3.js"
                }
            },
            {
                "box": {
                    "comment": "prev degree",
                    "id": "o0",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 232.0, 73.0, 20.0 ],
                    "text": "prev degree"
                }
            },
            {
                "box": {
                    "comment": "motion type",
                    "id": "o1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 116.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 112.0, 232.0, 71.0, 20.0 ],
                    "text": "motion type"
                }
            },
            {
                "box": {
                    "comment": "strength",
                    "id": "o2",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 202.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 198.0, 232.0, 52.0, 20.0 ],
                    "text": "strength"
                }
            },
            {
                "box": {
                    "comment": "candidate origin MIDI",
                    "id": "o3",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 288.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 284.0, 232.0, 122.0, 20.0 ],
                    "text": "candidate origin MIDI"
                }
            },
            {
                "box": {
                    "comment": "candidate class",
                    "id": "o4",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 410.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 410.0, 232.0, 91.0, 20.0 ],
                    "text": "candidate class"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o0", 0 ],
                    "source": [ "js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o1", 0 ],
                    "source": [ "js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o2", 0 ],
                    "source": [ "js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o3", 0 ],
                    "source": [ "js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o4", 0 ],
                    "source": [ "js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "m", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 1 ],
                    "source": [ "s", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}