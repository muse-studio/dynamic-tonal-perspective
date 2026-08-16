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
        "rect": [ 84.0, 131.0, 900.0, 285.0 ],
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 920.0, 20.0 ],
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
                    "id": "origin",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 55.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 350.0, 55.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 510.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "dl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 88.0, 130.0, 20.0 ],
                    "text": "targetDegree 1..7"
                }
            },
            {
                "box": {
                    "id": "ol",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 88.0, 150.0, 20.0 ],
                    "text": "frameOriginPitch"
                }
            },
            {
                "box": {
                    "id": "pl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 315.0, 88.0, 180.0, 20.0 ],
                    "text": "Part State.previousPitch"
                }
            },
            {
                "box": {
                    "id": "rl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 88.0, 100.0, 20.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 130.0, 239.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "BassVoiceLeading_Phase1h_stateless.js",
                        "parameter_enable": 0
                    },
                    "text": "js js/BassVoiceLeading_Phase1h_stateless.js"
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
                    "patching_rect": [ 30.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 232.0, 150.0, 20.0 ],
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
                    "patching_rect": [ 170.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 232.0, 150.0, 20.0 ],
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
                    "patching_rect": [ 310.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.0, 232.0, 150.0, 20.0 ],
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
                    "patching_rect": [ 450.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 445.0, 232.0, 150.0, 20.0 ],
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
                    "patching_rect": [ 650.0, 195.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 645.0, 232.0, 150.0, 20.0 ],
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
                    "destination": [ "js", 1 ],
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "prev", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 3 ],
                    "source": [ "reset", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}
