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
      900,
      330
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            900,
            20
          ],
          "text": "Cadential Motion Evidence Test — enter previous/current degree, melodic steps, current nearest MIDI"
        }
      },
      {
        "box": {
          "id": "p",
          "maxclass": "number",
          "patching_rect": [
            20,
            65,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "c",
          "maxclass": "number",
          "patching_rect": [
            120,
            65,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "s",
          "maxclass": "number",
          "patching_rect": [
            220,
            65,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "m",
          "maxclass": "flonum",
          "patching_rect": [
            320,
            65,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pl",
          "maxclass": "comment",
          "patching_rect": [
            20,
            90,
            80,
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
            120,
            90,
            80,
            20
          ],
          "text": "curr degree"
        }
      },
      {
        "box": {
          "id": "sl",
          "maxclass": "comment",
          "patching_rect": [
            220,
            90,
            90,
            20
          ],
          "text": "steps"
        }
      },
      {
        "box": {
          "id": "ml",
          "maxclass": "comment",
          "patching_rect": [
            320,
            90,
            110,
            20
          ],
          "text": "current MIDI"
        }
      },
      {
        "box": {
          "id": "obj",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            135,
            235,
            22
          ],
          "text": "../../max/CadentialMotionEvidence_Phase1f"
        }
      },
      {
        "box": {
          "id": "ot",
          "maxclass": "number",
          "patching_rect": [
            20,
            195,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "os",
          "maxclass": "flonum",
          "patching_rect": [
            120,
            195,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "oc",
          "maxclass": "flonum",
          "patching_rect": [
            230,
            195,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "occ",
          "maxclass": "number",
          "patching_rect": [
            360,
            195,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "otl",
          "maxclass": "comment",
          "patching_rect": [
            20,
            220,
            80,
            20
          ],
          "text": "motion type"
        }
      },
      {
        "box": {
          "id": "osl",
          "maxclass": "comment",
          "patching_rect": [
            120,
            220,
            80,
            20
          ],
          "text": "strength"
        }
      },
      {
        "box": {
          "id": "ocl",
          "maxclass": "comment",
          "patching_rect": [
            230,
            220,
            120,
            20
          ],
          "text": "candidate origin"
        }
      },
      {
        "box": {
          "id": "occl",
          "maxclass": "comment",
          "patching_rect": [
            360,
            220,
            120,
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
            255,
            820,
            40
          ],
          "text": "type: 1=VII→I, 2=IV→III, 3=II→I, 4=II→III, 5=IV→V, 6=VI→V. Example: B4→C5 = prev 7, curr 1, steps +1, current MIDI 72.",
          "linecount": 2
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
            "obj",
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
            "obj",
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
            "obj",
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
            "obj",
            3
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
            "ot",
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
            "os",
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
            "oc",
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
            "occ",
            0
          ]
        }
      }
    ]
  }
}
