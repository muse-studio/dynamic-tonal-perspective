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
      930,
      275
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
          "text": "Scale Degree Interpreter / Phase 1e v2 — Extended Scale Degree has no 0; Diatonic Position is internal coordinate"
        }
      },
      {
        "box": {
          "id": "lead",
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
          "id": "js",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            115,
            265,
            22
          ],
          "text": "js js/ScaleDegreeInterpreterExtended_v2.js"
        }
      },
      {
        "box": {
          "id": "o0",
          "maxclass": "outlet",
          "patching_rect": [
            25,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l0",
          "maxclass": "comment",
          "patching_rect": [
            20,
            225,
            125,
            20
          ],
          "text": "degree class"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            135,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l1",
          "maxclass": "comment",
          "patching_rect": [
            130,
            225,
            125,
            20
          ],
          "text": "Extended degree"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            275,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l2",
          "maxclass": "comment",
          "patching_rect": [
            270,
            225,
            125,
            20
          ],
          "text": "Diatonic Position"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "outlet",
          "patching_rect": [
            415,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l3",
          "maxclass": "comment",
          "patching_rect": [
            410,
            225,
            125,
            20
          ],
          "text": "deviation"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "outlet",
          "patching_rect": [
            525,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l4",
          "maxclass": "comment",
          "patching_rect": [
            520,
            225,
            125,
            20
          ],
          "text": "relative pitch"
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "outlet",
          "patching_rect": [
            640,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l5",
          "maxclass": "comment",
          "patching_rect": [
            635,
            225,
            125,
            20
          ],
          "text": "melodic steps"
        }
      },
      {
        "box": {
          "id": "o6",
          "maxclass": "outlet",
          "patching_rect": [
            755,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l6",
          "maxclass": "comment",
          "patching_rect": [
            750,
            225,
            125,
            20
          ],
          "text": "nearest MIDI"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "lead",
            0
          ],
          "destination": [
            "js",
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
            "js",
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
            "js",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            0
          ],
          "destination": [
            "o0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            1
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
            "js",
            2
          ],
          "destination": [
            "o2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            3
          ],
          "destination": [
            "o3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            4
          ],
          "destination": [
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            5
          ],
          "destination": [
            "o5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            6
          ],
          "destination": [
            "o6",
            0
          ]
        }
      }
    ]
  }
}
