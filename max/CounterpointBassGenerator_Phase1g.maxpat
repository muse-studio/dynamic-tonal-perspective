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
      1020,
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
            1000,
            20
          ],
          "text": "Counterpoint Bass Generator / Phase 1g — motion + consonance + parallel-perfect avoidance + cadential bias"
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
            160,
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
            290,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "ctype",
          "maxclass": "inlet",
          "patching_rect": [
            420,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "cstrength",
          "maxclass": "inlet",
          "patching_rect": [
            550,
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
            120,
            235,
            22
          ],
          "text": "js js/CounterpointBassPhase1g.js"
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
            25,
            225,
            125,
            20
          ],
          "text": "bass degree"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            130,
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
            125,
            225,
            125,
            20
          ],
          "text": "bass MIDI"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            230,
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
            225,
            225,
            125,
            20
          ],
          "text": "lead motion"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "outlet",
          "patching_rect": [
            330,
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
            325,
            225,
            125,
            20
          ],
          "text": "bass motion"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "outlet",
          "patching_rect": [
            430,
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
            425,
            225,
            125,
            20
          ],
          "text": "consonance"
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "outlet",
          "patching_rect": [
            530,
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
            525,
            225,
            125,
            20
          ],
          "text": "interval class"
        }
      },
      {
        "box": {
          "id": "o6",
          "maxclass": "outlet",
          "patching_rect": [
            630,
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
            625,
            225,
            125,
            20
          ],
          "text": "parallel P5/P8"
        }
      },
      {
        "box": {
          "id": "o7",
          "maxclass": "outlet",
          "patching_rect": [
            750,
            185,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "l7",
          "maxclass": "comment",
          "patching_rect": [
            745,
            225,
            125,
            20
          ],
          "text": "cadence score"
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
            "ctype",
            0
          ],
          "destination": [
            "js",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cstrength",
            0
          ],
          "destination": [
            "js",
            4
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
      },
      {
        "patchline": {
          "source": [
            "js",
            7
          ],
          "destination": [
            "o7",
            0
          ]
        }
      }
    ]
  }
}
