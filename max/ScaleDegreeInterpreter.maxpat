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
        "rect": [ 84.0, 131.0, 760.0, 470.0 ],
        "boxes": [
            {
                "box": {
                    "id": "c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 10.0, 430.0, 20.0 ],
                    "text": "Scale Degree Interpreter / Phase 1: major scale, nearest diatonic degree"
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
                    "id": "origin",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 210.0, 50.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 100.0, 190.0, 22.0 ],
                    "text": "pak 0. 60."
                }
            },
            {
                "box": {
                    "id": "expr",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 145.0, 175.0, 22.0 ],
                    "text": "expr ((($f1-$f2)%12.)+12.)%12."
                }
            },
            {
                "box": {
                    "id": "t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 30.0, 185.0, 45.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "deg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 230.0, 389.0, 22.0 ],
                    "text": "expr 1+($f1>=1.)+($f1>=3.)+($f1>=4.5)+($f1>=6.)+($f1>=8.)+($f1>=10.)"
                }
            },
            {
                "box": {
                    "id": "deg_t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 30.0, 270.0, 45.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "sel",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 8,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 160.0, 270.0, 150.0, 22.0 ],
                    "text": "select 1 2 3 4 5 6 7"
                }
            },
            {
                "box": {
                    "id": "m1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 310.0, 30.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "m2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 310.0, 30.0, 22.0 ],
                    "text": "2."
                }
            },
            {
                "box": {
                    "id": "m3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.0, 310.0, 30.0, 22.0 ],
                    "text": "4."
                }
            },
            {
                "box": {
                    "id": "m4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 265.0, 310.0, 30.0, 22.0 ],
                    "text": "5."
                }
            },
            {
                "box": {
                    "id": "m5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 310.0, 30.0, 22.0 ],
                    "text": "7."
                }
            },
            {
                "box": {
                    "id": "m6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 310.0, 30.0, 22.0 ],
                    "text": "9."
                }
            },
            {
                "box": {
                    "id": "m7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 310.0, 35.0, 22.0 ],
                    "text": "11."
                }
            },
            {
                "box": {
                    "id": "minus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 160.0, 350.0, 60.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outdeg",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 405.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outdev",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 405.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "outrel",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 405.0, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "deg_t", 0 ],
                    "source": [ "deg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outdeg", 0 ],
                    "source": [ "deg_t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sel", 0 ],
                    "source": [ "deg_t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t", 0 ],
                    "source": [ "expr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pak", 0 ],
                    "source": [ "lead", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 1 ],
                    "source": [ "m7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outdev", 0 ],
                    "source": [ "minus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pak", 1 ],
                    "source": [ "origin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "expr", 0 ],
                    "source": [ "pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m1", 0 ],
                    "source": [ "sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m2", 0 ],
                    "source": [ "sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m3", 0 ],
                    "source": [ "sel", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m4", 0 ],
                    "source": [ "sel", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m5", 0 ],
                    "source": [ "sel", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m6", 0 ],
                    "source": [ "sel", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m7", 0 ],
                    "source": [ "sel", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "deg", 0 ],
                    "source": [ "t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "minus", 0 ],
                    "order": 1,
                    "source": [ "t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outrel", 0 ],
                    "order": 0,
                    "source": [ "t", 1 ]
                }
            }
        ],
        "autosave": 0
    }
}