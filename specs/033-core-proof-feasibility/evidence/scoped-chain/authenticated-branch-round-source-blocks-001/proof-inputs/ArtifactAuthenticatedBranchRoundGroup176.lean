import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup176
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11264 : List WordIR.Op := [.bxor 10642 11381]
def bytes11264 : Bytes := ("    let r00002c76: u32 = r00002992 ^ r00002c75;\n" : String).toByteArray.data.toList
theorem checked11264 : bytes11264=statementBytes 11382 (op11264.map lower) ∧ bytes11264.length=48 := by core033_kernel_decide
def op11265 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11265 : Bytes := ("    let r00002c77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11265 : bytes11265=statementBytes 11383 (op11265.map lower) ∧ bytes11265.length=41 := by core033_kernel_decide
def op11266 : List WordIR.Op := [.bnot 11383]
def bytes11266 : Bytes := ("    let r00002c78: u32 = !r00002c77;\n" : String).toByteArray.data.toList
theorem checked11266 : bytes11266=statementBytes 11384 (op11266.map lower) ∧ bytes11266.length=37 := by core033_kernel_decide
def op11267 : List WordIR.Op := [.badd 11382 11384]
def bytes11267 : Bytes := ("    let r00002c79: u32 = r00002c76.wrapping_add(r00002c78);\n" : String).toByteArray.data.toList
theorem checked11267 : bytes11267=statementBytes 11385 (op11267.map lower) ∧ bytes11267.length=60 := by core033_kernel_decide
def op11268 : List WordIR.Op := [.bnot 11385]
def bytes11268 : Bytes := ("    let r00002c7a: u32 = !r00002c79;\n" : String).toByteArray.data.toList
theorem checked11268 : bytes11268=statementBytes 11386 (op11268.map lower) ∧ bytes11268.length=37 := by core033_kernel_decide
def op11269 : List WordIR.Op := [.band 11380 11386]
def bytes11269 : Bytes := ("    let r00002c7b: u32 = r00002c74 & r00002c7a;\n" : String).toByteArray.data.toList
theorem checked11269 : bytes11269=statementBytes 11387 (op11269.map lower) ∧ bytes11269.length=48 := by core033_kernel_decide
def op11270 : List WordIR.Op := [.bxor 11375 11387]
def bytes11270 : Bytes := ("    let r00002c7c: u32 = r00002c6f ^ r00002c7b;\n" : String).toByteArray.data.toList
theorem checked11270 : bytes11270=statementBytes 11388 (op11270.map lower) ∧ bytes11270.length=48 := by core033_kernel_decide
def op11271 : List WordIR.Op := [.shr 11388 31]
def bytes11271 : Bytes := ("    let r00002c7d: u32 = r00002c7c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11271 : bytes11271=statementBytes 11389 (op11271.map lower) ∧ bytes11271.length=54 := by core033_kernel_decide
def op11272 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11272 : Bytes := ("    let r00002c7e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11272 : bytes11272=statementBytes 11390 (op11272.map lower) ∧ bytes11272.length=41 := by core033_kernel_decide
def op11273 : List WordIR.Op := [.bxor 11389 11390]
def bytes11273 : Bytes := ("    let r00002c7f: u32 = r00002c7d ^ r00002c7e;\n" : String).toByteArray.data.toList
theorem checked11273 : bytes11273=statementBytes 11391 (op11273.map lower) ∧ bytes11273.length=48 := by core033_kernel_decide
def op11274 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes11274 : Bytes := ("    let r00002c80: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked11274 : bytes11274=statementBytes 11392 (op11274.map lower) ∧ bytes11274.length=41 := by core033_kernel_decide
def op11275 : List WordIR.Op := [.bnot 11392]
def bytes11275 : Bytes := ("    let r00002c81: u32 = !r00002c80;\n" : String).toByteArray.data.toList
theorem checked11275 : bytes11275=statementBytes 11393 (op11275.map lower) ∧ bytes11275.length=37 := by core033_kernel_decide
def op11276 : List WordIR.Op := [.band 10642 11393]
def bytes11276 : Bytes := ("    let r00002c82: u32 = r00002992 & r00002c81;\n" : String).toByteArray.data.toList
theorem checked11276 : bytes11276=statementBytes 11394 (op11276.map lower) ∧ bytes11276.length=48 := by core033_kernel_decide
def op11277 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes11277 : Bytes := ("    let r00002c83: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked11277 : bytes11277=statementBytes 11395 (op11277.map lower) ∧ bytes11277.length=41 := by core033_kernel_decide
def op11278 : List WordIR.Op := [.bnot 11395]
def bytes11278 : Bytes := ("    let r00002c84: u32 = !r00002c83;\n" : String).toByteArray.data.toList
theorem checked11278 : bytes11278=statementBytes 11396 (op11278.map lower) ∧ bytes11278.length=37 := by core033_kernel_decide
def op11279 : List WordIR.Op := [.bxor 10642 11396]
def bytes11279 : Bytes := ("    let r00002c85: u32 = r00002992 ^ r00002c84;\n" : String).toByteArray.data.toList
theorem checked11279 : bytes11279=statementBytes 11397 (op11279.map lower) ∧ bytes11279.length=48 := by core033_kernel_decide
def op11280 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes11280 : Bytes := ("    let r00002c86: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked11280 : bytes11280=statementBytes 11398 (op11280.map lower) ∧ bytes11280.length=41 := by core033_kernel_decide
def op11281 : List WordIR.Op := [.bnot 11398]
def bytes11281 : Bytes := ("    let r00002c87: u32 = !r00002c86;\n" : String).toByteArray.data.toList
theorem checked11281 : bytes11281=statementBytes 11399 (op11281.map lower) ∧ bytes11281.length=37 := by core033_kernel_decide
def op11282 : List WordIR.Op := [.badd 10642 11399]
def bytes11282 : Bytes := ("    let r00002c88: u32 = r00002992.wrapping_add(r00002c87);\n" : String).toByteArray.data.toList
theorem checked11282 : bytes11282=statementBytes 11400 (op11282.map lower) ∧ bytes11282.length=60 := by core033_kernel_decide
def op11283 : List WordIR.Op := [.bnot 11400]
def bytes11283 : Bytes := ("    let r00002c89: u32 = !r00002c88;\n" : String).toByteArray.data.toList
theorem checked11283 : bytes11283=statementBytes 11401 (op11283.map lower) ∧ bytes11283.length=37 := by core033_kernel_decide
def op11284 : List WordIR.Op := [.band 11397 11401]
def bytes11284 : Bytes := ("    let r00002c8a: u32 = r00002c85 & r00002c89;\n" : String).toByteArray.data.toList
theorem checked11284 : bytes11284=statementBytes 11402 (op11284.map lower) ∧ bytes11284.length=48 := by core033_kernel_decide
def op11285 : List WordIR.Op := [.bxor 11394 11402]
def bytes11285 : Bytes := ("    let r00002c8b: u32 = r00002c82 ^ r00002c8a;\n" : String).toByteArray.data.toList
theorem checked11285 : bytes11285=statementBytes 11403 (op11285.map lower) ∧ bytes11285.length=48 := by core033_kernel_decide
def op11286 : List WordIR.Op := [.shr 11403 31]
def bytes11286 : Bytes := ("    let r00002c8c: u32 = r00002c8b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11286 : bytes11286=statementBytes 11404 (op11286.map lower) ∧ bytes11286.length=54 := by core033_kernel_decide
def op11287 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11287 : Bytes := ("    let r00002c8d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11287 : bytes11287=statementBytes 11405 (op11287.map lower) ∧ bytes11287.length=41 := by core033_kernel_decide
def op11288 : List WordIR.Op := [.bxor 11404 11405]
def bytes11288 : Bytes := ("    let r00002c8e: u32 = r00002c8c ^ r00002c8d;\n" : String).toByteArray.data.toList
theorem checked11288 : bytes11288=statementBytes 11406 (op11288.map lower) ∧ bytes11288.length=48 := by core033_kernel_decide
def op11289 : List WordIR.Op := [.literal (BitVec.ofNat 32 4)]
def bytes11289 : Bytes := ("    let r00002c8f: u32 = 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked11289 : bytes11289=statementBytes 11407 (op11289.map lower) ∧ bytes11289.length=41 := by core033_kernel_decide
def op11290 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11290 : Bytes := ("    let r00002c90: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11290 : bytes11290=statementBytes 11408 (op11290.map lower) ∧ bytes11290.length=41 := by core033_kernel_decide
def op11291 : List WordIR.Op := [.bxor 10620 11408]
def bytes11291 : Bytes := ("    let r00002c91: u32 = r0000297c ^ r00002c90;\n" : String).toByteArray.data.toList
theorem checked11291 : bytes11291=statementBytes 11409 (op11291.map lower) ∧ bytes11291.length=48 := by core033_kernel_decide
def op11292 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11292 : Bytes := ("    let r00002c92: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11292 : bytes11292=statementBytes 11410 (op11292.map lower) ∧ bytes11292.length=41 := by core033_kernel_decide
def op11293 : List WordIR.Op := [.bnot 11410]
def bytes11293 : Bytes := ("    let r00002c93: u32 = !r00002c92;\n" : String).toByteArray.data.toList
theorem checked11293 : bytes11293=statementBytes 11411 (op11293.map lower) ∧ bytes11293.length=37 := by core033_kernel_decide
def op11294 : List WordIR.Op := [.band 11409 11411]
def bytes11294 : Bytes := ("    let r00002c94: u32 = r00002c91 & r00002c93;\n" : String).toByteArray.data.toList
theorem checked11294 : bytes11294=statementBytes 11412 (op11294.map lower) ∧ bytes11294.length=48 := by core033_kernel_decide
def op11295 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11295 : Bytes := ("    let r00002c95: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11295 : bytes11295=statementBytes 11413 (op11295.map lower) ∧ bytes11295.length=41 := by core033_kernel_decide
def op11296 : List WordIR.Op := [.bxor 10620 11413]
def bytes11296 : Bytes := ("    let r00002c96: u32 = r0000297c ^ r00002c95;\n" : String).toByteArray.data.toList
theorem checked11296 : bytes11296=statementBytes 11414 (op11296.map lower) ∧ bytes11296.length=48 := by core033_kernel_decide
def op11297 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11297 : Bytes := ("    let r00002c97: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11297 : bytes11297=statementBytes 11415 (op11297.map lower) ∧ bytes11297.length=41 := by core033_kernel_decide
def op11298 : List WordIR.Op := [.bnot 11415]
def bytes11298 : Bytes := ("    let r00002c98: u32 = !r00002c97;\n" : String).toByteArray.data.toList
theorem checked11298 : bytes11298=statementBytes 11416 (op11298.map lower) ∧ bytes11298.length=37 := by core033_kernel_decide
def op11299 : List WordIR.Op := [.bxor 11414 11416]
def bytes11299 : Bytes := ("    let r00002c99: u32 = r00002c96 ^ r00002c98;\n" : String).toByteArray.data.toList
theorem checked11299 : bytes11299=statementBytes 11417 (op11299.map lower) ∧ bytes11299.length=48 := by core033_kernel_decide
def op11300 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11300 : Bytes := ("    let r00002c9a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11300 : bytes11300=statementBytes 11418 (op11300.map lower) ∧ bytes11300.length=41 := by core033_kernel_decide
def op11301 : List WordIR.Op := [.bxor 10620 11418]
def bytes11301 : Bytes := ("    let r00002c9b: u32 = r0000297c ^ r00002c9a;\n" : String).toByteArray.data.toList
theorem checked11301 : bytes11301=statementBytes 11419 (op11301.map lower) ∧ bytes11301.length=48 := by core033_kernel_decide
def op11302 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11302 : Bytes := ("    let r00002c9c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11302 : bytes11302=statementBytes 11420 (op11302.map lower) ∧ bytes11302.length=41 := by core033_kernel_decide
def op11303 : List WordIR.Op := [.bnot 11420]
def bytes11303 : Bytes := ("    let r00002c9d: u32 = !r00002c9c;\n" : String).toByteArray.data.toList
theorem checked11303 : bytes11303=statementBytes 11421 (op11303.map lower) ∧ bytes11303.length=37 := by core033_kernel_decide
def op11304 : List WordIR.Op := [.badd 11419 11421]
def bytes11304 : Bytes := ("    let r00002c9e: u32 = r00002c9b.wrapping_add(r00002c9d);\n" : String).toByteArray.data.toList
theorem checked11304 : bytes11304=statementBytes 11422 (op11304.map lower) ∧ bytes11304.length=60 := by core033_kernel_decide
def op11305 : List WordIR.Op := [.bnot 11422]
def bytes11305 : Bytes := ("    let r00002c9f: u32 = !r00002c9e;\n" : String).toByteArray.data.toList
theorem checked11305 : bytes11305=statementBytes 11423 (op11305.map lower) ∧ bytes11305.length=37 := by core033_kernel_decide
def op11306 : List WordIR.Op := [.band 11417 11423]
def bytes11306 : Bytes := ("    let r00002ca0: u32 = r00002c99 & r00002c9f;\n" : String).toByteArray.data.toList
theorem checked11306 : bytes11306=statementBytes 11424 (op11306.map lower) ∧ bytes11306.length=48 := by core033_kernel_decide
def op11307 : List WordIR.Op := [.bxor 11412 11424]
def bytes11307 : Bytes := ("    let r00002ca1: u32 = r00002c94 ^ r00002ca0;\n" : String).toByteArray.data.toList
theorem checked11307 : bytes11307=statementBytes 11425 (op11307.map lower) ∧ bytes11307.length=48 := by core033_kernel_decide
def op11308 : List WordIR.Op := [.shr 11425 31]
def bytes11308 : Bytes := ("    let r00002ca2: u32 = r00002ca1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11308 : bytes11308=statementBytes 11426 (op11308.map lower) ∧ bytes11308.length=54 := by core033_kernel_decide
def op11309 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11309 : Bytes := ("    let r00002ca3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11309 : bytes11309=statementBytes 11427 (op11309.map lower) ∧ bytes11309.length=41 := by core033_kernel_decide
def op11310 : List WordIR.Op := [.bxor 11426 11427]
def bytes11310 : Bytes := ("    let r00002ca4: u32 = r00002ca2 ^ r00002ca3;\n" : String).toByteArray.data.toList
theorem checked11310 : bytes11310=statementBytes 11428 (op11310.map lower) ∧ bytes11310.length=48 := by core033_kernel_decide
def op11311 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11311 : Bytes := ("    let r00002ca5: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11311 : bytes11311=statementBytes 11429 (op11311.map lower) ∧ bytes11311.length=41 := by core033_kernel_decide
def op11312 : List WordIR.Op := [.bxor 693 11429]
def bytes11312 : Bytes := ("    let r00002ca6: u32 = r000002b5 ^ r00002ca5;\n" : String).toByteArray.data.toList
theorem checked11312 : bytes11312=statementBytes 11430 (op11312.map lower) ∧ bytes11312.length=48 := by core033_kernel_decide
def op11313 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11313 : Bytes := ("    let r00002ca7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11313 : bytes11313=statementBytes 11431 (op11313.map lower) ∧ bytes11313.length=41 := by core033_kernel_decide
def op11314 : List WordIR.Op := [.bnot 11431]
def bytes11314 : Bytes := ("    let r00002ca8: u32 = !r00002ca7;\n" : String).toByteArray.data.toList
theorem checked11314 : bytes11314=statementBytes 11432 (op11314.map lower) ∧ bytes11314.length=37 := by core033_kernel_decide
def op11315 : List WordIR.Op := [.band 11430 11432]
def bytes11315 : Bytes := ("    let r00002ca9: u32 = r00002ca6 & r00002ca8;\n" : String).toByteArray.data.toList
theorem checked11315 : bytes11315=statementBytes 11433 (op11315.map lower) ∧ bytes11315.length=48 := by core033_kernel_decide
def op11316 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11316 : Bytes := ("    let r00002caa: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11316 : bytes11316=statementBytes 11434 (op11316.map lower) ∧ bytes11316.length=41 := by core033_kernel_decide
def op11317 : List WordIR.Op := [.bxor 693 11434]
def bytes11317 : Bytes := ("    let r00002cab: u32 = r000002b5 ^ r00002caa;\n" : String).toByteArray.data.toList
theorem checked11317 : bytes11317=statementBytes 11435 (op11317.map lower) ∧ bytes11317.length=48 := by core033_kernel_decide
def op11318 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11318 : Bytes := ("    let r00002cac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11318 : bytes11318=statementBytes 11436 (op11318.map lower) ∧ bytes11318.length=41 := by core033_kernel_decide
def op11319 : List WordIR.Op := [.bnot 11436]
def bytes11319 : Bytes := ("    let r00002cad: u32 = !r00002cac;\n" : String).toByteArray.data.toList
theorem checked11319 : bytes11319=statementBytes 11437 (op11319.map lower) ∧ bytes11319.length=37 := by core033_kernel_decide
def op11320 : List WordIR.Op := [.bxor 11435 11437]
def bytes11320 : Bytes := ("    let r00002cae: u32 = r00002cab ^ r00002cad;\n" : String).toByteArray.data.toList
theorem checked11320 : bytes11320=statementBytes 11438 (op11320.map lower) ∧ bytes11320.length=48 := by core033_kernel_decide
def op11321 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11321 : Bytes := ("    let r00002caf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11321 : bytes11321=statementBytes 11439 (op11321.map lower) ∧ bytes11321.length=41 := by core033_kernel_decide
def op11322 : List WordIR.Op := [.bxor 693 11439]
def bytes11322 : Bytes := ("    let r00002cb0: u32 = r000002b5 ^ r00002caf;\n" : String).toByteArray.data.toList
theorem checked11322 : bytes11322=statementBytes 11440 (op11322.map lower) ∧ bytes11322.length=48 := by core033_kernel_decide
def op11323 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11323 : Bytes := ("    let r00002cb1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11323 : bytes11323=statementBytes 11441 (op11323.map lower) ∧ bytes11323.length=41 := by core033_kernel_decide
def op11324 : List WordIR.Op := [.bnot 11441]
def bytes11324 : Bytes := ("    let r00002cb2: u32 = !r00002cb1;\n" : String).toByteArray.data.toList
theorem checked11324 : bytes11324=statementBytes 11442 (op11324.map lower) ∧ bytes11324.length=37 := by core033_kernel_decide
def op11325 : List WordIR.Op := [.badd 11440 11442]
def bytes11325 : Bytes := ("    let r00002cb3: u32 = r00002cb0.wrapping_add(r00002cb2);\n" : String).toByteArray.data.toList
theorem checked11325 : bytes11325=statementBytes 11443 (op11325.map lower) ∧ bytes11325.length=60 := by core033_kernel_decide
def op11326 : List WordIR.Op := [.bnot 11443]
def bytes11326 : Bytes := ("    let r00002cb4: u32 = !r00002cb3;\n" : String).toByteArray.data.toList
theorem checked11326 : bytes11326=statementBytes 11444 (op11326.map lower) ∧ bytes11326.length=37 := by core033_kernel_decide
def op11327 : List WordIR.Op := [.band 11438 11444]
def bytes11327 : Bytes := ("    let r00002cb5: u32 = r00002cae & r00002cb4;\n" : String).toByteArray.data.toList
theorem checked11327 : bytes11327=statementBytes 11445 (op11327.map lower) ∧ bytes11327.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11264,op11265,op11266,op11267,op11268,op11269,op11270,op11271,op11272,op11273,op11274,op11275,op11276,op11277,op11278,op11279,op11280,op11281,op11282,op11283,op11284,op11285,op11286,op11287,op11288,op11289,op11290,op11291,op11292,op11293,op11294,op11295,op11296,op11297,op11298,op11299,op11300,op11301,op11302,op11303,op11304,op11305,op11306,op11307,op11308,op11309,op11310,op11311,op11312,op11313,op11314,op11315,op11316,op11317,op11318,op11319,op11320,op11321,op11322,op11323,op11324,op11325,op11326,op11327]
def chunks : List Bytes := [bytes11264,bytes11265,bytes11266,bytes11267,bytes11268,bytes11269,bytes11270,bytes11271,bytes11272,bytes11273,bytes11274,bytes11275,bytes11276,bytes11277,bytes11278,bytes11279,bytes11280,bytes11281,bytes11282,bytes11283,bytes11284,bytes11285,bytes11286,bytes11287,bytes11288,bytes11289,bytes11290,bytes11291,bytes11292,bytes11293,bytes11294,bytes11295,bytes11296,bytes11297,bytes11298,bytes11299,bytes11300,bytes11301,bytes11302,bytes11303,bytes11304,bytes11305,bytes11306,bytes11307,bytes11308,bytes11309,bytes11310,bytes11311,bytes11312,bytes11313,bytes11314,bytes11315,bytes11316,bytes11317,bytes11318,bytes11319,bytes11320,bytes11321,bytes11322,bytes11323,bytes11324,bytes11325,bytes11326,bytes11327]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11382 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11264.1 (.cons _ _ _ _ _ checked11265.1 (.cons _ _ _ _ _ checked11266.1 (.cons _ _ _ _ _ checked11267.1 (.cons _ _ _ _ _ checked11268.1 (.cons _ _ _ _ _ checked11269.1 (.cons _ _ _ _ _ checked11270.1 (.cons _ _ _ _ _ checked11271.1 (.cons _ _ _ _ _ checked11272.1 (.cons _ _ _ _ _ checked11273.1 (.cons _ _ _ _ _ checked11274.1 (.cons _ _ _ _ _ checked11275.1 (.cons _ _ _ _ _ checked11276.1 (.cons _ _ _ _ _ checked11277.1 (.cons _ _ _ _ _ checked11278.1 (.cons _ _ _ _ _ checked11279.1 (.cons _ _ _ _ _ checked11280.1 (.cons _ _ _ _ _ checked11281.1 (.cons _ _ _ _ _ checked11282.1 (.cons _ _ _ _ _ checked11283.1 (.cons _ _ _ _ _ checked11284.1 (.cons _ _ _ _ _ checked11285.1 (.cons _ _ _ _ _ checked11286.1 (.cons _ _ _ _ _ checked11287.1 (.cons _ _ _ _ _ checked11288.1 (.cons _ _ _ _ _ checked11289.1 (.cons _ _ _ _ _ checked11290.1 (.cons _ _ _ _ _ checked11291.1 (.cons _ _ _ _ _ checked11292.1 (.cons _ _ _ _ _ checked11293.1 (.cons _ _ _ _ _ checked11294.1 (.cons _ _ _ _ _ checked11295.1 (.cons _ _ _ _ _ checked11296.1 (.cons _ _ _ _ _ checked11297.1 (.cons _ _ _ _ _ checked11298.1 (.cons _ _ _ _ _ checked11299.1 (.cons _ _ _ _ _ checked11300.1 (.cons _ _ _ _ _ checked11301.1 (.cons _ _ _ _ _ checked11302.1 (.cons _ _ _ _ _ checked11303.1 (.cons _ _ _ _ _ checked11304.1 (.cons _ _ _ _ _ checked11305.1 (.cons _ _ _ _ _ checked11306.1 (.cons _ _ _ _ _ checked11307.1 (.cons _ _ _ _ _ checked11308.1 (.cons _ _ _ _ _ checked11309.1 (.cons _ _ _ _ _ checked11310.1 (.cons _ _ _ _ _ checked11311.1 (.cons _ _ _ _ _ checked11312.1 (.cons _ _ _ _ _ checked11313.1 (.cons _ _ _ _ _ checked11314.1 (.cons _ _ _ _ _ checked11315.1 (.cons _ _ _ _ _ checked11316.1 (.cons _ _ _ _ _ checked11317.1 (.cons _ _ _ _ _ checked11318.1 (.cons _ _ _ _ _ checked11319.1 (.cons _ _ _ _ _ checked11320.1 (.cons _ _ _ _ _ checked11321.1 (.cons _ _ _ _ _ checked11322.1 (.cons _ _ _ _ _ checked11323.1 (.cons _ _ _ _ _ checked11324.1 (.cons _ _ _ _ _ checked11325.1 (.cons _ _ _ _ _ checked11326.1 (.cons _ _ _ _ _ checked11327.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11382 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2844 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11264.2,checked11265.2,checked11266.2,checked11267.2,checked11268.2,checked11269.2,checked11270.2,checked11271.2,checked11272.2,checked11273.2,checked11274.2,checked11275.2,checked11276.2,checked11277.2,checked11278.2,checked11279.2,checked11280.2,checked11281.2,checked11282.2,checked11283.2,checked11284.2,checked11285.2,checked11286.2,checked11287.2,checked11288.2,checked11289.2,checked11290.2,checked11291.2,checked11292.2,checked11293.2,checked11294.2,checked11295.2,checked11296.2,checked11297.2,checked11298.2,checked11299.2,checked11300.2,checked11301.2,checked11302.2,checked11303.2,checked11304.2,checked11305.2,checked11306.2,checked11307.2,checked11308.2,checked11309.2,checked11310.2,checked11311.2,checked11312.2,checked11313.2,checked11314.2,checked11315.2,checked11316.2,checked11317.2,checked11318.2,checked11319.2,checked11320.2,checked11321.2,checked11322.2,checked11323.2,checked11324.2,checked11325.2,checked11326.2,checked11327.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup176
