import ActualParentBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactParentBranchGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.band 344 345]
def bytes320 : Bytes := ("    let r0000015a: u32 = r00000158 & r00000159;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 346 (op320.map lower) ∧ bytes320.length=48 := by core033_kernel_decide
def op321 : List WordIR.Op := [.shr 8 24]
def bytes321 : Bytes := ("    let r0000015b: u32 = r00000008 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 347 (op321.map lower) ∧ bytes321.length=54 := by core033_kernel_decide
def op322 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes322 : Bytes := ("    let r0000015c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 348 (op322.map lower) ∧ bytes322.length=41 := by core033_kernel_decide
def op323 : List WordIR.Op := [.band 347 348]
def bytes323 : Bytes := ("    let r0000015d: u32 = r0000015b & r0000015c;\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 349 (op323.map lower) ∧ bytes323.length=48 := by core033_kernel_decide
def op324 : List WordIR.Op := [.shr 9 0]
def bytes324 : Bytes := ("    let r0000015e: u32 = r00000009 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 350 (op324.map lower) ∧ bytes324.length=54 := by core033_kernel_decide
def op325 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes325 : Bytes := ("    let r0000015f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 351 (op325.map lower) ∧ bytes325.length=41 := by core033_kernel_decide
def op326 : List WordIR.Op := [.band 350 351]
def bytes326 : Bytes := ("    let r00000160: u32 = r0000015e & r0000015f;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 352 (op326.map lower) ∧ bytes326.length=48 := by core033_kernel_decide
def op327 : List WordIR.Op := [.shr 9 8]
def bytes327 : Bytes := ("    let r00000161: u32 = r00000009 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 353 (op327.map lower) ∧ bytes327.length=54 := by core033_kernel_decide
def op328 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes328 : Bytes := ("    let r00000162: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 354 (op328.map lower) ∧ bytes328.length=41 := by core033_kernel_decide
def op329 : List WordIR.Op := [.band 353 354]
def bytes329 : Bytes := ("    let r00000163: u32 = r00000161 & r00000162;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 355 (op329.map lower) ∧ bytes329.length=48 := by core033_kernel_decide
def op330 : List WordIR.Op := [.shr 9 16]
def bytes330 : Bytes := ("    let r00000164: u32 = r00000009 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 356 (op330.map lower) ∧ bytes330.length=54 := by core033_kernel_decide
def op331 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes331 : Bytes := ("    let r00000165: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 357 (op331.map lower) ∧ bytes331.length=41 := by core033_kernel_decide
def op332 : List WordIR.Op := [.band 356 357]
def bytes332 : Bytes := ("    let r00000166: u32 = r00000164 & r00000165;\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 358 (op332.map lower) ∧ bytes332.length=48 := by core033_kernel_decide
def op333 : List WordIR.Op := [.shr 9 24]
def bytes333 : Bytes := ("    let r00000167: u32 = r00000009 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 359 (op333.map lower) ∧ bytes333.length=54 := by core033_kernel_decide
def op334 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes334 : Bytes := ("    let r00000168: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 360 (op334.map lower) ∧ bytes334.length=41 := by core033_kernel_decide
def op335 : List WordIR.Op := [.band 359 360]
def bytes335 : Bytes := ("    let r00000169: u32 = r00000167 & r00000168;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 361 (op335.map lower) ∧ bytes335.length=48 := by core033_kernel_decide
def op336 : List WordIR.Op := [.shr 10 0]
def bytes336 : Bytes := ("    let r0000016a: u32 = r0000000a >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 362 (op336.map lower) ∧ bytes336.length=54 := by core033_kernel_decide
def op337 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes337 : Bytes := ("    let r0000016b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 363 (op337.map lower) ∧ bytes337.length=41 := by core033_kernel_decide
def op338 : List WordIR.Op := [.band 362 363]
def bytes338 : Bytes := ("    let r0000016c: u32 = r0000016a & r0000016b;\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 364 (op338.map lower) ∧ bytes338.length=48 := by core033_kernel_decide
def op339 : List WordIR.Op := [.shr 10 8]
def bytes339 : Bytes := ("    let r0000016d: u32 = r0000000a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 365 (op339.map lower) ∧ bytes339.length=54 := by core033_kernel_decide
def op340 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes340 : Bytes := ("    let r0000016e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 366 (op340.map lower) ∧ bytes340.length=41 := by core033_kernel_decide
def op341 : List WordIR.Op := [.band 365 366]
def bytes341 : Bytes := ("    let r0000016f: u32 = r0000016d & r0000016e;\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 367 (op341.map lower) ∧ bytes341.length=48 := by core033_kernel_decide
def op342 : List WordIR.Op := [.shr 10 16]
def bytes342 : Bytes := ("    let r00000170: u32 = r0000000a >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 368 (op342.map lower) ∧ bytes342.length=54 := by core033_kernel_decide
def op343 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes343 : Bytes := ("    let r00000171: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 369 (op343.map lower) ∧ bytes343.length=41 := by core033_kernel_decide
def op344 : List WordIR.Op := [.band 368 369]
def bytes344 : Bytes := ("    let r00000172: u32 = r00000170 & r00000171;\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 370 (op344.map lower) ∧ bytes344.length=48 := by core033_kernel_decide
def op345 : List WordIR.Op := [.shr 10 24]
def bytes345 : Bytes := ("    let r00000173: u32 = r0000000a >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 371 (op345.map lower) ∧ bytes345.length=54 := by core033_kernel_decide
def op346 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes346 : Bytes := ("    let r00000174: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked346 : bytes346=statementBytes 372 (op346.map lower) ∧ bytes346.length=41 := by core033_kernel_decide
def op347 : List WordIR.Op := [.band 371 372]
def bytes347 : Bytes := ("    let r00000175: u32 = r00000173 & r00000174;\n" : String).toByteArray.data.toList
theorem checked347 : bytes347=statementBytes 373 (op347.map lower) ∧ bytes347.length=48 := by core033_kernel_decide
def op348 : List WordIR.Op := [.shr 11 0]
def bytes348 : Bytes := ("    let r00000176: u32 = r0000000b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked348 : bytes348=statementBytes 374 (op348.map lower) ∧ bytes348.length=54 := by core033_kernel_decide
def op349 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes349 : Bytes := ("    let r00000177: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked349 : bytes349=statementBytes 375 (op349.map lower) ∧ bytes349.length=41 := by core033_kernel_decide
def op350 : List WordIR.Op := [.band 374 375]
def bytes350 : Bytes := ("    let r00000178: u32 = r00000176 & r00000177;\n" : String).toByteArray.data.toList
theorem checked350 : bytes350=statementBytes 376 (op350.map lower) ∧ bytes350.length=48 := by core033_kernel_decide
def op351 : List WordIR.Op := [.shr 11 8]
def bytes351 : Bytes := ("    let r00000179: u32 = r0000000b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked351 : bytes351=statementBytes 377 (op351.map lower) ∧ bytes351.length=54 := by core033_kernel_decide
def op352 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes352 : Bytes := ("    let r0000017a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked352 : bytes352=statementBytes 378 (op352.map lower) ∧ bytes352.length=41 := by core033_kernel_decide
def op353 : List WordIR.Op := [.band 377 378]
def bytes353 : Bytes := ("    let r0000017b: u32 = r00000179 & r0000017a;\n" : String).toByteArray.data.toList
theorem checked353 : bytes353=statementBytes 379 (op353.map lower) ∧ bytes353.length=48 := by core033_kernel_decide
def op354 : List WordIR.Op := [.shr 11 16]
def bytes354 : Bytes := ("    let r0000017c: u32 = r0000000b >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked354 : bytes354=statementBytes 380 (op354.map lower) ∧ bytes354.length=54 := by core033_kernel_decide
def op355 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes355 : Bytes := ("    let r0000017d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked355 : bytes355=statementBytes 381 (op355.map lower) ∧ bytes355.length=41 := by core033_kernel_decide
def op356 : List WordIR.Op := [.band 380 381]
def bytes356 : Bytes := ("    let r0000017e: u32 = r0000017c & r0000017d;\n" : String).toByteArray.data.toList
theorem checked356 : bytes356=statementBytes 382 (op356.map lower) ∧ bytes356.length=48 := by core033_kernel_decide
def op357 : List WordIR.Op := [.shr 11 24]
def bytes357 : Bytes := ("    let r0000017f: u32 = r0000000b >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked357 : bytes357=statementBytes 383 (op357.map lower) ∧ bytes357.length=54 := by core033_kernel_decide
def op358 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes358 : Bytes := ("    let r00000180: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked358 : bytes358=statementBytes 384 (op358.map lower) ∧ bytes358.length=41 := by core033_kernel_decide
def op359 : List WordIR.Op := [.band 383 384]
def bytes359 : Bytes := ("    let r00000181: u32 = r0000017f & r00000180;\n" : String).toByteArray.data.toList
theorem checked359 : bytes359=statementBytes 385 (op359.map lower) ∧ bytes359.length=48 := by core033_kernel_decide
def op360 : List WordIR.Op := [.shr 12 0]
def bytes360 : Bytes := ("    let r00000182: u32 = r0000000c >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked360 : bytes360=statementBytes 386 (op360.map lower) ∧ bytes360.length=54 := by core033_kernel_decide
def op361 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes361 : Bytes := ("    let r00000183: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked361 : bytes361=statementBytes 387 (op361.map lower) ∧ bytes361.length=41 := by core033_kernel_decide
def op362 : List WordIR.Op := [.band 386 387]
def bytes362 : Bytes := ("    let r00000184: u32 = r00000182 & r00000183;\n" : String).toByteArray.data.toList
theorem checked362 : bytes362=statementBytes 388 (op362.map lower) ∧ bytes362.length=48 := by core033_kernel_decide
def op363 : List WordIR.Op := [.shr 12 8]
def bytes363 : Bytes := ("    let r00000185: u32 = r0000000c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked363 : bytes363=statementBytes 389 (op363.map lower) ∧ bytes363.length=54 := by core033_kernel_decide
def op364 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes364 : Bytes := ("    let r00000186: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked364 : bytes364=statementBytes 390 (op364.map lower) ∧ bytes364.length=41 := by core033_kernel_decide
def op365 : List WordIR.Op := [.band 389 390]
def bytes365 : Bytes := ("    let r00000187: u32 = r00000185 & r00000186;\n" : String).toByteArray.data.toList
theorem checked365 : bytes365=statementBytes 391 (op365.map lower) ∧ bytes365.length=48 := by core033_kernel_decide
def op366 : List WordIR.Op := [.shr 12 16]
def bytes366 : Bytes := ("    let r00000188: u32 = r0000000c >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked366 : bytes366=statementBytes 392 (op366.map lower) ∧ bytes366.length=54 := by core033_kernel_decide
def op367 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes367 : Bytes := ("    let r00000189: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked367 : bytes367=statementBytes 393 (op367.map lower) ∧ bytes367.length=41 := by core033_kernel_decide
def op368 : List WordIR.Op := [.band 392 393]
def bytes368 : Bytes := ("    let r0000018a: u32 = r00000188 & r00000189;\n" : String).toByteArray.data.toList
theorem checked368 : bytes368=statementBytes 394 (op368.map lower) ∧ bytes368.length=48 := by core033_kernel_decide
def op369 : List WordIR.Op := [.shr 12 24]
def bytes369 : Bytes := ("    let r0000018b: u32 = r0000000c >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked369 : bytes369=statementBytes 395 (op369.map lower) ∧ bytes369.length=54 := by core033_kernel_decide
def op370 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes370 : Bytes := ("    let r0000018c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked370 : bytes370=statementBytes 396 (op370.map lower) ∧ bytes370.length=41 := by core033_kernel_decide
def op371 : List WordIR.Op := [.band 395 396]
def bytes371 : Bytes := ("    let r0000018d: u32 = r0000018b & r0000018c;\n" : String).toByteArray.data.toList
theorem checked371 : bytes371=statementBytes 397 (op371.map lower) ∧ bytes371.length=48 := by core033_kernel_decide
def op372 : List WordIR.Op := [.shr 13 0]
def bytes372 : Bytes := ("    let r0000018e: u32 = r0000000d >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked372 : bytes372=statementBytes 398 (op372.map lower) ∧ bytes372.length=54 := by core033_kernel_decide
def op373 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes373 : Bytes := ("    let r0000018f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked373 : bytes373=statementBytes 399 (op373.map lower) ∧ bytes373.length=41 := by core033_kernel_decide
def op374 : List WordIR.Op := [.band 398 399]
def bytes374 : Bytes := ("    let r00000190: u32 = r0000018e & r0000018f;\n" : String).toByteArray.data.toList
theorem checked374 : bytes374=statementBytes 400 (op374.map lower) ∧ bytes374.length=48 := by core033_kernel_decide
def op375 : List WordIR.Op := [.shr 13 8]
def bytes375 : Bytes := ("    let r00000191: u32 = r0000000d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked375 : bytes375=statementBytes 401 (op375.map lower) ∧ bytes375.length=54 := by core033_kernel_decide
def op376 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes376 : Bytes := ("    let r00000192: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked376 : bytes376=statementBytes 402 (op376.map lower) ∧ bytes376.length=41 := by core033_kernel_decide
def op377 : List WordIR.Op := [.band 401 402]
def bytes377 : Bytes := ("    let r00000193: u32 = r00000191 & r00000192;\n" : String).toByteArray.data.toList
theorem checked377 : bytes377=statementBytes 403 (op377.map lower) ∧ bytes377.length=48 := by core033_kernel_decide
def op378 : List WordIR.Op := [.shr 13 16]
def bytes378 : Bytes := ("    let r00000194: u32 = r0000000d >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked378 : bytes378=statementBytes 404 (op378.map lower) ∧ bytes378.length=54 := by core033_kernel_decide
def op379 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes379 : Bytes := ("    let r00000195: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked379 : bytes379=statementBytes 405 (op379.map lower) ∧ bytes379.length=41 := by core033_kernel_decide
def op380 : List WordIR.Op := [.band 404 405]
def bytes380 : Bytes := ("    let r00000196: u32 = r00000194 & r00000195;\n" : String).toByteArray.data.toList
theorem checked380 : bytes380=statementBytes 406 (op380.map lower) ∧ bytes380.length=48 := by core033_kernel_decide
def op381 : List WordIR.Op := [.shr 13 24]
def bytes381 : Bytes := ("    let r00000197: u32 = r0000000d >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked381 : bytes381=statementBytes 407 (op381.map lower) ∧ bytes381.length=54 := by core033_kernel_decide
def op382 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes382 : Bytes := ("    let r00000198: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked382 : bytes382=statementBytes 408 (op382.map lower) ∧ bytes382.length=41 := by core033_kernel_decide
def op383 : List WordIR.Op := [.band 407 408]
def bytes383 : Bytes := ("    let r00000199: u32 = r00000197 & r00000198;\n" : String).toByteArray.data.toList
theorem checked383 : bytes383=statementBytes 409 (op383.map lower) ∧ bytes383.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 346 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 346 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3051 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
  decide
end ArtifactParentBranchGroup5
