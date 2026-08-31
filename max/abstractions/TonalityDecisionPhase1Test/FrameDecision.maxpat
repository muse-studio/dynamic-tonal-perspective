{
  "patcher": {
    "fileversion": 1,
    "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
    "classnamespace": "box",
    "rect": [0, 0, 780, 430],
    "boxes": [
      {"box":{"id":"in1","maxclass":"inlet","patching_rect":[60,70,30,30]}},
      {"box":{"id":"c1","maxclass":"comment","patching_rect":[25,30,450,25],"text":"list: maintenanceEvidence adjustmentEvidence estimatedOriginDifference"}},
      {"box":{"id":"js1","maxclass":"newobj","patching_rect":[60,145,220,22],"text":"js FrameDecisionPhase1.js"}},
      {"box":{"id":"o1","maxclass":"outlet","patching_rect":[60,275,30,30]}},
      {"box":{"id":"o2","maxclass":"outlet","patching_rect":[175,275,30,30]}},
      {"box":{"id":"o3","maxclass":"outlet","patching_rect":[300,275,30,30]}},
      {"box":{"id":"c2","maxclass":"comment","patching_rect":[35,320,120,25],"text":"updateTypeCode"}},
      {"box":{"id":"c3","maxclass":"comment","patching_rect":[155,320,170,25],"text":"estimatedOriginDifference"}},
      {"box":{"id":"c4","maxclass":"comment","patching_rect":[295,350,120,25],"text":"updateTypeName"}},
      {"box":{"id":"c5","maxclass":"comment","patching_rect":[350,120,350,70],"text":"Phase 1: adjustmentEvidence >= 0.4 in the same direction for 3 consecutive observations -> Adjusted. Otherwise Maintained."}}
    ],
    "lines": [
      {"patchline":{"source":["in1",0],"destination":["js1",0]}},
      {"patchline":{"source":["js1",0],"destination":["o1",0]}},
      {"patchline":{"source":["js1",1],"destination":["o2",0]}},
      {"patchline":{"source":["js1",2],"destination":["o3",0]}}
    ]
  }
}
