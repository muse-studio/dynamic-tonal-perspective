# Dynamic Tonal Perspective
A real-time musical cognition framework for generating harmonized singing based on subjective tonal perception.


This repository contains an ongoing research prototype. The source code is publicly available for research visibility, but the project is not currently open for external contributions or reuse without prior permission.

## Operator-based modular architecture

### Phase 1
```
Microphone
      │
      ▼
PitchOperator
      │
      ▼
HarmonyGenerator
      │
voiceInterval
      │
      ▼
VoiceManager (poly~)
      │
      ▼
VoiceGenerator × N
      │
      ▼
Output
```

### Phase 2
```
Microphone
      │
      ▼
VoiceActivityOperator
      │
      ▼
PitchOperator
      │
      ▼
TonalityOperator
      │
      ▼
HarmonyGenerator
      │
      ▼
VoiceManager
      │
      ▼
VoiceGenerator
```
