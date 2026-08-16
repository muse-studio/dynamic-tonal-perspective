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
        "rect": [ 134.0, 181.0, 744.0, 275.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 500.0, 67.0, 107.0, 35.0 ],
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
                    "patching_rect": [ 620.0, 80.0, 85.0, 22.0 ],
                    "text": "r reset_history"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 622.0, 20.0 ],
                    "text": "Scale Degree Interpreter / Phase 1e v2 — Extended Scale Degree has no 0; Diatonic Position is internal coordinate"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "lead",
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
                    "patching_rect": [ 325.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 115.0, 609.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "ScaleDegreeInterpreterExtended_v2.js",
                        "parameter_enable": 0
                    },
                    "text": "js ScaleDegreeInterpreterExtended_v2.js"
                }
            },
            {
                "box": {
                    "comment": "Scale Degree Class",
                    "id": "o0",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 225.0, 115.0, 20.0 ],
                    "text": "Scale Degree Class"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 152.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 147.0, 225.0, 100.0, 20.0 ],
                    "text": "Extended degree"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o2",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.0, 225.0, 98.0, 20.0 ],
                    "text": "Diatonic Position"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o3",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 225.0, 57.0, 20.0 ],
                    "text": "deviation"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o4",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 418.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 413.0, 225.0, 76.0, 20.0 ],
                    "text": "relative pitch"
                }
            },
            {
                "box": {
                    "comment": "melodic diatonic steps",
                    "id": "o5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 225.0, 127.0, 20.0 ],
                    "text": "melodic diatonic steps"
                }
            },
            {
                "box": {
                    "comment": "nearest diatonic MIDI pitch",
                    "id": "o6",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 631.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 631.0, 225.0, 77.0, 20.0 ],
                    "text": "nearest MIDI"
                }
            }
        ],
        "lines": [
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
                    "destination": [ "o5", 0 ],
                    "source": [ "js", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "o6", 0 ],
                    "source": [ "js", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 1 ],
                    "source": [ "origin", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}