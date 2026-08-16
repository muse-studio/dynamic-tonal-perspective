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
        "rect": [ 100.0, 100.0, 520.0, 470.0 ],
        "boxes": [
            {
                "box": {
                    "comment": "audio signal",
                    "id": "p-in-audio",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 35.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "pitch method: 1=fzero, 2=fluid.pitch~",
                    "id": "p-in-method",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 135.0, 35.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "p-fzero",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "" ],
                    "patching_rect": [ 35.0, 95.0, 444.0, 22.0 ],
                    "text": "fzero~ @freqmin 70 @freqmax 1200 @size 2048 @period 128 @onsetperiod 128"
                }
            },
            {
                "box": {
                    "id": "p-ftom",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 130.0, 45.0, 22.0 ],
                    "text": "ftom 0."
                }
            },
            {
                "box": {
                    "id": "p-fluid",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 235.0, 130.0, 347.0, 22.0 ],
                    "text": "fluid.pitch~ @unit 1 @algorithm 2 @minfreq 70 @maxfreq 1200"
                }
            },
            {
                "box": {
                    "id": "p-selector",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 185.0, 52.0, 22.0 ],
                    "text": "switch 2"
                }
            },
            {
                "box": {
                    "id": "p-split",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 115.0, 220.0, 75.0, 22.0 ],
                    "text": "split 36. 96."
                }
            },
            {
                "box": {
                    "id": "p-speedlim",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 255.0, 75.0, 22.0 ],
                    "text": "speedlim 35"
                }
            },
            {
                "box": {
                    "id": "p-slide",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 115.0, 290.0, 65.0, 22.0 ],
                    "text": "slide 3 6"
                }
            },
            {
                "box": {
                    "id": "p-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 115.0, 325.0, 35.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "p-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 360.0, 83.0, 22.0 ],
                    "text": "s PitchStream"
                }
            },
            {
                "box": {
                    "comment": "pitch in MIDI note number",
                    "id": "p-out-pitch",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 395.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "p-level",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 35.0, 185.0, 82.0, 22.0 ],
                    "text": "peakamp~ 20"
                }
            },
            {
                "box": {
                    "comment": "input peak amplitude",
                    "id": "p-out-level",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0, 395.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "p-comment1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 10.0, 237.0, 20.0 ],
                    "text": "Pitch Operator for Piece and Lecture demo"
                }
            },
            {
                "box": {
                    "id": "p-comment2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 195.0, 185.0, 238.0, 20.0 ],
                    "text": "1 = built-in fzero~, 2 = FluCoMa fluid.pitch~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "p-selector", 2 ],
                    "source": [ "p-fluid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-selector", 1 ],
                    "source": [ "p-ftom", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-ftom", 0 ],
                    "source": [ "p-fzero", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-fluid", 0 ],
                    "order": 0,
                    "source": [ "p-in-audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-fzero", 0 ],
                    "order": 2,
                    "source": [ "p-in-audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-level", 0 ],
                    "order": 1,
                    "source": [ "p-in-audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-selector", 0 ],
                    "source": [ "p-in-method", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-out-level", 0 ],
                    "source": [ "p-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-split", 0 ],
                    "source": [ "p-selector", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-trigger", 0 ],
                    "source": [ "p-slide", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-slide", 0 ],
                    "source": [ "p-speedlim", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-speedlim", 0 ],
                    "source": [ "p-split", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-out-pitch", 0 ],
                    "source": [ "p-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p-send", 0 ],
                    "source": [ "p-trigger", 1 ]
                }
            }
        ],
        "autosave": 0
    }
}