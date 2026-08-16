{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 1,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      150.0,
      150.0,
      350.0,
      350.0
    ],
    "boxes": [
      {
        "box": {
          "id": "v-in-audio",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            40.0,
            35.0,
            30.0,
            30.0
          ],
          "outlettype": [
            ""
          ],
          "comment": "audio signal"
        }
      },
      {
        "box": {
          "id": "v-in-interval",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            205.0,
            35.0,
            30.0,
            30.0
          ],
          "outlettype": [
            ""
          ],
          "comment": "target voice pitch (MIDI)"
        }
      },
      {
        "box": {
          "id": "v-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            205.0,
            120.0,
            82.0,
            22.0
          ],
          "text": "clip -24. 24.",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v-ratio",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            205.0,
            155.0,
            63.0,
            22.0
          ],
          "text": "transratio",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            205.0,
            190.0,
            75.0,
            22.0
          ],
          "text": "pack 1. 45",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            205.0,
            225.0,
            50.0,
            22.0
          ],
          "text": "line 1.",
          "outlettype": [
            "float",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "v-pfft",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            40.0,
            260.0,
            165.0,
            22.0
          ],
          "text": "pfft~ gizmo_loadme 4096 4",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "v-out",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            40.0,
            315.0,
            30.0,
            30.0
          ],
          "comment": "pitch shifted audio"
        }
      },
      {
        "box": {
          "id": "v-comment",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            38.0,
            10.0,
            250.0,
            20.0
          ],
          "text": "Smoothed voice pitch shifter"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "v-in-audio",
            0
          ],
          "destination": [
            "v-pfft",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-clip",
            0
          ],
          "destination": [
            "v-ratio",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-ratio",
            0
          ],
          "destination": [
            "v-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-pack",
            0
          ],
          "destination": [
            "v-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-line",
            0
          ],
          "destination": [
            "v-pfft",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-pfft",
            0
          ],
          "destination": [
            "v-out",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v-in-interval",
            0
          ],
          "destination": [
            "v-clip",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}