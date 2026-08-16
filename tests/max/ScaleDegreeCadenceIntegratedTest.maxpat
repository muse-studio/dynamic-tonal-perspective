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
      1020,
      540
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            980,
            20
          ],
          "text": "Phase 1f Integrated Test — Lead MIDI -> Extended Scale Degree -> Cadential Motion Evidence"
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "patching_rect": [
            20,
            35,
            980,
            20
          ],
          "text": "Input only Lead MIDI pitch and Frame Origin. Try B4(71)->C5(72), F5(77)->E5(76), D5(74)->C5(72)."
        }
      },
      {
        "box": {
          "id": "leadlab",
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
          "id": "originlab",
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
          "id": "resetlab",
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
          "id": "interp",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            150,
            250,
            22
          ],
          "text": "../../max/ScaleDegreeInterpreterExtended_v2"
        }
      },
      {
        "box": {
          "id": "deg",
          "maxclass": "number",
          "patching_rect": [
            20,
            205,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "ext",
          "maxclass": "number",
          "patching_rect": [
            95,
            205,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pos",
          "maxclass": "number",
          "patching_rect": [
            180,
            205,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dev",
          "maxclass": "flonum",
          "patching_rect": [
            265,
            205,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "rel",
          "maxclass": "flonum",
          "patching_rect": [
            350,
            205,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "steps",
          "maxclass": "number",
          "patching_rect": [
            435,
            205,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "near",
          "maxclass": "flonum",
          "patching_rect": [
            520,
            205,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "l0",
          "maxclass": "comment",
          "patching_rect": [
            20,
            230,
            70,
            20
          ],
          "text": "degree"
        }
      },
      {
        "box": {
          "id": "l1",
          "maxclass": "comment",
          "patching_rect": [
            95,
            230,
            80,
            20
          ],
          "text": "Extended"
        }
      },
      {
        "box": {
          "id": "l2",
          "maxclass": "comment",
          "patching_rect": [
            180,
            230,
            100,
            20
          ],
          "text": "Diatonic Pos"
        }
      },
      {
        "box": {
          "id": "l3",
          "maxclass": "comment",
          "patching_rect": [
            265,
            230,
            80,
            20
          ],
          "text": "deviation"
        }
      },
      {
        "box": {
          "id": "l4",
          "maxclass": "comment",
          "patching_rect": [
            350,
            230,
            80,
            20
          ],
          "text": "relative"
        }
      },
      {
        "box": {
          "id": "l5",
          "maxclass": "comment",
          "patching_rect": [
            435,
            230,
            90,
            20
          ],
          "text": "melodic steps"
        }
      },
      {
        "box": {
          "id": "l6",
          "maxclass": "comment",
          "patching_rect": [
            520,
            230,
            110,
            20
          ],
          "text": "nearest MIDI"
        }
      },
      {
        "box": {
          "id": "trig",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            150,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "prevreg",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            190,
            55,
            22
          ],
          "text": "zl reg"
        }
      },
      {
        "box": {
          "id": "prevnum",
          "maxclass": "number",
          "patching_rect": [
            650,
            230,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "currnum",
          "maxclass": "number",
          "patching_rect": [
            725,
            230,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pl",
          "maxclass": "comment",
          "patching_rect": [
            645,
            255,
            70,
            20
          ],
          "text": "prev degree"
        }
      },
      {
        "box": {
          "id": "cl",
          "maxclass": "comment",
          "patching_rect": [
            720,
            255,
            70,
            20
          ],
          "text": "curr degree"
        }
      },
      {
        "box": {
          "id": "cad",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            305,
            235,
            22
          ],
          "text": "../../max/CadentialMotionEvidence_Phase1f"
        }
      },
      {
        "box": {
          "id": "type",
          "maxclass": "number",
          "patching_rect": [
            650,
            360,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "strength",
          "maxclass": "flonum",
          "patching_rect": [
            725,
            360,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cand",
          "maxclass": "flonum",
          "patching_rect": [
            810,
            360,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "candclass",
          "maxclass": "number",
          "patching_rect": [
            915,
            360,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tl",
          "maxclass": "comment",
          "patching_rect": [
            645,
            385,
            80,
            20
          ],
          "text": "motion type"
        }
      },
      {
        "box": {
          "id": "sl",
          "maxclass": "comment",
          "patching_rect": [
            720,
            385,
            80,
            20
          ],
          "text": "strength"
        }
      },
      {
        "box": {
          "id": "col",
          "maxclass": "comment",
          "patching_rect": [
            805,
            385,
            110,
            20
          ],
          "text": "candidate origin"
        }
      },
      {
        "box": {
          "id": "ccl",
          "maxclass": "comment",
          "patching_rect": [
            910,
            385,
            90,
            20
          ],
          "text": "candidate class"
        }
      },
      {
        "box": {
          "id": "legend",
          "maxclass": "comment",
          "patching_rect": [
            20,
            455,
            950,
            60
          ],
          "text": "motion type: 1=VII->I, 2=IV->III, 3=II->I, 4=II->III, 5=IV->V, 6=VI->V. The operator emits evidence only; it does not update the Relative Tonal Frame.",
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
            "interp",
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
            "interp",
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
            "interp",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
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
            "interp",
            1
          ],
          "destination": [
            "ext",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            2
          ],
          "destination": [
            "pos",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            3
          ],
          "destination": [
            "dev",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            4
          ],
          "destination": [
            "rel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            5
          ],
          "destination": [
            "steps",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            6
          ],
          "destination": [
            "near",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            0
          ],
          "destination": [
            "trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trig",
            0
          ],
          "destination": [
            "currnum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trig",
            1
          ],
          "destination": [
            "prevreg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "prevreg",
            0
          ],
          "destination": [
            "prevnum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "prevreg",
            0
          ],
          "destination": [
            "cad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            0
          ],
          "destination": [
            "cad",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            5
          ],
          "destination": [
            "cad",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            6
          ],
          "destination": [
            "cad",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cad",
            0
          ],
          "destination": [
            "type",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cad",
            1
          ],
          "destination": [
            "strength",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cad",
            2
          ],
          "destination": [
            "cand",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cad",
            3
          ],
          "destination": [
            "candclass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "interp",
            0
          ],
          "destination": [
            "prevreg",
            1
          ]
        }
      }
    ]
  }
}
