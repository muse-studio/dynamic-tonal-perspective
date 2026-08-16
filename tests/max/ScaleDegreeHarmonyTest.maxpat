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
      520,
      350
    ],
    "boxes": [
      {
        "box": {
          "id": "c",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            650,
            20
          ],
          "text": "Phase 1 quick test: set frame origin, then lead MIDI pitch"
        }
      },
      {
        "box": {
          "id": "leadn",
          "maxclass": "flonum",
          "patching_rect": [
            30,
            55,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "originn",
          "maxclass": "flonum",
          "patching_rect": [
            170,
            55,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "sdi",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            105,
            190,
            22
          ],
          "text": "../../max/ScaleDegreeInterpreter"
        }
      },
      {
        "box": {
          "id": "degn",
          "maxclass": "number",
          "patching_rect": [
            30,
            155,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "devn",
          "maxclass": "flonum",
          "patching_rect": [
            110,
            155,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "reln",
          "maxclass": "flonum",
          "patching_rect": [
            200,
            155,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dth",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            215,
            190,
            22
          ],
          "text": "../../max/DiatonicThirdHarmonizer"
        }
      },
      {
        "box": {
          "id": "above",
          "maxclass": "flonum",
          "patching_rect": [
            30,
            265,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "below",
          "maxclass": "flonum",
          "patching_rect": [
            120,
            265,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "ai",
          "maxclass": "flonum",
          "patching_rect": [
            220,
            265,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bi",
          "maxclass": "flonum",
          "patching_rect": [
            310,
            265,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "l1",
          "maxclass": "comment",
          "patching_rect": [
            30,
            290,
            80,
            20
          ],
          "text": "third above"
        }
      },
      {
        "box": {
          "id": "l2",
          "maxclass": "comment",
          "patching_rect": [
            120,
            290,
            80,
            20
          ],
          "text": "third below"
        }
      },
      {
        "box": {
          "id": "l3",
          "maxclass": "comment",
          "patching_rect": [
            220,
            290,
            90,
            20
          ],
          "text": "above interval"
        }
      },
      {
        "box": {
          "id": "l4",
          "maxclass": "comment",
          "patching_rect": [
            310,
            290,
            90,
            20
          ],
          "text": "below interval"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "leadn",
            0
          ],
          "destination": [
            "sdi",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "originn",
            0
          ],
          "destination": [
            "sdi",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sdi",
            0
          ],
          "destination": [
            "degn",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sdi",
            1
          ],
          "destination": [
            "devn",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sdi",
            2
          ],
          "destination": [
            "reln",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "leadn",
            0
          ],
          "destination": [
            "dth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sdi",
            0
          ],
          "destination": [
            "dth",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dth",
            0
          ],
          "destination": [
            "above",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dth",
            1
          ],
          "destination": [
            "below",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dth",
            2
          ],
          "destination": [
            "ai",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dth",
            3
          ],
          "destination": [
            "bi",
            0
          ]
        }
      }
    ]
  }
}
