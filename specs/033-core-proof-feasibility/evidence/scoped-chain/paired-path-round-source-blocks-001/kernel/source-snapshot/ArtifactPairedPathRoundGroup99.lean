import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup99
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6336 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6336 : Bytes := ("    let r00001920: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6336 : bytes6336=statementBytes 6432 (op6336.map lower) ∧ bytes6336.length=41 := by core033_kernel_decide
def op6337 : List WordIR.Op := [.bnot 6432]
def bytes6337 : Bytes := ("    let r00001921: u32 = !r00001920;\n" : String).toByteArray.data.toList
theorem checked6337 : bytes6337=statementBytes 6433 (op6337.map lower) ∧ bytes6337.length=37 := by core033_kernel_decide
def op6338 : List WordIR.Op := [.badd 6431 6433]
def bytes6338 : Bytes := ("    let r00001922: u32 = r0000191f.wrapping_add(r00001921);\n" : String).toByteArray.data.toList
theorem checked6338 : bytes6338=statementBytes 6434 (op6338.map lower) ∧ bytes6338.length=60 := by core033_kernel_decide
def op6339 : List WordIR.Op := [.bnot 6434]
def bytes6339 : Bytes := ("    let r00001923: u32 = !r00001922;\n" : String).toByteArray.data.toList
theorem checked6339 : bytes6339=statementBytes 6435 (op6339.map lower) ∧ bytes6339.length=37 := by core033_kernel_decide
def op6340 : List WordIR.Op := [.band 6430 6435]
def bytes6340 : Bytes := ("    let r00001924: u32 = r0000191e & r00001923;\n" : String).toByteArray.data.toList
theorem checked6340 : bytes6340=statementBytes 6436 (op6340.map lower) ∧ bytes6340.length=48 := by core033_kernel_decide
def op6341 : List WordIR.Op := [.bxor 6426 6436]
def bytes6341 : Bytes := ("    let r00001925: u32 = r0000191a ^ r00001924;\n" : String).toByteArray.data.toList
theorem checked6341 : bytes6341=statementBytes 6437 (op6341.map lower) ∧ bytes6341.length=48 := by core033_kernel_decide
def op6342 : List WordIR.Op := [.shr 6437 31]
def bytes6342 : Bytes := ("    let r00001926: u32 = r00001925 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6342 : bytes6342=statementBytes 6438 (op6342.map lower) ∧ bytes6342.length=54 := by core033_kernel_decide
def op6343 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6343 : Bytes := ("    let r00001927: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6343 : bytes6343=statementBytes 6439 (op6343.map lower) ∧ bytes6343.length=41 := by core033_kernel_decide
def op6344 : List WordIR.Op := [.bxor 6438 6439]
def bytes6344 : Bytes := ("    let r00001928: u32 = r00001926 ^ r00001927;\n" : String).toByteArray.data.toList
theorem checked6344 : bytes6344=statementBytes 6440 (op6344.map lower) ∧ bytes6344.length=48 := by core033_kernel_decide
def op6345 : List WordIR.Op := [.shr 3327 8]
def bytes6345 : Bytes := ("    let r00001929: u32 = r00000cff >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6345 : bytes6345=statementBytes 6441 (op6345.map lower) ∧ bytes6345.length=54 := by core033_kernel_decide
def op6346 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6346 : Bytes := ("    let r0000192a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6346 : bytes6346=statementBytes 6442 (op6346.map lower) ∧ bytes6346.length=41 := by core033_kernel_decide
def op6347 : List WordIR.Op := [.bnot 6442]
def bytes6347 : Bytes := ("    let r0000192b: u32 = !r0000192a;\n" : String).toByteArray.data.toList
theorem checked6347 : bytes6347=statementBytes 6443 (op6347.map lower) ∧ bytes6347.length=37 := by core033_kernel_decide
def op6348 : List WordIR.Op := [.band 6441 6443]
def bytes6348 : Bytes := ("    let r0000192c: u32 = r00001929 & r0000192b;\n" : String).toByteArray.data.toList
theorem checked6348 : bytes6348=statementBytes 6444 (op6348.map lower) ∧ bytes6348.length=48 := by core033_kernel_decide
def op6349 : List WordIR.Op := [.shr 3327 8]
def bytes6349 : Bytes := ("    let r0000192d: u32 = r00000cff >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6349 : bytes6349=statementBytes 6445 (op6349.map lower) ∧ bytes6349.length=54 := by core033_kernel_decide
def op6350 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6350 : Bytes := ("    let r0000192e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6350 : bytes6350=statementBytes 6446 (op6350.map lower) ∧ bytes6350.length=41 := by core033_kernel_decide
def op6351 : List WordIR.Op := [.bnot 6446]
def bytes6351 : Bytes := ("    let r0000192f: u32 = !r0000192e;\n" : String).toByteArray.data.toList
theorem checked6351 : bytes6351=statementBytes 6447 (op6351.map lower) ∧ bytes6351.length=37 := by core033_kernel_decide
def op6352 : List WordIR.Op := [.bxor 6445 6447]
def bytes6352 : Bytes := ("    let r00001930: u32 = r0000192d ^ r0000192f;\n" : String).toByteArray.data.toList
theorem checked6352 : bytes6352=statementBytes 6448 (op6352.map lower) ∧ bytes6352.length=48 := by core033_kernel_decide
def op6353 : List WordIR.Op := [.shr 3327 8]
def bytes6353 : Bytes := ("    let r00001931: u32 = r00000cff >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6353 : bytes6353=statementBytes 6449 (op6353.map lower) ∧ bytes6353.length=54 := by core033_kernel_decide
def op6354 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6354 : Bytes := ("    let r00001932: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6354 : bytes6354=statementBytes 6450 (op6354.map lower) ∧ bytes6354.length=41 := by core033_kernel_decide
def op6355 : List WordIR.Op := [.bnot 6450]
def bytes6355 : Bytes := ("    let r00001933: u32 = !r00001932;\n" : String).toByteArray.data.toList
theorem checked6355 : bytes6355=statementBytes 6451 (op6355.map lower) ∧ bytes6355.length=37 := by core033_kernel_decide
def op6356 : List WordIR.Op := [.badd 6449 6451]
def bytes6356 : Bytes := ("    let r00001934: u32 = r00001931.wrapping_add(r00001933);\n" : String).toByteArray.data.toList
theorem checked6356 : bytes6356=statementBytes 6452 (op6356.map lower) ∧ bytes6356.length=60 := by core033_kernel_decide
def op6357 : List WordIR.Op := [.bnot 6452]
def bytes6357 : Bytes := ("    let r00001935: u32 = !r00001934;\n" : String).toByteArray.data.toList
theorem checked6357 : bytes6357=statementBytes 6453 (op6357.map lower) ∧ bytes6357.length=37 := by core033_kernel_decide
def op6358 : List WordIR.Op := [.band 6448 6453]
def bytes6358 : Bytes := ("    let r00001936: u32 = r00001930 & r00001935;\n" : String).toByteArray.data.toList
theorem checked6358 : bytes6358=statementBytes 6454 (op6358.map lower) ∧ bytes6358.length=48 := by core033_kernel_decide
def op6359 : List WordIR.Op := [.bxor 6444 6454]
def bytes6359 : Bytes := ("    let r00001937: u32 = r0000192c ^ r00001936;\n" : String).toByteArray.data.toList
theorem checked6359 : bytes6359=statementBytes 6455 (op6359.map lower) ∧ bytes6359.length=48 := by core033_kernel_decide
def op6360 : List WordIR.Op := [.shr 6455 31]
def bytes6360 : Bytes := ("    let r00001938: u32 = r00001937 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6360 : bytes6360=statementBytes 6456 (op6360.map lower) ∧ bytes6360.length=54 := by core033_kernel_decide
def op6361 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6361 : Bytes := ("    let r00001939: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6361 : bytes6361=statementBytes 6457 (op6361.map lower) ∧ bytes6361.length=41 := by core033_kernel_decide
def op6362 : List WordIR.Op := [.bxor 6456 6457]
def bytes6362 : Bytes := ("    let r0000193a: u32 = r00001938 ^ r00001939;\n" : String).toByteArray.data.toList
theorem checked6362 : bytes6362=statementBytes 6458 (op6362.map lower) ∧ bytes6362.length=48 := by core033_kernel_decide
def op6363 : List WordIR.Op := [.shr 3379 8]
def bytes6363 : Bytes := ("    let r0000193b: u32 = r00000d33 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6363 : bytes6363=statementBytes 6459 (op6363.map lower) ∧ bytes6363.length=54 := by core033_kernel_decide
def op6364 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6364 : Bytes := ("    let r0000193c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6364 : bytes6364=statementBytes 6460 (op6364.map lower) ∧ bytes6364.length=41 := by core033_kernel_decide
def op6365 : List WordIR.Op := [.bnot 6460]
def bytes6365 : Bytes := ("    let r0000193d: u32 = !r0000193c;\n" : String).toByteArray.data.toList
theorem checked6365 : bytes6365=statementBytes 6461 (op6365.map lower) ∧ bytes6365.length=37 := by core033_kernel_decide
def op6366 : List WordIR.Op := [.band 6459 6461]
def bytes6366 : Bytes := ("    let r0000193e: u32 = r0000193b & r0000193d;\n" : String).toByteArray.data.toList
theorem checked6366 : bytes6366=statementBytes 6462 (op6366.map lower) ∧ bytes6366.length=48 := by core033_kernel_decide
def op6367 : List WordIR.Op := [.shr 3379 8]
def bytes6367 : Bytes := ("    let r0000193f: u32 = r00000d33 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6367 : bytes6367=statementBytes 6463 (op6367.map lower) ∧ bytes6367.length=54 := by core033_kernel_decide
def op6368 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6368 : Bytes := ("    let r00001940: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6368 : bytes6368=statementBytes 6464 (op6368.map lower) ∧ bytes6368.length=41 := by core033_kernel_decide
def op6369 : List WordIR.Op := [.bnot 6464]
def bytes6369 : Bytes := ("    let r00001941: u32 = !r00001940;\n" : String).toByteArray.data.toList
theorem checked6369 : bytes6369=statementBytes 6465 (op6369.map lower) ∧ bytes6369.length=37 := by core033_kernel_decide
def op6370 : List WordIR.Op := [.bxor 6463 6465]
def bytes6370 : Bytes := ("    let r00001942: u32 = r0000193f ^ r00001941;\n" : String).toByteArray.data.toList
theorem checked6370 : bytes6370=statementBytes 6466 (op6370.map lower) ∧ bytes6370.length=48 := by core033_kernel_decide
def op6371 : List WordIR.Op := [.shr 3379 8]
def bytes6371 : Bytes := ("    let r00001943: u32 = r00000d33 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6371 : bytes6371=statementBytes 6467 (op6371.map lower) ∧ bytes6371.length=54 := by core033_kernel_decide
def op6372 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6372 : Bytes := ("    let r00001944: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6372 : bytes6372=statementBytes 6468 (op6372.map lower) ∧ bytes6372.length=41 := by core033_kernel_decide
def op6373 : List WordIR.Op := [.bnot 6468]
def bytes6373 : Bytes := ("    let r00001945: u32 = !r00001944;\n" : String).toByteArray.data.toList
theorem checked6373 : bytes6373=statementBytes 6469 (op6373.map lower) ∧ bytes6373.length=37 := by core033_kernel_decide
def op6374 : List WordIR.Op := [.badd 6467 6469]
def bytes6374 : Bytes := ("    let r00001946: u32 = r00001943.wrapping_add(r00001945);\n" : String).toByteArray.data.toList
theorem checked6374 : bytes6374=statementBytes 6470 (op6374.map lower) ∧ bytes6374.length=60 := by core033_kernel_decide
def op6375 : List WordIR.Op := [.bnot 6470]
def bytes6375 : Bytes := ("    let r00001947: u32 = !r00001946;\n" : String).toByteArray.data.toList
theorem checked6375 : bytes6375=statementBytes 6471 (op6375.map lower) ∧ bytes6375.length=37 := by core033_kernel_decide
def op6376 : List WordIR.Op := [.band 6466 6471]
def bytes6376 : Bytes := ("    let r00001948: u32 = r00001942 & r00001947;\n" : String).toByteArray.data.toList
theorem checked6376 : bytes6376=statementBytes 6472 (op6376.map lower) ∧ bytes6376.length=48 := by core033_kernel_decide
def op6377 : List WordIR.Op := [.bxor 6462 6472]
def bytes6377 : Bytes := ("    let r00001949: u32 = r0000193e ^ r00001948;\n" : String).toByteArray.data.toList
theorem checked6377 : bytes6377=statementBytes 6473 (op6377.map lower) ∧ bytes6377.length=48 := by core033_kernel_decide
def op6378 : List WordIR.Op := [.shr 6473 31]
def bytes6378 : Bytes := ("    let r0000194a: u32 = r00001949 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6378 : bytes6378=statementBytes 6474 (op6378.map lower) ∧ bytes6378.length=54 := by core033_kernel_decide
def op6379 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6379 : Bytes := ("    let r0000194b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6379 : bytes6379=statementBytes 6475 (op6379.map lower) ∧ bytes6379.length=41 := by core033_kernel_decide
def op6380 : List WordIR.Op := [.bxor 6474 6475]
def bytes6380 : Bytes := ("    let r0000194c: u32 = r0000194a ^ r0000194b;\n" : String).toByteArray.data.toList
theorem checked6380 : bytes6380=statementBytes 6476 (op6380.map lower) ∧ bytes6380.length=48 := by core033_kernel_decide
def op6381 : List WordIR.Op := [.shr 3431 8]
def bytes6381 : Bytes := ("    let r0000194d: u32 = r00000d67 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6381 : bytes6381=statementBytes 6477 (op6381.map lower) ∧ bytes6381.length=54 := by core033_kernel_decide
def op6382 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6382 : Bytes := ("    let r0000194e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6382 : bytes6382=statementBytes 6478 (op6382.map lower) ∧ bytes6382.length=41 := by core033_kernel_decide
def op6383 : List WordIR.Op := [.bnot 6478]
def bytes6383 : Bytes := ("    let r0000194f: u32 = !r0000194e;\n" : String).toByteArray.data.toList
theorem checked6383 : bytes6383=statementBytes 6479 (op6383.map lower) ∧ bytes6383.length=37 := by core033_kernel_decide
def op6384 : List WordIR.Op := [.band 6477 6479]
def bytes6384 : Bytes := ("    let r00001950: u32 = r0000194d & r0000194f;\n" : String).toByteArray.data.toList
theorem checked6384 : bytes6384=statementBytes 6480 (op6384.map lower) ∧ bytes6384.length=48 := by core033_kernel_decide
def op6385 : List WordIR.Op := [.shr 3431 8]
def bytes6385 : Bytes := ("    let r00001951: u32 = r00000d67 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6385 : bytes6385=statementBytes 6481 (op6385.map lower) ∧ bytes6385.length=54 := by core033_kernel_decide
def op6386 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6386 : Bytes := ("    let r00001952: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6386 : bytes6386=statementBytes 6482 (op6386.map lower) ∧ bytes6386.length=41 := by core033_kernel_decide
def op6387 : List WordIR.Op := [.bnot 6482]
def bytes6387 : Bytes := ("    let r00001953: u32 = !r00001952;\n" : String).toByteArray.data.toList
theorem checked6387 : bytes6387=statementBytes 6483 (op6387.map lower) ∧ bytes6387.length=37 := by core033_kernel_decide
def op6388 : List WordIR.Op := [.bxor 6481 6483]
def bytes6388 : Bytes := ("    let r00001954: u32 = r00001951 ^ r00001953;\n" : String).toByteArray.data.toList
theorem checked6388 : bytes6388=statementBytes 6484 (op6388.map lower) ∧ bytes6388.length=48 := by core033_kernel_decide
def op6389 : List WordIR.Op := [.shr 3431 8]
def bytes6389 : Bytes := ("    let r00001955: u32 = r00000d67 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6389 : bytes6389=statementBytes 6485 (op6389.map lower) ∧ bytes6389.length=54 := by core033_kernel_decide
def op6390 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6390 : Bytes := ("    let r00001956: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6390 : bytes6390=statementBytes 6486 (op6390.map lower) ∧ bytes6390.length=41 := by core033_kernel_decide
def op6391 : List WordIR.Op := [.bnot 6486]
def bytes6391 : Bytes := ("    let r00001957: u32 = !r00001956;\n" : String).toByteArray.data.toList
theorem checked6391 : bytes6391=statementBytes 6487 (op6391.map lower) ∧ bytes6391.length=37 := by core033_kernel_decide
def op6392 : List WordIR.Op := [.badd 6485 6487]
def bytes6392 : Bytes := ("    let r00001958: u32 = r00001955.wrapping_add(r00001957);\n" : String).toByteArray.data.toList
theorem checked6392 : bytes6392=statementBytes 6488 (op6392.map lower) ∧ bytes6392.length=60 := by core033_kernel_decide
def op6393 : List WordIR.Op := [.bnot 6488]
def bytes6393 : Bytes := ("    let r00001959: u32 = !r00001958;\n" : String).toByteArray.data.toList
theorem checked6393 : bytes6393=statementBytes 6489 (op6393.map lower) ∧ bytes6393.length=37 := by core033_kernel_decide
def op6394 : List WordIR.Op := [.band 6484 6489]
def bytes6394 : Bytes := ("    let r0000195a: u32 = r00001954 & r00001959;\n" : String).toByteArray.data.toList
theorem checked6394 : bytes6394=statementBytes 6490 (op6394.map lower) ∧ bytes6394.length=48 := by core033_kernel_decide
def op6395 : List WordIR.Op := [.bxor 6480 6490]
def bytes6395 : Bytes := ("    let r0000195b: u32 = r00001950 ^ r0000195a;\n" : String).toByteArray.data.toList
theorem checked6395 : bytes6395=statementBytes 6491 (op6395.map lower) ∧ bytes6395.length=48 := by core033_kernel_decide
def op6396 : List WordIR.Op := [.shr 6491 31]
def bytes6396 : Bytes := ("    let r0000195c: u32 = r0000195b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6396 : bytes6396=statementBytes 6492 (op6396.map lower) ∧ bytes6396.length=54 := by core033_kernel_decide
def op6397 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6397 : Bytes := ("    let r0000195d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6397 : bytes6397=statementBytes 6493 (op6397.map lower) ∧ bytes6397.length=41 := by core033_kernel_decide
def op6398 : List WordIR.Op := [.bxor 6492 6493]
def bytes6398 : Bytes := ("    let r0000195e: u32 = r0000195c ^ r0000195d;\n" : String).toByteArray.data.toList
theorem checked6398 : bytes6398=statementBytes 6494 (op6398.map lower) ∧ bytes6398.length=48 := by core033_kernel_decide
def op6399 : List WordIR.Op := [.shr 3483 8]
def bytes6399 : Bytes := ("    let r0000195f: u32 = r00000d9b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6399 : bytes6399=statementBytes 6495 (op6399.map lower) ∧ bytes6399.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6336,op6337,op6338,op6339,op6340,op6341,op6342,op6343,op6344,op6345,op6346,op6347,op6348,op6349,op6350,op6351,op6352,op6353,op6354,op6355,op6356,op6357,op6358,op6359,op6360,op6361,op6362,op6363,op6364,op6365,op6366,op6367,op6368,op6369,op6370,op6371,op6372,op6373,op6374,op6375,op6376,op6377,op6378,op6379,op6380,op6381,op6382,op6383,op6384,op6385,op6386,op6387,op6388,op6389,op6390,op6391,op6392,op6393,op6394,op6395,op6396,op6397,op6398,op6399]
def chunks : List Bytes := [bytes6336,bytes6337,bytes6338,bytes6339,bytes6340,bytes6341,bytes6342,bytes6343,bytes6344,bytes6345,bytes6346,bytes6347,bytes6348,bytes6349,bytes6350,bytes6351,bytes6352,bytes6353,bytes6354,bytes6355,bytes6356,bytes6357,bytes6358,bytes6359,bytes6360,bytes6361,bytes6362,bytes6363,bytes6364,bytes6365,bytes6366,bytes6367,bytes6368,bytes6369,bytes6370,bytes6371,bytes6372,bytes6373,bytes6374,bytes6375,bytes6376,bytes6377,bytes6378,bytes6379,bytes6380,bytes6381,bytes6382,bytes6383,bytes6384,bytes6385,bytes6386,bytes6387,bytes6388,bytes6389,bytes6390,bytes6391,bytes6392,bytes6393,bytes6394,bytes6395,bytes6396,bytes6397,bytes6398,bytes6399]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6432 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6336.1 (.cons _ _ _ _ _ checked6337.1 (.cons _ _ _ _ _ checked6338.1 (.cons _ _ _ _ _ checked6339.1 (.cons _ _ _ _ _ checked6340.1 (.cons _ _ _ _ _ checked6341.1 (.cons _ _ _ _ _ checked6342.1 (.cons _ _ _ _ _ checked6343.1 (.cons _ _ _ _ _ checked6344.1 (.cons _ _ _ _ _ checked6345.1 (.cons _ _ _ _ _ checked6346.1 (.cons _ _ _ _ _ checked6347.1 (.cons _ _ _ _ _ checked6348.1 (.cons _ _ _ _ _ checked6349.1 (.cons _ _ _ _ _ checked6350.1 (.cons _ _ _ _ _ checked6351.1 (.cons _ _ _ _ _ checked6352.1 (.cons _ _ _ _ _ checked6353.1 (.cons _ _ _ _ _ checked6354.1 (.cons _ _ _ _ _ checked6355.1 (.cons _ _ _ _ _ checked6356.1 (.cons _ _ _ _ _ checked6357.1 (.cons _ _ _ _ _ checked6358.1 (.cons _ _ _ _ _ checked6359.1 (.cons _ _ _ _ _ checked6360.1 (.cons _ _ _ _ _ checked6361.1 (.cons _ _ _ _ _ checked6362.1 (.cons _ _ _ _ _ checked6363.1 (.cons _ _ _ _ _ checked6364.1 (.cons _ _ _ _ _ checked6365.1 (.cons _ _ _ _ _ checked6366.1 (.cons _ _ _ _ _ checked6367.1 (.cons _ _ _ _ _ checked6368.1 (.cons _ _ _ _ _ checked6369.1 (.cons _ _ _ _ _ checked6370.1 (.cons _ _ _ _ _ checked6371.1 (.cons _ _ _ _ _ checked6372.1 (.cons _ _ _ _ _ checked6373.1 (.cons _ _ _ _ _ checked6374.1 (.cons _ _ _ _ _ checked6375.1 (.cons _ _ _ _ _ checked6376.1 (.cons _ _ _ _ _ checked6377.1 (.cons _ _ _ _ _ checked6378.1 (.cons _ _ _ _ _ checked6379.1 (.cons _ _ _ _ _ checked6380.1 (.cons _ _ _ _ _ checked6381.1 (.cons _ _ _ _ _ checked6382.1 (.cons _ _ _ _ _ checked6383.1 (.cons _ _ _ _ _ checked6384.1 (.cons _ _ _ _ _ checked6385.1 (.cons _ _ _ _ _ checked6386.1 (.cons _ _ _ _ _ checked6387.1 (.cons _ _ _ _ _ checked6388.1 (.cons _ _ _ _ _ checked6389.1 (.cons _ _ _ _ _ checked6390.1 (.cons _ _ _ _ _ checked6391.1 (.cons _ _ _ _ _ checked6392.1 (.cons _ _ _ _ _ checked6393.1 (.cons _ _ _ _ _ checked6394.1 (.cons _ _ _ _ _ checked6395.1 (.cons _ _ _ _ _ checked6396.1 (.cons _ _ _ _ _ checked6397.1 (.cons _ _ _ _ _ checked6398.1 (.cons _ _ _ _ _ checked6399.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6432 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6336.2,checked6337.2,checked6338.2,checked6339.2,checked6340.2,checked6341.2,checked6342.2,checked6343.2,checked6344.2,checked6345.2,checked6346.2,checked6347.2,checked6348.2,checked6349.2,checked6350.2,checked6351.2,checked6352.2,checked6353.2,checked6354.2,checked6355.2,checked6356.2,checked6357.2,checked6358.2,checked6359.2,checked6360.2,checked6361.2,checked6362.2,checked6363.2,checked6364.2,checked6365.2,checked6366.2,checked6367.2,checked6368.2,checked6369.2,checked6370.2,checked6371.2,checked6372.2,checked6373.2,checked6374.2,checked6375.2,checked6376.2,checked6377.2,checked6378.2,checked6379.2,checked6380.2,checked6381.2,checked6382.2,checked6383.2,checked6384.2,checked6385.2,checked6386.2,checked6387.2,checked6388.2,checked6389.2,checked6390.2,checked6391.2,checked6392.2,checked6393.2,checked6394.2,checked6395.2,checked6396.2,checked6397.2,checked6398.2,checked6399.2]
  decide
end ArtifactPairedPathRoundGroup99
