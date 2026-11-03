import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup162
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10368 : List WordIR.Op := [.band 10408 10410]
def bytes10368 : Bytes := ("    let r000028ab: u32 = r000028a8 & r000028aa;\n" : String).toByteArray.data.toList
theorem checked10368 : bytes10368=statementBytes 10411 (op10368.map lower) ∧ bytes10368.length=48 := by core033_kernel_decide
def op10369 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10369 : Bytes := ("    let r000028ac: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10369 : bytes10369=statementBytes 10412 (op10369.map lower) ∧ bytes10369.length=41 := by core033_kernel_decide
def op10370 : List WordIR.Op := [.bxor 0 10412]
def bytes10370 : Bytes := ("    let r000028ad: u32 = r00000000 ^ r000028ac;\n" : String).toByteArray.data.toList
theorem checked10370 : bytes10370=statementBytes 10413 (op10370.map lower) ∧ bytes10370.length=48 := by core033_kernel_decide
def op10371 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10371 : Bytes := ("    let r000028ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10371 : bytes10371=statementBytes 10414 (op10371.map lower) ∧ bytes10371.length=41 := by core033_kernel_decide
def op10372 : List WordIR.Op := [.bnot 10414]
def bytes10372 : Bytes := ("    let r000028af: u32 = !r000028ae;\n" : String).toByteArray.data.toList
theorem checked10372 : bytes10372=statementBytes 10415 (op10372.map lower) ∧ bytes10372.length=37 := by core033_kernel_decide
def op10373 : List WordIR.Op := [.bxor 10413 10415]
def bytes10373 : Bytes := ("    let r000028b0: u32 = r000028ad ^ r000028af;\n" : String).toByteArray.data.toList
theorem checked10373 : bytes10373=statementBytes 10416 (op10373.map lower) ∧ bytes10373.length=48 := by core033_kernel_decide
def op10374 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10374 : Bytes := ("    let r000028b1: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10374 : bytes10374=statementBytes 10417 (op10374.map lower) ∧ bytes10374.length=41 := by core033_kernel_decide
def op10375 : List WordIR.Op := [.bxor 0 10417]
def bytes10375 : Bytes := ("    let r000028b2: u32 = r00000000 ^ r000028b1;\n" : String).toByteArray.data.toList
theorem checked10375 : bytes10375=statementBytes 10418 (op10375.map lower) ∧ bytes10375.length=48 := by core033_kernel_decide
def op10376 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10376 : Bytes := ("    let r000028b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10376 : bytes10376=statementBytes 10419 (op10376.map lower) ∧ bytes10376.length=41 := by core033_kernel_decide
def op10377 : List WordIR.Op := [.bnot 10419]
def bytes10377 : Bytes := ("    let r000028b4: u32 = !r000028b3;\n" : String).toByteArray.data.toList
theorem checked10377 : bytes10377=statementBytes 10420 (op10377.map lower) ∧ bytes10377.length=37 := by core033_kernel_decide
def op10378 : List WordIR.Op := [.badd 10418 10420]
def bytes10378 : Bytes := ("    let r000028b5: u32 = r000028b2.wrapping_add(r000028b4);\n" : String).toByteArray.data.toList
theorem checked10378 : bytes10378=statementBytes 10421 (op10378.map lower) ∧ bytes10378.length=60 := by core033_kernel_decide
def op10379 : List WordIR.Op := [.bnot 10421]
def bytes10379 : Bytes := ("    let r000028b6: u32 = !r000028b5;\n" : String).toByteArray.data.toList
theorem checked10379 : bytes10379=statementBytes 10422 (op10379.map lower) ∧ bytes10379.length=37 := by core033_kernel_decide
def op10380 : List WordIR.Op := [.band 10416 10422]
def bytes10380 : Bytes := ("    let r000028b7: u32 = r000028b0 & r000028b6;\n" : String).toByteArray.data.toList
theorem checked10380 : bytes10380=statementBytes 10423 (op10380.map lower) ∧ bytes10380.length=48 := by core033_kernel_decide
def op10381 : List WordIR.Op := [.bxor 10411 10423]
def bytes10381 : Bytes := ("    let r000028b8: u32 = r000028ab ^ r000028b7;\n" : String).toByteArray.data.toList
theorem checked10381 : bytes10381=statementBytes 10424 (op10381.map lower) ∧ bytes10381.length=48 := by core033_kernel_decide
def op10382 : List WordIR.Op := [.shr 10424 31]
def bytes10382 : Bytes := ("    let r000028b9: u32 = r000028b8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10382 : bytes10382=statementBytes 10425 (op10382.map lower) ∧ bytes10382.length=54 := by core033_kernel_decide
def op10383 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10383 : Bytes := ("    let r000028ba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10383 : bytes10383=statementBytes 10426 (op10383.map lower) ∧ bytes10383.length=41 := by core033_kernel_decide
def op10384 : List WordIR.Op := [.bxor 10425 10426]
def bytes10384 : Bytes := ("    let r000028bb: u32 = r000028b9 ^ r000028ba;\n" : String).toByteArray.data.toList
theorem checked10384 : bytes10384=statementBytes 10427 (op10384.map lower) ∧ bytes10384.length=48 := by core033_kernel_decide
def op10385 : List WordIR.Op := [.bnot 10427]
def bytes10385 : Bytes := ("    let r000028bc: u32 = !r000028bb;\n" : String).toByteArray.data.toList
theorem checked10385 : bytes10385=statementBytes 10428 (op10385.map lower) ∧ bytes10385.length=37 := by core033_kernel_decide
def op10386 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10386 : Bytes := ("    let r000028bd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10386 : bytes10386=statementBytes 10429 (op10386.map lower) ∧ bytes10386.length=41 := by core033_kernel_decide
def op10387 : List WordIR.Op := [.badd 10428 10429]
def bytes10387 : Bytes := ("    let r000028be: u32 = r000028bc.wrapping_add(r000028bd);\n" : String).toByteArray.data.toList
theorem checked10387 : bytes10387=statementBytes 10430 (op10387.map lower) ∧ bytes10387.length=60 := by core033_kernel_decide
def op10388 : List WordIR.Op := [.bnot 10430]
def bytes10388 : Bytes := ("    let r000028bf: u32 = !r000028be;\n" : String).toByteArray.data.toList
theorem checked10388 : bytes10388=statementBytes 10431 (op10388.map lower) ∧ bytes10388.length=37 := by core033_kernel_decide
def op10389 : List WordIR.Op := [.band 10431 129]
def bytes10389 : Bytes := ("    let r000028c0: u32 = r000028bf & r00000081;\n" : String).toByteArray.data.toList
theorem checked10389 : bytes10389=statementBytes 10432 (op10389.map lower) ∧ bytes10389.length=48 := by core033_kernel_decide
def op10390 : List WordIR.Op := [.bxor 10406 10432]
def bytes10390 : Bytes := ("    let r000028c1: u32 = r000028a6 ^ r000028c0;\n" : String).toByteArray.data.toList
theorem checked10390 : bytes10390=statementBytes 10433 (op10390.map lower) ∧ bytes10390.length=48 := by core033_kernel_decide
def op10391 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10391 : Bytes := ("    let r000028c2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10391 : bytes10391=statementBytes 10434 (op10391.map lower) ∧ bytes10391.length=41 := by core033_kernel_decide
def op10392 : List WordIR.Op := [.bxor 0 10434]
def bytes10392 : Bytes := ("    let r000028c3: u32 = r00000000 ^ r000028c2;\n" : String).toByteArray.data.toList
theorem checked10392 : bytes10392=statementBytes 10435 (op10392.map lower) ∧ bytes10392.length=48 := by core033_kernel_decide
def op10393 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10393 : Bytes := ("    let r000028c4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10393 : bytes10393=statementBytes 10436 (op10393.map lower) ∧ bytes10393.length=41 := by core033_kernel_decide
def op10394 : List WordIR.Op := [.bnot 10436]
def bytes10394 : Bytes := ("    let r000028c5: u32 = !r000028c4;\n" : String).toByteArray.data.toList
theorem checked10394 : bytes10394=statementBytes 10437 (op10394.map lower) ∧ bytes10394.length=37 := by core033_kernel_decide
def op10395 : List WordIR.Op := [.band 10435 10437]
def bytes10395 : Bytes := ("    let r000028c6: u32 = r000028c3 & r000028c5;\n" : String).toByteArray.data.toList
theorem checked10395 : bytes10395=statementBytes 10438 (op10395.map lower) ∧ bytes10395.length=48 := by core033_kernel_decide
def op10396 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10396 : Bytes := ("    let r000028c7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10396 : bytes10396=statementBytes 10439 (op10396.map lower) ∧ bytes10396.length=41 := by core033_kernel_decide
def op10397 : List WordIR.Op := [.bxor 0 10439]
def bytes10397 : Bytes := ("    let r000028c8: u32 = r00000000 ^ r000028c7;\n" : String).toByteArray.data.toList
theorem checked10397 : bytes10397=statementBytes 10440 (op10397.map lower) ∧ bytes10397.length=48 := by core033_kernel_decide
def op10398 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10398 : Bytes := ("    let r000028c9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10398 : bytes10398=statementBytes 10441 (op10398.map lower) ∧ bytes10398.length=41 := by core033_kernel_decide
def op10399 : List WordIR.Op := [.bnot 10441]
def bytes10399 : Bytes := ("    let r000028ca: u32 = !r000028c9;\n" : String).toByteArray.data.toList
theorem checked10399 : bytes10399=statementBytes 10442 (op10399.map lower) ∧ bytes10399.length=37 := by core033_kernel_decide
def op10400 : List WordIR.Op := [.bxor 10440 10442]
def bytes10400 : Bytes := ("    let r000028cb: u32 = r000028c8 ^ r000028ca;\n" : String).toByteArray.data.toList
theorem checked10400 : bytes10400=statementBytes 10443 (op10400.map lower) ∧ bytes10400.length=48 := by core033_kernel_decide
def op10401 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10401 : Bytes := ("    let r000028cc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10401 : bytes10401=statementBytes 10444 (op10401.map lower) ∧ bytes10401.length=41 := by core033_kernel_decide
def op10402 : List WordIR.Op := [.bxor 0 10444]
def bytes10402 : Bytes := ("    let r000028cd: u32 = r00000000 ^ r000028cc;\n" : String).toByteArray.data.toList
theorem checked10402 : bytes10402=statementBytes 10445 (op10402.map lower) ∧ bytes10402.length=48 := by core033_kernel_decide
def op10403 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10403 : Bytes := ("    let r000028ce: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10403 : bytes10403=statementBytes 10446 (op10403.map lower) ∧ bytes10403.length=41 := by core033_kernel_decide
def op10404 : List WordIR.Op := [.bnot 10446]
def bytes10404 : Bytes := ("    let r000028cf: u32 = !r000028ce;\n" : String).toByteArray.data.toList
theorem checked10404 : bytes10404=statementBytes 10447 (op10404.map lower) ∧ bytes10404.length=37 := by core033_kernel_decide
def op10405 : List WordIR.Op := [.badd 10445 10447]
def bytes10405 : Bytes := ("    let r000028d0: u32 = r000028cd.wrapping_add(r000028cf);\n" : String).toByteArray.data.toList
theorem checked10405 : bytes10405=statementBytes 10448 (op10405.map lower) ∧ bytes10405.length=60 := by core033_kernel_decide
def op10406 : List WordIR.Op := [.bnot 10448]
def bytes10406 : Bytes := ("    let r000028d1: u32 = !r000028d0;\n" : String).toByteArray.data.toList
theorem checked10406 : bytes10406=statementBytes 10449 (op10406.map lower) ∧ bytes10406.length=37 := by core033_kernel_decide
def op10407 : List WordIR.Op := [.band 10443 10449]
def bytes10407 : Bytes := ("    let r000028d2: u32 = r000028cb & r000028d1;\n" : String).toByteArray.data.toList
theorem checked10407 : bytes10407=statementBytes 10450 (op10407.map lower) ∧ bytes10407.length=48 := by core033_kernel_decide
def op10408 : List WordIR.Op := [.bxor 10438 10450]
def bytes10408 : Bytes := ("    let r000028d3: u32 = r000028c6 ^ r000028d2;\n" : String).toByteArray.data.toList
theorem checked10408 : bytes10408=statementBytes 10451 (op10408.map lower) ∧ bytes10408.length=48 := by core033_kernel_decide
def op10409 : List WordIR.Op := [.shr 10451 31]
def bytes10409 : Bytes := ("    let r000028d4: u32 = r000028d3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10409 : bytes10409=statementBytes 10452 (op10409.map lower) ∧ bytes10409.length=54 := by core033_kernel_decide
def op10410 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10410 : Bytes := ("    let r000028d5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10410 : bytes10410=statementBytes 10453 (op10410.map lower) ∧ bytes10410.length=41 := by core033_kernel_decide
def op10411 : List WordIR.Op := [.bxor 10452 10453]
def bytes10411 : Bytes := ("    let r000028d6: u32 = r000028d4 ^ r000028d5;\n" : String).toByteArray.data.toList
theorem checked10411 : bytes10411=statementBytes 10454 (op10411.map lower) ∧ bytes10411.length=48 := by core033_kernel_decide
def op10412 : List WordIR.Op := [.bnot 10454]
def bytes10412 : Bytes := ("    let r000028d7: u32 = !r000028d6;\n" : String).toByteArray.data.toList
theorem checked10412 : bytes10412=statementBytes 10455 (op10412.map lower) ∧ bytes10412.length=37 := by core033_kernel_decide
def op10413 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10413 : Bytes := ("    let r000028d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10413 : bytes10413=statementBytes 10456 (op10413.map lower) ∧ bytes10413.length=41 := by core033_kernel_decide
def op10414 : List WordIR.Op := [.badd 10455 10456]
def bytes10414 : Bytes := ("    let r000028d9: u32 = r000028d7.wrapping_add(r000028d8);\n" : String).toByteArray.data.toList
theorem checked10414 : bytes10414=statementBytes 10457 (op10414.map lower) ∧ bytes10414.length=60 := by core033_kernel_decide
def op10415 : List WordIR.Op := [.band 10457 9461]
def bytes10415 : Bytes := ("    let r000028da: u32 = r000028d9 & r000024f5;\n" : String).toByteArray.data.toList
theorem checked10415 : bytes10415=statementBytes 10458 (op10415.map lower) ∧ bytes10415.length=48 := by core033_kernel_decide
def op10416 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10416 : Bytes := ("    let r000028db: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10416 : bytes10416=statementBytes 10459 (op10416.map lower) ∧ bytes10416.length=41 := by core033_kernel_decide
def op10417 : List WordIR.Op := [.bxor 0 10459]
def bytes10417 : Bytes := ("    let r000028dc: u32 = r00000000 ^ r000028db;\n" : String).toByteArray.data.toList
theorem checked10417 : bytes10417=statementBytes 10460 (op10417.map lower) ∧ bytes10417.length=48 := by core033_kernel_decide
def op10418 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10418 : Bytes := ("    let r000028dd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10418 : bytes10418=statementBytes 10461 (op10418.map lower) ∧ bytes10418.length=41 := by core033_kernel_decide
def op10419 : List WordIR.Op := [.bnot 10461]
def bytes10419 : Bytes := ("    let r000028de: u32 = !r000028dd;\n" : String).toByteArray.data.toList
theorem checked10419 : bytes10419=statementBytes 10462 (op10419.map lower) ∧ bytes10419.length=37 := by core033_kernel_decide
def op10420 : List WordIR.Op := [.band 10460 10462]
def bytes10420 : Bytes := ("    let r000028df: u32 = r000028dc & r000028de;\n" : String).toByteArray.data.toList
theorem checked10420 : bytes10420=statementBytes 10463 (op10420.map lower) ∧ bytes10420.length=48 := by core033_kernel_decide
def op10421 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10421 : Bytes := ("    let r000028e0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10421 : bytes10421=statementBytes 10464 (op10421.map lower) ∧ bytes10421.length=41 := by core033_kernel_decide
def op10422 : List WordIR.Op := [.bxor 0 10464]
def bytes10422 : Bytes := ("    let r000028e1: u32 = r00000000 ^ r000028e0;\n" : String).toByteArray.data.toList
theorem checked10422 : bytes10422=statementBytes 10465 (op10422.map lower) ∧ bytes10422.length=48 := by core033_kernel_decide
def op10423 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10423 : Bytes := ("    let r000028e2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10423 : bytes10423=statementBytes 10466 (op10423.map lower) ∧ bytes10423.length=41 := by core033_kernel_decide
def op10424 : List WordIR.Op := [.bnot 10466]
def bytes10424 : Bytes := ("    let r000028e3: u32 = !r000028e2;\n" : String).toByteArray.data.toList
theorem checked10424 : bytes10424=statementBytes 10467 (op10424.map lower) ∧ bytes10424.length=37 := by core033_kernel_decide
def op10425 : List WordIR.Op := [.bxor 10465 10467]
def bytes10425 : Bytes := ("    let r000028e4: u32 = r000028e1 ^ r000028e3;\n" : String).toByteArray.data.toList
theorem checked10425 : bytes10425=statementBytes 10468 (op10425.map lower) ∧ bytes10425.length=48 := by core033_kernel_decide
def op10426 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10426 : Bytes := ("    let r000028e5: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10426 : bytes10426=statementBytes 10469 (op10426.map lower) ∧ bytes10426.length=41 := by core033_kernel_decide
def op10427 : List WordIR.Op := [.bxor 0 10469]
def bytes10427 : Bytes := ("    let r000028e6: u32 = r00000000 ^ r000028e5;\n" : String).toByteArray.data.toList
theorem checked10427 : bytes10427=statementBytes 10470 (op10427.map lower) ∧ bytes10427.length=48 := by core033_kernel_decide
def op10428 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10428 : Bytes := ("    let r000028e7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10428 : bytes10428=statementBytes 10471 (op10428.map lower) ∧ bytes10428.length=41 := by core033_kernel_decide
def op10429 : List WordIR.Op := [.bnot 10471]
def bytes10429 : Bytes := ("    let r000028e8: u32 = !r000028e7;\n" : String).toByteArray.data.toList
theorem checked10429 : bytes10429=statementBytes 10472 (op10429.map lower) ∧ bytes10429.length=37 := by core033_kernel_decide
def op10430 : List WordIR.Op := [.badd 10470 10472]
def bytes10430 : Bytes := ("    let r000028e9: u32 = r000028e6.wrapping_add(r000028e8);\n" : String).toByteArray.data.toList
theorem checked10430 : bytes10430=statementBytes 10473 (op10430.map lower) ∧ bytes10430.length=60 := by core033_kernel_decide
def op10431 : List WordIR.Op := [.bnot 10473]
def bytes10431 : Bytes := ("    let r000028ea: u32 = !r000028e9;\n" : String).toByteArray.data.toList
theorem checked10431 : bytes10431=statementBytes 10474 (op10431.map lower) ∧ bytes10431.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10368,op10369,op10370,op10371,op10372,op10373,op10374,op10375,op10376,op10377,op10378,op10379,op10380,op10381,op10382,op10383,op10384,op10385,op10386,op10387,op10388,op10389,op10390,op10391,op10392,op10393,op10394,op10395,op10396,op10397,op10398,op10399,op10400,op10401,op10402,op10403,op10404,op10405,op10406,op10407,op10408,op10409,op10410,op10411,op10412,op10413,op10414,op10415,op10416,op10417,op10418,op10419,op10420,op10421,op10422,op10423,op10424,op10425,op10426,op10427,op10428,op10429,op10430,op10431]
def chunks : List Bytes := [bytes10368,bytes10369,bytes10370,bytes10371,bytes10372,bytes10373,bytes10374,bytes10375,bytes10376,bytes10377,bytes10378,bytes10379,bytes10380,bytes10381,bytes10382,bytes10383,bytes10384,bytes10385,bytes10386,bytes10387,bytes10388,bytes10389,bytes10390,bytes10391,bytes10392,bytes10393,bytes10394,bytes10395,bytes10396,bytes10397,bytes10398,bytes10399,bytes10400,bytes10401,bytes10402,bytes10403,bytes10404,bytes10405,bytes10406,bytes10407,bytes10408,bytes10409,bytes10410,bytes10411,bytes10412,bytes10413,bytes10414,bytes10415,bytes10416,bytes10417,bytes10418,bytes10419,bytes10420,bytes10421,bytes10422,bytes10423,bytes10424,bytes10425,bytes10426,bytes10427,bytes10428,bytes10429,bytes10430,bytes10431]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10411 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10368.1 (.cons _ _ _ _ _ checked10369.1 (.cons _ _ _ _ _ checked10370.1 (.cons _ _ _ _ _ checked10371.1 (.cons _ _ _ _ _ checked10372.1 (.cons _ _ _ _ _ checked10373.1 (.cons _ _ _ _ _ checked10374.1 (.cons _ _ _ _ _ checked10375.1 (.cons _ _ _ _ _ checked10376.1 (.cons _ _ _ _ _ checked10377.1 (.cons _ _ _ _ _ checked10378.1 (.cons _ _ _ _ _ checked10379.1 (.cons _ _ _ _ _ checked10380.1 (.cons _ _ _ _ _ checked10381.1 (.cons _ _ _ _ _ checked10382.1 (.cons _ _ _ _ _ checked10383.1 (.cons _ _ _ _ _ checked10384.1 (.cons _ _ _ _ _ checked10385.1 (.cons _ _ _ _ _ checked10386.1 (.cons _ _ _ _ _ checked10387.1 (.cons _ _ _ _ _ checked10388.1 (.cons _ _ _ _ _ checked10389.1 (.cons _ _ _ _ _ checked10390.1 (.cons _ _ _ _ _ checked10391.1 (.cons _ _ _ _ _ checked10392.1 (.cons _ _ _ _ _ checked10393.1 (.cons _ _ _ _ _ checked10394.1 (.cons _ _ _ _ _ checked10395.1 (.cons _ _ _ _ _ checked10396.1 (.cons _ _ _ _ _ checked10397.1 (.cons _ _ _ _ _ checked10398.1 (.cons _ _ _ _ _ checked10399.1 (.cons _ _ _ _ _ checked10400.1 (.cons _ _ _ _ _ checked10401.1 (.cons _ _ _ _ _ checked10402.1 (.cons _ _ _ _ _ checked10403.1 (.cons _ _ _ _ _ checked10404.1 (.cons _ _ _ _ _ checked10405.1 (.cons _ _ _ _ _ checked10406.1 (.cons _ _ _ _ _ checked10407.1 (.cons _ _ _ _ _ checked10408.1 (.cons _ _ _ _ _ checked10409.1 (.cons _ _ _ _ _ checked10410.1 (.cons _ _ _ _ _ checked10411.1 (.cons _ _ _ _ _ checked10412.1 (.cons _ _ _ _ _ checked10413.1 (.cons _ _ _ _ _ checked10414.1 (.cons _ _ _ _ _ checked10415.1 (.cons _ _ _ _ _ checked10416.1 (.cons _ _ _ _ _ checked10417.1 (.cons _ _ _ _ _ checked10418.1 (.cons _ _ _ _ _ checked10419.1 (.cons _ _ _ _ _ checked10420.1 (.cons _ _ _ _ _ checked10421.1 (.cons _ _ _ _ _ checked10422.1 (.cons _ _ _ _ _ checked10423.1 (.cons _ _ _ _ _ checked10424.1 (.cons _ _ _ _ _ checked10425.1 (.cons _ _ _ _ _ checked10426.1 (.cons _ _ _ _ _ checked10427.1 (.cons _ _ _ _ _ checked10428.1 (.cons _ _ _ _ _ checked10429.1 (.cons _ _ _ _ _ checked10430.1 (.cons _ _ _ _ _ checked10431.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10411 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10368.2,checked10369.2,checked10370.2,checked10371.2,checked10372.2,checked10373.2,checked10374.2,checked10375.2,checked10376.2,checked10377.2,checked10378.2,checked10379.2,checked10380.2,checked10381.2,checked10382.2,checked10383.2,checked10384.2,checked10385.2,checked10386.2,checked10387.2,checked10388.2,checked10389.2,checked10390.2,checked10391.2,checked10392.2,checked10393.2,checked10394.2,checked10395.2,checked10396.2,checked10397.2,checked10398.2,checked10399.2,checked10400.2,checked10401.2,checked10402.2,checked10403.2,checked10404.2,checked10405.2,checked10406.2,checked10407.2,checked10408.2,checked10409.2,checked10410.2,checked10411.2,checked10412.2,checked10413.2,checked10414.2,checked10415.2,checked10416.2,checked10417.2,checked10418.2,checked10419.2,checked10420.2,checked10421.2,checked10422.2,checked10423.2,checked10424.2,checked10425.2,checked10426.2,checked10427.2,checked10428.2,checked10429.2,checked10430.2,checked10431.2]
  decide
end ArtifactPathRoundDispatchGroup162
