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
      880,
      275
    ],
    "boxes": [
      {
        "box": {
          "id": "c",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            850,
            20
          ],
          "text": "Counterpoint Bass Generator / Phase 1d: motion + consonance + parallel P5/P8 avoidance"
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
            230,
            22
          ],
          "text": "js js/CounterpointBassPhase1d.js"
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
            110,
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
            120,
            225,
            110,
            20
          ],
          "text": "bass MIDI pitch"
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
            220,
            225,
            110,
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
            320,
            225,
            110,
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
            420,
            225,
            110,
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
            520,
            225,
            110,
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
            620,
            225,
            110,
            20
          ],
          "text": "parallel P5/P8"
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
