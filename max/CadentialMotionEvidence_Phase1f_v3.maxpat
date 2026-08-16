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
      980,
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
            950,
            20
          ],
          "text": "Cadential Motion Evidence / Phase 1f v3 — handles integer MIDI messages; evaluate on degree-class arrival"
        }
      },
      {
        "box": {
          "id": "c",
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
          "id": "s",
          "maxclass": "inlet",
          "patching_rect": [
            220,
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
            410,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "cl",
          "maxclass": "comment",
          "patching_rect": [
            15,
            88,
            150,
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
            200,
            88,
            160,
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
            390,
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
            30,
            130,
            270,
            22
          ],
          "text": "js js/CadentialMotionEvidence_Phase1f_v3.js"
        }
      },
      {
        "box": {
          "id": "o0",
          "maxclass": "outlet",
          "patching_rect": [
            30,
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
            25,
            232,
            155,
            20
          ],
          "text": "prev degree"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "outlet",
          "patching_rect": [
            150,
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
            145,
            232,
            155,
            20
          ],
          "text": "motion type"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "outlet",
          "patching_rect": [
            270,
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
            265,
            232,
            155,
            20
          ],
          "text": "strength"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "outlet",
          "patching_rect": [
            390,
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
            385,
            232,
            155,
            20
          ],
          "text": "candidate origin MIDI"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "outlet",
          "patching_rect": [
            560,
            195,
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
            555,
            232,
            155,
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
            "c",
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
            "s",
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
            "m",
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
      }
    ]
  }
}
