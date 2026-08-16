{
  "patcher": {
    "fileversion": 1,
    "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
    "classnamespace": "box",
    "rect": [0, 0, 980, 620],
    "boxes": [
      {"box":{"id":"title","maxclass":"comment","patching_rect":[30,20,600,25],"text":"Tonality Decision Phase 1 Test: Maintained / Adjusted -> Frame Origin Update"}},
      {"box":{"id":"m","maxclass":"flonum","patching_rect":[40,90,90,22]}},
      {"box":{"id":"a","maxclass":"flonum","patching_rect":[170,90,90,22]}},
      {"box":{"id":"d","maxclass":"flonum","patching_rect":[300,90,90,22]}},
      {"box":{"id":"cm","maxclass":"comment","patching_rect":[35,60,120,20],"text":"maintenanceEvidence"}},
      {"box":{"id":"ca","maxclass":"comment","patching_rect":[165,60,120,20],"text":"adjustmentEvidence"}},
      {"box":{"id":"cd","maxclass":"comment","patching_rect":[295,60,180,20],"text":"estimatedOriginDifference"}},
      {"box":{"id":"pak1","maxclass":"newobj","patching_rect":[120,150,200,22],"text":"pak 0. 0. 0."}},
      {"box":{"id":"dec","maxclass":"newobj","patching_rect":[120,210,110,22],"text":"FrameDecision"}},
      {"box":{"id":"code","maxclass":"number","patching_rect":[90,280,70,22]}},
      {"box":{"id":"diff","maxclass":"flonum","patching_rect":[190,280,90,22]}},
      {"box":{"id":"type","maxclass":"message","patching_rect":[310,280,110,22],"text":"Maintained"}},
      {"box":{"id":"pak2","maxclass":"newobj","patching_rect":[130,345,100,22],"text":"pak 0 0."}},
      {"box":{"id":"upd","maxclass":"newobj","patching_rect":[130,405,100,22],"text":"FrameUpdater"}},
      {"box":{"id":"origin","maxclass":"flonum","patching_rect":[100,485,100,22]}},
      {"box":{"id":"applied","maxclass":"flonum","patching_rect":[230,485,100,22]}},
      {"box":{"id":"status","maxclass":"message","patching_rect":[360,485,100,22],"text":"Current"}},
      {"box":{"id":"init0","maxclass":"message","patching_rect":[520,100,70,22],"text":"init 0."}},
      {"box":{"id":"alpha","maxclass":"message","patching_rect":[610,100,80,22],"text":"alpha 0.1"}},
      {"box":{"id":"reset","maxclass":"message","patching_rect":[710,100,80,22],"text":"reset 0."}},
      {"box":{"id":"hint","maxclass":"comment","patching_rect":[520,160,390,150],"text":"Test example:\n1) click init 0.\n2) set adjustmentEvidence=0.6 and estimatedOriginDifference=0.3.\n3) change maintenanceEvidence three times (or resend values) so three observations arrive.\n4) updateType becomes Adjusted; frameOriginOffset advances by 0.03 each subsequent Adjusted observation.\n5) reverse estimatedOriginDifference sign to confirm hysteresis counter resets."}}
    ],
    "lines": [
      {"patchline":{"source":["m",0],"destination":["pak1",0]}},
      {"patchline":{"source":["a",0],"destination":["pak1",1]}},
      {"patchline":{"source":["d",0],"destination":["pak1",2]}},
      {"patchline":{"source":["pak1",0],"destination":["dec",0]}},
      {"patchline":{"source":["dec",0],"destination":["code",0]}},
      {"patchline":{"source":["dec",1],"destination":["diff",0]}},
      {"patchline":{"source":["dec",2],"destination":["type",1]}},
      {"patchline":{"source":["dec",0],"destination":["pak2",0]}},
      {"patchline":{"source":["dec",1],"destination":["pak2",1]}},
      {"patchline":{"source":["pak2",0],"destination":["upd",0]}},
      {"patchline":{"source":["upd",0],"destination":["origin",0]}},
      {"patchline":{"source":["upd",1],"destination":["applied",0]}},
      {"patchline":{"source":["upd",2],"destination":["status",1]}},
      {"patchline":{"source":["init0",0],"destination":["upd",0]}},
      {"patchline":{"source":["alpha",0],"destination":["upd",0]}},
      {"patchline":{"source":["reset",0],"destination":["upd",0]}}
    ]
  }
}
