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
            330,
            25
          ],
          "text": "deltaRelativePitch [semitones]"
        }
      },
      {
        "box": {
          "id": "expr",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            145,
            250,
            22
          ],
          "text": "expr max(0., 1.-abs($f1)/4.)"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            50,
            240,
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
            280,
            300,
            25
          ],
          "text": "maintenanceEvidence [0.0-1.0]"
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
          "text": "Phase 1 provisional evidence: local pitch-step continuity only. This Operator does not update the Relative Tonal Frame."
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
            "expr",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "expr",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      }
    ]
  }
}