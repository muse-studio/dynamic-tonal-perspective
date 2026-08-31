{
  "patcher": {
    "fileversion": 1,
    "appversion": { "major": 9, "minor": 1, "revision": 5, "architecture": "x64", "modernui": 1 },
    "classnamespace": "box",
    "rect": [ 80.0, 80.0, 620.0, 420.0 ],
    "boxes": [
      { "box": { "id": "left-in", "maxclass": "inlet", "index": 1, "comment": "audio L", "patching_rect": [ 40.0, 35.0, 25.0, 25.0 ] } },
      { "box": { "id": "right-in", "maxclass": "inlet", "index": 2, "comment": "audio R", "patching_rect": [ 260.0, 35.0, 25.0, 25.0 ] } },
      { "box": { "id": "shift-in", "maxclass": "inlet", "index": 3, "comment": "pitchShiftSemitones", "patching_rect": [ 470.0, 35.0, 25.0, 25.0 ] } },
      { "box": { "id": "shift-clip", "maxclass": "newobj", "text": "clip -6. 6.", "numinlets": 3, "numoutlets": 1, "outlettype": [ "float" ], "patching_rect": [ 430.0, 85.0, 78.0, 24.0 ] } },
      { "box": { "id": "ratio", "maxclass": "newobj", "text": "expr pow(2., $f1 / 12.)", "numinlets": 1, "numoutlets": 1, "outlettype": [ "float" ], "patching_rect": [ 430.0, 125.0, 145.0, 24.0 ] } },
      { "box": { "id": "smooth-pack", "maxclass": "newobj", "text": "pack 1. 45", "numinlets": 2, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 430.0, 165.0, 75.0, 24.0 ] } },
      { "box": { "id": "smooth-line", "maxclass": "newobj", "text": "line 1.", "numinlets": 3, "numoutlets": 2, "outlettype": [ "float", "bang" ], "patching_rect": [ 430.0, 205.0, 50.0, 24.0 ] } },
      { "box": { "id": "left-shift", "maxclass": "newobj", "text": "pfft~ gizmo_loadme 4096 4", "numinlets": 2, "numoutlets": 1, "outlettype": [ "signal" ], "patching_rect": [ 40.0, 245.0, 165.0, 24.0 ] } },
      { "box": { "id": "right-shift", "maxclass": "newobj", "text": "pfft~ gizmo_loadme 4096 4", "numinlets": 2, "numoutlets": 1, "outlettype": [ "signal" ], "patching_rect": [ 260.0, 245.0, 165.0, 24.0 ] } },
      { "box": { "id": "left-out", "maxclass": "outlet", "index": 1, "comment": "shifted audio L", "patching_rect": [ 40.0, 325.0, 25.0, 25.0 ] } },
      { "box": { "id": "right-out", "maxclass": "outlet", "index": 2, "comment": "shifted audio R", "patching_rect": [ 260.0, 325.0, 25.0, 25.0 ] } },
      { "box": { "id": "note", "maxclass": "comment", "text": "Same smoothed transposition ratio is applied independently to L/R; tempo is unchanged.", "patching_rect": [ 40.0, 375.0, 520.0, 24.0 ] } }
    ],
    "lines": [
      { "patchline": { "source": [ "left-in", 0 ], "destination": [ "left-shift", 0 ] } },
      { "patchline": { "source": [ "right-in", 0 ], "destination": [ "right-shift", 0 ] } },
      { "patchline": { "source": [ "shift-in", 0 ], "destination": [ "shift-clip", 0 ] } },
      { "patchline": { "source": [ "shift-clip", 0 ], "destination": [ "ratio", 0 ] } },
      { "patchline": { "source": [ "ratio", 0 ], "destination": [ "smooth-pack", 0 ] } },
      { "patchline": { "source": [ "smooth-pack", 0 ], "destination": [ "smooth-line", 0 ] } },
      { "patchline": { "source": [ "smooth-line", 0 ], "destination": [ "left-shift", 1 ], "order": 1 } },
      { "patchline": { "source": [ "smooth-line", 0 ], "destination": [ "right-shift", 1 ], "order": 0 } },
      { "patchline": { "source": [ "left-shift", 0 ], "destination": [ "left-out", 0 ] } },
      { "patchline": { "source": [ "right-shift", 0 ], "destination": [ "right-out", 0 ] } }
    ]
  }
}
