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
      900,
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
            850,
            20
          ],
          "text": "Scale Degree Interpreter / Phase 1e — Extended Scale Degree, Major mode"
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
            250,
            22
          ],
          "text": "js js/ScaleDegreeInterpreterExtended.js"
        }
      },
      {
        "box": {
          "id": "o0",
          "maxclass": "outlet",
          "patching_rect": [
            30,
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
            145,
            20
          ],
          "text": "degree class 1..7"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            150,
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
            140,
            225,
            145,
            20
          ],
          "text": "Extended Scale Degree"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            300,
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
            290,
            225,
            145,
            20
          ],
          "text": "deviation (st)"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "outlet",
          "patching_rect": [
            420,
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
            145,
            20
          ],
          "text": "relative pitch (st)"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "outlet",
          "patching_rect": [
            550,
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
            540,
            225,
            145,
            20
          ],
          "text": "melodic degree interval"
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "outlet",
          "patching_rect": [
            700,
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
            690,
            225,
            145,
            20
          ],
          "text": "nearest diatonic MIDI"
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
      }
    ]
  }
}
