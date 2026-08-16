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
      800,
      270
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            820,
            20
          ],
          "text": "Extended Scale Degree Test — enter Frame Origin, then Lead MIDI pitches"
        }
      },
      {
        "box": {
          "id": "leadlab",
          "maxclass": "comment",
          "patching_rect": [
            20,
            50,
            120,
            20
          ],
          "text": "Lead MIDI pitch"
        }
      },
      {
        "box": {
          "id": "lead",
          "maxclass": "flonum",
          "patching_rect": [
            20,
            72,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "origlab",
          "maxclass": "comment",
          "patching_rect": [
            150,
            50,
            120,
            20
          ],
          "text": "Frame Origin"
        }
      },
      {
        "box": {
          "id": "origin",
          "maxclass": "flonum",
          "patching_rect": [
            150,
            72,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "resetlab",
          "maxclass": "comment",
          "patching_rect": [
            280,
            50,
            100,
            20
          ],
          "text": "Reset history"
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "button",
          "patching_rect": [
            280,
            72,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "obj",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            125,
            230,
            22
          ],
          "text": "../../max/ScaleDegreeInterpreterExtended"
        }
      },
      {
        "box": {
          "id": "n0",
          "maxclass": "number",
          "patching_rect": [
            20,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab0",
          "maxclass": "comment",
          "patching_rect": [
            20,
            210,
            115,
            20
          ],
          "text": "degree class"
        }
      },
      {
        "box": {
          "id": "n1",
          "maxclass": "number",
          "patching_rect": [
            120,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab1",
          "maxclass": "comment",
          "patching_rect": [
            120,
            210,
            115,
            20
          ],
          "text": "Extended degree"
        }
      },
      {
        "box": {
          "id": "n2",
          "maxclass": "flonum",
          "patching_rect": [
            250,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab2",
          "maxclass": "comment",
          "patching_rect": [
            250,
            210,
            115,
            20
          ],
          "text": "deviation"
        }
      },
      {
        "box": {
          "id": "n3",
          "maxclass": "flonum",
          "patching_rect": [
            350,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab3",
          "maxclass": "comment",
          "patching_rect": [
            350,
            210,
            115,
            20
          ],
          "text": "relative pitch"
        }
      },
      {
        "box": {
          "id": "n4",
          "maxclass": "number",
          "patching_rect": [
            470,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab4",
          "maxclass": "comment",
          "patching_rect": [
            470,
            210,
            115,
            20
          ],
          "text": "melodic interval"
        }
      },
      {
        "box": {
          "id": "n5",
          "maxclass": "flonum",
          "patching_rect": [
            600,
            185,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab5",
          "maxclass": "comment",
          "patching_rect": [
            600,
            210,
            115,
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
            "obj",
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
            "obj",
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
            "obj",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            0
          ],
          "destination": [
            "n0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            1
          ],
          "destination": [
            "n1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            2
          ],
          "destination": [
            "n2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            3
          ],
          "destination": [
            "n3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            4
          ],
          "destination": [
            "n4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj",
            5
          ],
          "destination": [
            "n5",
            0
          ]
        }
      }
    ]
  }
}
