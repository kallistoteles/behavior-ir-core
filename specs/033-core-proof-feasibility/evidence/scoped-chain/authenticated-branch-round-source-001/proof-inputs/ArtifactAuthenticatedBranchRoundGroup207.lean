import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup207
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13248 : List WordIR.Op := [.bnot 13365]
def bytes13248 : Bytes := ("    let r00003436: u32 = !r00003435;\n" : String).toByteArray.data.toList
theorem checked13248 : bytes13248=statementBytes 13366 (op13248.map lower) ∧ bytes13248.length=37 := by core033_kernel_decide
def op13249 : List WordIR.Op := [.badd 13364 13366]
def bytes13249 : Bytes := ("    let r00003437: u32 = r00003434.wrapping_add(r00003436);\n" : String).toByteArray.data.toList
theorem checked13249 : bytes13249=statementBytes 13367 (op13249.map lower) ∧ bytes13249.length=60 := by core033_kernel_decide
def op13250 : List WordIR.Op := [.bnot 13367]
def bytes13250 : Bytes := ("    let r00003438: u32 = !r00003437;\n" : String).toByteArray.data.toList
theorem checked13250 : bytes13250=statementBytes 13368 (op13250.map lower) ∧ bytes13250.length=37 := by core033_kernel_decide
def op13251 : List WordIR.Op := [.band 13362 13368]
def bytes13251 : Bytes := ("    let r00003439: u32 = r00003432 & r00003438;\n" : String).toByteArray.data.toList
theorem checked13251 : bytes13251=statementBytes 13369 (op13251.map lower) ∧ bytes13251.length=48 := by core033_kernel_decide
def op13252 : List WordIR.Op := [.bxor 13357 13369]
def bytes13252 : Bytes := ("    let r0000343a: u32 = r0000342d ^ r00003439;\n" : String).toByteArray.data.toList
theorem checked13252 : bytes13252=statementBytes 13370 (op13252.map lower) ∧ bytes13252.length=48 := by core033_kernel_decide
def op13253 : List WordIR.Op := [.shr 13370 31]
def bytes13253 : Bytes := ("    let r0000343b: u32 = r0000343a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13253 : bytes13253=statementBytes 13371 (op13253.map lower) ∧ bytes13253.length=54 := by core033_kernel_decide
def op13254 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13254 : Bytes := ("    let r0000343c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13254 : bytes13254=statementBytes 13372 (op13254.map lower) ∧ bytes13254.length=41 := by core033_kernel_decide
def op13255 : List WordIR.Op := [.bxor 13371 13372]
def bytes13255 : Bytes := ("    let r0000343d: u32 = r0000343b ^ r0000343c;\n" : String).toByteArray.data.toList
theorem checked13255 : bytes13255=statementBytes 13373 (op13255.map lower) ∧ bytes13255.length=48 := by core033_kernel_decide
def op13256 : List WordIR.Op := [.bnot 13373]
def bytes13256 : Bytes := ("    let r0000343e: u32 = !r0000343d;\n" : String).toByteArray.data.toList
theorem checked13256 : bytes13256=statementBytes 13374 (op13256.map lower) ∧ bytes13256.length=37 := by core033_kernel_decide
def op13257 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13257 : Bytes := ("    let r0000343f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13257 : bytes13257=statementBytes 13375 (op13257.map lower) ∧ bytes13257.length=41 := by core033_kernel_decide
def op13258 : List WordIR.Op := [.badd 13374 13375]
def bytes13258 : Bytes := ("    let r00003440: u32 = r0000343e.wrapping_add(r0000343f);\n" : String).toByteArray.data.toList
theorem checked13258 : bytes13258=statementBytes 13376 (op13258.map lower) ∧ bytes13258.length=60 := by core033_kernel_decide
def op13259 : List WordIR.Op := [.band 13376 11027]
def bytes13259 : Bytes := ("    let r00003441: u32 = r00003440 & r00002b13;\n" : String).toByteArray.data.toList
theorem checked13259 : bytes13259=statementBytes 13377 (op13259.map lower) ∧ bytes13259.length=48 := by core033_kernel_decide
def op13260 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13260 : Bytes := ("    let r00003442: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13260 : bytes13260=statementBytes 13378 (op13260.map lower) ∧ bytes13260.length=41 := by core033_kernel_decide
def op13261 : List WordIR.Op := [.bxor 693 13378]
def bytes13261 : Bytes := ("    let r00003443: u32 = r000002b5 ^ r00003442;\n" : String).toByteArray.data.toList
theorem checked13261 : bytes13261=statementBytes 13379 (op13261.map lower) ∧ bytes13261.length=48 := by core033_kernel_decide
def op13262 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13262 : Bytes := ("    let r00003444: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13262 : bytes13262=statementBytes 13380 (op13262.map lower) ∧ bytes13262.length=41 := by core033_kernel_decide
def op13263 : List WordIR.Op := [.bnot 13380]
def bytes13263 : Bytes := ("    let r00003445: u32 = !r00003444;\n" : String).toByteArray.data.toList
theorem checked13263 : bytes13263=statementBytes 13381 (op13263.map lower) ∧ bytes13263.length=37 := by core033_kernel_decide
def op13264 : List WordIR.Op := [.band 13379 13381]
def bytes13264 : Bytes := ("    let r00003446: u32 = r00003443 & r00003445;\n" : String).toByteArray.data.toList
theorem checked13264 : bytes13264=statementBytes 13382 (op13264.map lower) ∧ bytes13264.length=48 := by core033_kernel_decide
def op13265 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13265 : Bytes := ("    let r00003447: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13265 : bytes13265=statementBytes 13383 (op13265.map lower) ∧ bytes13265.length=41 := by core033_kernel_decide
def op13266 : List WordIR.Op := [.bxor 693 13383]
def bytes13266 : Bytes := ("    let r00003448: u32 = r000002b5 ^ r00003447;\n" : String).toByteArray.data.toList
theorem checked13266 : bytes13266=statementBytes 13384 (op13266.map lower) ∧ bytes13266.length=48 := by core033_kernel_decide
def op13267 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13267 : Bytes := ("    let r00003449: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13267 : bytes13267=statementBytes 13385 (op13267.map lower) ∧ bytes13267.length=41 := by core033_kernel_decide
def op13268 : List WordIR.Op := [.bnot 13385]
def bytes13268 : Bytes := ("    let r0000344a: u32 = !r00003449;\n" : String).toByteArray.data.toList
theorem checked13268 : bytes13268=statementBytes 13386 (op13268.map lower) ∧ bytes13268.length=37 := by core033_kernel_decide
def op13269 : List WordIR.Op := [.bxor 13384 13386]
def bytes13269 : Bytes := ("    let r0000344b: u32 = r00003448 ^ r0000344a;\n" : String).toByteArray.data.toList
theorem checked13269 : bytes13269=statementBytes 13387 (op13269.map lower) ∧ bytes13269.length=48 := by core033_kernel_decide
def op13270 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13270 : Bytes := ("    let r0000344c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13270 : bytes13270=statementBytes 13388 (op13270.map lower) ∧ bytes13270.length=41 := by core033_kernel_decide
def op13271 : List WordIR.Op := [.bxor 693 13388]
def bytes13271 : Bytes := ("    let r0000344d: u32 = r000002b5 ^ r0000344c;\n" : String).toByteArray.data.toList
theorem checked13271 : bytes13271=statementBytes 13389 (op13271.map lower) ∧ bytes13271.length=48 := by core033_kernel_decide
def op13272 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13272 : Bytes := ("    let r0000344e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13272 : bytes13272=statementBytes 13390 (op13272.map lower) ∧ bytes13272.length=41 := by core033_kernel_decide
def op13273 : List WordIR.Op := [.bnot 13390]
def bytes13273 : Bytes := ("    let r0000344f: u32 = !r0000344e;\n" : String).toByteArray.data.toList
theorem checked13273 : bytes13273=statementBytes 13391 (op13273.map lower) ∧ bytes13273.length=37 := by core033_kernel_decide
def op13274 : List WordIR.Op := [.badd 13389 13391]
def bytes13274 : Bytes := ("    let r00003450: u32 = r0000344d.wrapping_add(r0000344f);\n" : String).toByteArray.data.toList
theorem checked13274 : bytes13274=statementBytes 13392 (op13274.map lower) ∧ bytes13274.length=60 := by core033_kernel_decide
def op13275 : List WordIR.Op := [.bnot 13392]
def bytes13275 : Bytes := ("    let r00003451: u32 = !r00003450;\n" : String).toByteArray.data.toList
theorem checked13275 : bytes13275=statementBytes 13393 (op13275.map lower) ∧ bytes13275.length=37 := by core033_kernel_decide
def op13276 : List WordIR.Op := [.band 13387 13393]
def bytes13276 : Bytes := ("    let r00003452: u32 = r0000344b & r00003451;\n" : String).toByteArray.data.toList
theorem checked13276 : bytes13276=statementBytes 13394 (op13276.map lower) ∧ bytes13276.length=48 := by core033_kernel_decide
def op13277 : List WordIR.Op := [.bxor 13382 13394]
def bytes13277 : Bytes := ("    let r00003453: u32 = r00003446 ^ r00003452;\n" : String).toByteArray.data.toList
theorem checked13277 : bytes13277=statementBytes 13395 (op13277.map lower) ∧ bytes13277.length=48 := by core033_kernel_decide
def op13278 : List WordIR.Op := [.shr 13395 31]
def bytes13278 : Bytes := ("    let r00003454: u32 = r00003453 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13278 : bytes13278=statementBytes 13396 (op13278.map lower) ∧ bytes13278.length=54 := by core033_kernel_decide
def op13279 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13279 : Bytes := ("    let r00003455: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13279 : bytes13279=statementBytes 13397 (op13279.map lower) ∧ bytes13279.length=41 := by core033_kernel_decide
def op13280 : List WordIR.Op := [.bxor 13396 13397]
def bytes13280 : Bytes := ("    let r00003456: u32 = r00003454 ^ r00003455;\n" : String).toByteArray.data.toList
theorem checked13280 : bytes13280=statementBytes 13398 (op13280.map lower) ∧ bytes13280.length=48 := by core033_kernel_decide
def op13281 : List WordIR.Op := [.bnot 13398]
def bytes13281 : Bytes := ("    let r00003457: u32 = !r00003456;\n" : String).toByteArray.data.toList
theorem checked13281 : bytes13281=statementBytes 13399 (op13281.map lower) ∧ bytes13281.length=37 := by core033_kernel_decide
def op13282 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13282 : Bytes := ("    let r00003458: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13282 : bytes13282=statementBytes 13400 (op13282.map lower) ∧ bytes13282.length=41 := by core033_kernel_decide
def op13283 : List WordIR.Op := [.badd 13399 13400]
def bytes13283 : Bytes := ("    let r00003459: u32 = r00003457.wrapping_add(r00003458);\n" : String).toByteArray.data.toList
theorem checked13283 : bytes13283=statementBytes 13401 (op13283.map lower) ∧ bytes13283.length=60 := by core033_kernel_decide
def op13284 : List WordIR.Op := [.bnot 13401]
def bytes13284 : Bytes := ("    let r0000345a: u32 = !r00003459;\n" : String).toByteArray.data.toList
theorem checked13284 : bytes13284=statementBytes 13402 (op13284.map lower) ∧ bytes13284.length=37 := by core033_kernel_decide
def op13285 : List WordIR.Op := [.band 13402 10486]
def bytes13285 : Bytes := ("    let r0000345b: u32 = r0000345a & r000028f6;\n" : String).toByteArray.data.toList
theorem checked13285 : bytes13285=statementBytes 13403 (op13285.map lower) ∧ bytes13285.length=48 := by core033_kernel_decide
def op13286 : List WordIR.Op := [.bxor 13377 13403]
def bytes13286 : Bytes := ("    let r0000345c: u32 = r00003441 ^ r0000345b;\n" : String).toByteArray.data.toList
theorem checked13286 : bytes13286=statementBytes 13404 (op13286.map lower) ∧ bytes13286.length=48 := by core033_kernel_decide
def op13287 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13287 : Bytes := ("    let r0000345d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13287 : bytes13287=statementBytes 13405 (op13287.map lower) ∧ bytes13287.length=41 := by core033_kernel_decide
def op13288 : List WordIR.Op := [.bxor 693 13405]
def bytes13288 : Bytes := ("    let r0000345e: u32 = r000002b5 ^ r0000345d;\n" : String).toByteArray.data.toList
theorem checked13288 : bytes13288=statementBytes 13406 (op13288.map lower) ∧ bytes13288.length=48 := by core033_kernel_decide
def op13289 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13289 : Bytes := ("    let r0000345f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13289 : bytes13289=statementBytes 13407 (op13289.map lower) ∧ bytes13289.length=41 := by core033_kernel_decide
def op13290 : List WordIR.Op := [.bnot 13407]
def bytes13290 : Bytes := ("    let r00003460: u32 = !r0000345f;\n" : String).toByteArray.data.toList
theorem checked13290 : bytes13290=statementBytes 13408 (op13290.map lower) ∧ bytes13290.length=37 := by core033_kernel_decide
def op13291 : List WordIR.Op := [.band 13406 13408]
def bytes13291 : Bytes := ("    let r00003461: u32 = r0000345e & r00003460;\n" : String).toByteArray.data.toList
theorem checked13291 : bytes13291=statementBytes 13409 (op13291.map lower) ∧ bytes13291.length=48 := by core033_kernel_decide
def op13292 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13292 : Bytes := ("    let r00003462: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13292 : bytes13292=statementBytes 13410 (op13292.map lower) ∧ bytes13292.length=41 := by core033_kernel_decide
def op13293 : List WordIR.Op := [.bxor 693 13410]
def bytes13293 : Bytes := ("    let r00003463: u32 = r000002b5 ^ r00003462;\n" : String).toByteArray.data.toList
theorem checked13293 : bytes13293=statementBytes 13411 (op13293.map lower) ∧ bytes13293.length=48 := by core033_kernel_decide
def op13294 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13294 : Bytes := ("    let r00003464: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13294 : bytes13294=statementBytes 13412 (op13294.map lower) ∧ bytes13294.length=41 := by core033_kernel_decide
def op13295 : List WordIR.Op := [.bnot 13412]
def bytes13295 : Bytes := ("    let r00003465: u32 = !r00003464;\n" : String).toByteArray.data.toList
theorem checked13295 : bytes13295=statementBytes 13413 (op13295.map lower) ∧ bytes13295.length=37 := by core033_kernel_decide
def op13296 : List WordIR.Op := [.bxor 13411 13413]
def bytes13296 : Bytes := ("    let r00003466: u32 = r00003463 ^ r00003465;\n" : String).toByteArray.data.toList
theorem checked13296 : bytes13296=statementBytes 13414 (op13296.map lower) ∧ bytes13296.length=48 := by core033_kernel_decide
def op13297 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13297 : Bytes := ("    let r00003467: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13297 : bytes13297=statementBytes 13415 (op13297.map lower) ∧ bytes13297.length=41 := by core033_kernel_decide
def op13298 : List WordIR.Op := [.bxor 693 13415]
def bytes13298 : Bytes := ("    let r00003468: u32 = r000002b5 ^ r00003467;\n" : String).toByteArray.data.toList
theorem checked13298 : bytes13298=statementBytes 13416 (op13298.map lower) ∧ bytes13298.length=48 := by core033_kernel_decide
def op13299 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13299 : Bytes := ("    let r00003469: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13299 : bytes13299=statementBytes 13417 (op13299.map lower) ∧ bytes13299.length=41 := by core033_kernel_decide
def op13300 : List WordIR.Op := [.bnot 13417]
def bytes13300 : Bytes := ("    let r0000346a: u32 = !r00003469;\n" : String).toByteArray.data.toList
theorem checked13300 : bytes13300=statementBytes 13418 (op13300.map lower) ∧ bytes13300.length=37 := by core033_kernel_decide
def op13301 : List WordIR.Op := [.badd 13416 13418]
def bytes13301 : Bytes := ("    let r0000346b: u32 = r00003468.wrapping_add(r0000346a);\n" : String).toByteArray.data.toList
theorem checked13301 : bytes13301=statementBytes 13419 (op13301.map lower) ∧ bytes13301.length=60 := by core033_kernel_decide
def op13302 : List WordIR.Op := [.bnot 13419]
def bytes13302 : Bytes := ("    let r0000346c: u32 = !r0000346b;\n" : String).toByteArray.data.toList
theorem checked13302 : bytes13302=statementBytes 13420 (op13302.map lower) ∧ bytes13302.length=37 := by core033_kernel_decide
def op13303 : List WordIR.Op := [.band 13414 13420]
def bytes13303 : Bytes := ("    let r0000346d: u32 = r00003466 & r0000346c;\n" : String).toByteArray.data.toList
theorem checked13303 : bytes13303=statementBytes 13421 (op13303.map lower) ∧ bytes13303.length=48 := by core033_kernel_decide
def op13304 : List WordIR.Op := [.bxor 13409 13421]
def bytes13304 : Bytes := ("    let r0000346e: u32 = r00003461 ^ r0000346d;\n" : String).toByteArray.data.toList
theorem checked13304 : bytes13304=statementBytes 13422 (op13304.map lower) ∧ bytes13304.length=48 := by core033_kernel_decide
def op13305 : List WordIR.Op := [.shr 13422 31]
def bytes13305 : Bytes := ("    let r0000346f: u32 = r0000346e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13305 : bytes13305=statementBytes 13423 (op13305.map lower) ∧ bytes13305.length=54 := by core033_kernel_decide
def op13306 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13306 : Bytes := ("    let r00003470: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13306 : bytes13306=statementBytes 13424 (op13306.map lower) ∧ bytes13306.length=41 := by core033_kernel_decide
def op13307 : List WordIR.Op := [.bxor 13423 13424]
def bytes13307 : Bytes := ("    let r00003471: u32 = r0000346f ^ r00003470;\n" : String).toByteArray.data.toList
theorem checked13307 : bytes13307=statementBytes 13425 (op13307.map lower) ∧ bytes13307.length=48 := by core033_kernel_decide
def op13308 : List WordIR.Op := [.bnot 13425]
def bytes13308 : Bytes := ("    let r00003472: u32 = !r00003471;\n" : String).toByteArray.data.toList
theorem checked13308 : bytes13308=statementBytes 13426 (op13308.map lower) ∧ bytes13308.length=37 := by core033_kernel_decide
def op13309 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13309 : Bytes := ("    let r00003473: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13309 : bytes13309=statementBytes 13427 (op13309.map lower) ∧ bytes13309.length=41 := by core033_kernel_decide
def op13310 : List WordIR.Op := [.badd 13426 13427]
def bytes13310 : Bytes := ("    let r00003474: u32 = r00003472.wrapping_add(r00003473);\n" : String).toByteArray.data.toList
theorem checked13310 : bytes13310=statementBytes 13428 (op13310.map lower) ∧ bytes13310.length=60 := by core033_kernel_decide
def op13311 : List WordIR.Op := [.band 13428 11038]
def bytes13311 : Bytes := ("    let r00003475: u32 = r00003474 & r00002b1e;\n" : String).toByteArray.data.toList
theorem checked13311 : bytes13311=statementBytes 13429 (op13311.map lower) ∧ bytes13311.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13248,op13249,op13250,op13251,op13252,op13253,op13254,op13255,op13256,op13257,op13258,op13259,op13260,op13261,op13262,op13263,op13264,op13265,op13266,op13267,op13268,op13269,op13270,op13271,op13272,op13273,op13274,op13275,op13276,op13277,op13278,op13279,op13280,op13281,op13282,op13283,op13284,op13285,op13286,op13287,op13288,op13289,op13290,op13291,op13292,op13293,op13294,op13295,op13296,op13297,op13298,op13299,op13300,op13301,op13302,op13303,op13304,op13305,op13306,op13307,op13308,op13309,op13310,op13311]
def chunks : List Bytes := [bytes13248,bytes13249,bytes13250,bytes13251,bytes13252,bytes13253,bytes13254,bytes13255,bytes13256,bytes13257,bytes13258,bytes13259,bytes13260,bytes13261,bytes13262,bytes13263,bytes13264,bytes13265,bytes13266,bytes13267,bytes13268,bytes13269,bytes13270,bytes13271,bytes13272,bytes13273,bytes13274,bytes13275,bytes13276,bytes13277,bytes13278,bytes13279,bytes13280,bytes13281,bytes13282,bytes13283,bytes13284,bytes13285,bytes13286,bytes13287,bytes13288,bytes13289,bytes13290,bytes13291,bytes13292,bytes13293,bytes13294,bytes13295,bytes13296,bytes13297,bytes13298,bytes13299,bytes13300,bytes13301,bytes13302,bytes13303,bytes13304,bytes13305,bytes13306,bytes13307,bytes13308,bytes13309,bytes13310,bytes13311]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13366 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13248.1 (.cons _ _ _ _ _ checked13249.1 (.cons _ _ _ _ _ checked13250.1 (.cons _ _ _ _ _ checked13251.1 (.cons _ _ _ _ _ checked13252.1 (.cons _ _ _ _ _ checked13253.1 (.cons _ _ _ _ _ checked13254.1 (.cons _ _ _ _ _ checked13255.1 (.cons _ _ _ _ _ checked13256.1 (.cons _ _ _ _ _ checked13257.1 (.cons _ _ _ _ _ checked13258.1 (.cons _ _ _ _ _ checked13259.1 (.cons _ _ _ _ _ checked13260.1 (.cons _ _ _ _ _ checked13261.1 (.cons _ _ _ _ _ checked13262.1 (.cons _ _ _ _ _ checked13263.1 (.cons _ _ _ _ _ checked13264.1 (.cons _ _ _ _ _ checked13265.1 (.cons _ _ _ _ _ checked13266.1 (.cons _ _ _ _ _ checked13267.1 (.cons _ _ _ _ _ checked13268.1 (.cons _ _ _ _ _ checked13269.1 (.cons _ _ _ _ _ checked13270.1 (.cons _ _ _ _ _ checked13271.1 (.cons _ _ _ _ _ checked13272.1 (.cons _ _ _ _ _ checked13273.1 (.cons _ _ _ _ _ checked13274.1 (.cons _ _ _ _ _ checked13275.1 (.cons _ _ _ _ _ checked13276.1 (.cons _ _ _ _ _ checked13277.1 (.cons _ _ _ _ _ checked13278.1 (.cons _ _ _ _ _ checked13279.1 (.cons _ _ _ _ _ checked13280.1 (.cons _ _ _ _ _ checked13281.1 (.cons _ _ _ _ _ checked13282.1 (.cons _ _ _ _ _ checked13283.1 (.cons _ _ _ _ _ checked13284.1 (.cons _ _ _ _ _ checked13285.1 (.cons _ _ _ _ _ checked13286.1 (.cons _ _ _ _ _ checked13287.1 (.cons _ _ _ _ _ checked13288.1 (.cons _ _ _ _ _ checked13289.1 (.cons _ _ _ _ _ checked13290.1 (.cons _ _ _ _ _ checked13291.1 (.cons _ _ _ _ _ checked13292.1 (.cons _ _ _ _ _ checked13293.1 (.cons _ _ _ _ _ checked13294.1 (.cons _ _ _ _ _ checked13295.1 (.cons _ _ _ _ _ checked13296.1 (.cons _ _ _ _ _ checked13297.1 (.cons _ _ _ _ _ checked13298.1 (.cons _ _ _ _ _ checked13299.1 (.cons _ _ _ _ _ checked13300.1 (.cons _ _ _ _ _ checked13301.1 (.cons _ _ _ _ _ checked13302.1 (.cons _ _ _ _ _ checked13303.1 (.cons _ _ _ _ _ checked13304.1 (.cons _ _ _ _ _ checked13305.1 (.cons _ _ _ _ _ checked13306.1 (.cons _ _ _ _ _ checked13307.1 (.cons _ _ _ _ _ checked13308.1 (.cons _ _ _ _ _ checked13309.1 (.cons _ _ _ _ _ checked13310.1 (.cons _ _ _ _ _ checked13311.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13366 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13248.2,checked13249.2,checked13250.2,checked13251.2,checked13252.2,checked13253.2,checked13254.2,checked13255.2,checked13256.2,checked13257.2,checked13258.2,checked13259.2,checked13260.2,checked13261.2,checked13262.2,checked13263.2,checked13264.2,checked13265.2,checked13266.2,checked13267.2,checked13268.2,checked13269.2,checked13270.2,checked13271.2,checked13272.2,checked13273.2,checked13274.2,checked13275.2,checked13276.2,checked13277.2,checked13278.2,checked13279.2,checked13280.2,checked13281.2,checked13282.2,checked13283.2,checked13284.2,checked13285.2,checked13286.2,checked13287.2,checked13288.2,checked13289.2,checked13290.2,checked13291.2,checked13292.2,checked13293.2,checked13294.2,checked13295.2,checked13296.2,checked13297.2,checked13298.2,checked13299.2,checked13300.2,checked13301.2,checked13302.2,checked13303.2,checked13304.2,checked13305.2,checked13306.2,checked13307.2,checked13308.2,checked13309.2,checked13310.2,checked13311.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup207
