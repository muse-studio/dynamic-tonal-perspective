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
      480
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            760,
            22
          ],
          "text": "Scale Degree + Diatonic Third + Counterpoint Bass / Integrated Test"
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "patching_rect": [
            20,
            35,
            760,
            22
          ],
          "text": "Input only Lead MIDI pitch and Frame Origin. Example: origin=60, lead=60,62,64,65,67..."
        }
      },
      {
        "box": {
          "id": "leadlabel",
          "maxclass": "comment",
          "patching_rect": [
            20,
            75,
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
            98,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "originlabel",
          "maxclass": "comment",
          "patching_rect": [
            150,
            75,
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
            98,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "resetlabel",
          "maxclass": "comment",
          "patching_rect": [
            280,
            75,
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
            98,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "sdi",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            155,
            190,
            22
          ],
          "text": "../../max/ScaleDegreeInterpreter_fix1"
        }
      },
      {
        "box": {
          "id": "deglabel",
          "maxclass": "comment",
          "patching_rect": [
            20,
            195,
            90,
            20
          ],
          "text": "scale degree"
        }
      },
      {
        "box": {
          "id": "degree",
          "maxclass": "number",
          "patching_rect": [
            20,
            218,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "devlabel",
          "maxclass": "comment",
          "patching_rect": [
            100,
            195,
            90,
            20
          ],
          "text": "deviation"
        }
      },
      {
        "box": {
          "id": "deviation",
          "maxclass": "flonum",
          "patching_rect": [
            100,
            218,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "rellabel",
          "maxclass": "comment",
          "patching_rect": [
            190,
            195,
            100,
            20
          ],
          "text": "relative pitch"
        }
      },
      {
        "box": {
          "id": "relative",
          "maxclass": "flonum",
          "patching_rect": [
            190,
            218,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "third",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            285,
            190,
            22
          ],
          "text": "../../max/DiatonicThirdHarmonizer_fix1"
        }
      },
      {
        "box": {
          "id": "talabel",
          "maxclass": "comment",
          "patching_rect": [
            20,
            325,
            100,
            20
          ],
          "text": "third above"
        }
      },
      {
        "box": {
          "id": "thirdabove",
          "maxclass": "flonum",
          "patching_rect": [
            20,
            348,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tblabel",
          "maxclass": "comment",
          "patching_rect": [
            110,
            325,
            100,
            20
          ],
          "text": "third below"
        }
      },
      {
        "box": {
          "id": "thirdbelow",
          "maxclass": "flonum",
          "patching_rect": [
            110,
            348,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tailabel",
          "maxclass": "comment",
          "patching_rect": [
            200,
            325,
            100,
            20
          ],
          "text": "above interval"
        }
      },
      {
        "box": {
          "id": "thirdai",
          "maxclass": "flonum",
          "patching_rect": [
            200,
            348,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbilabel",
          "maxclass": "comment",
          "patching_rect": [
            290,
            325,
            100,
            20
          ],
          "text": "below interval"
        }
      },
      {
        "box": {
          "id": "thirdbi",
          "maxclass": "flonum",
          "patching_rect": [
            290,
            348,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bass",
          "maxclass": "newobj",
          "patching_rect": [
            430,
            285,
            245,
            22
          ],
          "text": "../../max/CounterpointBassGenerator_Phase1b"
        }
      },
      {
        "box": {
          "id": "bdlabel",
          "maxclass": "comment",
          "patching_rect": [
            430,
            325,
            90,
            20
          ],
          "text": "bass degree"
        }
      },
      {
        "box": {
          "id": "bassdegree",
          "maxclass": "number",
          "patching_rect": [
            430,
            348,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bplabel",
          "maxclass": "comment",
          "patching_rect": [
            510,
            325,
            110,
            20
          ],
          "text": "bass MIDI pitch"
        }
      },
      {
        "box": {
          "id": "basspitch",
          "maxclass": "flonum",
          "patching_rect": [
            510,
            348,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lmlabel",
          "maxclass": "comment",
          "patching_rect": [
            600,
            325,
            90,
            20
          ],
          "text": "lead motion"
        }
      },
      {
        "box": {
          "id": "leadmotion",
          "maxclass": "number",
          "patching_rect": [
            600,
            348,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bmlabel",
          "maxclass": "comment",
          "patching_rect": [
            680,
            325,
            90,
            20
          ],
          "text": "bass motion"
        }
      },
      {
        "box": {
          "id": "bassmotion",
          "maxclass": "number",
          "patching_rect": [
            680,
            348,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            410,
            750,
            40
          ],
          "text": "Phase 1b: Bass uses previous Lead/Bass state to prefer contrary or oblique motion. Chord inversions and strict counterpoint prohibitions are not implemented yet.",
          "linecount": 2
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
            "sdi",
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
            "degree",
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
            "deviation",
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
            "relative",
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
            "third",
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
            "third",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "third",
            0
          ],
          "destination": [
            "thirdabove",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "third",
            1
          ],
          "destination": [
            "thirdbelow",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "third",
            2
          ],
          "destination": [
            "thirdai",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "third",
            3
          ],
          "destination": [
            "thirdbi",
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
            "bass",
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
            "bass",
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
            "bass",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bass",
            0
          ],
          "destination": [
            "bassdegree",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bass",
            1
          ],
          "destination": [
            "basspitch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bass",
            2
          ],
          "destination": [
            "leadmotion",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bass",
            3
          ],
          "destination": [
            "bassmotion",
            0
          ]
        }
      }
    ]
  }
}
