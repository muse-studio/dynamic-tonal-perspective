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
        "rect": [ 84.0, 131.0, 730.0, 330.0 ],
        "boxes": [
            {
                "box": {
                    "id": "c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 500.0, 20.0 ],
                    "text": "Diatonic Third Harmonizer / Phase 1: diatonic third above/below lead"
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
                    "patching_rect": [ 30.0, 50.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 220.0, 50.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "degexpr",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 100.0, 200.0, 22.0 ],
                    "text": "expr 3.+($i1==1)+($i1==4)+($i1==5)"
                }
            },
            {
                "box": {
                    "id": "belowexpr",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 140.0, 195.0, 22.0 ],
                    "text": "expr -3.-($i1==3)-($i1==6)-($i1==7)"
                }
            },
            {
                "box": {
                    "id": "plus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 30.0, 200.0, 60.0, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "plus2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 130.0, 200.0, 60.0, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "oa",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 260.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "ob",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 130.0, 260.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "oai",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 260.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obi",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 260.0, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obi", 0 ],
                    "order": 0,
                    "source": [ "belowexpr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plus2", 1 ],
                    "order": 1,
                    "source": [ "belowexpr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oai", 0 ],
                    "order": 0,
                    "source": [ "degexpr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plus", 1 ],
                    "order": 1,
                    "source": [ "degexpr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "belowexpr", 0 ],
                    "order": 0,
                    "source": [ "degree", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "degexpr", 0 ],
                    "order": 1,
                    "source": [ "degree", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plus", 0 ],
                    "order": 1,
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plus2", 0 ],
                    "order": 0,
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oa", 0 ],
                    "source": [ "plus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ob", 0 ],
                    "source": [ "plus2", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}