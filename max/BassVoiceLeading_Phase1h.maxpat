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
        "rect": [ 866.0, 259.0, 545.0, 285.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.33333333333331, 87.0, 104.0, 22.0 ],
                    "text": "r frameOriginMIDI"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 355.0, 87.0, 85.0, 22.0 ],
                    "text": "r reset_history"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 485.0, 20.0 ],
                    "text": "Bass Voice Leading / Phase 1h — Register candidates + E2-E4 filter + nearest movement"
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
                    "id": "prev",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 246.66666666666663, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "dl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 88.0, 102.0, 20.0 ],
                    "text": "targetDegree 1..7"
                }
            },
            {
                "box": {
                    "id": "pl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.66666666666663, 60.0, 137.0, 20.0 ],
                    "text": "Part State.previousPitch"
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 130.0, 344.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "BassVoiceLeading_Phase1h_stateless.js",
                        "parameter_enable": 0
                    },
                    "text": "js BassVoiceLeading_Phase1h_stateless.js"
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
                    "patching_rect": [ 28.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 232.0, 66.0, 20.0 ],
                    "text": "targetPitch"
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
                    "patching_rect": [ 102.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 99.0, 232.0, 65.0, 20.0 ],
                    "text": "movement"
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
                    "patching_rect": [ 176.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 173.0, 232.0, 55.0, 20.0 ],
                    "text": "VL score"
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
                    "patching_rect": [ 249.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 247.0, 232.0, 95.0, 20.0 ],
                    "text": "valid candidates"
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
                    "patching_rect": [ 355.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 352.0, 232.0, 92.0, 20.0 ],
                    "text": "selected octave"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "degree", 0 ]
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
                    "destination": [ "js", 3 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "prev", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}