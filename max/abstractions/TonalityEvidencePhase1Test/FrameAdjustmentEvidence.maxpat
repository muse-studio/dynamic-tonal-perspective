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
    "classnamespace": "box",
    "rect": [
      0,
      0,
      720,
      420
    ],
    "boxes": [
      {
        "box": {
          "id": "in1",
          "maxclass": "inlet",
          "patching_rect": [
            50,
            70,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "c1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            30,
            300,
            25
          ],
          "text": "frameResidual [semitones]"
        }
      },
      {
        "box": {
          "id": "abs",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            135,
            60,
            22
          ],
          "text": "abs 0."
        }
      },
      {
        "box": {
          "id": "score",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            190,
            280,
            22
          ],
          "text": "expr min(1., max(0., $f1/0.5))"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            50,
            280,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            250,
            280,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "c2",
          "maxclass": "comment",
          "patching_rect": [
            20,
            320,
            230,
            25
          ],
          "text": "adjustmentEvidence [0.0-1.0]"
        }
      },
      {
        "box": {
          "id": "c3",
          "maxclass": "comment",
          "patching_rect": [
            220,
            320,
            280,
            25
          ],
          "text": "estimatedOriginDifference [semitones]"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            365,
            675,
            45
          ],
          "text": "Phase 1 provisional evidence: magnitude of deviation from the nearest 12-TET semitone lattice. Coherence across multiple notes is intentionally deferred to Frame Decision / later evidence."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in1",
            0
          ],
          "destination": [
            "abs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "abs",
            0
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
            "score",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in1",
            0
          ],
          "destination": [
            "o2",
            0
          ]
        }
      }
    ]
  }
}