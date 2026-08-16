{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "rect": [
      0,
      0,
      980,
      470
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            900,
            20
          ],
          "text": "Bass Part State / Phase 1h — external previousPitch history loop"
        }
      },
      {
        "box": {
          "id": "degree",
          "maxclass": "inlet",
          "patching_rect": [
            30,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "origin",
          "maxclass": "inlet",
          "patching_rect": [
            190,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "inlet",
          "patching_rect": [
            350,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "dl",
          "maxclass": "comment",
          "patching_rect": [
            15,
            88,
            130,
            20
          ],
          "text": "Bass targetDegree"
        }
      },
      {
        "box": {
          "id": "ol",
          "maxclass": "comment",
          "patching_rect": [
            160,
            88,
            150,
            20
          ],
          "text": "frameOriginPitch"
        }
      },
      {
        "box": {
          "id": "rl",
          "maxclass": "comment",
          "patching_rect": [
            325,
            88,
            120,
            20
          ],
          "text": "reset history"
        }
      },
      {
        "box": {
          "id": "trigDegree",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            130,
            45,
            22
          ],
          "text": "t i b"
        }
      },
      {
        "box": {
          "id": "state",
          "maxclass": "newobj",
          "patching_rect": [
            120,
            130,
            45,
            22
          ],
          "text": "f -1."
        }
      },
      {
        "box": {
          "id": "prevMon",
          "maxclass": "flonum",
          "patching_rect": [
            190,
            130,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "prevLab",
          "maxclass": "comment",
          "patching_rect": [
            190,
            155,
            150,
            20
          ],
          "text": "previousPitch used"
        }
      },
      {
        "box": {
          "id": "bvl",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            205,
            225,
            22
          ],
          "text": "BassVoiceLeading_Phase1h"
        }
      },
      {
        "box": {
          "id": "trigTarget",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            250,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "targetMon",
          "maxclass": "flonum",
          "patching_rect": [
            100,
            250,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "targetLab",
          "maxclass": "comment",
          "patching_rect": [
            100,
            275,
            100,
            20
          ],
          "text": "targetPitch"
        }
      },
      {
        "box": {
          "id": "resetVal",
          "maxclass": "message",
          "patching_rect": [
            350,
            130,
            45,
            22
          ],
          "text": "-1."
        }
      },
      {
        "box": {
          "id": "outTarget",
          "maxclass": "outlet",
          "patching_rect": [
            30,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outMove",
          "maxclass": "outlet",
          "patching_rect": [
            190,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outScore",
          "maxclass": "outlet",
          "patching_rect": [
            330,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outCand",
          "maxclass": "outlet",
          "patching_rect": [
            470,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outOct",
          "maxclass": "outlet",
          "patching_rect": [
            650,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outPrev",
          "maxclass": "outlet",
          "patching_rect": [
            790,
            320,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "lab0",
          "maxclass": "comment",
          "patching_rect": [
            15,
            355,
            100,
            20
          ],
          "text": "targetPitch"
        }
      },
      {
        "box": {
          "id": "lab1",
          "maxclass": "comment",
          "patching_rect": [
            175,
            355,
            100,
            20
          ],
          "text": "movement"
        }
      },
      {
        "box": {
          "id": "lab2",
          "maxclass": "comment",
          "patching_rect": [
            315,
            355,
            120,
            20
          ],
          "text": "VL score"
        }
      },
      {
        "box": {
          "id": "lab3",
          "maxclass": "comment",
          "patching_rect": [
            450,
            355,
            150,
            20
          ],
          "text": "valid candidates"
        }
      },
      {
        "box": {
          "id": "lab4",
          "maxclass": "comment",
          "patching_rect": [
            630,
            355,
            120,
            20
          ],
          "text": "selected octave"
        }
      },
      {
        "box": {
          "id": "lab5",
          "maxclass": "comment",
          "patching_rect": [
            760,
            355,
            150,
            20
          ],
          "text": "previousPitch used"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            400,
            900,
            45
          ],
          "text": "Event order: stored previousPitch is emitted first, then targetDegree triggers Voice Leading. The selected targetPitch is stored into [f -1.] through its cold inlet for the next event.",
          "linecount": 2
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "degree",
            0
          ],
          "destination": [
            "trigDegree",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigDegree",
            1
          ],
          "destination": [
            "state",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            0
          ],
          "destination": [
            "bvl",
            2
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            0
          ],
          "destination": [
            "prevMon",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            0
          ],
          "destination": [
            "outPrev",
            0
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "trigDegree",
            0
          ],
          "destination": [
            "bvl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "origin",
            0
          ],
          "destination": [
            "bvl",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "reset",
            0
          ],
          "destination": [
            "resetVal",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetVal",
            0
          ],
          "destination": [
            "state",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            0
          ],
          "destination": [
            "trigTarget",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigTarget",
            1
          ],
          "destination": [
            "state",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigTarget",
            0
          ],
          "destination": [
            "targetMon",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "trigTarget",
            0
          ],
          "destination": [
            "outTarget",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            1
          ],
          "destination": [
            "outMove",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            2
          ],
          "destination": [
            "outScore",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            3
          ],
          "destination": [
            "outCand",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            4
          ],
          "destination": [
            "outOct",
            0
          ]
        }
      }
    ]
  }
}