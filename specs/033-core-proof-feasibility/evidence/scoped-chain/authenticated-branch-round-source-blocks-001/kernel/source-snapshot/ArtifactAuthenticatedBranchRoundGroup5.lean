import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.shr 437 31]
def bytes320 : Bytes := ("    let r000001b6: u32 = r000001b5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 438 (op320.map lower) ∧ bytes320.length=54 := by core033_kernel_decide
def op321 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes321 : Bytes := ("    let r000001b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 439 (op321.map lower) ∧ bytes321.length=41 := by core033_kernel_decide
def op322 : List WordIR.Op := [.bxor 438 439]
def bytes322 : Bytes := ("    let r000001b8: u32 = r000001b6 ^ r000001b7;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 440 (op322.map lower) ∧ bytes322.length=48 := by core033_kernel_decide
def op323 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes323 : Bytes := ("    let r000001b9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 441 (op323.map lower) ∧ bytes323.length=41 := by core033_kernel_decide
def op324 : List WordIR.Op := [.bxor 0 441]
def bytes324 : Bytes := ("    let r000001ba: u32 = r00000000 ^ r000001b9;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 442 (op324.map lower) ∧ bytes324.length=48 := by core033_kernel_decide
def op325 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes325 : Bytes := ("    let r000001bb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 443 (op325.map lower) ∧ bytes325.length=41 := by core033_kernel_decide
def op326 : List WordIR.Op := [.bnot 443]
def bytes326 : Bytes := ("    let r000001bc: u32 = !r000001bb;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 444 (op326.map lower) ∧ bytes326.length=37 := by core033_kernel_decide
def op327 : List WordIR.Op := [.band 442 444]
def bytes327 : Bytes := ("    let r000001bd: u32 = r000001ba & r000001bc;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 445 (op327.map lower) ∧ bytes327.length=48 := by core033_kernel_decide
def op328 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes328 : Bytes := ("    let r000001be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 446 (op328.map lower) ∧ bytes328.length=41 := by core033_kernel_decide
def op329 : List WordIR.Op := [.bxor 0 446]
def bytes329 : Bytes := ("    let r000001bf: u32 = r00000000 ^ r000001be;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 447 (op329.map lower) ∧ bytes329.length=48 := by core033_kernel_decide
def op330 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes330 : Bytes := ("    let r000001c0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 448 (op330.map lower) ∧ bytes330.length=41 := by core033_kernel_decide
def op331 : List WordIR.Op := [.bnot 448]
def bytes331 : Bytes := ("    let r000001c1: u32 = !r000001c0;\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 449 (op331.map lower) ∧ bytes331.length=37 := by core033_kernel_decide
def op332 : List WordIR.Op := [.bxor 447 449]
def bytes332 : Bytes := ("    let r000001c2: u32 = r000001bf ^ r000001c1;\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 450 (op332.map lower) ∧ bytes332.length=48 := by core033_kernel_decide
def op333 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes333 : Bytes := ("    let r000001c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 451 (op333.map lower) ∧ bytes333.length=41 := by core033_kernel_decide
def op334 : List WordIR.Op := [.bxor 0 451]
def bytes334 : Bytes := ("    let r000001c4: u32 = r00000000 ^ r000001c3;\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 452 (op334.map lower) ∧ bytes334.length=48 := by core033_kernel_decide
def op335 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes335 : Bytes := ("    let r000001c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 453 (op335.map lower) ∧ bytes335.length=41 := by core033_kernel_decide
def op336 : List WordIR.Op := [.bnot 453]
def bytes336 : Bytes := ("    let r000001c6: u32 = !r000001c5;\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 454 (op336.map lower) ∧ bytes336.length=37 := by core033_kernel_decide
def op337 : List WordIR.Op := [.badd 452 454]
def bytes337 : Bytes := ("    let r000001c7: u32 = r000001c4.wrapping_add(r000001c6);\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 455 (op337.map lower) ∧ bytes337.length=60 := by core033_kernel_decide
def op338 : List WordIR.Op := [.bnot 455]
def bytes338 : Bytes := ("    let r000001c8: u32 = !r000001c7;\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 456 (op338.map lower) ∧ bytes338.length=37 := by core033_kernel_decide
def op339 : List WordIR.Op := [.band 450 456]
def bytes339 : Bytes := ("    let r000001c9: u32 = r000001c2 & r000001c8;\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 457 (op339.map lower) ∧ bytes339.length=48 := by core033_kernel_decide
def op340 : List WordIR.Op := [.bxor 445 457]
def bytes340 : Bytes := ("    let r000001ca: u32 = r000001bd ^ r000001c9;\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 458 (op340.map lower) ∧ bytes340.length=48 := by core033_kernel_decide
def op341 : List WordIR.Op := [.shr 458 31]
def bytes341 : Bytes := ("    let r000001cb: u32 = r000001ca >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 459 (op341.map lower) ∧ bytes341.length=54 := by core033_kernel_decide
def op342 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes342 : Bytes := ("    let r000001cc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 460 (op342.map lower) ∧ bytes342.length=41 := by core033_kernel_decide
def op343 : List WordIR.Op := [.bxor 459 460]
def bytes343 : Bytes := ("    let r000001cd: u32 = r000001cb ^ r000001cc;\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 461 (op343.map lower) ∧ bytes343.length=48 := by core033_kernel_decide
def op344 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes344 : Bytes := ("    let r000001ce: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 462 (op344.map lower) ∧ bytes344.length=41 := by core033_kernel_decide
def op345 : List WordIR.Op := [.bxor 0 462]
def bytes345 : Bytes := ("    let r000001cf: u32 = r00000000 ^ r000001ce;\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 463 (op345.map lower) ∧ bytes345.length=48 := by core033_kernel_decide
def op346 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes346 : Bytes := ("    let r000001d0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked346 : bytes346=statementBytes 464 (op346.map lower) ∧ bytes346.length=41 := by core033_kernel_decide
def op347 : List WordIR.Op := [.bnot 464]
def bytes347 : Bytes := ("    let r000001d1: u32 = !r000001d0;\n" : String).toByteArray.data.toList
theorem checked347 : bytes347=statementBytes 465 (op347.map lower) ∧ bytes347.length=37 := by core033_kernel_decide
def op348 : List WordIR.Op := [.band 463 465]
def bytes348 : Bytes := ("    let r000001d2: u32 = r000001cf & r000001d1;\n" : String).toByteArray.data.toList
theorem checked348 : bytes348=statementBytes 466 (op348.map lower) ∧ bytes348.length=48 := by core033_kernel_decide
def op349 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes349 : Bytes := ("    let r000001d3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked349 : bytes349=statementBytes 467 (op349.map lower) ∧ bytes349.length=41 := by core033_kernel_decide
def op350 : List WordIR.Op := [.bxor 0 467]
def bytes350 : Bytes := ("    let r000001d4: u32 = r00000000 ^ r000001d3;\n" : String).toByteArray.data.toList
theorem checked350 : bytes350=statementBytes 468 (op350.map lower) ∧ bytes350.length=48 := by core033_kernel_decide
def op351 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes351 : Bytes := ("    let r000001d5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked351 : bytes351=statementBytes 469 (op351.map lower) ∧ bytes351.length=41 := by core033_kernel_decide
def op352 : List WordIR.Op := [.bnot 469]
def bytes352 : Bytes := ("    let r000001d6: u32 = !r000001d5;\n" : String).toByteArray.data.toList
theorem checked352 : bytes352=statementBytes 470 (op352.map lower) ∧ bytes352.length=37 := by core033_kernel_decide
def op353 : List WordIR.Op := [.bxor 468 470]
def bytes353 : Bytes := ("    let r000001d7: u32 = r000001d4 ^ r000001d6;\n" : String).toByteArray.data.toList
theorem checked353 : bytes353=statementBytes 471 (op353.map lower) ∧ bytes353.length=48 := by core033_kernel_decide
def op354 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes354 : Bytes := ("    let r000001d8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked354 : bytes354=statementBytes 472 (op354.map lower) ∧ bytes354.length=41 := by core033_kernel_decide
def op355 : List WordIR.Op := [.bxor 0 472]
def bytes355 : Bytes := ("    let r000001d9: u32 = r00000000 ^ r000001d8;\n" : String).toByteArray.data.toList
theorem checked355 : bytes355=statementBytes 473 (op355.map lower) ∧ bytes355.length=48 := by core033_kernel_decide
def op356 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes356 : Bytes := ("    let r000001da: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked356 : bytes356=statementBytes 474 (op356.map lower) ∧ bytes356.length=41 := by core033_kernel_decide
def op357 : List WordIR.Op := [.bnot 474]
def bytes357 : Bytes := ("    let r000001db: u32 = !r000001da;\n" : String).toByteArray.data.toList
theorem checked357 : bytes357=statementBytes 475 (op357.map lower) ∧ bytes357.length=37 := by core033_kernel_decide
def op358 : List WordIR.Op := [.badd 473 475]
def bytes358 : Bytes := ("    let r000001dc: u32 = r000001d9.wrapping_add(r000001db);\n" : String).toByteArray.data.toList
theorem checked358 : bytes358=statementBytes 476 (op358.map lower) ∧ bytes358.length=60 := by core033_kernel_decide
def op359 : List WordIR.Op := [.bnot 476]
def bytes359 : Bytes := ("    let r000001dd: u32 = !r000001dc;\n" : String).toByteArray.data.toList
theorem checked359 : bytes359=statementBytes 477 (op359.map lower) ∧ bytes359.length=37 := by core033_kernel_decide
def op360 : List WordIR.Op := [.band 471 477]
def bytes360 : Bytes := ("    let r000001de: u32 = r000001d7 & r000001dd;\n" : String).toByteArray.data.toList
theorem checked360 : bytes360=statementBytes 478 (op360.map lower) ∧ bytes360.length=48 := by core033_kernel_decide
def op361 : List WordIR.Op := [.bxor 466 478]
def bytes361 : Bytes := ("    let r000001df: u32 = r000001d2 ^ r000001de;\n" : String).toByteArray.data.toList
theorem checked361 : bytes361=statementBytes 479 (op361.map lower) ∧ bytes361.length=48 := by core033_kernel_decide
def op362 : List WordIR.Op := [.shr 479 31]
def bytes362 : Bytes := ("    let r000001e0: u32 = r000001df >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked362 : bytes362=statementBytes 480 (op362.map lower) ∧ bytes362.length=54 := by core033_kernel_decide
def op363 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes363 : Bytes := ("    let r000001e1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked363 : bytes363=statementBytes 481 (op363.map lower) ∧ bytes363.length=41 := by core033_kernel_decide
def op364 : List WordIR.Op := [.bxor 480 481]
def bytes364 : Bytes := ("    let r000001e2: u32 = r000001e0 ^ r000001e1;\n" : String).toByteArray.data.toList
theorem checked364 : bytes364=statementBytes 482 (op364.map lower) ∧ bytes364.length=48 := by core033_kernel_decide
def op365 : List WordIR.Op := [.bxor 461 482]
def bytes365 : Bytes := ("    let r000001e3: u32 = r000001cd ^ r000001e2;\n" : String).toByteArray.data.toList
theorem checked365 : bytes365=statementBytes 483 (op365.map lower) ∧ bytes365.length=48 := by core033_kernel_decide
def op366 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes366 : Bytes := ("    let r000001e4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked366 : bytes366=statementBytes 484 (op366.map lower) ∧ bytes366.length=41 := by core033_kernel_decide
def op367 : List WordIR.Op := [.bxor 0 484]
def bytes367 : Bytes := ("    let r000001e5: u32 = r00000000 ^ r000001e4;\n" : String).toByteArray.data.toList
theorem checked367 : bytes367=statementBytes 485 (op367.map lower) ∧ bytes367.length=48 := by core033_kernel_decide
def op368 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes368 : Bytes := ("    let r000001e6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked368 : bytes368=statementBytes 486 (op368.map lower) ∧ bytes368.length=41 := by core033_kernel_decide
def op369 : List WordIR.Op := [.bnot 486]
def bytes369 : Bytes := ("    let r000001e7: u32 = !r000001e6;\n" : String).toByteArray.data.toList
theorem checked369 : bytes369=statementBytes 487 (op369.map lower) ∧ bytes369.length=37 := by core033_kernel_decide
def op370 : List WordIR.Op := [.band 485 487]
def bytes370 : Bytes := ("    let r000001e8: u32 = r000001e5 & r000001e7;\n" : String).toByteArray.data.toList
theorem checked370 : bytes370=statementBytes 488 (op370.map lower) ∧ bytes370.length=48 := by core033_kernel_decide
def op371 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes371 : Bytes := ("    let r000001e9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked371 : bytes371=statementBytes 489 (op371.map lower) ∧ bytes371.length=41 := by core033_kernel_decide
def op372 : List WordIR.Op := [.bxor 0 489]
def bytes372 : Bytes := ("    let r000001ea: u32 = r00000000 ^ r000001e9;\n" : String).toByteArray.data.toList
theorem checked372 : bytes372=statementBytes 490 (op372.map lower) ∧ bytes372.length=48 := by core033_kernel_decide
def op373 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes373 : Bytes := ("    let r000001eb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked373 : bytes373=statementBytes 491 (op373.map lower) ∧ bytes373.length=41 := by core033_kernel_decide
def op374 : List WordIR.Op := [.bnot 491]
def bytes374 : Bytes := ("    let r000001ec: u32 = !r000001eb;\n" : String).toByteArray.data.toList
theorem checked374 : bytes374=statementBytes 492 (op374.map lower) ∧ bytes374.length=37 := by core033_kernel_decide
def op375 : List WordIR.Op := [.bxor 490 492]
def bytes375 : Bytes := ("    let r000001ed: u32 = r000001ea ^ r000001ec;\n" : String).toByteArray.data.toList
theorem checked375 : bytes375=statementBytes 493 (op375.map lower) ∧ bytes375.length=48 := by core033_kernel_decide
def op376 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes376 : Bytes := ("    let r000001ee: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked376 : bytes376=statementBytes 494 (op376.map lower) ∧ bytes376.length=41 := by core033_kernel_decide
def op377 : List WordIR.Op := [.bxor 0 494]
def bytes377 : Bytes := ("    let r000001ef: u32 = r00000000 ^ r000001ee;\n" : String).toByteArray.data.toList
theorem checked377 : bytes377=statementBytes 495 (op377.map lower) ∧ bytes377.length=48 := by core033_kernel_decide
def op378 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes378 : Bytes := ("    let r000001f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked378 : bytes378=statementBytes 496 (op378.map lower) ∧ bytes378.length=41 := by core033_kernel_decide
def op379 : List WordIR.Op := [.bnot 496]
def bytes379 : Bytes := ("    let r000001f1: u32 = !r000001f0;\n" : String).toByteArray.data.toList
theorem checked379 : bytes379=statementBytes 497 (op379.map lower) ∧ bytes379.length=37 := by core033_kernel_decide
def op380 : List WordIR.Op := [.badd 495 497]
def bytes380 : Bytes := ("    let r000001f2: u32 = r000001ef.wrapping_add(r000001f1);\n" : String).toByteArray.data.toList
theorem checked380 : bytes380=statementBytes 498 (op380.map lower) ∧ bytes380.length=60 := by core033_kernel_decide
def op381 : List WordIR.Op := [.bnot 498]
def bytes381 : Bytes := ("    let r000001f3: u32 = !r000001f2;\n" : String).toByteArray.data.toList
theorem checked381 : bytes381=statementBytes 499 (op381.map lower) ∧ bytes381.length=37 := by core033_kernel_decide
def op382 : List WordIR.Op := [.band 493 499]
def bytes382 : Bytes := ("    let r000001f4: u32 = r000001ed & r000001f3;\n" : String).toByteArray.data.toList
theorem checked382 : bytes382=statementBytes 500 (op382.map lower) ∧ bytes382.length=48 := by core033_kernel_decide
def op383 : List WordIR.Op := [.bxor 488 500]
def bytes383 : Bytes := ("    let r000001f5: u32 = r000001e8 ^ r000001f4;\n" : String).toByteArray.data.toList
theorem checked383 : bytes383=statementBytes 501 (op383.map lower) ∧ bytes383.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 438 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 438 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2847 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup5
