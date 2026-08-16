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
    "classnamespace": "box",
    "rect": [
      0,
      0,
      740,
      450
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            20,
            600,
            28
          ],
          "text": "Tonality Evidence Phase 1 - manual test harness",
          "fontsize": 16.0
        }
      },
      {
        "box": {
          "id": "n1",
          "maxclass": "flonum",
          "patching_rect": [
            40,
            80,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "n2",
          "maxclass": "flonum",
          "patching_rect": [
            180,
            80,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lab1",
          "maxclass": "comment",
          "patching_rect": [
            35,
            55,
            120,
            20
          ],
          "text": "relativePitch"
        }
      },
      {
        "box": {
          "id": "lab2",
          "maxclass": "comment",
          "patching_rect": [
            170,
            55,
            160,
            20
          ],
          "text": "previousRelativePitch"
        }
      },
      {
        "box": {
          "id": "feat",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            135,
            170,
            22
          ],
          "text": "PitchFeatureExtractor"
        }
      },
      {
        "box": {
          "id": "maint",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            205,
            210,
            22
          ],
          "text": "FrameMaintenanceEvidence"
        }
      },
      {
        "box": {
          "id": "adj",
          "maxclass": "newobj",
          "patching_rect": [
            330,
            205,
            210,
            22
          ],
          "text": "FrameAdjustmentEvidence"
        }
      },
      {
        "box": {
          "id": "mout",
          "maxclass": "flonum",
          "patching_rect": [
            40,
            275,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "aout",
          "maxclass": "flonum",
          "patching_rect": [
            330,
            275,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dout",
          "maxclass": "flonum",
          "patching_rect": [
            470,
            275,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lm",
          "maxclass": "comment",
          "patching_rect": [
            35,
            305,
            170,
            20
          ],
          "text": "maintenanceEvidence"
        }
      },
      {
        "box": {
          "id": "la",
          "maxclass": "comment",
          "patching_rect": [
            325,
            305,
            170,
            20
          ],
          "text": "adjustmentEvidence"
        }
      },
      {
        "box": {
          "id": "ld",
          "maxclass": "comment",
          "patching_rect": [
            465,
            305,
            210,
            20
          ],
          "text": "originDifference"
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "patching_rect": [
            20,
            350,
            680,
            50
          ],
          "text": "Try relativePitch = 0.00, 0.10, 0.20, 0.30 while previousRelativePitch follows the previous value. frameResidual should grow with global detuning; maintenance still reflects local interval size."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "n1",
            0
          ],
          "destination": [
            "feat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "n2",
            0
          ],
          "destination": [
            "feat",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feat",
            0
          ],
          "destination": [
            "maint",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feat",
            1
          ],
          "destination": [
            "adj",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "maint",
            0
          ],
          "destination": [
            "mout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "adj",
            0
          ],
          "destination": [
            "aout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "adj",
            1
          ],
          "destination": [
            "dout",
            0
          ]
        }
      }
    ]
  }
}