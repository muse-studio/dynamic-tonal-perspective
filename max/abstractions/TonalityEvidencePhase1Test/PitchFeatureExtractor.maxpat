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
            40,
            70,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "in2",
          "maxclass": "inlet",
          "patching_rect": [
            210,
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
            25,
            250,
            25
          ],
          "text": "current relativePitch [semitones]"
        }
      },
      {
        "box": {
          "id": "c2",
          "maxclass": "comment",
          "patching_rect": [
            190,
            45,
            250,
            25
          ],
          "text": "previousRelativePitch [semitones]"
        }
      },
      {
        "box": {
          "id": "delta",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            145,
            150,
            22
          ],
          "text": "expr $f1-$f2"
        }
      },
      {
        "box": {
          "id": "resid",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            145,
            220,
            22
          ],
          "text": "expr $f1-floor($f1+0.5)"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            40,
            245,
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
            310,
            245,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "oc1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            285,
            230,
            25
          ],
          "text": "deltaRelativePitch"
        }
      },
      {
        "box": {
          "id": "oc2",
          "maxclass": "comment",
          "patching_rect": [
            285,
            285,
            300,
            25
          ],
          "text": "frameResidual [-0.5, 0.5)"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            330,
            650,
            45
          ],
          "text": "Phase 1: frameResidual is the offset from the nearest 12-TET semitone lattice. It is a provisional feature for detecting coherent tuning/frame drift."
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
            "delta",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in2",
            0
          ],
          "destination": [
            "delta",
            1
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
            "resid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "delta",
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
            "resid",
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