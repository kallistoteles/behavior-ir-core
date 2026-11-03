import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.shr 20 8]
def bytes320 : Bytes := ("    let r00000188: u32 = r00000014 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 392 (op320.map lower) ∧ bytes320.length=54 := by core033_kernel_decide
def op321 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes321 : Bytes := ("    let r00000189: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 393 (op321.map lower) ∧ bytes321.length=41 := by core033_kernel_decide
def op322 : List WordIR.Op := [.bnot 393]
def bytes322 : Bytes := ("    let r0000018a: u32 = !r00000189;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 394 (op322.map lower) ∧ bytes322.length=37 := by core033_kernel_decide
def op323 : List WordIR.Op := [.badd 392 394]
def bytes323 : Bytes := ("    let r0000018b: u32 = r00000188.wrapping_add(r0000018a);\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 395 (op323.map lower) ∧ bytes323.length=60 := by core033_kernel_decide
def op324 : List WordIR.Op := [.bnot 395]
def bytes324 : Bytes := ("    let r0000018c: u32 = !r0000018b;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 396 (op324.map lower) ∧ bytes324.length=37 := by core033_kernel_decide
def op325 : List WordIR.Op := [.band 391 396]
def bytes325 : Bytes := ("    let r0000018d: u32 = r00000187 & r0000018c;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 397 (op325.map lower) ∧ bytes325.length=48 := by core033_kernel_decide
def op326 : List WordIR.Op := [.bxor 387 397]
def bytes326 : Bytes := ("    let r0000018e: u32 = r00000183 ^ r0000018d;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 398 (op326.map lower) ∧ bytes326.length=48 := by core033_kernel_decide
def op327 : List WordIR.Op := [.shr 398 31]
def bytes327 : Bytes := ("    let r0000018f: u32 = r0000018e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 399 (op327.map lower) ∧ bytes327.length=54 := by core033_kernel_decide
def op328 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes328 : Bytes := ("    let r00000190: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 400 (op328.map lower) ∧ bytes328.length=41 := by core033_kernel_decide
def op329 : List WordIR.Op := [.bxor 399 400]
def bytes329 : Bytes := ("    let r00000191: u32 = r0000018f ^ r00000190;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 401 (op329.map lower) ∧ bytes329.length=48 := by core033_kernel_decide
def op330 : List WordIR.Op := [.shr 21 8]
def bytes330 : Bytes := ("    let r00000192: u32 = r00000015 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 402 (op330.map lower) ∧ bytes330.length=54 := by core033_kernel_decide
def op331 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes331 : Bytes := ("    let r00000193: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 403 (op331.map lower) ∧ bytes331.length=41 := by core033_kernel_decide
def op332 : List WordIR.Op := [.bnot 403]
def bytes332 : Bytes := ("    let r00000194: u32 = !r00000193;\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 404 (op332.map lower) ∧ bytes332.length=37 := by core033_kernel_decide
def op333 : List WordIR.Op := [.band 402 404]
def bytes333 : Bytes := ("    let r00000195: u32 = r00000192 & r00000194;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 405 (op333.map lower) ∧ bytes333.length=48 := by core033_kernel_decide
def op334 : List WordIR.Op := [.shr 21 8]
def bytes334 : Bytes := ("    let r00000196: u32 = r00000015 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 406 (op334.map lower) ∧ bytes334.length=54 := by core033_kernel_decide
def op335 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes335 : Bytes := ("    let r00000197: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 407 (op335.map lower) ∧ bytes335.length=41 := by core033_kernel_decide
def op336 : List WordIR.Op := [.bnot 407]
def bytes336 : Bytes := ("    let r00000198: u32 = !r00000197;\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 408 (op336.map lower) ∧ bytes336.length=37 := by core033_kernel_decide
def op337 : List WordIR.Op := [.bxor 406 408]
def bytes337 : Bytes := ("    let r00000199: u32 = r00000196 ^ r00000198;\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 409 (op337.map lower) ∧ bytes337.length=48 := by core033_kernel_decide
def op338 : List WordIR.Op := [.shr 21 8]
def bytes338 : Bytes := ("    let r0000019a: u32 = r00000015 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 410 (op338.map lower) ∧ bytes338.length=54 := by core033_kernel_decide
def op339 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes339 : Bytes := ("    let r0000019b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 411 (op339.map lower) ∧ bytes339.length=41 := by core033_kernel_decide
def op340 : List WordIR.Op := [.bnot 411]
def bytes340 : Bytes := ("    let r0000019c: u32 = !r0000019b;\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 412 (op340.map lower) ∧ bytes340.length=37 := by core033_kernel_decide
def op341 : List WordIR.Op := [.badd 410 412]
def bytes341 : Bytes := ("    let r0000019d: u32 = r0000019a.wrapping_add(r0000019c);\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 413 (op341.map lower) ∧ bytes341.length=60 := by core033_kernel_decide
def op342 : List WordIR.Op := [.bnot 413]
def bytes342 : Bytes := ("    let r0000019e: u32 = !r0000019d;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 414 (op342.map lower) ∧ bytes342.length=37 := by core033_kernel_decide
def op343 : List WordIR.Op := [.band 409 414]
def bytes343 : Bytes := ("    let r0000019f: u32 = r00000199 & r0000019e;\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 415 (op343.map lower) ∧ bytes343.length=48 := by core033_kernel_decide
def op344 : List WordIR.Op := [.bxor 405 415]
def bytes344 : Bytes := ("    let r000001a0: u32 = r00000195 ^ r0000019f;\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 416 (op344.map lower) ∧ bytes344.length=48 := by core033_kernel_decide
def op345 : List WordIR.Op := [.shr 416 31]
def bytes345 : Bytes := ("    let r000001a1: u32 = r000001a0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 417 (op345.map lower) ∧ bytes345.length=54 := by core033_kernel_decide
def op346 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes346 : Bytes := ("    let r000001a2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked346 : bytes346=statementBytes 418 (op346.map lower) ∧ bytes346.length=41 := by core033_kernel_decide
def op347 : List WordIR.Op := [.bxor 417 418]
def bytes347 : Bytes := ("    let r000001a3: u32 = r000001a1 ^ r000001a2;\n" : String).toByteArray.data.toList
theorem checked347 : bytes347=statementBytes 419 (op347.map lower) ∧ bytes347.length=48 := by core033_kernel_decide
def op348 : List WordIR.Op := [.shr 22 8]
def bytes348 : Bytes := ("    let r000001a4: u32 = r00000016 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked348 : bytes348=statementBytes 420 (op348.map lower) ∧ bytes348.length=54 := by core033_kernel_decide
def op349 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes349 : Bytes := ("    let r000001a5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked349 : bytes349=statementBytes 421 (op349.map lower) ∧ bytes349.length=41 := by core033_kernel_decide
def op350 : List WordIR.Op := [.bnot 421]
def bytes350 : Bytes := ("    let r000001a6: u32 = !r000001a5;\n" : String).toByteArray.data.toList
theorem checked350 : bytes350=statementBytes 422 (op350.map lower) ∧ bytes350.length=37 := by core033_kernel_decide
def op351 : List WordIR.Op := [.band 420 422]
def bytes351 : Bytes := ("    let r000001a7: u32 = r000001a4 & r000001a6;\n" : String).toByteArray.data.toList
theorem checked351 : bytes351=statementBytes 423 (op351.map lower) ∧ bytes351.length=48 := by core033_kernel_decide
def op352 : List WordIR.Op := [.shr 22 8]
def bytes352 : Bytes := ("    let r000001a8: u32 = r00000016 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked352 : bytes352=statementBytes 424 (op352.map lower) ∧ bytes352.length=54 := by core033_kernel_decide
def op353 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes353 : Bytes := ("    let r000001a9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked353 : bytes353=statementBytes 425 (op353.map lower) ∧ bytes353.length=41 := by core033_kernel_decide
def op354 : List WordIR.Op := [.bnot 425]
def bytes354 : Bytes := ("    let r000001aa: u32 = !r000001a9;\n" : String).toByteArray.data.toList
theorem checked354 : bytes354=statementBytes 426 (op354.map lower) ∧ bytes354.length=37 := by core033_kernel_decide
def op355 : List WordIR.Op := [.bxor 424 426]
def bytes355 : Bytes := ("    let r000001ab: u32 = r000001a8 ^ r000001aa;\n" : String).toByteArray.data.toList
theorem checked355 : bytes355=statementBytes 427 (op355.map lower) ∧ bytes355.length=48 := by core033_kernel_decide
def op356 : List WordIR.Op := [.shr 22 8]
def bytes356 : Bytes := ("    let r000001ac: u32 = r00000016 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked356 : bytes356=statementBytes 428 (op356.map lower) ∧ bytes356.length=54 := by core033_kernel_decide
def op357 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes357 : Bytes := ("    let r000001ad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked357 : bytes357=statementBytes 429 (op357.map lower) ∧ bytes357.length=41 := by core033_kernel_decide
def op358 : List WordIR.Op := [.bnot 429]
def bytes358 : Bytes := ("    let r000001ae: u32 = !r000001ad;\n" : String).toByteArray.data.toList
theorem checked358 : bytes358=statementBytes 430 (op358.map lower) ∧ bytes358.length=37 := by core033_kernel_decide
def op359 : List WordIR.Op := [.badd 428 430]
def bytes359 : Bytes := ("    let r000001af: u32 = r000001ac.wrapping_add(r000001ae);\n" : String).toByteArray.data.toList
theorem checked359 : bytes359=statementBytes 431 (op359.map lower) ∧ bytes359.length=60 := by core033_kernel_decide
def op360 : List WordIR.Op := [.bnot 431]
def bytes360 : Bytes := ("    let r000001b0: u32 = !r000001af;\n" : String).toByteArray.data.toList
theorem checked360 : bytes360=statementBytes 432 (op360.map lower) ∧ bytes360.length=37 := by core033_kernel_decide
def op361 : List WordIR.Op := [.band 427 432]
def bytes361 : Bytes := ("    let r000001b1: u32 = r000001ab & r000001b0;\n" : String).toByteArray.data.toList
theorem checked361 : bytes361=statementBytes 433 (op361.map lower) ∧ bytes361.length=48 := by core033_kernel_decide
def op362 : List WordIR.Op := [.bxor 423 433]
def bytes362 : Bytes := ("    let r000001b2: u32 = r000001a7 ^ r000001b1;\n" : String).toByteArray.data.toList
theorem checked362 : bytes362=statementBytes 434 (op362.map lower) ∧ bytes362.length=48 := by core033_kernel_decide
def op363 : List WordIR.Op := [.shr 434 31]
def bytes363 : Bytes := ("    let r000001b3: u32 = r000001b2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked363 : bytes363=statementBytes 435 (op363.map lower) ∧ bytes363.length=54 := by core033_kernel_decide
def op364 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes364 : Bytes := ("    let r000001b4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked364 : bytes364=statementBytes 436 (op364.map lower) ∧ bytes364.length=41 := by core033_kernel_decide
def op365 : List WordIR.Op := [.bxor 435 436]
def bytes365 : Bytes := ("    let r000001b5: u32 = r000001b3 ^ r000001b4;\n" : String).toByteArray.data.toList
theorem checked365 : bytes365=statementBytes 437 (op365.map lower) ∧ bytes365.length=48 := by core033_kernel_decide
def op366 : List WordIR.Op := [.shr 23 8]
def bytes366 : Bytes := ("    let r000001b6: u32 = r00000017 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked366 : bytes366=statementBytes 438 (op366.map lower) ∧ bytes366.length=54 := by core033_kernel_decide
def op367 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes367 : Bytes := ("    let r000001b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked367 : bytes367=statementBytes 439 (op367.map lower) ∧ bytes367.length=41 := by core033_kernel_decide
def op368 : List WordIR.Op := [.bnot 439]
def bytes368 : Bytes := ("    let r000001b8: u32 = !r000001b7;\n" : String).toByteArray.data.toList
theorem checked368 : bytes368=statementBytes 440 (op368.map lower) ∧ bytes368.length=37 := by core033_kernel_decide
def op369 : List WordIR.Op := [.band 438 440]
def bytes369 : Bytes := ("    let r000001b9: u32 = r000001b6 & r000001b8;\n" : String).toByteArray.data.toList
theorem checked369 : bytes369=statementBytes 441 (op369.map lower) ∧ bytes369.length=48 := by core033_kernel_decide
def op370 : List WordIR.Op := [.shr 23 8]
def bytes370 : Bytes := ("    let r000001ba: u32 = r00000017 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked370 : bytes370=statementBytes 442 (op370.map lower) ∧ bytes370.length=54 := by core033_kernel_decide
def op371 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes371 : Bytes := ("    let r000001bb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked371 : bytes371=statementBytes 443 (op371.map lower) ∧ bytes371.length=41 := by core033_kernel_decide
def op372 : List WordIR.Op := [.bnot 443]
def bytes372 : Bytes := ("    let r000001bc: u32 = !r000001bb;\n" : String).toByteArray.data.toList
theorem checked372 : bytes372=statementBytes 444 (op372.map lower) ∧ bytes372.length=37 := by core033_kernel_decide
def op373 : List WordIR.Op := [.bxor 442 444]
def bytes373 : Bytes := ("    let r000001bd: u32 = r000001ba ^ r000001bc;\n" : String).toByteArray.data.toList
theorem checked373 : bytes373=statementBytes 445 (op373.map lower) ∧ bytes373.length=48 := by core033_kernel_decide
def op374 : List WordIR.Op := [.shr 23 8]
def bytes374 : Bytes := ("    let r000001be: u32 = r00000017 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked374 : bytes374=statementBytes 446 (op374.map lower) ∧ bytes374.length=54 := by core033_kernel_decide
def op375 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes375 : Bytes := ("    let r000001bf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked375 : bytes375=statementBytes 447 (op375.map lower) ∧ bytes375.length=41 := by core033_kernel_decide
def op376 : List WordIR.Op := [.bnot 447]
def bytes376 : Bytes := ("    let r000001c0: u32 = !r000001bf;\n" : String).toByteArray.data.toList
theorem checked376 : bytes376=statementBytes 448 (op376.map lower) ∧ bytes376.length=37 := by core033_kernel_decide
def op377 : List WordIR.Op := [.badd 446 448]
def bytes377 : Bytes := ("    let r000001c1: u32 = r000001be.wrapping_add(r000001c0);\n" : String).toByteArray.data.toList
theorem checked377 : bytes377=statementBytes 449 (op377.map lower) ∧ bytes377.length=60 := by core033_kernel_decide
def op378 : List WordIR.Op := [.bnot 449]
def bytes378 : Bytes := ("    let r000001c2: u32 = !r000001c1;\n" : String).toByteArray.data.toList
theorem checked378 : bytes378=statementBytes 450 (op378.map lower) ∧ bytes378.length=37 := by core033_kernel_decide
def op379 : List WordIR.Op := [.band 445 450]
def bytes379 : Bytes := ("    let r000001c3: u32 = r000001bd & r000001c2;\n" : String).toByteArray.data.toList
theorem checked379 : bytes379=statementBytes 451 (op379.map lower) ∧ bytes379.length=48 := by core033_kernel_decide
def op380 : List WordIR.Op := [.bxor 441 451]
def bytes380 : Bytes := ("    let r000001c4: u32 = r000001b9 ^ r000001c3;\n" : String).toByteArray.data.toList
theorem checked380 : bytes380=statementBytes 452 (op380.map lower) ∧ bytes380.length=48 := by core033_kernel_decide
def op381 : List WordIR.Op := [.shr 452 31]
def bytes381 : Bytes := ("    let r000001c5: u32 = r000001c4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked381 : bytes381=statementBytes 453 (op381.map lower) ∧ bytes381.length=54 := by core033_kernel_decide
def op382 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes382 : Bytes := ("    let r000001c6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked382 : bytes382=statementBytes 454 (op382.map lower) ∧ bytes382.length=41 := by core033_kernel_decide
def op383 : List WordIR.Op := [.bxor 453 454]
def bytes383 : Bytes := ("    let r000001c7: u32 = r000001c5 ^ r000001c6;\n" : String).toByteArray.data.toList
theorem checked383 : bytes383=statementBytes 455 (op383.map lower) ∧ bytes383.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 392 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 392 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
  decide
end ArtifactHashBlockGroup5
