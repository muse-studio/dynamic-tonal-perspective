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
        "rect": [ 109.0, 156.0, 1020.0, 275.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 50.0, 107.0, 35.0 ],
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
                    "patching_rect": [ 573.0, 89.0, 85.0, 22.0 ],
                    "text": "r reset_history"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 166.0, 85.0, 104.0, 22.0 ],
                    "text": "r frameOriginMIDI"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 1000.0, 20.0 ],
                    "text": "Counterpoint Bass Generator / Phase 1g — motion + consonance + parallel-perfect avoidance + cadential bias"
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
                    "id": "reset",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 302.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "ctype",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 438.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 120.0, 563.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "CounterpointBassPhase1g.js",
                        "parameter_enable": 0
                    },
                    "text": "js CounterpointBassPhase1g.js"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o0",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 225.0, 75.0, 20.0 ],
                    "text": "bass degree"
                }
            },
            {
                "box": {
                    "id": "l1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 225.0, 63.0, 33.0 ],
                    "text": "bass MIDI\n(not use)"
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
                    "patching_rect": [ 180.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 176.0, 225.0, 71.0, 20.0 ],
                    "text": "lead motion"
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
                    "patching_rect": [ 256.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 252.0, 225.0, 73.0, 20.0 ],
                    "text": "bass motion"
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
                    "patching_rect": [ 331.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 328.0, 225.0, 73.0, 20.0 ],
                    "text": "consonance"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 403.0, 225.0, 78.0, 20.0 ],
                    "text": "interval class"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o6",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 483.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 479.0, 225.0, 83.0, 20.0 ],
                    "text": "parallel P5/P8"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "o7",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 185.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 570.0, 225.0, 87.0, 20.0 ],
                    "text": "cadence score"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "js", 3 ],
                    "source": [ "ctype", 0 ]
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
                    "destination": [ "o7", 0 ],
                    "source": [ "js", 7 ]
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
                    "destination": [ "js", 4 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 1 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "reset", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}