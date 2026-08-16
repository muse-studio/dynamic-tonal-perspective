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
      820,
      280
    ],
    "boxes": [
      {
        "box": {
          "id": "c",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            780,
            20
          ],
          "text": "Counterpoint Bass Generator / Phase 1c: motion + vertical consonance scoring"
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
          "text": "js js/CounterpointBassPhase1c.js"
        }
      },
      {
        "box": {
          "id": "bd",
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
          "id": "bp",
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
          "id": "lm",
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
          "id": "bm",
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
          "id": "cc",
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
          "id": "l1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            225,
            90,
            20
          ],
          "text": "bass degree"
        }
      },
      {
        "box": {
          "id": "l2",
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
          "id": "l3",
          "maxclass": "comment",
          "patching_rect": [
            220,
            225,
            100,
            20
          ],
          "text": "lead motion"
        }
      },
      {
        "box": {
          "id": "l4",
          "maxclass": "comment",
          "patching_rect": [
            320,
            225,
            100,
            20
          ],
          "text": "bass motion"
        }
      },
      {
        "box": {
          "id": "l5",
          "maxclass": "comment",
          "patching_rect": [
            420,
            225,
            190,
            20
          ],
          "text": "consonance: 2=3rd/6th, 1=P5/P8, 0=dissonant"
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
            "bd",
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
            "bp",
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
            "lm",
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
            "bm",
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
            "cc",
            0
          ]
        }
      }
    ]
  }
}
