import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup177
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11328 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11328 : Bytes := ("    let r00002ca0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11328 : bytes11328=statementBytes 11424 (op11328.map lower) ∧ bytes11328.length=41 := by core033_kernel_decide
def op11329 : List WordIR.Op := [.bnot 11424]
def bytes11329 : Bytes := ("    let r00002ca1: u32 = !r00002ca0;\n" : String).toByteArray.data.toList
theorem checked11329 : bytes11329=statementBytes 11425 (op11329.map lower) ∧ bytes11329.length=37 := by core033_kernel_decide
def op11330 : List WordIR.Op := [.band 11423 11425]
def bytes11330 : Bytes := ("    let r00002ca2: u32 = r00002c9f & r00002ca1;\n" : String).toByteArray.data.toList
theorem checked11330 : bytes11330=statementBytes 11426 (op11330.map lower) ∧ bytes11330.length=48 := by core033_kernel_decide
def op11331 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11331 : Bytes := ("    let r00002ca3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11331 : bytes11331=statementBytes 11427 (op11331.map lower) ∧ bytes11331.length=41 := by core033_kernel_decide
def op11332 : List WordIR.Op := [.bxor 442 11427]
def bytes11332 : Bytes := ("    let r00002ca4: u32 = r000001ba ^ r00002ca3;\n" : String).toByteArray.data.toList
theorem checked11332 : bytes11332=statementBytes 11428 (op11332.map lower) ∧ bytes11332.length=48 := by core033_kernel_decide
def op11333 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11333 : Bytes := ("    let r00002ca5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11333 : bytes11333=statementBytes 11429 (op11333.map lower) ∧ bytes11333.length=41 := by core033_kernel_decide
def op11334 : List WordIR.Op := [.bnot 11429]
def bytes11334 : Bytes := ("    let r00002ca6: u32 = !r00002ca5;\n" : String).toByteArray.data.toList
theorem checked11334 : bytes11334=statementBytes 11430 (op11334.map lower) ∧ bytes11334.length=37 := by core033_kernel_decide
def op11335 : List WordIR.Op := [.bxor 11428 11430]
def bytes11335 : Bytes := ("    let r00002ca7: u32 = r00002ca4 ^ r00002ca6;\n" : String).toByteArray.data.toList
theorem checked11335 : bytes11335=statementBytes 11431 (op11335.map lower) ∧ bytes11335.length=48 := by core033_kernel_decide
def op11336 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11336 : Bytes := ("    let r00002ca8: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11336 : bytes11336=statementBytes 11432 (op11336.map lower) ∧ bytes11336.length=41 := by core033_kernel_decide
def op11337 : List WordIR.Op := [.bxor 442 11432]
def bytes11337 : Bytes := ("    let r00002ca9: u32 = r000001ba ^ r00002ca8;\n" : String).toByteArray.data.toList
theorem checked11337 : bytes11337=statementBytes 11433 (op11337.map lower) ∧ bytes11337.length=48 := by core033_kernel_decide
def op11338 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11338 : Bytes := ("    let r00002caa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11338 : bytes11338=statementBytes 11434 (op11338.map lower) ∧ bytes11338.length=41 := by core033_kernel_decide
def op11339 : List WordIR.Op := [.bnot 11434]
def bytes11339 : Bytes := ("    let r00002cab: u32 = !r00002caa;\n" : String).toByteArray.data.toList
theorem checked11339 : bytes11339=statementBytes 11435 (op11339.map lower) ∧ bytes11339.length=37 := by core033_kernel_decide
def op11340 : List WordIR.Op := [.badd 11433 11435]
def bytes11340 : Bytes := ("    let r00002cac: u32 = r00002ca9.wrapping_add(r00002cab);\n" : String).toByteArray.data.toList
theorem checked11340 : bytes11340=statementBytes 11436 (op11340.map lower) ∧ bytes11340.length=60 := by core033_kernel_decide
def op11341 : List WordIR.Op := [.bnot 11436]
def bytes11341 : Bytes := ("    let r00002cad: u32 = !r00002cac;\n" : String).toByteArray.data.toList
theorem checked11341 : bytes11341=statementBytes 11437 (op11341.map lower) ∧ bytes11341.length=37 := by core033_kernel_decide
def op11342 : List WordIR.Op := [.band 11431 11437]
def bytes11342 : Bytes := ("    let r00002cae: u32 = r00002ca7 & r00002cad;\n" : String).toByteArray.data.toList
theorem checked11342 : bytes11342=statementBytes 11438 (op11342.map lower) ∧ bytes11342.length=48 := by core033_kernel_decide
def op11343 : List WordIR.Op := [.bxor 11426 11438]
def bytes11343 : Bytes := ("    let r00002caf: u32 = r00002ca2 ^ r00002cae;\n" : String).toByteArray.data.toList
theorem checked11343 : bytes11343=statementBytes 11439 (op11343.map lower) ∧ bytes11343.length=48 := by core033_kernel_decide
def op11344 : List WordIR.Op := [.shr 11439 31]
def bytes11344 : Bytes := ("    let r00002cb0: u32 = r00002caf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11344 : bytes11344=statementBytes 11440 (op11344.map lower) ∧ bytes11344.length=54 := by core033_kernel_decide
def op11345 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11345 : Bytes := ("    let r00002cb1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11345 : bytes11345=statementBytes 11441 (op11345.map lower) ∧ bytes11345.length=41 := by core033_kernel_decide
def op11346 : List WordIR.Op := [.bxor 11440 11441]
def bytes11346 : Bytes := ("    let r00002cb2: u32 = r00002cb0 ^ r00002cb1;\n" : String).toByteArray.data.toList
theorem checked11346 : bytes11346=statementBytes 11442 (op11346.map lower) ∧ bytes11346.length=48 := by core033_kernel_decide
def op11347 : List WordIR.Op := [.bnot 11442]
def bytes11347 : Bytes := ("    let r00002cb3: u32 = !r00002cb2;\n" : String).toByteArray.data.toList
theorem checked11347 : bytes11347=statementBytes 11443 (op11347.map lower) ∧ bytes11347.length=37 := by core033_kernel_decide
def op11348 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11348 : Bytes := ("    let r00002cb4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11348 : bytes11348=statementBytes 11444 (op11348.map lower) ∧ bytes11348.length=41 := by core033_kernel_decide
def op11349 : List WordIR.Op := [.badd 11443 11444]
def bytes11349 : Bytes := ("    let r00002cb5: u32 = r00002cb3.wrapping_add(r00002cb4);\n" : String).toByteArray.data.toList
theorem checked11349 : bytes11349=statementBytes 11445 (op11349.map lower) ∧ bytes11349.length=60 := by core033_kernel_decide
def op11350 : List WordIR.Op := [.band 11445 10420]
def bytes11350 : Bytes := ("    let r00002cb6: u32 = r00002cb5 & r000028b4;\n" : String).toByteArray.data.toList
theorem checked11350 : bytes11350=statementBytes 11446 (op11350.map lower) ∧ bytes11350.length=48 := by core033_kernel_decide
def op11351 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11351 : Bytes := ("    let r00002cb7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11351 : bytes11351=statementBytes 11447 (op11351.map lower) ∧ bytes11351.length=41 := by core033_kernel_decide
def op11352 : List WordIR.Op := [.bxor 442 11447]
def bytes11352 : Bytes := ("    let r00002cb8: u32 = r000001ba ^ r00002cb7;\n" : String).toByteArray.data.toList
theorem checked11352 : bytes11352=statementBytes 11448 (op11352.map lower) ∧ bytes11352.length=48 := by core033_kernel_decide
def op11353 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11353 : Bytes := ("    let r00002cb9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11353 : bytes11353=statementBytes 11449 (op11353.map lower) ∧ bytes11353.length=41 := by core033_kernel_decide
def op11354 : List WordIR.Op := [.bnot 11449]
def bytes11354 : Bytes := ("    let r00002cba: u32 = !r00002cb9;\n" : String).toByteArray.data.toList
theorem checked11354 : bytes11354=statementBytes 11450 (op11354.map lower) ∧ bytes11354.length=37 := by core033_kernel_decide
def op11355 : List WordIR.Op := [.band 11448 11450]
def bytes11355 : Bytes := ("    let r00002cbb: u32 = r00002cb8 & r00002cba;\n" : String).toByteArray.data.toList
theorem checked11355 : bytes11355=statementBytes 11451 (op11355.map lower) ∧ bytes11355.length=48 := by core033_kernel_decide
def op11356 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11356 : Bytes := ("    let r00002cbc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11356 : bytes11356=statementBytes 11452 (op11356.map lower) ∧ bytes11356.length=41 := by core033_kernel_decide
def op11357 : List WordIR.Op := [.bxor 442 11452]
def bytes11357 : Bytes := ("    let r00002cbd: u32 = r000001ba ^ r00002cbc;\n" : String).toByteArray.data.toList
theorem checked11357 : bytes11357=statementBytes 11453 (op11357.map lower) ∧ bytes11357.length=48 := by core033_kernel_decide
def op11358 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11358 : Bytes := ("    let r00002cbe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11358 : bytes11358=statementBytes 11454 (op11358.map lower) ∧ bytes11358.length=41 := by core033_kernel_decide
def op11359 : List WordIR.Op := [.bnot 11454]
def bytes11359 : Bytes := ("    let r00002cbf: u32 = !r00002cbe;\n" : String).toByteArray.data.toList
theorem checked11359 : bytes11359=statementBytes 11455 (op11359.map lower) ∧ bytes11359.length=37 := by core033_kernel_decide
def op11360 : List WordIR.Op := [.bxor 11453 11455]
def bytes11360 : Bytes := ("    let r00002cc0: u32 = r00002cbd ^ r00002cbf;\n" : String).toByteArray.data.toList
theorem checked11360 : bytes11360=statementBytes 11456 (op11360.map lower) ∧ bytes11360.length=48 := by core033_kernel_decide
def op11361 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11361 : Bytes := ("    let r00002cc1: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11361 : bytes11361=statementBytes 11457 (op11361.map lower) ∧ bytes11361.length=41 := by core033_kernel_decide
def op11362 : List WordIR.Op := [.bxor 442 11457]
def bytes11362 : Bytes := ("    let r00002cc2: u32 = r000001ba ^ r00002cc1;\n" : String).toByteArray.data.toList
theorem checked11362 : bytes11362=statementBytes 11458 (op11362.map lower) ∧ bytes11362.length=48 := by core033_kernel_decide
def op11363 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11363 : Bytes := ("    let r00002cc3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11363 : bytes11363=statementBytes 11459 (op11363.map lower) ∧ bytes11363.length=41 := by core033_kernel_decide
def op11364 : List WordIR.Op := [.bnot 11459]
def bytes11364 : Bytes := ("    let r00002cc4: u32 = !r00002cc3;\n" : String).toByteArray.data.toList
theorem checked11364 : bytes11364=statementBytes 11460 (op11364.map lower) ∧ bytes11364.length=37 := by core033_kernel_decide
def op11365 : List WordIR.Op := [.badd 11458 11460]
def bytes11365 : Bytes := ("    let r00002cc5: u32 = r00002cc2.wrapping_add(r00002cc4);\n" : String).toByteArray.data.toList
theorem checked11365 : bytes11365=statementBytes 11461 (op11365.map lower) ∧ bytes11365.length=60 := by core033_kernel_decide
def op11366 : List WordIR.Op := [.bnot 11461]
def bytes11366 : Bytes := ("    let r00002cc6: u32 = !r00002cc5;\n" : String).toByteArray.data.toList
theorem checked11366 : bytes11366=statementBytes 11462 (op11366.map lower) ∧ bytes11366.length=37 := by core033_kernel_decide
def op11367 : List WordIR.Op := [.band 11456 11462]
def bytes11367 : Bytes := ("    let r00002cc7: u32 = r00002cc0 & r00002cc6;\n" : String).toByteArray.data.toList
theorem checked11367 : bytes11367=statementBytes 11463 (op11367.map lower) ∧ bytes11367.length=48 := by core033_kernel_decide
def op11368 : List WordIR.Op := [.bxor 11451 11463]
def bytes11368 : Bytes := ("    let r00002cc8: u32 = r00002cbb ^ r00002cc7;\n" : String).toByteArray.data.toList
theorem checked11368 : bytes11368=statementBytes 11464 (op11368.map lower) ∧ bytes11368.length=48 := by core033_kernel_decide
def op11369 : List WordIR.Op := [.shr 11464 31]
def bytes11369 : Bytes := ("    let r00002cc9: u32 = r00002cc8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11369 : bytes11369=statementBytes 11465 (op11369.map lower) ∧ bytes11369.length=54 := by core033_kernel_decide
def op11370 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11370 : Bytes := ("    let r00002cca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11370 : bytes11370=statementBytes 11466 (op11370.map lower) ∧ bytes11370.length=41 := by core033_kernel_decide
def op11371 : List WordIR.Op := [.bxor 11465 11466]
def bytes11371 : Bytes := ("    let r00002ccb: u32 = r00002cc9 ^ r00002cca;\n" : String).toByteArray.data.toList
theorem checked11371 : bytes11371=statementBytes 11467 (op11371.map lower) ∧ bytes11371.length=48 := by core033_kernel_decide
def op11372 : List WordIR.Op := [.bnot 11467]
def bytes11372 : Bytes := ("    let r00002ccc: u32 = !r00002ccb;\n" : String).toByteArray.data.toList
theorem checked11372 : bytes11372=statementBytes 11468 (op11372.map lower) ∧ bytes11372.length=37 := by core033_kernel_decide
def op11373 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11373 : Bytes := ("    let r00002ccd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11373 : bytes11373=statementBytes 11469 (op11373.map lower) ∧ bytes11373.length=41 := by core033_kernel_decide
def op11374 : List WordIR.Op := [.badd 11468 11469]
def bytes11374 : Bytes := ("    let r00002cce: u32 = r00002ccc.wrapping_add(r00002ccd);\n" : String).toByteArray.data.toList
theorem checked11374 : bytes11374=statementBytes 11470 (op11374.map lower) ∧ bytes11374.length=60 := by core033_kernel_decide
def op11375 : List WordIR.Op := [.bnot 11470]
def bytes11375 : Bytes := ("    let r00002ccf: u32 = !r00002cce;\n" : String).toByteArray.data.toList
theorem checked11375 : bytes11375=statementBytes 11471 (op11375.map lower) ∧ bytes11375.length=37 := by core033_kernel_decide
def op11376 : List WordIR.Op := [.band 11471 759]
def bytes11376 : Bytes := ("    let r00002cd0: u32 = r00002ccf & r000002f7;\n" : String).toByteArray.data.toList
theorem checked11376 : bytes11376=statementBytes 11472 (op11376.map lower) ∧ bytes11376.length=48 := by core033_kernel_decide
def op11377 : List WordIR.Op := [.bxor 11446 11472]
def bytes11377 : Bytes := ("    let r00002cd1: u32 = r00002cb6 ^ r00002cd0;\n" : String).toByteArray.data.toList
theorem checked11377 : bytes11377=statementBytes 11473 (op11377.map lower) ∧ bytes11377.length=48 := by core033_kernel_decide
def op11378 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11378 : Bytes := ("    let r00002cd2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11378 : bytes11378=statementBytes 11474 (op11378.map lower) ∧ bytes11378.length=41 := by core033_kernel_decide
def op11379 : List WordIR.Op := [.bxor 442 11474]
def bytes11379 : Bytes := ("    let r00002cd3: u32 = r000001ba ^ r00002cd2;\n" : String).toByteArray.data.toList
theorem checked11379 : bytes11379=statementBytes 11475 (op11379.map lower) ∧ bytes11379.length=48 := by core033_kernel_decide
def op11380 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11380 : Bytes := ("    let r00002cd4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11380 : bytes11380=statementBytes 11476 (op11380.map lower) ∧ bytes11380.length=41 := by core033_kernel_decide
def op11381 : List WordIR.Op := [.bnot 11476]
def bytes11381 : Bytes := ("    let r00002cd5: u32 = !r00002cd4;\n" : String).toByteArray.data.toList
theorem checked11381 : bytes11381=statementBytes 11477 (op11381.map lower) ∧ bytes11381.length=37 := by core033_kernel_decide
def op11382 : List WordIR.Op := [.band 11475 11477]
def bytes11382 : Bytes := ("    let r00002cd6: u32 = r00002cd3 & r00002cd5;\n" : String).toByteArray.data.toList
theorem checked11382 : bytes11382=statementBytes 11478 (op11382.map lower) ∧ bytes11382.length=48 := by core033_kernel_decide
def op11383 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11383 : Bytes := ("    let r00002cd7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11383 : bytes11383=statementBytes 11479 (op11383.map lower) ∧ bytes11383.length=41 := by core033_kernel_decide
def op11384 : List WordIR.Op := [.bxor 442 11479]
def bytes11384 : Bytes := ("    let r00002cd8: u32 = r000001ba ^ r00002cd7;\n" : String).toByteArray.data.toList
theorem checked11384 : bytes11384=statementBytes 11480 (op11384.map lower) ∧ bytes11384.length=48 := by core033_kernel_decide
def op11385 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11385 : Bytes := ("    let r00002cd9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11385 : bytes11385=statementBytes 11481 (op11385.map lower) ∧ bytes11385.length=41 := by core033_kernel_decide
def op11386 : List WordIR.Op := [.bnot 11481]
def bytes11386 : Bytes := ("    let r00002cda: u32 = !r00002cd9;\n" : String).toByteArray.data.toList
theorem checked11386 : bytes11386=statementBytes 11482 (op11386.map lower) ∧ bytes11386.length=37 := by core033_kernel_decide
def op11387 : List WordIR.Op := [.bxor 11480 11482]
def bytes11387 : Bytes := ("    let r00002cdb: u32 = r00002cd8 ^ r00002cda;\n" : String).toByteArray.data.toList
theorem checked11387 : bytes11387=statementBytes 11483 (op11387.map lower) ∧ bytes11387.length=48 := by core033_kernel_decide
def op11388 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11388 : Bytes := ("    let r00002cdc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11388 : bytes11388=statementBytes 11484 (op11388.map lower) ∧ bytes11388.length=41 := by core033_kernel_decide
def op11389 : List WordIR.Op := [.bxor 442 11484]
def bytes11389 : Bytes := ("    let r00002cdd: u32 = r000001ba ^ r00002cdc;\n" : String).toByteArray.data.toList
theorem checked11389 : bytes11389=statementBytes 11485 (op11389.map lower) ∧ bytes11389.length=48 := by core033_kernel_decide
def op11390 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11390 : Bytes := ("    let r00002cde: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11390 : bytes11390=statementBytes 11486 (op11390.map lower) ∧ bytes11390.length=41 := by core033_kernel_decide
def op11391 : List WordIR.Op := [.bnot 11486]
def bytes11391 : Bytes := ("    let r00002cdf: u32 = !r00002cde;\n" : String).toByteArray.data.toList
theorem checked11391 : bytes11391=statementBytes 11487 (op11391.map lower) ∧ bytes11391.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11328,op11329,op11330,op11331,op11332,op11333,op11334,op11335,op11336,op11337,op11338,op11339,op11340,op11341,op11342,op11343,op11344,op11345,op11346,op11347,op11348,op11349,op11350,op11351,op11352,op11353,op11354,op11355,op11356,op11357,op11358,op11359,op11360,op11361,op11362,op11363,op11364,op11365,op11366,op11367,op11368,op11369,op11370,op11371,op11372,op11373,op11374,op11375,op11376,op11377,op11378,op11379,op11380,op11381,op11382,op11383,op11384,op11385,op11386,op11387,op11388,op11389,op11390,op11391]
def chunks : List Bytes := [bytes11328,bytes11329,bytes11330,bytes11331,bytes11332,bytes11333,bytes11334,bytes11335,bytes11336,bytes11337,bytes11338,bytes11339,bytes11340,bytes11341,bytes11342,bytes11343,bytes11344,bytes11345,bytes11346,bytes11347,bytes11348,bytes11349,bytes11350,bytes11351,bytes11352,bytes11353,bytes11354,bytes11355,bytes11356,bytes11357,bytes11358,bytes11359,bytes11360,bytes11361,bytes11362,bytes11363,bytes11364,bytes11365,bytes11366,bytes11367,bytes11368,bytes11369,bytes11370,bytes11371,bytes11372,bytes11373,bytes11374,bytes11375,bytes11376,bytes11377,bytes11378,bytes11379,bytes11380,bytes11381,bytes11382,bytes11383,bytes11384,bytes11385,bytes11386,bytes11387,bytes11388,bytes11389,bytes11390,bytes11391]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11424 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11328.1 (.cons _ _ _ _ _ checked11329.1 (.cons _ _ _ _ _ checked11330.1 (.cons _ _ _ _ _ checked11331.1 (.cons _ _ _ _ _ checked11332.1 (.cons _ _ _ _ _ checked11333.1 (.cons _ _ _ _ _ checked11334.1 (.cons _ _ _ _ _ checked11335.1 (.cons _ _ _ _ _ checked11336.1 (.cons _ _ _ _ _ checked11337.1 (.cons _ _ _ _ _ checked11338.1 (.cons _ _ _ _ _ checked11339.1 (.cons _ _ _ _ _ checked11340.1 (.cons _ _ _ _ _ checked11341.1 (.cons _ _ _ _ _ checked11342.1 (.cons _ _ _ _ _ checked11343.1 (.cons _ _ _ _ _ checked11344.1 (.cons _ _ _ _ _ checked11345.1 (.cons _ _ _ _ _ checked11346.1 (.cons _ _ _ _ _ checked11347.1 (.cons _ _ _ _ _ checked11348.1 (.cons _ _ _ _ _ checked11349.1 (.cons _ _ _ _ _ checked11350.1 (.cons _ _ _ _ _ checked11351.1 (.cons _ _ _ _ _ checked11352.1 (.cons _ _ _ _ _ checked11353.1 (.cons _ _ _ _ _ checked11354.1 (.cons _ _ _ _ _ checked11355.1 (.cons _ _ _ _ _ checked11356.1 (.cons _ _ _ _ _ checked11357.1 (.cons _ _ _ _ _ checked11358.1 (.cons _ _ _ _ _ checked11359.1 (.cons _ _ _ _ _ checked11360.1 (.cons _ _ _ _ _ checked11361.1 (.cons _ _ _ _ _ checked11362.1 (.cons _ _ _ _ _ checked11363.1 (.cons _ _ _ _ _ checked11364.1 (.cons _ _ _ _ _ checked11365.1 (.cons _ _ _ _ _ checked11366.1 (.cons _ _ _ _ _ checked11367.1 (.cons _ _ _ _ _ checked11368.1 (.cons _ _ _ _ _ checked11369.1 (.cons _ _ _ _ _ checked11370.1 (.cons _ _ _ _ _ checked11371.1 (.cons _ _ _ _ _ checked11372.1 (.cons _ _ _ _ _ checked11373.1 (.cons _ _ _ _ _ checked11374.1 (.cons _ _ _ _ _ checked11375.1 (.cons _ _ _ _ _ checked11376.1 (.cons _ _ _ _ _ checked11377.1 (.cons _ _ _ _ _ checked11378.1 (.cons _ _ _ _ _ checked11379.1 (.cons _ _ _ _ _ checked11380.1 (.cons _ _ _ _ _ checked11381.1 (.cons _ _ _ _ _ checked11382.1 (.cons _ _ _ _ _ checked11383.1 (.cons _ _ _ _ _ checked11384.1 (.cons _ _ _ _ _ checked11385.1 (.cons _ _ _ _ _ checked11386.1 (.cons _ _ _ _ _ checked11387.1 (.cons _ _ _ _ _ checked11388.1 (.cons _ _ _ _ _ checked11389.1 (.cons _ _ _ _ _ checked11390.1 (.cons _ _ _ _ _ checked11391.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11424 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11328.2,checked11329.2,checked11330.2,checked11331.2,checked11332.2,checked11333.2,checked11334.2,checked11335.2,checked11336.2,checked11337.2,checked11338.2,checked11339.2,checked11340.2,checked11341.2,checked11342.2,checked11343.2,checked11344.2,checked11345.2,checked11346.2,checked11347.2,checked11348.2,checked11349.2,checked11350.2,checked11351.2,checked11352.2,checked11353.2,checked11354.2,checked11355.2,checked11356.2,checked11357.2,checked11358.2,checked11359.2,checked11360.2,checked11361.2,checked11362.2,checked11363.2,checked11364.2,checked11365.2,checked11366.2,checked11367.2,checked11368.2,checked11369.2,checked11370.2,checked11371.2,checked11372.2,checked11373.2,checked11374.2,checked11375.2,checked11376.2,checked11377.2,checked11378.2,checked11379.2,checked11380.2,checked11381.2,checked11382.2,checked11383.2,checked11384.2,checked11385.2,checked11386.2,checked11387.2,checked11388.2,checked11389.2,checked11390.2,checked11391.2]
  decide
end ArtifactPairedPathRoundGroup177
