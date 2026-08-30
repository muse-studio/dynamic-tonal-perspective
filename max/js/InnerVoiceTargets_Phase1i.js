// InnerVoiceTargets_Phase1i.js
// Minimal SIGMUS Phase 1i inner-voice target generator.
// inlet 0: leadScaleDegreeClass (1..7)
// inlet 1: frameOriginMIDI
// inlet 2: currentPitch (interpreted/observed MIDI; used only for register preference)
// outlets: voice1TargetPitch, voice2TargetPitch, voice1Degree, voice2Degree
// Major scale only. Harmony table is deliberately provisional for the demo.
inlets=3; outlets=4;
var leadDegree=null, frameOrigin=null, currentPitch=60;
var prev1=null, prev2=null;
var offsets=[0,0,2,4,5,7,9,11];
var table={1:[3,5],2:[4,6],3:[5,1],4:[6,1],5:[7,2],6:[1,3],7:[2,4]};
function msg_int(v){input(v);} function msg_float(v){input(v);}
function input(v){ if(inlet===0) leadDegree=Math.round(v); else if(inlet===1) frameOrigin=v; else currentPitch=v; calculate(); }
function reset(){prev1=null;prev2=null;}
function candidates(degree,lo,hi){var a=[]; if(frameOrigin===null)return a; var pc=frameOrigin+offsets[degree]; for(var k=-5;k<=5;k++){var p=pc+12*k;if(p>=lo&&p<=hi)a.push(p);} return a;}
function choose(degree,lo,hi,prev,desired){var a=candidates(degree,lo,hi); if(!a.length)return null; var best=a[0],bc=1e9; for(var i=0;i<a.length;i++){var p=a[i]; var c=Math.abs(p-desired); if(prev!==null)c+=0.8*Math.abs(p-prev); if(p>currentPitch+7)c+=4; if(c<bc){bc=c;best=p;}} return best;}
function calculate(){if(frameOrigin===null||leadDegree===null||leadDegree<1||leadDegree>7)return; var d=table[leadDegree]; var t1=choose(d[0],55,79,prev1,currentPitch-4); var t2=choose(d[1],48,72,prev2,currentPitch-8); if(t1===null||t2===null)return; prev1=t1;prev2=t2; outlet(3,d[1]);outlet(2,d[0]);outlet(1,t2);outlet(0,t1);}
