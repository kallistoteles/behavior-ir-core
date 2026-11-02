import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.bxor 342 343]
def bytes320 : Bytes := ("    let r00000158: u32 = r00000156 ^ r00000157;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 344 (op320.map lower) ∧ bytes320.length=48 := by core033_kernel_decide
def op321 : List WordIR.Op := [.shr 153 3]
def bytes321 : Bytes := ("    let r00000159: u32 = r00000099 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 345 (op321.map lower) ∧ bytes321.length=54 := by core033_kernel_decide
def op322 : List WordIR.Op := [.bxor 344 345]
def bytes322 : Bytes := ("    let r0000015a: u32 = r00000158 ^ r00000159;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 346 (op322.map lower) ∧ bytes322.length=48 := by core033_kernel_decide
def op323 : List WordIR.Op := [.badd 341 346]
def bytes323 : Bytes := ("    let r0000015b: u32 = r00000155.wrapping_add(r0000015a);\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 347 (op323.map lower) ∧ bytes323.length=60 := by core033_kernel_decide
def op324 : List WordIR.Op := [.badd 347 140]
def bytes324 : Bytes := ("    let r0000015c: u32 = r0000015b.wrapping_add(r0000008c);\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 348 (op324.map lower) ∧ bytes324.length=60 := by core033_kernel_decide
def op325 : List WordIR.Op := [.rotr 335 17]
def bytes325 : Bytes := ("    let r0000015d: u32 = r0000014f.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 349 (op325.map lower) ∧ bytes325.length=65 := by core033_kernel_decide
def op326 : List WordIR.Op := [.rotr 335 19]
def bytes326 : Bytes := ("    let r0000015e: u32 = r0000014f.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 350 (op326.map lower) ∧ bytes326.length=65 := by core033_kernel_decide
def op327 : List WordIR.Op := [.bxor 349 350]
def bytes327 : Bytes := ("    let r0000015f: u32 = r0000015d ^ r0000015e;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 351 (op327.map lower) ∧ bytes327.length=48 := by core033_kernel_decide
def op328 : List WordIR.Op := [.shr 335 10]
def bytes328 : Bytes := ("    let r00000160: u32 = r0000014f >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 352 (op328.map lower) ∧ bytes328.length=54 := by core033_kernel_decide
def op329 : List WordIR.Op := [.bxor 351 352]
def bytes329 : Bytes := ("    let r00000161: u32 = r0000015f ^ r00000160;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 353 (op329.map lower) ∧ bytes329.length=48 := by core033_kernel_decide
def op330 : List WordIR.Op := [.badd 353 270]
def bytes330 : Bytes := ("    let r00000162: u32 = r00000161.wrapping_add(r0000010e);\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 354 (op330.map lower) ∧ bytes330.length=60 := by core033_kernel_decide
def op331 : List WordIR.Op := [.rotr 166 7]
def bytes331 : Bytes := ("    let r00000163: u32 = r000000a6.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 355 (op331.map lower) ∧ bytes331.length=65 := by core033_kernel_decide
def op332 : List WordIR.Op := [.rotr 166 18]
def bytes332 : Bytes := ("    let r00000164: u32 = r000000a6.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 356 (op332.map lower) ∧ bytes332.length=65 := by core033_kernel_decide
def op333 : List WordIR.Op := [.bxor 355 356]
def bytes333 : Bytes := ("    let r00000165: u32 = r00000163 ^ r00000164;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 357 (op333.map lower) ∧ bytes333.length=48 := by core033_kernel_decide
def op334 : List WordIR.Op := [.shr 166 3]
def bytes334 : Bytes := ("    let r00000166: u32 = r000000a6 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 358 (op334.map lower) ∧ bytes334.length=54 := by core033_kernel_decide
def op335 : List WordIR.Op := [.bxor 357 358]
def bytes335 : Bytes := ("    let r00000167: u32 = r00000165 ^ r00000166;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 359 (op335.map lower) ∧ bytes335.length=48 := by core033_kernel_decide
def op336 : List WordIR.Op := [.badd 354 359]
def bytes336 : Bytes := ("    let r00000168: u32 = r00000162.wrapping_add(r00000167);\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 360 (op336.map lower) ∧ bytes336.length=60 := by core033_kernel_decide
def op337 : List WordIR.Op := [.badd 360 153]
def bytes337 : Bytes := ("    let r00000169: u32 = r00000168.wrapping_add(r00000099);\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 361 (op337.map lower) ∧ bytes337.length=60 := by core033_kernel_decide
def op338 : List WordIR.Op := [.rotr 348 17]
def bytes338 : Bytes := ("    let r0000016a: u32 = r0000015c.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 362 (op338.map lower) ∧ bytes338.length=65 := by core033_kernel_decide
def op339 : List WordIR.Op := [.rotr 348 19]
def bytes339 : Bytes := ("    let r0000016b: u32 = r0000015c.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 363 (op339.map lower) ∧ bytes339.length=65 := by core033_kernel_decide
def op340 : List WordIR.Op := [.bxor 362 363]
def bytes340 : Bytes := ("    let r0000016c: u32 = r0000016a ^ r0000016b;\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 364 (op340.map lower) ∧ bytes340.length=48 := by core033_kernel_decide
def op341 : List WordIR.Op := [.shr 348 10]
def bytes341 : Bytes := ("    let r0000016d: u32 = r0000015c >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 365 (op341.map lower) ∧ bytes341.length=54 := by core033_kernel_decide
def op342 : List WordIR.Op := [.bxor 364 365]
def bytes342 : Bytes := ("    let r0000016e: u32 = r0000016c ^ r0000016d;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 366 (op342.map lower) ∧ bytes342.length=48 := by core033_kernel_decide
def op343 : List WordIR.Op := [.badd 366 283]
def bytes343 : Bytes := ("    let r0000016f: u32 = r0000016e.wrapping_add(r0000011b);\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 367 (op343.map lower) ∧ bytes343.length=60 := by core033_kernel_decide
def op344 : List WordIR.Op := [.rotr 179 7]
def bytes344 : Bytes := ("    let r00000170: u32 = r000000b3.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 368 (op344.map lower) ∧ bytes344.length=65 := by core033_kernel_decide
def op345 : List WordIR.Op := [.rotr 179 18]
def bytes345 : Bytes := ("    let r00000171: u32 = r000000b3.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 369 (op345.map lower) ∧ bytes345.length=65 := by core033_kernel_decide
def op346 : List WordIR.Op := [.bxor 368 369]
def bytes346 : Bytes := ("    let r00000172: u32 = r00000170 ^ r00000171;\n" : String).toByteArray.data.toList
theorem checked346 : bytes346=statementBytes 370 (op346.map lower) ∧ bytes346.length=48 := by core033_kernel_decide
def op347 : List WordIR.Op := [.shr 179 3]
def bytes347 : Bytes := ("    let r00000173: u32 = r000000b3 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked347 : bytes347=statementBytes 371 (op347.map lower) ∧ bytes347.length=54 := by core033_kernel_decide
def op348 : List WordIR.Op := [.bxor 370 371]
def bytes348 : Bytes := ("    let r00000174: u32 = r00000172 ^ r00000173;\n" : String).toByteArray.data.toList
theorem checked348 : bytes348=statementBytes 372 (op348.map lower) ∧ bytes348.length=48 := by core033_kernel_decide
def op349 : List WordIR.Op := [.badd 367 372]
def bytes349 : Bytes := ("    let r00000175: u32 = r0000016f.wrapping_add(r00000174);\n" : String).toByteArray.data.toList
theorem checked349 : bytes349=statementBytes 373 (op349.map lower) ∧ bytes349.length=60 := by core033_kernel_decide
def op350 : List WordIR.Op := [.badd 373 166]
def bytes350 : Bytes := ("    let r00000176: u32 = r00000175.wrapping_add(r000000a6);\n" : String).toByteArray.data.toList
theorem checked350 : bytes350=statementBytes 374 (op350.map lower) ∧ bytes350.length=60 := by core033_kernel_decide
def op351 : List WordIR.Op := [.rotr 361 17]
def bytes351 : Bytes := ("    let r00000177: u32 = r00000169.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked351 : bytes351=statementBytes 375 (op351.map lower) ∧ bytes351.length=65 := by core033_kernel_decide
def op352 : List WordIR.Op := [.rotr 361 19]
def bytes352 : Bytes := ("    let r00000178: u32 = r00000169.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked352 : bytes352=statementBytes 376 (op352.map lower) ∧ bytes352.length=65 := by core033_kernel_decide
def op353 : List WordIR.Op := [.bxor 375 376]
def bytes353 : Bytes := ("    let r00000179: u32 = r00000177 ^ r00000178;\n" : String).toByteArray.data.toList
theorem checked353 : bytes353=statementBytes 377 (op353.map lower) ∧ bytes353.length=48 := by core033_kernel_decide
def op354 : List WordIR.Op := [.shr 361 10]
def bytes354 : Bytes := ("    let r0000017a: u32 = r00000169 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked354 : bytes354=statementBytes 378 (op354.map lower) ∧ bytes354.length=54 := by core033_kernel_decide
def op355 : List WordIR.Op := [.bxor 377 378]
def bytes355 : Bytes := ("    let r0000017b: u32 = r00000179 ^ r0000017a;\n" : String).toByteArray.data.toList
theorem checked355 : bytes355=statementBytes 379 (op355.map lower) ∧ bytes355.length=48 := by core033_kernel_decide
def op356 : List WordIR.Op := [.badd 379 296]
def bytes356 : Bytes := ("    let r0000017c: u32 = r0000017b.wrapping_add(r00000128);\n" : String).toByteArray.data.toList
theorem checked356 : bytes356=statementBytes 380 (op356.map lower) ∧ bytes356.length=60 := by core033_kernel_decide
def op357 : List WordIR.Op := [.rotr 192 7]
def bytes357 : Bytes := ("    let r0000017d: u32 = r000000c0.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked357 : bytes357=statementBytes 381 (op357.map lower) ∧ bytes357.length=65 := by core033_kernel_decide
def op358 : List WordIR.Op := [.rotr 192 18]
def bytes358 : Bytes := ("    let r0000017e: u32 = r000000c0.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked358 : bytes358=statementBytes 382 (op358.map lower) ∧ bytes358.length=65 := by core033_kernel_decide
def op359 : List WordIR.Op := [.bxor 381 382]
def bytes359 : Bytes := ("    let r0000017f: u32 = r0000017d ^ r0000017e;\n" : String).toByteArray.data.toList
theorem checked359 : bytes359=statementBytes 383 (op359.map lower) ∧ bytes359.length=48 := by core033_kernel_decide
def op360 : List WordIR.Op := [.shr 192 3]
def bytes360 : Bytes := ("    let r00000180: u32 = r000000c0 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked360 : bytes360=statementBytes 384 (op360.map lower) ∧ bytes360.length=54 := by core033_kernel_decide
def op361 : List WordIR.Op := [.bxor 383 384]
def bytes361 : Bytes := ("    let r00000181: u32 = r0000017f ^ r00000180;\n" : String).toByteArray.data.toList
theorem checked361 : bytes361=statementBytes 385 (op361.map lower) ∧ bytes361.length=48 := by core033_kernel_decide
def op362 : List WordIR.Op := [.badd 380 385]
def bytes362 : Bytes := ("    let r00000182: u32 = r0000017c.wrapping_add(r00000181);\n" : String).toByteArray.data.toList
theorem checked362 : bytes362=statementBytes 386 (op362.map lower) ∧ bytes362.length=60 := by core033_kernel_decide
def op363 : List WordIR.Op := [.badd 386 179]
def bytes363 : Bytes := ("    let r00000183: u32 = r00000182.wrapping_add(r000000b3);\n" : String).toByteArray.data.toList
theorem checked363 : bytes363=statementBytes 387 (op363.map lower) ∧ bytes363.length=60 := by core033_kernel_decide
def op364 : List WordIR.Op := [.rotr 374 17]
def bytes364 : Bytes := ("    let r00000184: u32 = r00000176.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked364 : bytes364=statementBytes 388 (op364.map lower) ∧ bytes364.length=65 := by core033_kernel_decide
def op365 : List WordIR.Op := [.rotr 374 19]
def bytes365 : Bytes := ("    let r00000185: u32 = r00000176.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked365 : bytes365=statementBytes 389 (op365.map lower) ∧ bytes365.length=65 := by core033_kernel_decide
def op366 : List WordIR.Op := [.bxor 388 389]
def bytes366 : Bytes := ("    let r00000186: u32 = r00000184 ^ r00000185;\n" : String).toByteArray.data.toList
theorem checked366 : bytes366=statementBytes 390 (op366.map lower) ∧ bytes366.length=48 := by core033_kernel_decide
def op367 : List WordIR.Op := [.shr 374 10]
def bytes367 : Bytes := ("    let r00000187: u32 = r00000176 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked367 : bytes367=statementBytes 391 (op367.map lower) ∧ bytes367.length=54 := by core033_kernel_decide
def op368 : List WordIR.Op := [.bxor 390 391]
def bytes368 : Bytes := ("    let r00000188: u32 = r00000186 ^ r00000187;\n" : String).toByteArray.data.toList
theorem checked368 : bytes368=statementBytes 392 (op368.map lower) ∧ bytes368.length=48 := by core033_kernel_decide
def op369 : List WordIR.Op := [.badd 392 309]
def bytes369 : Bytes := ("    let r00000189: u32 = r00000188.wrapping_add(r00000135);\n" : String).toByteArray.data.toList
theorem checked369 : bytes369=statementBytes 393 (op369.map lower) ∧ bytes369.length=60 := by core033_kernel_decide
def op370 : List WordIR.Op := [.rotr 205 7]
def bytes370 : Bytes := ("    let r0000018a: u32 = r000000cd.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked370 : bytes370=statementBytes 394 (op370.map lower) ∧ bytes370.length=65 := by core033_kernel_decide
def op371 : List WordIR.Op := [.rotr 205 18]
def bytes371 : Bytes := ("    let r0000018b: u32 = r000000cd.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked371 : bytes371=statementBytes 395 (op371.map lower) ∧ bytes371.length=65 := by core033_kernel_decide
def op372 : List WordIR.Op := [.bxor 394 395]
def bytes372 : Bytes := ("    let r0000018c: u32 = r0000018a ^ r0000018b;\n" : String).toByteArray.data.toList
theorem checked372 : bytes372=statementBytes 396 (op372.map lower) ∧ bytes372.length=48 := by core033_kernel_decide
def op373 : List WordIR.Op := [.shr 205 3]
def bytes373 : Bytes := ("    let r0000018d: u32 = r000000cd >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked373 : bytes373=statementBytes 397 (op373.map lower) ∧ bytes373.length=54 := by core033_kernel_decide
def op374 : List WordIR.Op := [.bxor 396 397]
def bytes374 : Bytes := ("    let r0000018e: u32 = r0000018c ^ r0000018d;\n" : String).toByteArray.data.toList
theorem checked374 : bytes374=statementBytes 398 (op374.map lower) ∧ bytes374.length=48 := by core033_kernel_decide
def op375 : List WordIR.Op := [.badd 393 398]
def bytes375 : Bytes := ("    let r0000018f: u32 = r00000189.wrapping_add(r0000018e);\n" : String).toByteArray.data.toList
theorem checked375 : bytes375=statementBytes 399 (op375.map lower) ∧ bytes375.length=60 := by core033_kernel_decide
def op376 : List WordIR.Op := [.badd 399 192]
def bytes376 : Bytes := ("    let r00000190: u32 = r0000018f.wrapping_add(r000000c0);\n" : String).toByteArray.data.toList
theorem checked376 : bytes376=statementBytes 400 (op376.map lower) ∧ bytes376.length=60 := by core033_kernel_decide
def op377 : List WordIR.Op := [.rotr 387 17]
def bytes377 : Bytes := ("    let r00000191: u32 = r00000183.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked377 : bytes377=statementBytes 401 (op377.map lower) ∧ bytes377.length=65 := by core033_kernel_decide
def op378 : List WordIR.Op := [.rotr 387 19]
def bytes378 : Bytes := ("    let r00000192: u32 = r00000183.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked378 : bytes378=statementBytes 402 (op378.map lower) ∧ bytes378.length=65 := by core033_kernel_decide
def op379 : List WordIR.Op := [.bxor 401 402]
def bytes379 : Bytes := ("    let r00000193: u32 = r00000191 ^ r00000192;\n" : String).toByteArray.data.toList
theorem checked379 : bytes379=statementBytes 403 (op379.map lower) ∧ bytes379.length=48 := by core033_kernel_decide
def op380 : List WordIR.Op := [.shr 387 10]
def bytes380 : Bytes := ("    let r00000194: u32 = r00000183 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked380 : bytes380=statementBytes 404 (op380.map lower) ∧ bytes380.length=54 := by core033_kernel_decide
def op381 : List WordIR.Op := [.bxor 403 404]
def bytes381 : Bytes := ("    let r00000195: u32 = r00000193 ^ r00000194;\n" : String).toByteArray.data.toList
theorem checked381 : bytes381=statementBytes 405 (op381.map lower) ∧ bytes381.length=48 := by core033_kernel_decide
def op382 : List WordIR.Op := [.badd 405 322]
def bytes382 : Bytes := ("    let r00000196: u32 = r00000195.wrapping_add(r00000142);\n" : String).toByteArray.data.toList
theorem checked382 : bytes382=statementBytes 406 (op382.map lower) ∧ bytes382.length=60 := by core033_kernel_decide
def op383 : List WordIR.Op := [.rotr 218 7]
def bytes383 : Bytes := ("    let r00000197: u32 = r000000da.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked383 : bytes383=statementBytes 407 (op383.map lower) ∧ bytes383.length=65 := by core033_kernel_decide
def innerBlocks5 : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383]
def innerBytes5 : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345,bytes346,bytes347,bytes348,bytes349,bytes350,bytes351,bytes352,bytes353,bytes354,bytes355,bytes356,bytes357,bytes358,bytes359,bytes360,bytes361,bytes362,bytes363,bytes364,bytes365,bytes366,bytes367,bytes368,bytes369,bytes370,bytes371,bytes372,bytes373,bytes374,bytes375,bytes376,bytes377,bytes378,bytes379,bytes380,bytes381,bytes382,bytes383]
def partOps5 : List WordIR.Op := innerBlocks5.flatten
def partBytes5 : Bytes := innerBytes5.flatten
theorem partChain5 : BlockChain 344 innerBlocks5 innerBytes5 := by
  unfold innerBlocks5 innerBytes5
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.cons _ _ _ _ _ checked346.1 (.cons _ _ _ _ _ checked347.1 (.cons _ _ _ _ _ checked348.1 (.cons _ _ _ _ _ checked349.1 (.cons _ _ _ _ _ checked350.1 (.cons _ _ _ _ _ checked351.1 (.cons _ _ _ _ _ checked352.1 (.cons _ _ _ _ _ checked353.1 (.cons _ _ _ _ _ checked354.1 (.cons _ _ _ _ _ checked355.1 (.cons _ _ _ _ _ checked356.1 (.cons _ _ _ _ _ checked357.1 (.cons _ _ _ _ _ checked358.1 (.cons _ _ _ _ _ checked359.1 (.cons _ _ _ _ _ checked360.1 (.cons _ _ _ _ _ checked361.1 (.cons _ _ _ _ _ checked362.1 (.cons _ _ _ _ _ checked363.1 (.cons _ _ _ _ _ checked364.1 (.cons _ _ _ _ _ checked365.1 (.cons _ _ _ _ _ checked366.1 (.cons _ _ _ _ _ checked367.1 (.cons _ _ _ _ _ checked368.1 (.cons _ _ _ _ _ checked369.1 (.cons _ _ _ _ _ checked370.1 (.cons _ _ _ _ _ checked371.1 (.cons _ _ _ _ _ checked372.1 (.cons _ _ _ _ _ checked373.1 (.cons _ _ _ _ _ checked374.1 (.cons _ _ _ _ _ checked375.1 (.cons _ _ _ _ _ checked376.1 (.cons _ _ _ _ _ checked377.1 (.cons _ _ _ _ _ checked378.1 (.cons _ _ _ _ _ checked379.1 (.cons _ _ _ _ _ checked380.1 (.cons _ _ _ _ _ checked381.1 (.cons _ _ _ _ _ checked382.1 (.cons _ _ _ _ _ checked383.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked5 : partBytes5=statementBytes 344 (partOps5.map lower) ∧ partBytes5.length=3635 := by
  constructor
  · exact (chain_exact partChain5).trans (body_exact innerBlocks5 344)
  · simp only [partBytes5,WordSource.chunk_sizes_exact,innerBytes5,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2,checked346.2,checked347.2,checked348.2,checked349.2,checked350.2,checked351.2,checked352.2,checked353.2,checked354.2,checked355.2,checked356.2,checked357.2,checked358.2,checked359.2,checked360.2,checked361.2,checked362.2,checked363.2,checked364.2,checked365.2,checked366.2,checked367.2,checked368.2,checked369.2,checked370.2,checked371.2,checked372.2,checked373.2,checked374.2,checked375.2,checked376.2,checked377.2,checked378.2,checked379.2,checked380.2,checked381.2,checked382.2,checked383.2]
    decide
theorem partLength5 : partOps5.length=64 := by
  simp only [partOps5,innerBlocks5,op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345,op346,op347,op348,op349,op350,op351,op352,op353,op354,op355,op356,op357,op358,op359,op360,op361,op362,op363,op364,op365,op366,op367,op368,op369,op370,op371,op372,op373,op374,op375,op376,op377,op378,op379,op380,op381,op382,op383,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
