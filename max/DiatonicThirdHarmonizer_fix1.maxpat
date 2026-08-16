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
      730,
      330
    ],
    "boxes": [
      {
        "box": {
          "id": "c",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            500,
            20
          ],
          "text": "Diatonic Third Harmonizer / Phase 1: diatonic third above/below lead"
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
          "id": "degree",
          "maxclass": "inlet",
          "patching_rect": [
            220,
            50,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "degexpr",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            100,
            420,
            22
          ],
          "text": "expr 3.+($i1==1)+($i1==4)+($i1==5)"
        }
      },
      {
        "box": {
          "id": "belowexpr",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            140,
            480,
            22
          ],
          "text": "expr -3.-($i1==3)-($i1==6)-($i1==7)"
        }
      },
      {
        "box": {
          "id": "plus",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            200,
            60,
            22
          ],
          "text": "+ 0."
        }
      },
      {
        "box": {
          "id": "plus2",
          "maxclass": "newobj",
          "patching_rect": [
            130,
            200,
            60,
            22
          ],
          "text": "+ 0."
        }
      },
      {
        "box": {
          "id": "oa",
          "maxclass": "outlet",
          "patching_rect": [
            30,
            260,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "ob",
          "maxclass": "outlet",
          "patching_rect": [
            130,
            260,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "oai",
          "maxclass": "outlet",
          "patching_rect": [
            230,
            260,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "obi",
          "maxclass": "outlet",
          "patching_rect": [
            330,
            260,
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
            "plus",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lead",
            0
          ],
          "destination": [
            "plus2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degree",
            0
          ],
          "destination": [
            "degexpr",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degree",
            0
          ],
          "destination": [
            "belowexpr",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degexpr",
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
            "belowexpr",
            0
          ],
          "destination": [
            "plus2",
            1
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
            "oa",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "plus2",
            0
          ],
          "destination": [
            "ob",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "degexpr",
            0
          ],
          "destination": [
            "oai",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "belowexpr",
            0
          ],
          "destination": [
            "obi",
            0
          ]
        }
      }
    ]
  }
}