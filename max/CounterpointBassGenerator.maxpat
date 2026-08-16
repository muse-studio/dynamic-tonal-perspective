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
      760,
      470
    ],
    "boxes": [
      {
        "box": {
          "id": "c",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            720,
            20
          ],
          "text": "Counterpoint Bass Generator / Phase 1a: scale-degree rule + bass register"
        }
      },
      {
        "box": {
          "id": "leaddeg",
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
            230,
            55,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "sel",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            105,
            155,
            22
          ],
          "text": "select 1 2 3 4 5 6 7"
        }
      },
      {
        "box": {
          "id": "m1",
          "maxclass": "message",
          "patching_rect": [
            30,
            145,
            30,
            22
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "m2",
          "maxclass": "message",
          "patching_rect": [
            65,
            145,
            30,
            22
          ],
          "text": "5"
        }
      },
      {
        "box": {
          "id": "m3",
          "maxclass": "message",
          "patching_rect": [
            100,
            145,
            30,
            22
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "m4",
          "maxclass": "message",
          "patching_rect": [
            135,
            145,
            30,
            22
          ],
          "text": "4"
        }
      },
      {
        "box": {
          "id": "m5",
          "maxclass": "message",
          "patching_rect": [
            170,
            145,
            30,
            22
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "m6",
          "maxclass": "message",
          "patching_rect": [
            205,
            145,
            30,
            22
          ],
          "text": "4"
        }
      },
      {
        "box": {
          "id": "m7",
          "maxclass": "message",
          "patching_rect": [
            240,
            145,
            30,
            22
          ],
          "text": "5"
        }
      },
      {
        "box": {
          "id": "t",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            190,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "degoff",
          "maxclass": "newobj",
          "patching_rect": [
            120,
            190,
            165,
            22
          ],
          "text": "select 1 2 3 4 5 6 7"
        }
      },
      {
        "box": {
          "id": "o1",
          "maxclass": "message",
          "patching_rect": [
            120,
            230,
            30,
            22
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "message",
          "patching_rect": [
            155,
            230,
            30,
            22
          ],
          "text": "2."
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "message",
          "patching_rect": [
            190,
            230,
            30,
            22
          ],
          "text": "4."
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "message",
          "patching_rect": [
            225,
            230,
            30,
            22
          ],
          "text": "5."
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "message",
          "patching_rect": [
            260,
            230,
            30,
            22
          ],
          "text": "7."
        }
      },
      {
        "box": {
          "id": "o6",
          "maxclass": "message",
          "patching_rect": [
            295,
            230,
            30,
            22
          ],
          "text": "9."
        }
      },
      {
        "box": {
          "id": "o7",
          "maxclass": "message",
          "patching_rect": [
            330,
            230,
            35,
            22
          ],
          "text": "11."
        }
      },
      {
        "box": {
          "id": "minus12",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            285,
            55,
            22
          ],
          "text": "- 12."
        }
      },
      {
        "box": {
          "id": "plus",
          "maxclass": "newobj",
          "patching_rect": [
            120,
            330,
            55,
            22
          ],
          "text": "+ 0."
        }
      },
      {
        "box": {
          "id": "bassdegout",
          "maxclass": "outlet",
          "patching_rect": [
            30,
            385,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "basspitchout",
          "maxclass": "outlet",
          "patching_rect": [
            120,
            385,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "lab1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            420,
            120,
            20
          ],
          "text": "out 1: bass degree"
        }
      },
      {
        "box": {
          "id": "lab2",
          "maxclass": "comment",
          "patching_rect": [
            120,
            420,
            150,
            20
          ],
          "text": "out 2: bass MIDI pitch"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "sel",
            0
          ],
          "destination": [
            "m1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m1",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            1
          ],
          "destination": [
            "m2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m2",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            2
          ],
          "destination": [
            "m3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m3",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            3
          ],
          "destination": [
            "m4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m4",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            4
          ],
          "destination": [
            "m5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m5",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            5
          ],
          "destination": [
            "m6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m6",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel",
            6
          ],
          "destination": [
            "m7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m7",
            0
          ],
          "destination": [
            "t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "leaddeg",
            0
          ],
          "destination": [
            "sel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "t",
            0
          ],
          "destination": [
            "bassdegout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "t",
            1
          ],
          "destination": [
            "degoff",
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
            "minus12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "minus12",
            0
          ],
          "destination": [
            "plus",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "plus",
            0
          ],
          "destination": [
            "basspitchout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
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
            "o1",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            1
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
            "o2",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            2
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
            "o3",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            3
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
            "o4",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            4
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
            "o5",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            5
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
            "o6",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degoff",
            6
          ],
          "destination": [
            "o7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o7",
            0
          ],
          "destination": [
            "plus",
            1
          ]
        }
      }
    ]
  }
}