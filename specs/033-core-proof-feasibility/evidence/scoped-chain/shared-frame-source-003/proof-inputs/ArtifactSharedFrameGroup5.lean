import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.badd 360 50]
def bytes320 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016b: u32 = r00000168.wrapping_add(r00000032);\n" : String)
theorem checked320 : bytes320=statementBytes 363 (op320.map lower) ∧ bytes320.length=60 := by core033_kernel_decide
def op321 : List WordIR.Op := [.bnot 363]
def bytes321 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016c: u32 = !r0000016b;\n" : String)
theorem checked321 : bytes321=statementBytes 364 (op321.map lower) ∧ bytes321.length=37 := by core033_kernel_decide
def op322 : List WordIR.Op := [.band 362 364]
def bytes322 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016d: u32 = r0000016a & r0000016c;\n" : String)
theorem checked322 : bytes322=statementBytes 365 (op322.map lower) ∧ bytes322.length=48 := by core033_kernel_decide
def op323 : List WordIR.Op := [.bxor 361 365]
def bytes323 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016e: u32 = r00000169 ^ r0000016d;\n" : String)
theorem checked323 : bytes323=statementBytes 366 (op323.map lower) ∧ bytes323.length=48 := by core033_kernel_decide
def op324 : List WordIR.Op := [.shr 366 31]
def bytes324 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016f: u32 = r0000016e >> 0x0000001f_u32;\n" : String)
theorem checked324 : bytes324=statementBytes 367 (op324.map lower) ∧ bytes324.length=54 := by core033_kernel_decide
def op325 : List WordIR.Op := [.bxor 367 43]
def bytes325 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000170: u32 = r0000016f ^ r0000002b;\n" : String)
theorem checked325 : bytes325=statementBytes 368 (op325.map lower) ∧ bytes325.length=48 := by core033_kernel_decide
def op326 : List WordIR.Op := [.shr 266 1]
def bytes326 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000171: u32 = r0000010a >> 0x00000001_u32;\n" : String)
theorem checked326 : bytes326=statementBytes 369 (op326.map lower) ∧ bytes326.length=54 := by core033_kernel_decide
def op327 : List WordIR.Op := [.band 369 50]
def bytes327 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000172: u32 = r00000171 & r00000032;\n" : String)
theorem checked327 : bytes327=statementBytes 370 (op327.map lower) ∧ bytes327.length=48 := by core033_kernel_decide
def op328 : List WordIR.Op := [.bxor 369 50]
def bytes328 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000173: u32 = r00000171 ^ r00000032;\n" : String)
theorem checked328 : bytes328=statementBytes 371 (op328.map lower) ∧ bytes328.length=48 := by core033_kernel_decide
def op329 : List WordIR.Op := [.badd 369 50]
def bytes329 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000174: u32 = r00000171.wrapping_add(r00000032);\n" : String)
theorem checked329 : bytes329=statementBytes 372 (op329.map lower) ∧ bytes329.length=60 := by core033_kernel_decide
def op330 : List WordIR.Op := [.bnot 372]
def bytes330 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000175: u32 = !r00000174;\n" : String)
theorem checked330 : bytes330=statementBytes 373 (op330.map lower) ∧ bytes330.length=37 := by core033_kernel_decide
def op331 : List WordIR.Op := [.band 371 373]
def bytes331 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000176: u32 = r00000173 & r00000175;\n" : String)
theorem checked331 : bytes331=statementBytes 374 (op331.map lower) ∧ bytes331.length=48 := by core033_kernel_decide
def op332 : List WordIR.Op := [.bxor 370 374]
def bytes332 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000177: u32 = r00000172 ^ r00000176;\n" : String)
theorem checked332 : bytes332=statementBytes 375 (op332.map lower) ∧ bytes332.length=48 := by core033_kernel_decide
def op333 : List WordIR.Op := [.shr 375 31]
def bytes333 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000178: u32 = r00000177 >> 0x0000001f_u32;\n" : String)
theorem checked333 : bytes333=statementBytes 376 (op333.map lower) ∧ bytes333.length=54 := by core033_kernel_decide
def op334 : List WordIR.Op := [.bxor 376 43]
def bytes334 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000179: u32 = r00000178 ^ r0000002b;\n" : String)
theorem checked334 : bytes334=statementBytes 377 (op334.map lower) ∧ bytes334.length=48 := by core033_kernel_decide
def op335 : List WordIR.Op := [.literal (BitVec.ofNat 32 99)]
def bytes335 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017a: u32 = 0x00000063_u32;\n" : String)
theorem checked335 : bytes335=statementBytes 378 (op335.map lower) ∧ bytes335.length=41 := by core033_kernel_decide
def op336 : List WordIR.Op := [.literal (BitVec.ofNat 32 111)]
def bytes336 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017b: u32 = 0x0000006f_u32;\n" : String)
theorem checked336 : bytes336=statementBytes 379 (op336.map lower) ∧ bytes336.length=41 := by core033_kernel_decide
def op337 : List WordIR.Op := [.literal (BitVec.ofNat 32 114)]
def bytes337 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017c: u32 = 0x00000072_u32;\n" : String)
theorem checked337 : bytes337=statementBytes 380 (op337.map lower) ∧ bytes337.length=41 := by core033_kernel_decide
def op338 : List WordIR.Op := [.literal (BitVec.ofNat 32 101)]
def bytes338 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017d: u32 = 0x00000065_u32;\n" : String)
theorem checked338 : bytes338=statementBytes 381 (op338.map lower) ∧ bytes338.length=41 := by core033_kernel_decide
def op339 : List WordIR.Op := [.literal (BitVec.ofNat 32 48)]
def bytes339 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017e: u32 = 0x00000030_u32;\n" : String)
theorem checked339 : bytes339=statementBytes 382 (op339.map lower) ∧ bytes339.length=41 := by core033_kernel_decide
def op340 : List WordIR.Op := [.literal (BitVec.ofNat 32 51)]
def bytes340 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017f: u32 = 0x00000033_u32;\n" : String)
theorem checked340 : bytes340=statementBytes 383 (op340.map lower) ∧ bytes340.length=41 := by core033_kernel_decide
def op341 : List WordIR.Op := [.literal (BitVec.ofNat 32 46)]
def bytes341 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000180: u32 = 0x0000002e_u32;\n" : String)
theorem checked341 : bytes341=statementBytes 384 (op341.map lower) ∧ bytes341.length=41 := by core033_kernel_decide
def op342 : List WordIR.Op := [.literal (BitVec.ofNat 32 115)]
def bytes342 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000181: u32 = 0x00000073_u32;\n" : String)
theorem checked342 : bytes342=statementBytes 385 (op342.map lower) ∧ bytes342.length=41 := by core033_kernel_decide
def op343 : List WordIR.Op := [.literal (BitVec.ofNat 32 109)]
def bytes343 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000182: u32 = 0x0000006d_u32;\n" : String)
theorem checked343 : bytes343=statementBytes 386 (op343.map lower) ∧ bytes343.length=41 := by core033_kernel_decide
def op344 : List WordIR.Op := [.literal (BitVec.ofNat 32 97)]
def bytes344 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000183: u32 = 0x00000061_u32;\n" : String)
theorem checked344 : bytes344=statementBytes 387 (op344.map lower) ∧ bytes344.length=41 := by core033_kernel_decide
def op345 : List WordIR.Op := [.literal (BitVec.ofNat 32 110)]
def bytes345 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000184: u32 = 0x0000006e_u32;\n" : String)
theorem checked345 : bytes345=statementBytes 388 (op345.map lower) ∧ bytes345.length=41 := by core033_kernel_decide
def op346 : List WordIR.Op := [.literal (BitVec.ofNat 32 116)]
def bytes346 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000185: u32 = 0x00000074_u32;\n" : String)
theorem checked346 : bytes346=statementBytes 389 (op346.map lower) ∧ bytes346.length=41 := by core033_kernel_decide
def op347 : List WordIR.Op := [.literal (BitVec.ofNat 32 105)]
def bytes347 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000186: u32 = 0x00000069_u32;\n" : String)
theorem checked347 : bytes347=statementBytes 390 (op347.map lower) ∧ bytes347.length=41 := by core033_kernel_decide
def op348 : List WordIR.Op := [.literal (BitVec.ofNat 32 118)]
def bytes348 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000187: u32 = 0x00000076_u32;\n" : String)
theorem checked348 : bytes348=statementBytes 391 (op348.map lower) ∧ bytes348.length=41 := by core033_kernel_decide
def op349 : List WordIR.Op := [.literal (BitVec.ofNat 32 49)]
def bytes349 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000188: u32 = 0x00000031_u32;\n" : String)
theorem checked349 : bytes349=statementBytes 392 (op349.map lower) ∧ bytes349.length=41 := by core033_kernel_decide
def op350 : List WordIR.Op := [.literal (BitVec.ofNat 32 81)]
def bytes350 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000189: u32 = 0x00000051_u32;\n" : String)
theorem checked350 : bytes350=statementBytes 393 (op350.map lower) ∧ bytes350.length=41 := by core033_kernel_decide
def op351 : List WordIR.Op := [.shr 1 0]
def bytes351 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018a: u32 = r00000001 >> 0x00000000_u32;\n" : String)
theorem checked351 : bytes351=statementBytes 394 (op351.map lower) ∧ bytes351.length=54 := by core033_kernel_decide
def op352 : List WordIR.Op := [.band 394 46]
def bytes352 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018b: u32 = r0000018a & r0000002e;\n" : String)
theorem checked352 : bytes352=statementBytes 395 (op352.map lower) ∧ bytes352.length=48 := by core033_kernel_decide
def op353 : List WordIR.Op := [.shr 47 0]
def bytes353 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018c: u32 = r0000002f >> 0x00000000_u32;\n" : String)
theorem checked353 : bytes353=statementBytes 396 (op353.map lower) ∧ bytes353.length=54 := by core033_kernel_decide
def op354 : List WordIR.Op := [.band 396 46]
def bytes354 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018d: u32 = r0000018c & r0000002e;\n" : String)
theorem checked354 : bytes354=statementBytes 397 (op354.map lower) ∧ bytes354.length=48 := by core033_kernel_decide
def op355 : List WordIR.Op := [.band 82 46]
def bytes355 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018e: u32 = r00000052 & r0000002e;\n" : String)
theorem checked355 : bytes355=statementBytes 398 (op355.map lower) ∧ bytes355.length=48 := by core033_kernel_decide
def op356 : List WordIR.Op := [.shr 197 0]
def bytes356 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018f: u32 = r000000c5 >> 0x00000000_u32;\n" : String)
theorem checked356 : bytes356=statementBytes 399 (op356.map lower) ∧ bytes356.length=54 := by core033_kernel_decide
def op357 : List WordIR.Op := [.band 399 46]
def bytes357 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000190: u32 = r0000018f & r0000002e;\n" : String)
theorem checked357 : bytes357=statementBytes 400 (op357.map lower) ∧ bytes357.length=48 := by core033_kernel_decide
def op358 : List WordIR.Op := [.shr 197 8]
def bytes358 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000191: u32 = r000000c5 >> 0x00000008_u32;\n" : String)
theorem checked358 : bytes358=statementBytes 401 (op358.map lower) ∧ bytes358.length=54 := by core033_kernel_decide
def op359 : List WordIR.Op := [.band 401 46]
def bytes359 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000192: u32 = r00000191 & r0000002e;\n" : String)
theorem checked359 : bytes359=statementBytes 402 (op359.map lower) ∧ bytes359.length=48 := by core033_kernel_decide
def op360 : List WordIR.Op := [.shr 197 16]
def bytes360 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000193: u32 = r000000c5 >> 0x00000010_u32;\n" : String)
theorem checked360 : bytes360=statementBytes 403 (op360.map lower) ∧ bytes360.length=54 := by core033_kernel_decide
def op361 : List WordIR.Op := [.band 403 46]
def bytes361 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000194: u32 = r00000193 & r0000002e;\n" : String)
theorem checked361 : bytes361=statementBytes 404 (op361.map lower) ∧ bytes361.length=48 := by core033_kernel_decide
def op362 : List WordIR.Op := [.shr 197 24]
def bytes362 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000195: u32 = r000000c5 >> 0x00000018_u32;\n" : String)
theorem checked362 : bytes362=statementBytes 405 (op362.map lower) ∧ bytes362.length=54 := by core033_kernel_decide
def op363 : List WordIR.Op := [.band 405 46]
def bytes363 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000196: u32 = r00000195 & r0000002e;\n" : String)
theorem checked363 : bytes363=statementBytes 406 (op363.map lower) ∧ bytes363.length=48 := by core033_kernel_decide
def op364 : List WordIR.Op := [.shr 200 0]
def bytes364 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000197: u32 = r000000c8 >> 0x00000000_u32;\n" : String)
theorem checked364 : bytes364=statementBytes 407 (op364.map lower) ∧ bytes364.length=54 := by core033_kernel_decide
def op365 : List WordIR.Op := [.band 407 46]
def bytes365 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000198: u32 = r00000197 & r0000002e;\n" : String)
theorem checked365 : bytes365=statementBytes 408 (op365.map lower) ∧ bytes365.length=48 := by core033_kernel_decide
def op366 : List WordIR.Op := [.shr 200 8]
def bytes366 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000199: u32 = r000000c8 >> 0x00000008_u32;\n" : String)
theorem checked366 : bytes366=statementBytes 409 (op366.map lower) ∧ bytes366.length=54 := by core033_kernel_decide
def op367 : List WordIR.Op := [.band 409 46]
def bytes367 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019a: u32 = r00000199 & r0000002e;\n" : String)
theorem checked367 : bytes367=statementBytes 410 (op367.map lower) ∧ bytes367.length=48 := by core033_kernel_decide
def op368 : List WordIR.Op := [.shr 200 16]
def bytes368 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019b: u32 = r000000c8 >> 0x00000010_u32;\n" : String)
theorem checked368 : bytes368=statementBytes 411 (op368.map lower) ∧ bytes368.length=54 := by core033_kernel_decide
def op369 : List WordIR.Op := [.band 411 46]
def bytes369 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019c: u32 = r0000019b & r0000002e;\n" : String)
theorem checked369 : bytes369=statementBytes 412 (op369.map lower) ∧ bytes369.length=48 := by core033_kernel_decide
def op370 : List WordIR.Op := [.shr 200 24]
def bytes370 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019d: u32 = r000000c8 >> 0x00000018_u32;\n" : String)
theorem checked370 : bytes370=statementBytes 413 (op370.map lower) ∧ bytes370.length=54 := by core033_kernel_decide
def op371 : List WordIR.Op := [.band 413 46]
def bytes371 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019e: u32 = r0000019d & r0000002e;\n" : String)
theorem checked371 : bytes371=statementBytes 414 (op371.map lower) ∧ bytes371.length=48 := by core033_kernel_decide
def op372 : List WordIR.Op := [.shr 203 0]
def bytes372 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000019f: u32 = r000000cb >> 0x00000000_u32;\n" : String)
theorem checked372 : bytes372=statementBytes 415 (op372.map lower) ∧ bytes372.length=54 := by core033_kernel_decide
def op373 : List WordIR.Op := [.band 415 46]
def bytes373 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a0: u32 = r0000019f & r0000002e;\n" : String)
theorem checked373 : bytes373=statementBytes 416 (op373.map lower) ∧ bytes373.length=48 := by core033_kernel_decide
def op374 : List WordIR.Op := [.shr 203 8]
def bytes374 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a1: u32 = r000000cb >> 0x00000008_u32;\n" : String)
theorem checked374 : bytes374=statementBytes 417 (op374.map lower) ∧ bytes374.length=54 := by core033_kernel_decide
def op375 : List WordIR.Op := [.band 417 46]
def bytes375 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a2: u32 = r000001a1 & r0000002e;\n" : String)
theorem checked375 : bytes375=statementBytes 418 (op375.map lower) ∧ bytes375.length=48 := by core033_kernel_decide
def op376 : List WordIR.Op := [.shr 203 16]
def bytes376 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a3: u32 = r000000cb >> 0x00000010_u32;\n" : String)
theorem checked376 : bytes376=statementBytes 419 (op376.map lower) ∧ bytes376.length=54 := by core033_kernel_decide
def op377 : List WordIR.Op := [.band 419 46]
def bytes377 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a4: u32 = r000001a3 & r0000002e;\n" : String)
theorem checked377 : bytes377=statementBytes 420 (op377.map lower) ∧ bytes377.length=48 := by core033_kernel_decide
def op378 : List WordIR.Op := [.shr 203 24]
def bytes378 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a5: u32 = r000000cb >> 0x00000018_u32;\n" : String)
theorem checked378 : bytes378=statementBytes 421 (op378.map lower) ∧ bytes378.length=54 := by core033_kernel_decide
def op379 : List WordIR.Op := [.band 421 46]
def bytes379 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a6: u32 = r000001a5 & r0000002e;\n" : String)
theorem checked379 : bytes379=statementBytes 422 (op379.map lower) ∧ bytes379.length=48 := by core033_kernel_decide
def op380 : List WordIR.Op := [.shr 206 0]
def bytes380 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a7: u32 = r000000ce >> 0x00000000_u32;\n" : String)
theorem checked380 : bytes380=statementBytes 423 (op380.map lower) ∧ bytes380.length=54 := by core033_kernel_decide
def op381 : List WordIR.Op := [.band 423 46]
def bytes381 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a8: u32 = r000001a7 & r0000002e;\n" : String)
theorem checked381 : bytes381=statementBytes 424 (op381.map lower) ∧ bytes381.length=48 := by core033_kernel_decide
def op382 : List WordIR.Op := [.shr 206 8]
def bytes382 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001a9: u32 = r000000ce >> 0x00000008_u32;\n" : String)
theorem checked382 : bytes382=statementBytes 425 (op382.map lower) ∧ bytes382.length=54 := by core033_kernel_decide
def op383 : List WordIR.Op := [.band 425 46]
def bytes383 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000001aa: u32 = r000001a9 & r0000002e;\n" : String)
theorem checked383 : bytes383=statementBytes 426 (op383.map lower) ∧ bytes383.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 363 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 363 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3076 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
  decide
end ArtifactSharedFrameGroup5
