import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup144
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9216 : List WordIR.Op := [.badd 9172 9258]
def bytes9216 : Bytes := ("    let r0000242b: u32 = r000023d4.wrapping_add(r0000242a);\n" : String).toByteArray.data.toList
theorem checked9216 : bytes9216=statementBytes 9259 (op9216.map lower) ∧ bytes9216.length=60 := by core033_kernel_decide
def op9217 : List WordIR.Op := [.band 9253 9226]
def bytes9217 : Bytes := ("    let r0000242c: u32 = r00002425 & r0000240a;\n" : String).toByteArray.data.toList
theorem checked9217 : bytes9217=statementBytes 9260 (op9217.map lower) ∧ bytes9217.length=48 := by core033_kernel_decide
def op9218 : List WordIR.Op := [.bnot 9253]
def bytes9218 : Bytes := ("    let r0000242d: u32 = !r00002425;\n" : String).toByteArray.data.toList
theorem checked9218 : bytes9218=statementBytes 9261 (op9218.map lower) ∧ bytes9218.length=37 := by core033_kernel_decide
def op9219 : List WordIR.Op := [.band 9261 9199]
def bytes9219 : Bytes := ("    let r0000242e: u32 = r0000242d & r000023ef;\n" : String).toByteArray.data.toList
theorem checked9219 : bytes9219=statementBytes 9262 (op9219.map lower) ∧ bytes9219.length=48 := by core033_kernel_decide
def op9220 : List WordIR.Op := [.bxor 9260 9262]
def bytes9220 : Bytes := ("    let r0000242f: u32 = r0000242c ^ r0000242e;\n" : String).toByteArray.data.toList
theorem checked9220 : bytes9220=statementBytes 9263 (op9220.map lower) ∧ bytes9220.length=48 := by core033_kernel_decide
def op9221 : List WordIR.Op := [.badd 9259 9263]
def bytes9221 : Bytes := ("    let r00002430: u32 = r0000242b.wrapping_add(r0000242f);\n" : String).toByteArray.data.toList
theorem checked9221 : bytes9221=statementBytes 9264 (op9221.map lower) ∧ bytes9221.length=60 := by core033_kernel_decide
def op9222 : List WordIR.Op := [.literal (BitVec.ofNat 32 3329325298)]
def bytes9222 : Bytes := ("    let r00002431: u32 = 0xc67178f2_u32;\n" : String).toByteArray.data.toList
theorem checked9222 : bytes9222=statementBytes 9265 (op9222.map lower) ∧ bytes9222.length=41 := by core033_kernel_decide
def op9223 : List WordIR.Op := [.badd 9264 9265]
def bytes9223 : Bytes := ("    let r00002432: u32 = r00002430.wrapping_add(r00002431);\n" : String).toByteArray.data.toList
theorem checked9223 : bytes9223=statementBytes 9266 (op9223.map lower) ∧ bytes9223.length=60 := by core033_kernel_decide
def op9224 : List WordIR.Op := [.badd 9266 7552]
def bytes9224 : Bytes := ("    let r00002433: u32 = r00002432.wrapping_add(r00001d80);\n" : String).toByteArray.data.toList
theorem checked9224 : bytes9224=statementBytes 9267 (op9224.map lower) ∧ bytes9224.length=60 := by core033_kernel_decide
def op9225 : List WordIR.Op := [.rotr 9252 2]
def bytes9225 : Bytes := ("    let r00002434: u32 = r00002424.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9225 : bytes9225=statementBytes 9268 (op9225.map lower) ∧ bytes9225.length=65 := by core033_kernel_decide
def op9226 : List WordIR.Op := [.rotr 9252 13]
def bytes9226 : Bytes := ("    let r00002435: u32 = r00002424.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9226 : bytes9226=statementBytes 9269 (op9226.map lower) ∧ bytes9226.length=65 := by core033_kernel_decide
def op9227 : List WordIR.Op := [.bxor 9268 9269]
def bytes9227 : Bytes := ("    let r00002436: u32 = r00002434 ^ r00002435;\n" : String).toByteArray.data.toList
theorem checked9227 : bytes9227=statementBytes 9270 (op9227.map lower) ∧ bytes9227.length=48 := by core033_kernel_decide
def op9228 : List WordIR.Op := [.rotr 9252 22]
def bytes9228 : Bytes := ("    let r00002437: u32 = r00002424.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9228 : bytes9228=statementBytes 9271 (op9228.map lower) ∧ bytes9228.length=65 := by core033_kernel_decide
def op9229 : List WordIR.Op := [.bxor 9270 9271]
def bytes9229 : Bytes := ("    let r00002438: u32 = r00002436 ^ r00002437;\n" : String).toByteArray.data.toList
theorem checked9229 : bytes9229=statementBytes 9272 (op9229.map lower) ∧ bytes9229.length=48 := by core033_kernel_decide
def op9230 : List WordIR.Op := [.band 9252 9225]
def bytes9230 : Bytes := ("    let r00002439: u32 = r00002424 & r00002409;\n" : String).toByteArray.data.toList
theorem checked9230 : bytes9230=statementBytes 9273 (op9230.map lower) ∧ bytes9230.length=48 := by core033_kernel_decide
def op9231 : List WordIR.Op := [.band 9252 9198]
def bytes9231 : Bytes := ("    let r0000243a: u32 = r00002424 & r000023ee;\n" : String).toByteArray.data.toList
theorem checked9231 : bytes9231=statementBytes 9274 (op9231.map lower) ∧ bytes9231.length=48 := by core033_kernel_decide
def op9232 : List WordIR.Op := [.bxor 9273 9274]
def bytes9232 : Bytes := ("    let r0000243b: u32 = r00002439 ^ r0000243a;\n" : String).toByteArray.data.toList
theorem checked9232 : bytes9232=statementBytes 9275 (op9232.map lower) ∧ bytes9232.length=48 := by core033_kernel_decide
def op9233 : List WordIR.Op := [.band 9225 9198]
def bytes9233 : Bytes := ("    let r0000243c: u32 = r00002409 & r000023ee;\n" : String).toByteArray.data.toList
theorem checked9233 : bytes9233=statementBytes 9276 (op9233.map lower) ∧ bytes9233.length=48 := by core033_kernel_decide
def op9234 : List WordIR.Op := [.bxor 9275 9276]
def bytes9234 : Bytes := ("    let r0000243d: u32 = r0000243b ^ r0000243c;\n" : String).toByteArray.data.toList
theorem checked9234 : bytes9234=statementBytes 9277 (op9234.map lower) ∧ bytes9234.length=48 := by core033_kernel_decide
def op9235 : List WordIR.Op := [.badd 9272 9277]
def bytes9235 : Bytes := ("    let r0000243e: u32 = r00002438.wrapping_add(r0000243d);\n" : String).toByteArray.data.toList
theorem checked9235 : bytes9235=statementBytes 9278 (op9235.map lower) ∧ bytes9235.length=60 := by core033_kernel_decide
def op9236 : List WordIR.Op := [.badd 9267 9278]
def bytes9236 : Bytes := ("    let r0000243f: u32 = r00002433.wrapping_add(r0000243e);\n" : String).toByteArray.data.toList
theorem checked9236 : bytes9236=statementBytes 9279 (op9236.map lower) ∧ bytes9236.length=60 := by core033_kernel_decide
def op9237 : List WordIR.Op := [.badd 9171 9267]
def bytes9237 : Bytes := ("    let r00002440: u32 = r000023d3.wrapping_add(r00002433);\n" : String).toByteArray.data.toList
theorem checked9237 : bytes9237=statementBytes 9280 (op9237.map lower) ∧ bytes9237.length=60 := by core033_kernel_decide
def op9238 : List WordIR.Op := [.badd 1968 9279]
def bytes9238 : Bytes := ("    let r00002441: u32 = r000007b0.wrapping_add(r0000243f);\n" : String).toByteArray.data.toList
theorem checked9238 : bytes9238=statementBytes 9281 (op9238.map lower) ∧ bytes9238.length=60 := by core033_kernel_decide
def op9239 : List WordIR.Op := [.badd 2021 9252]
def bytes9239 : Bytes := ("    let r00002442: u32 = r000007e5.wrapping_add(r00002424);\n" : String).toByteArray.data.toList
theorem checked9239 : bytes9239=statementBytes 9282 (op9239.map lower) ∧ bytes9239.length=60 := by core033_kernel_decide
def op9240 : List WordIR.Op := [.badd 2074 9225]
def bytes9240 : Bytes := ("    let r00002443: u32 = r0000081a.wrapping_add(r00002409);\n" : String).toByteArray.data.toList
theorem checked9240 : bytes9240=statementBytes 9283 (op9240.map lower) ∧ bytes9240.length=60 := by core033_kernel_decide
def op9241 : List WordIR.Op := [.badd 2127 9198]
def bytes9241 : Bytes := ("    let r00002444: u32 = r0000084f.wrapping_add(r000023ee);\n" : String).toByteArray.data.toList
theorem checked9241 : bytes9241=statementBytes 9284 (op9241.map lower) ∧ bytes9241.length=60 := by core033_kernel_decide
def op9242 : List WordIR.Op := [.badd 2180 9280]
def bytes9242 : Bytes := ("    let r00002445: u32 = r00000884.wrapping_add(r00002440);\n" : String).toByteArray.data.toList
theorem checked9242 : bytes9242=statementBytes 9285 (op9242.map lower) ∧ bytes9242.length=60 := by core033_kernel_decide
def op9243 : List WordIR.Op := [.badd 2233 9253]
def bytes9243 : Bytes := ("    let r00002446: u32 = r000008b9.wrapping_add(r00002425);\n" : String).toByteArray.data.toList
theorem checked9243 : bytes9243=statementBytes 9286 (op9243.map lower) ∧ bytes9243.length=60 := by core033_kernel_decide
def op9244 : List WordIR.Op := [.badd 2286 9226]
def bytes9244 : Bytes := ("    let r00002447: u32 = r000008ee.wrapping_add(r0000240a);\n" : String).toByteArray.data.toList
theorem checked9244 : bytes9244=statementBytes 9287 (op9244.map lower) ∧ bytes9244.length=60 := by core033_kernel_decide
def op9245 : List WordIR.Op := [.badd 2339 9199]
def bytes9245 : Bytes := ("    let r00002448: u32 = r00000923.wrapping_add(r000023ef);\n" : String).toByteArray.data.toList
theorem checked9245 : bytes9245=statementBytes 9288 (op9245.map lower) ∧ bytes9245.length=60 := by core033_kernel_decide
def op9246 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9246 : Bytes := ("    let r00002449: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9246 : bytes9246=statementBytes 9289 (op9246.map lower) ∧ bytes9246.length=41 := by core033_kernel_decide
def op9247 : List WordIR.Op := [.bxor 96 9289]
def bytes9247 : Bytes := ("    let r0000244a: u32 = r00000060 ^ r00002449;\n" : String).toByteArray.data.toList
theorem checked9247 : bytes9247=statementBytes 9290 (op9247.map lower) ∧ bytes9247.length=48 := by core033_kernel_decide
def op9248 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9248 : Bytes := ("    let r0000244b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9248 : bytes9248=statementBytes 9291 (op9248.map lower) ∧ bytes9248.length=41 := by core033_kernel_decide
def op9249 : List WordIR.Op := [.bnot 9291]
def bytes9249 : Bytes := ("    let r0000244c: u32 = !r0000244b;\n" : String).toByteArray.data.toList
theorem checked9249 : bytes9249=statementBytes 9292 (op9249.map lower) ∧ bytes9249.length=37 := by core033_kernel_decide
def op9250 : List WordIR.Op := [.band 9290 9292]
def bytes9250 : Bytes := ("    let r0000244d: u32 = r0000244a & r0000244c;\n" : String).toByteArray.data.toList
theorem checked9250 : bytes9250=statementBytes 9293 (op9250.map lower) ∧ bytes9250.length=48 := by core033_kernel_decide
def op9251 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9251 : Bytes := ("    let r0000244e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9251 : bytes9251=statementBytes 9294 (op9251.map lower) ∧ bytes9251.length=41 := by core033_kernel_decide
def op9252 : List WordIR.Op := [.bxor 96 9294]
def bytes9252 : Bytes := ("    let r0000244f: u32 = r00000060 ^ r0000244e;\n" : String).toByteArray.data.toList
theorem checked9252 : bytes9252=statementBytes 9295 (op9252.map lower) ∧ bytes9252.length=48 := by core033_kernel_decide
def op9253 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9253 : Bytes := ("    let r00002450: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9253 : bytes9253=statementBytes 9296 (op9253.map lower) ∧ bytes9253.length=41 := by core033_kernel_decide
def op9254 : List WordIR.Op := [.bnot 9296]
def bytes9254 : Bytes := ("    let r00002451: u32 = !r00002450;\n" : String).toByteArray.data.toList
theorem checked9254 : bytes9254=statementBytes 9297 (op9254.map lower) ∧ bytes9254.length=37 := by core033_kernel_decide
def op9255 : List WordIR.Op := [.bxor 9295 9297]
def bytes9255 : Bytes := ("    let r00002452: u32 = r0000244f ^ r00002451;\n" : String).toByteArray.data.toList
theorem checked9255 : bytes9255=statementBytes 9298 (op9255.map lower) ∧ bytes9255.length=48 := by core033_kernel_decide
def op9256 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9256 : Bytes := ("    let r00002453: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9256 : bytes9256=statementBytes 9299 (op9256.map lower) ∧ bytes9256.length=41 := by core033_kernel_decide
def op9257 : List WordIR.Op := [.bxor 96 9299]
def bytes9257 : Bytes := ("    let r00002454: u32 = r00000060 ^ r00002453;\n" : String).toByteArray.data.toList
theorem checked9257 : bytes9257=statementBytes 9300 (op9257.map lower) ∧ bytes9257.length=48 := by core033_kernel_decide
def op9258 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9258 : Bytes := ("    let r00002455: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9258 : bytes9258=statementBytes 9301 (op9258.map lower) ∧ bytes9258.length=41 := by core033_kernel_decide
def op9259 : List WordIR.Op := [.bnot 9301]
def bytes9259 : Bytes := ("    let r00002456: u32 = !r00002455;\n" : String).toByteArray.data.toList
theorem checked9259 : bytes9259=statementBytes 9302 (op9259.map lower) ∧ bytes9259.length=37 := by core033_kernel_decide
def op9260 : List WordIR.Op := [.badd 9300 9302]
def bytes9260 : Bytes := ("    let r00002457: u32 = r00002454.wrapping_add(r00002456);\n" : String).toByteArray.data.toList
theorem checked9260 : bytes9260=statementBytes 9303 (op9260.map lower) ∧ bytes9260.length=60 := by core033_kernel_decide
def op9261 : List WordIR.Op := [.bnot 9303]
def bytes9261 : Bytes := ("    let r00002458: u32 = !r00002457;\n" : String).toByteArray.data.toList
theorem checked9261 : bytes9261=statementBytes 9304 (op9261.map lower) ∧ bytes9261.length=37 := by core033_kernel_decide
def op9262 : List WordIR.Op := [.band 9298 9304]
def bytes9262 : Bytes := ("    let r00002459: u32 = r00002452 & r00002458;\n" : String).toByteArray.data.toList
theorem checked9262 : bytes9262=statementBytes 9305 (op9262.map lower) ∧ bytes9262.length=48 := by core033_kernel_decide
def op9263 : List WordIR.Op := [.bxor 9293 9305]
def bytes9263 : Bytes := ("    let r0000245a: u32 = r0000244d ^ r00002459;\n" : String).toByteArray.data.toList
theorem checked9263 : bytes9263=statementBytes 9306 (op9263.map lower) ∧ bytes9263.length=48 := by core033_kernel_decide
def op9264 : List WordIR.Op := [.shr 9306 31]
def bytes9264 : Bytes := ("    let r0000245b: u32 = r0000245a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9264 : bytes9264=statementBytes 9307 (op9264.map lower) ∧ bytes9264.length=54 := by core033_kernel_decide
def op9265 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9265 : Bytes := ("    let r0000245c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9265 : bytes9265=statementBytes 9308 (op9265.map lower) ∧ bytes9265.length=41 := by core033_kernel_decide
def op9266 : List WordIR.Op := [.bxor 9307 9308]
def bytes9266 : Bytes := ("    let r0000245d: u32 = r0000245b ^ r0000245c;\n" : String).toByteArray.data.toList
theorem checked9266 : bytes9266=statementBytes 9309 (op9266.map lower) ∧ bytes9266.length=48 := by core033_kernel_decide
def op9267 : List WordIR.Op := [.bnot 9309]
def bytes9267 : Bytes := ("    let r0000245e: u32 = !r0000245d;\n" : String).toByteArray.data.toList
theorem checked9267 : bytes9267=statementBytes 9310 (op9267.map lower) ∧ bytes9267.length=37 := by core033_kernel_decide
def op9268 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9268 : Bytes := ("    let r0000245f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9268 : bytes9268=statementBytes 9311 (op9268.map lower) ∧ bytes9268.length=41 := by core033_kernel_decide
def op9269 : List WordIR.Op := [.badd 9310 9311]
def bytes9269 : Bytes := ("    let r00002460: u32 = r0000245e.wrapping_add(r0000245f);\n" : String).toByteArray.data.toList
theorem checked9269 : bytes9269=statementBytes 9312 (op9269.map lower) ∧ bytes9269.length=60 := by core033_kernel_decide
def op9270 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes9270 : Bytes := ("    let r00002461: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked9270 : bytes9270=statementBytes 9313 (op9270.map lower) ∧ bytes9270.length=41 := by core033_kernel_decide
def op9271 : List WordIR.Op := [.band 9312 9313]
def bytes9271 : Bytes := ("    let r00002462: u32 = r00002460 & r00002461;\n" : String).toByteArray.data.toList
theorem checked9271 : bytes9271=statementBytes 9314 (op9271.map lower) ∧ bytes9271.length=48 := by core033_kernel_decide
def op9272 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9272 : Bytes := ("    let r00002463: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9272 : bytes9272=statementBytes 9315 (op9272.map lower) ∧ bytes9272.length=41 := by core033_kernel_decide
def op9273 : List WordIR.Op := [.bxor 96 9315]
def bytes9273 : Bytes := ("    let r00002464: u32 = r00000060 ^ r00002463;\n" : String).toByteArray.data.toList
theorem checked9273 : bytes9273=statementBytes 9316 (op9273.map lower) ∧ bytes9273.length=48 := by core033_kernel_decide
def op9274 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9274 : Bytes := ("    let r00002465: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9274 : bytes9274=statementBytes 9317 (op9274.map lower) ∧ bytes9274.length=41 := by core033_kernel_decide
def op9275 : List WordIR.Op := [.bnot 9317]
def bytes9275 : Bytes := ("    let r00002466: u32 = !r00002465;\n" : String).toByteArray.data.toList
theorem checked9275 : bytes9275=statementBytes 9318 (op9275.map lower) ∧ bytes9275.length=37 := by core033_kernel_decide
def op9276 : List WordIR.Op := [.band 9316 9318]
def bytes9276 : Bytes := ("    let r00002467: u32 = r00002464 & r00002466;\n" : String).toByteArray.data.toList
theorem checked9276 : bytes9276=statementBytes 9319 (op9276.map lower) ∧ bytes9276.length=48 := by core033_kernel_decide
def op9277 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes9277 : Bytes := ("    let r00002468: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked9277 : bytes9277=statementBytes 9320 (op9277.map lower) ∧ bytes9277.length=41 := by core033_kernel_decide
def op9278 : List WordIR.Op := [.bxor 96 9320]
def bytes9278 : Bytes := ("    let r00002469: u32 = r00000060 ^ r00002468;\n" : String).toByteArray.data.toList
theorem checked9278 : bytes9278=statementBytes 9321 (op9278.map lower) ∧ bytes9278.length=48 := by core033_kernel_decide
def op9279 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9279 : Bytes := ("    let r0000246a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9279 : bytes9279=statementBytes 9322 (op9279.map lower) ∧ bytes9279.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9216,op9217,op9218,op9219,op9220,op9221,op9222,op9223,op9224,op9225,op9226,op9227,op9228,op9229,op9230,op9231,op9232,op9233,op9234,op9235,op9236,op9237,op9238,op9239,op9240,op9241,op9242,op9243,op9244,op9245,op9246,op9247,op9248,op9249,op9250,op9251,op9252,op9253,op9254,op9255,op9256,op9257,op9258,op9259,op9260,op9261,op9262,op9263,op9264,op9265,op9266,op9267,op9268,op9269,op9270,op9271,op9272,op9273,op9274,op9275,op9276,op9277,op9278,op9279]
def chunks : List Bytes := [bytes9216,bytes9217,bytes9218,bytes9219,bytes9220,bytes9221,bytes9222,bytes9223,bytes9224,bytes9225,bytes9226,bytes9227,bytes9228,bytes9229,bytes9230,bytes9231,bytes9232,bytes9233,bytes9234,bytes9235,bytes9236,bytes9237,bytes9238,bytes9239,bytes9240,bytes9241,bytes9242,bytes9243,bytes9244,bytes9245,bytes9246,bytes9247,bytes9248,bytes9249,bytes9250,bytes9251,bytes9252,bytes9253,bytes9254,bytes9255,bytes9256,bytes9257,bytes9258,bytes9259,bytes9260,bytes9261,bytes9262,bytes9263,bytes9264,bytes9265,bytes9266,bytes9267,bytes9268,bytes9269,bytes9270,bytes9271,bytes9272,bytes9273,bytes9274,bytes9275,bytes9276,bytes9277,bytes9278,bytes9279]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9259 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9216.1 (.cons _ _ _ _ _ checked9217.1 (.cons _ _ _ _ _ checked9218.1 (.cons _ _ _ _ _ checked9219.1 (.cons _ _ _ _ _ checked9220.1 (.cons _ _ _ _ _ checked9221.1 (.cons _ _ _ _ _ checked9222.1 (.cons _ _ _ _ _ checked9223.1 (.cons _ _ _ _ _ checked9224.1 (.cons _ _ _ _ _ checked9225.1 (.cons _ _ _ _ _ checked9226.1 (.cons _ _ _ _ _ checked9227.1 (.cons _ _ _ _ _ checked9228.1 (.cons _ _ _ _ _ checked9229.1 (.cons _ _ _ _ _ checked9230.1 (.cons _ _ _ _ _ checked9231.1 (.cons _ _ _ _ _ checked9232.1 (.cons _ _ _ _ _ checked9233.1 (.cons _ _ _ _ _ checked9234.1 (.cons _ _ _ _ _ checked9235.1 (.cons _ _ _ _ _ checked9236.1 (.cons _ _ _ _ _ checked9237.1 (.cons _ _ _ _ _ checked9238.1 (.cons _ _ _ _ _ checked9239.1 (.cons _ _ _ _ _ checked9240.1 (.cons _ _ _ _ _ checked9241.1 (.cons _ _ _ _ _ checked9242.1 (.cons _ _ _ _ _ checked9243.1 (.cons _ _ _ _ _ checked9244.1 (.cons _ _ _ _ _ checked9245.1 (.cons _ _ _ _ _ checked9246.1 (.cons _ _ _ _ _ checked9247.1 (.cons _ _ _ _ _ checked9248.1 (.cons _ _ _ _ _ checked9249.1 (.cons _ _ _ _ _ checked9250.1 (.cons _ _ _ _ _ checked9251.1 (.cons _ _ _ _ _ checked9252.1 (.cons _ _ _ _ _ checked9253.1 (.cons _ _ _ _ _ checked9254.1 (.cons _ _ _ _ _ checked9255.1 (.cons _ _ _ _ _ checked9256.1 (.cons _ _ _ _ _ checked9257.1 (.cons _ _ _ _ _ checked9258.1 (.cons _ _ _ _ _ checked9259.1 (.cons _ _ _ _ _ checked9260.1 (.cons _ _ _ _ _ checked9261.1 (.cons _ _ _ _ _ checked9262.1 (.cons _ _ _ _ _ checked9263.1 (.cons _ _ _ _ _ checked9264.1 (.cons _ _ _ _ _ checked9265.1 (.cons _ _ _ _ _ checked9266.1 (.cons _ _ _ _ _ checked9267.1 (.cons _ _ _ _ _ checked9268.1 (.cons _ _ _ _ _ checked9269.1 (.cons _ _ _ _ _ checked9270.1 (.cons _ _ _ _ _ checked9271.1 (.cons _ _ _ _ _ checked9272.1 (.cons _ _ _ _ _ checked9273.1 (.cons _ _ _ _ _ checked9274.1 (.cons _ _ _ _ _ checked9275.1 (.cons _ _ _ _ _ checked9276.1 (.cons _ _ _ _ _ checked9277.1 (.cons _ _ _ _ _ checked9278.1 (.cons _ _ _ _ _ checked9279.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9259 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3158 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9216.2,checked9217.2,checked9218.2,checked9219.2,checked9220.2,checked9221.2,checked9222.2,checked9223.2,checked9224.2,checked9225.2,checked9226.2,checked9227.2,checked9228.2,checked9229.2,checked9230.2,checked9231.2,checked9232.2,checked9233.2,checked9234.2,checked9235.2,checked9236.2,checked9237.2,checked9238.2,checked9239.2,checked9240.2,checked9241.2,checked9242.2,checked9243.2,checked9244.2,checked9245.2,checked9246.2,checked9247.2,checked9248.2,checked9249.2,checked9250.2,checked9251.2,checked9252.2,checked9253.2,checked9254.2,checked9255.2,checked9256.2,checked9257.2,checked9258.2,checked9259.2,checked9260.2,checked9261.2,checked9262.2,checked9263.2,checked9264.2,checked9265.2,checked9266.2,checked9267.2,checked9268.2,checked9269.2,checked9270.2,checked9271.2,checked9272.2,checked9273.2,checked9274.2,checked9275.2,checked9276.2,checked9277.2,checked9278.2,checked9279.2]
  decide
end ArtifactPathRoundDispatchGroup144
