import ActualPadByteIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPadByteGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes320 : Bytes := ("    let r00000143: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 323 (op320.map lower) ∧ bytes320.length=41 := by core033_kernel_decide
def op321 : List WordIR.Op := [.bnot 323]
def bytes321 : Bytes := ("    let r00000144: u32 = !r00000143;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 324 (op321.map lower) ∧ bytes321.length=37 := by core033_kernel_decide
def op322 : List WordIR.Op := [.badd 322 324]
def bytes322 : Bytes := ("    let r00000145: u32 = r00000142.wrapping_add(r00000144);\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 325 (op322.map lower) ∧ bytes322.length=60 := by core033_kernel_decide
def op323 : List WordIR.Op := [.bnot 325]
def bytes323 : Bytes := ("    let r00000146: u32 = !r00000145;\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 326 (op323.map lower) ∧ bytes323.length=37 := by core033_kernel_decide
def op324 : List WordIR.Op := [.band 307 326]
def bytes324 : Bytes := ("    let r00000147: u32 = r00000133 & r00000146;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 327 (op324.map lower) ∧ bytes324.length=48 := by core033_kernel_decide
def op325 : List WordIR.Op := [.bxor 289 327]
def bytes325 : Bytes := ("    let r00000148: u32 = r00000121 ^ r00000147;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 328 (op325.map lower) ∧ bytes325.length=48 := by core033_kernel_decide
def op326 : List WordIR.Op := [.shr 328 31]
def bytes326 : Bytes := ("    let r00000149: u32 = r00000148 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 329 (op326.map lower) ∧ bytes326.length=54 := by core033_kernel_decide
def op327 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes327 : Bytes := ("    let r0000014a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 330 (op327.map lower) ∧ bytes327.length=41 := by core033_kernel_decide
def op328 : List WordIR.Op := [.bxor 329 330]
def bytes328 : Bytes := ("    let r0000014b: u32 = r00000149 ^ r0000014a;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 331 (op328.map lower) ∧ bytes328.length=48 := by core033_kernel_decide
def op329 : List WordIR.Op := [.bnot 331]
def bytes329 : Bytes := ("    let r0000014c: u32 = !r0000014b;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 332 (op329.map lower) ∧ bytes329.length=37 := by core033_kernel_decide
def op330 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes330 : Bytes := ("    let r0000014d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 333 (op330.map lower) ∧ bytes330.length=41 := by core033_kernel_decide
def op331 : List WordIR.Op := [.badd 332 333]
def bytes331 : Bytes := ("    let r0000014e: u32 = r0000014c.wrapping_add(r0000014d);\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 334 (op331.map lower) ∧ bytes331.length=60 := by core033_kernel_decide
def op332 : List WordIR.Op := [.bnot 334]
def bytes332 : Bytes := ("    let r0000014f: u32 = !r0000014e;\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 335 (op332.map lower) ∧ bytes332.length=37 := by core033_kernel_decide
def op333 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes333 : Bytes := ("    let r00000150: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 336 (op333.map lower) ∧ bytes333.length=41 := by core033_kernel_decide
def op334 : List WordIR.Op := [.badd 0 336]
def bytes334 : Bytes := ("    let r00000151: u32 = r00000000.wrapping_add(r00000150);\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 337 (op334.map lower) ∧ bytes334.length=60 := by core033_kernel_decide
def op335 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes335 : Bytes := ("    let r00000152: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 338 (op335.map lower) ∧ bytes335.length=41 := by core033_kernel_decide
def op336 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes336 : Bytes := ("    let r00000153: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 339 (op336.map lower) ∧ bytes336.length=41 := by core033_kernel_decide
def op337 : List WordIR.Op := [.band 0 339]
def bytes337 : Bytes := ("    let r00000154: u32 = r00000000 & r00000153;\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 340 (op337.map lower) ∧ bytes337.length=48 := by core033_kernel_decide
def op338 : List WordIR.Op := [.bnot 340]
def bytes338 : Bytes := ("    let r00000155: u32 = !r00000154;\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 341 (op338.map lower) ∧ bytes338.length=37 := by core033_kernel_decide
def op339 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes339 : Bytes := ("    let r00000156: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 342 (op339.map lower) ∧ bytes339.length=41 := by core033_kernel_decide
def op340 : List WordIR.Op := [.badd 341 342]
def bytes340 : Bytes := ("    let r00000157: u32 = r00000155.wrapping_add(r00000156);\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 343 (op340.map lower) ∧ bytes340.length=60 := by core033_kernel_decide
def op341 : List WordIR.Op := [.badd 338 343]
def bytes341 : Bytes := ("    let r00000158: u32 = r00000152.wrapping_add(r00000157);\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 344 (op341.map lower) ∧ bytes341.length=60 := by core033_kernel_decide
def op342 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes342 : Bytes := ("    let r00000159: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 345 (op342.map lower) ∧ bytes342.length=41 := by core033_kernel_decide
def op343 : List WordIR.Op := [.band 344 345]
def bytes343 : Bytes := ("    let r0000015a: u32 = r00000158 & r00000159;\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 346 (op343.map lower) ∧ bytes343.length=48 := by core033_kernel_decide
def op344 : List WordIR.Op := [.badd 337 346]
def bytes344 : Bytes := ("    let r0000015b: u32 = r00000151.wrapping_add(r0000015a);\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 347 (op344.map lower) ∧ bytes344.length=60 := by core033_kernel_decide
def op345 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967293)]
def bytes345 : Bytes := ("    let r0000015c: u32 = 0xfffffffd_u32;\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 348 (op345.map lower) ∧ bytes345.length=41 := by core033_kernel_decide
def op346 : List WordIR.Op := [.badd 347 348]
def bytes346 : Bytes := ("    let r0000015d: u32 = r0000015b.wrapping_add(r0000015c);\n" : String).toByteArray.data.toList
theorem checked346 : bytes346=statementBytes 349 (op346.map lower) ∧ bytes346.length=60 := by core033_kernel_decide
def op347 : List WordIR.Op := [.bxor 1 349]
def bytes347 : Bytes := ("    let r0000015e: u32 = r00000001 ^ r0000015d;\n" : String).toByteArray.data.toList
theorem checked347 : bytes347=statementBytes 350 (op347.map lower) ∧ bytes347.length=48 := by core033_kernel_decide
def op348 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes348 : Bytes := ("    let r0000015f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked348 : bytes348=statementBytes 351 (op348.map lower) ∧ bytes348.length=41 := by core033_kernel_decide
def op349 : List WordIR.Op := [.bnot 351]
def bytes349 : Bytes := ("    let r00000160: u32 = !r0000015f;\n" : String).toByteArray.data.toList
theorem checked349 : bytes349=statementBytes 352 (op349.map lower) ∧ bytes349.length=37 := by core033_kernel_decide
def op350 : List WordIR.Op := [.band 350 352]
def bytes350 : Bytes := ("    let r00000161: u32 = r0000015e & r00000160;\n" : String).toByteArray.data.toList
theorem checked350 : bytes350=statementBytes 353 (op350.map lower) ∧ bytes350.length=48 := by core033_kernel_decide
def op351 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes351 : Bytes := ("    let r00000162: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked351 : bytes351=statementBytes 354 (op351.map lower) ∧ bytes351.length=41 := by core033_kernel_decide
def op352 : List WordIR.Op := [.badd 0 354]
def bytes352 : Bytes := ("    let r00000163: u32 = r00000000.wrapping_add(r00000162);\n" : String).toByteArray.data.toList
theorem checked352 : bytes352=statementBytes 355 (op352.map lower) ∧ bytes352.length=60 := by core033_kernel_decide
def op353 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes353 : Bytes := ("    let r00000164: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked353 : bytes353=statementBytes 356 (op353.map lower) ∧ bytes353.length=41 := by core033_kernel_decide
def op354 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes354 : Bytes := ("    let r00000165: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked354 : bytes354=statementBytes 357 (op354.map lower) ∧ bytes354.length=41 := by core033_kernel_decide
def op355 : List WordIR.Op := [.band 0 357]
def bytes355 : Bytes := ("    let r00000166: u32 = r00000000 & r00000165;\n" : String).toByteArray.data.toList
theorem checked355 : bytes355=statementBytes 358 (op355.map lower) ∧ bytes355.length=48 := by core033_kernel_decide
def op356 : List WordIR.Op := [.bnot 358]
def bytes356 : Bytes := ("    let r00000167: u32 = !r00000166;\n" : String).toByteArray.data.toList
theorem checked356 : bytes356=statementBytes 359 (op356.map lower) ∧ bytes356.length=37 := by core033_kernel_decide
def op357 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes357 : Bytes := ("    let r00000168: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked357 : bytes357=statementBytes 360 (op357.map lower) ∧ bytes357.length=41 := by core033_kernel_decide
def op358 : List WordIR.Op := [.badd 359 360]
def bytes358 : Bytes := ("    let r00000169: u32 = r00000167.wrapping_add(r00000168);\n" : String).toByteArray.data.toList
theorem checked358 : bytes358=statementBytes 361 (op358.map lower) ∧ bytes358.length=60 := by core033_kernel_decide
def op359 : List WordIR.Op := [.badd 356 361]
def bytes359 : Bytes := ("    let r0000016a: u32 = r00000164.wrapping_add(r00000169);\n" : String).toByteArray.data.toList
theorem checked359 : bytes359=statementBytes 362 (op359.map lower) ∧ bytes359.length=60 := by core033_kernel_decide
def op360 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes360 : Bytes := ("    let r0000016b: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked360 : bytes360=statementBytes 363 (op360.map lower) ∧ bytes360.length=41 := by core033_kernel_decide
def op361 : List WordIR.Op := [.band 362 363]
def bytes361 : Bytes := ("    let r0000016c: u32 = r0000016a & r0000016b;\n" : String).toByteArray.data.toList
theorem checked361 : bytes361=statementBytes 364 (op361.map lower) ∧ bytes361.length=48 := by core033_kernel_decide
def op362 : List WordIR.Op := [.badd 355 364]
def bytes362 : Bytes := ("    let r0000016d: u32 = r00000163.wrapping_add(r0000016c);\n" : String).toByteArray.data.toList
theorem checked362 : bytes362=statementBytes 365 (op362.map lower) ∧ bytes362.length=60 := by core033_kernel_decide
def op363 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967293)]
def bytes363 : Bytes := ("    let r0000016e: u32 = 0xfffffffd_u32;\n" : String).toByteArray.data.toList
theorem checked363 : bytes363=statementBytes 366 (op363.map lower) ∧ bytes363.length=41 := by core033_kernel_decide
def op364 : List WordIR.Op := [.badd 365 366]
def bytes364 : Bytes := ("    let r0000016f: u32 = r0000016d.wrapping_add(r0000016e);\n" : String).toByteArray.data.toList
theorem checked364 : bytes364=statementBytes 367 (op364.map lower) ∧ bytes364.length=60 := by core033_kernel_decide
def op365 : List WordIR.Op := [.bxor 1 367]
def bytes365 : Bytes := ("    let r00000170: u32 = r00000001 ^ r0000016f;\n" : String).toByteArray.data.toList
theorem checked365 : bytes365=statementBytes 368 (op365.map lower) ∧ bytes365.length=48 := by core033_kernel_decide
def op366 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes366 : Bytes := ("    let r00000171: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked366 : bytes366=statementBytes 369 (op366.map lower) ∧ bytes366.length=41 := by core033_kernel_decide
def op367 : List WordIR.Op := [.bnot 369]
def bytes367 : Bytes := ("    let r00000172: u32 = !r00000171;\n" : String).toByteArray.data.toList
theorem checked367 : bytes367=statementBytes 370 (op367.map lower) ∧ bytes367.length=37 := by core033_kernel_decide
def op368 : List WordIR.Op := [.bxor 368 370]
def bytes368 : Bytes := ("    let r00000173: u32 = r00000170 ^ r00000172;\n" : String).toByteArray.data.toList
theorem checked368 : bytes368=statementBytes 371 (op368.map lower) ∧ bytes368.length=48 := by core033_kernel_decide
def op369 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes369 : Bytes := ("    let r00000174: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked369 : bytes369=statementBytes 372 (op369.map lower) ∧ bytes369.length=41 := by core033_kernel_decide
def op370 : List WordIR.Op := [.badd 0 372]
def bytes370 : Bytes := ("    let r00000175: u32 = r00000000.wrapping_add(r00000174);\n" : String).toByteArray.data.toList
theorem checked370 : bytes370=statementBytes 373 (op370.map lower) ∧ bytes370.length=60 := by core033_kernel_decide
def op371 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes371 : Bytes := ("    let r00000176: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked371 : bytes371=statementBytes 374 (op371.map lower) ∧ bytes371.length=41 := by core033_kernel_decide
def op372 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes372 : Bytes := ("    let r00000177: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked372 : bytes372=statementBytes 375 (op372.map lower) ∧ bytes372.length=41 := by core033_kernel_decide
def op373 : List WordIR.Op := [.band 0 375]
def bytes373 : Bytes := ("    let r00000178: u32 = r00000000 & r00000177;\n" : String).toByteArray.data.toList
theorem checked373 : bytes373=statementBytes 376 (op373.map lower) ∧ bytes373.length=48 := by core033_kernel_decide
def op374 : List WordIR.Op := [.bnot 376]
def bytes374 : Bytes := ("    let r00000179: u32 = !r00000178;\n" : String).toByteArray.data.toList
theorem checked374 : bytes374=statementBytes 377 (op374.map lower) ∧ bytes374.length=37 := by core033_kernel_decide
def op375 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes375 : Bytes := ("    let r0000017a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked375 : bytes375=statementBytes 378 (op375.map lower) ∧ bytes375.length=41 := by core033_kernel_decide
def op376 : List WordIR.Op := [.badd 377 378]
def bytes376 : Bytes := ("    let r0000017b: u32 = r00000179.wrapping_add(r0000017a);\n" : String).toByteArray.data.toList
theorem checked376 : bytes376=statementBytes 379 (op376.map lower) ∧ bytes376.length=60 := by core033_kernel_decide
def op377 : List WordIR.Op := [.badd 374 379]
def bytes377 : Bytes := ("    let r0000017c: u32 = r00000176.wrapping_add(r0000017b);\n" : String).toByteArray.data.toList
theorem checked377 : bytes377=statementBytes 380 (op377.map lower) ∧ bytes377.length=60 := by core033_kernel_decide
def op378 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes378 : Bytes := ("    let r0000017d: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked378 : bytes378=statementBytes 381 (op378.map lower) ∧ bytes378.length=41 := by core033_kernel_decide
def op379 : List WordIR.Op := [.band 380 381]
def bytes379 : Bytes := ("    let r0000017e: u32 = r0000017c & r0000017d;\n" : String).toByteArray.data.toList
theorem checked379 : bytes379=statementBytes 382 (op379.map lower) ∧ bytes379.length=48 := by core033_kernel_decide
def op380 : List WordIR.Op := [.badd 373 382]
def bytes380 : Bytes := ("    let r0000017f: u32 = r00000175.wrapping_add(r0000017e);\n" : String).toByteArray.data.toList
theorem checked380 : bytes380=statementBytes 383 (op380.map lower) ∧ bytes380.length=60 := by core033_kernel_decide
def op381 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967293)]
def bytes381 : Bytes := ("    let r00000180: u32 = 0xfffffffd_u32;\n" : String).toByteArray.data.toList
theorem checked381 : bytes381=statementBytes 384 (op381.map lower) ∧ bytes381.length=41 := by core033_kernel_decide
def op382 : List WordIR.Op := [.badd 383 384]
def bytes382 : Bytes := ("    let r00000181: u32 = r0000017f.wrapping_add(r00000180);\n" : String).toByteArray.data.toList
theorem checked382 : bytes382=statementBytes 385 (op382.map lower) ∧ bytes382.length=60 := by core033_kernel_decide
def op383 : List WordIR.Op := [.bxor 1 385]
def bytes383 : Bytes := ("    let r00000182: u32 = r00000001 ^ r00000181;\n" : String).toByteArray.data.toList
theorem checked383 : bytes383=statementBytes 386 (op383.map lower) ∧ bytes383.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 323 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 323 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3022 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
  decide
end ArtifactPadByteGroup5
