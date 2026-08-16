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
      960,
      285
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            920,
            20
          ],
          "text": "Cadential Motion Evidence / Phase 1f — local support for candidate Frame Origin; no state update"
        }
      },
      {
        "box": {
          "id": "p",
          "maxclass": "inlet",
          "patching_rect": [
            25,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "c",
          "maxclass": "inlet",
          "patching_rect": [
            175,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "s",
          "maxclass": "inlet",
          "patching_rect": [
            325,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "m",
          "maxclass": "inlet",
          "patching_rect": [
            475,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "pl",
          "maxclass": "comment",
          "patching_rect": [
            15,
            88,
            130,
            20
          ],
          "text": "previous degree class"
        }
      },
      {
        "box": {
          "id": "cl",
          "maxclass": "comment",
          "patching_rect": [
            160,
            88,
            130,
            20
          ],
          "text": "current degree class"
        }
      },
      {
        "box": {
          "id": "sl",
          "maxclass": "comment",
          "patching_rect": [
            305,
            88,
            140,
            20
          ],
          "text": "melodic diatonic steps"
        }
      },
      {
        "box": {
          "id": "ml",
          "maxclass": "comment",
          "patching_rect": [
            455,
            88,
            170,
            20
          ],
          "text": "current nearest MIDI"
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            130,
            255,
            22
          ],
          "text": "js js/CadentialMotionEvidence_Phase1f.js"
        }
      },
      {
        "box": {
          "id": "o0",
          "maxclass": "outlet",
          "patching_rect": [
            25,
            195,
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
            232,
            150,
            20
          ],
          "text": "motion type"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            165,
            195,
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
            160,
            232,
            150,
            20
          ],
          "text": "strength"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            305,
            195,
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
            300,
            232,
            150,
            20
          ],
          "text": "candidate origin MIDI"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "outlet",
          "patching_rect": [
            485,
            195,
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
            480,
            232,
            150,
            20
          ],
          "text": "candidate class"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "p",
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
            "c",
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
            "s",
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
            "m",
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
      }
    ]
  }
}
