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
            430,
            20
          ],
          "text": "Scale Degree Interpreter / Phase 1: major scale, nearest diatonic degree"
        }
      },
      {
        "box": {
          "id": "lead",
          "maxclass": "inlet",
          "patching_rect": [
            30,
            50,
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
            210,
            50,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "pak",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            100,
            190,
            22
          ],
          "text": "pak 0. 60."
        }
      },
      {
        "box": {
          "id": "expr",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            145,
            650,
            22
          ],
          "text": "expr ((($f1-$f2)%12.)+12.)%12."
        }
      },
      {
        "box": {
          "id": "t",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            185,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "deg",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            230,
            700,
            22
          ],
          "text": "expr 1+($f1>=1.)+($f1>=3.)+($f1>=4.5)+($f1>=6.)+($f1>=8.)+($f1>=10.)"
        }
      },
      {
        "box": {
          "id": "deg_t",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            270,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "sel",
          "maxclass": "newobj",
          "patching_rect": [
            160,
            270,
            150,
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
            160,
            310,
            30,
            22
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "id": "m2",
          "maxclass": "message",
          "patching_rect": [
            195,
            310,
            30,
            22
          ],
          "text": "2."
        }
      },
      {
        "box": {
          "id": "m3",
          "maxclass": "message",
          "patching_rect": [
            230,
            310,
            30,
            22
          ],
          "text": "4."
        }
      },
      {
        "box": {
          "id": "m4",
          "maxclass": "message",
          "patching_rect": [
            265,
            310,
            30,
            22
          ],
          "text": "5."
        }
      },
      {
        "box": {
          "id": "m5",
          "maxclass": "message",
          "patching_rect": [
            300,
            310,
            30,
            22
          ],
          "text": "7."
        }
      },
      {
        "box": {
          "id": "m6",
          "maxclass": "message",
          "patching_rect": [
            335,
            310,
            30,
            22
          ],
          "text": "9."
        }
      },
      {
        "box": {
          "id": "m7",
          "maxclass": "message",
          "patching_rect": [
            370,
            310,
            35,
            22
          ],
          "text": "11."
        }
      },
      {
        "box": {
          "id": "minus",
          "maxclass": "newobj",
          "patching_rect": [
            160,
            350,
            60,
            22
          ],
          "text": "- 0."
        }
      },
      {
        "box": {
          "id": "outdeg",
          "maxclass": "outlet",
          "patching_rect": [
            30,
            405,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outdev",
          "maxclass": "outlet",
          "patching_rect": [
            160,
            405,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "outrel",
          "maxclass": "outlet",
          "patching_rect": [
            290,
            405,
            30,
            30
          ]
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
            "pak",
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
            "pak",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pak",
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
            "t",
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
            "deg",
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
            "minus",
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
            "outrel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deg",
            0
          ],
          "destination": [
            "deg_t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deg_t",
            0
          ],
          "destination": [
            "outdeg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deg_t",
            1
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
            "minus",
            1
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
            "minus",
            1
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
            "minus",
            1
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
            "minus",
            1
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
            "minus",
            1
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
            "minus",
            1
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
            "minus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "minus",
            0
          ],
          "destination": [
            "outdev",
            0
          ]
        }
      }
    ]
  }
}