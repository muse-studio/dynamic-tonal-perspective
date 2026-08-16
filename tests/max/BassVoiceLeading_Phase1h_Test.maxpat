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
      1000,
      350
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            1000,
            20
          ],
          "text": "Bass Voice Leading Phase 1h Test — set origin first, then enter target degree"
        }
      },
      {
        "box": {
          "id": "originlab",
          "maxclass": "comment",
          "patching_rect": [
            20,
            50,
            150,
            20
          ],
          "text": "Frame Origin MIDI"
        }
      },
      {
        "box": {
          "id": "origin",
          "maxclass": "flonum",
          "patching_rect": [
            20,
            72,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "degreelab",
          "maxclass": "comment",
          "patching_rect": [
            140,
            50,
            120,
            20
          ],
          "text": "Target Degree"
        }
      },
      {
        "box": {
          "id": "degree",
          "maxclass": "number",
          "patching_rect": [
            140,
            72,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "prevlab",
          "maxclass": "comment",
          "patching_rect": [
            260,
            50,
            150,
            20
          ],
          "text": "Previous Bass Pitch"
        }
      },
      {
        "box": {
          "id": "prev",
          "maxclass": "flonum",
          "patching_rect": [
            260,
            72,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "resetlab",
          "maxclass": "comment",
          "patching_rect": [
            390,
            50,
            100,
            20
          ],
          "text": "Reset history"
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "button",
          "patching_rect": [
            390,
            72,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "bvl",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            130,
            225,
            22
          ],
          "text": "../../max/BassVoiceLeading_Phase1h"
        }
      },
      {
        "box": {
          "id": "target",
          "maxclass": "flonum",
          "patching_rect": [
            20,
            195,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "movement",
          "maxclass": "flonum",
          "patching_rect": [
            140,
            195,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "score",
          "maxclass": "flonum",
          "patching_rect": [
            260,
            195,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "candidates",
          "maxclass": "message",
          "patching_rect": [
            380,
            195,
            220,
            22
          ],
          "text": ""
        }
      },
      {
        "box": {
          "id": "octave",
          "maxclass": "number",
          "patching_rect": [
            650,
            195,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tl",
          "maxclass": "comment",
          "patching_rect": [
            20,
            220,
            100,
            20
          ],
          "text": "targetPitch"
        }
      },
      {
        "box": {
          "id": "ml",
          "maxclass": "comment",
          "patching_rect": [
            140,
            220,
            100,
            20
          ],
          "text": "movement"
        }
      },
      {
        "box": {
          "id": "sl",
          "maxclass": "comment",
          "patching_rect": [
            260,
            220,
            100,
            20
          ],
          "text": "VL score"
        }
      },
      {
        "box": {
          "id": "cl",
          "maxclass": "comment",
          "patching_rect": [
            380,
            220,
            160,
            20
          ],
          "text": "valid candidates"
        }
      },
      {
        "box": {
          "id": "ol",
          "maxclass": "comment",
          "patching_rect": [
            650,
            220,
            120,
            20
          ],
          "text": "selected octave"
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "patching_rect": [
            20,
            270,
            930,
            55
          ],
          "text": "Example: Origin=60 (C4), Previous=47 (B2), Degree=1 -> candidates 48 60, targetPitch 48, movement 1. After reset, Degree=1 chooses the candidate nearest the E2-E4 range center.",
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
            "prev",
            0
          ],
          "destination": [
            "bvl",
            2
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
            "bvl",
            3
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
            "target",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bvl",
            1
          ],
          "destination": [
            "movement",
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
            "score",
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
            "candidates",
            1
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
            "octave",
            0
          ]
        }
      }
    ]
  }
}
