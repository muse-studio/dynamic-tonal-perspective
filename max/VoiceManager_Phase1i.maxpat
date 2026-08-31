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
        "rect": [ 100.0, 100.0, 700.0, 450.0 ],
        "boxes": [
            {
                "box": {
                    "id": "in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 50.0, 35.0, 22.0 ],
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 15.0, 500.0, 20.0 ],
                    "text": "VoiceManager Phase 1i — two provisional inner voices + existing Bass path"
                }
            },
            {
                "box": {
                    "id": "rdeg",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 50.0, 140.0, 22.0 ],
                    "text": "r leadScaleDegreeClass"
                }
            },
            {
                "box": {
                    "id": "rframe",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320.0, 50.0, 110.0, 22.0 ],
                    "text": "r frameOriginMIDI"
                }
            },
            {
                "box": {
                    "id": "rcur",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 50.0, 85.0, 22.0 ],
                    "text": "r currentPitch"
                }
            },
            {
                "box": {
                    "id": "rinterp",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 535.0, 50.0, 135.0, 22.0 ],
                    "text": "r leadInterpretedPitch"
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 170.0, 90.0, 240.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "InnerVoiceTargets_Phase1i_diatonic36.js",
                        "parameter_enable": 0
                    },
                    "text": "js InnerVoiceTargets_Phase1i_diatonic36.js"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "t1",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 170.0, 125.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "t2",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 260.0, 125.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "i1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 160.0, 75.0, 22.0 ],
                    "text": "expr $f1-$f2"
                }
            },
            {
                "box": {
                    "id": "i2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 160.0, 75.0, 22.0 ],
                    "text": "expr $f1-$f2"
                }
            },
            {
                "box": {
                    "id": "vg1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 200.0, 92.0, 22.0 ],
                    "text": "VoiceGenerator"
                }
            },
            {
                "box": {
                    "id": "vg2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 150.0, 200.0, 92.0, 22.0 ],
                    "text": "VoiceGenerator"
                }
            },
            {
                "box": {
                    "id": "g1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 235.0, 47.0, 22.0 ],
                    "text": "*~ 0.32"
                }
            },
            {
                "box": {
                    "id": "g2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 150.0, 235.0, 47.0, 22.0 ],
                    "text": "*~ 0.28"
                }
            },
            {
                "box": {
                    "id": "rbassdeg",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 125.0, 114.0, 22.0 ],
                    "text": "r bassTargetDegree"
                }
            },
            {
                "box": {
                    "id": "rbassgain",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 125.0, 150.0, 22.0 ],
                    "text": "r bassGeneratedLoudness"
                }
            },
            {
                "box": {
                    "id": "hg",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 370.0, 160.0, 165.0, 22.0 ],
                    "text": "HarmonyGenerator_Phase1h"
                }
            },
            {
                "box": {
                    "id": "vg3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 270.0, 200.0, 92.0, 22.0 ],
                    "text": "VoiceGenerator"
                }
            },
            {
                "box": {
                    "id": "gb",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 270.0, 235.0, 47.0, 22.0 ],
                    "text": "*~ 0.35"
                }
            },
            {
                "box": {
                    "id": "mix1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 85.0, 275.0, 35.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mix2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 150.0, 310.0, 35.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "out",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 350.0, 45.0, 22.0 ],
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 385.0, 616.0, 20.0 ],
                    "text": "Phase 1i: inner-voice harmony table is provisional. Bass keeps the existing Counterpoint/Bass Voice Leading path."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "mix1", 0 ],
                    "source": [ "g1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mix1", 1 ],
                    "source": [ "g2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mix2", 1 ],
                    "source": [ "gb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg3", 1 ],
                    "source": [ "hg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg1", 1 ],
                    "source": [ "i1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg2", 1 ],
                    "source": [ "i2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg1", 0 ],
                    "order": 2,
                    "source": [ "in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg2", 0 ],
                    "order": 1,
                    "source": [ "in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg3", 0 ],
                    "order": 0,
                    "source": [ "in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t1", 0 ],
                    "source": [ "js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t2", 0 ],
                    "source": [ "js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mix2", 0 ],
                    "source": [ "mix1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out", 0 ],
                    "source": [ "mix2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "hg", 0 ],
                    "source": [ "rbassdeg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "hg", 1 ],
                    "source": [ "rbassgain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "i1", 1 ],
                    "order": 1,
                    "source": [ "rcur", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "i2", 1 ],
                    "order": 0,
                    "source": [ "rcur", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 2 ],
                    "source": [ "rinterp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "rdeg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 1 ],
                    "source": [ "rframe", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "i1", 0 ],
                    "source": [ "t1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "i2", 0 ],
                    "source": [ "t2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "g1", 0 ],
                    "source": [ "vg1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "g2", 0 ],
                    "source": [ "vg2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gb", 0 ],
                    "source": [ "vg3", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}
