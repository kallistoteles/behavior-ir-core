import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup162
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10368 : List WordIR.Op := [.badd 3277 10428]
def bytes10368 : Bytes := ("    let r000028f6: u32 = r00000ccd.wrapping_add(r000028bc);\n" : String).toByteArray.data.toList
theorem checked10368 : bytes10368=statementBytes 10486 (op10368.map lower) ∧ bytes10368.length=60 := by core033_kernel_decide
def op10369 : List WordIR.Op := [.badd 3330 10401]
def bytes10369 : Bytes := ("    let r000028f7: u32 = r00000d02.wrapping_add(r000028a1);\n" : String).toByteArray.data.toList
theorem checked10369 : bytes10369=statementBytes 10487 (op10369.map lower) ∧ bytes10369.length=60 := by core033_kernel_decide
def op10370 : List WordIR.Op := [.badd 3383 10483]
def bytes10370 : Bytes := ("    let r000028f8: u32 = r00000d37.wrapping_add(r000028f3);\n" : String).toByteArray.data.toList
theorem checked10370 : bytes10370=statementBytes 10488 (op10370.map lower) ∧ bytes10370.length=60 := by core033_kernel_decide
def op10371 : List WordIR.Op := [.badd 3436 10456]
def bytes10371 : Bytes := ("    let r000028f9: u32 = r00000d6c.wrapping_add(r000028d8);\n" : String).toByteArray.data.toList
theorem checked10371 : bytes10371=statementBytes 10489 (op10371.map lower) ∧ bytes10371.length=60 := by core033_kernel_decide
def op10372 : List WordIR.Op := [.badd 3489 10429]
def bytes10372 : Bytes := ("    let r000028fa: u32 = r00000da1.wrapping_add(r000028bd);\n" : String).toByteArray.data.toList
theorem checked10372 : bytes10372=statementBytes 10490 (op10372.map lower) ∧ bytes10372.length=60 := by core033_kernel_decide
def op10373 : List WordIR.Op := [.badd 3542 10402]
def bytes10373 : Bytes := ("    let r000028fb: u32 = r00000dd6.wrapping_add(r000028a2);\n" : String).toByteArray.data.toList
theorem checked10373 : bytes10373=statementBytes 10491 (op10373.map lower) ∧ bytes10373.length=60 := by core033_kernel_decide
def op10374 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10374 : Bytes := ("    let r000028fc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10374 : bytes10374=statementBytes 10492 (op10374.map lower) ∧ bytes10374.length=41 := by core033_kernel_decide
def op10375 : List WordIR.Op := [.bxor 1299 10492]
def bytes10375 : Bytes := ("    let r000028fd: u32 = r00000513 ^ r000028fc;\n" : String).toByteArray.data.toList
theorem checked10375 : bytes10375=statementBytes 10493 (op10375.map lower) ∧ bytes10375.length=48 := by core033_kernel_decide
def op10376 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10376 : Bytes := ("    let r000028fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10376 : bytes10376=statementBytes 10494 (op10376.map lower) ∧ bytes10376.length=41 := by core033_kernel_decide
def op10377 : List WordIR.Op := [.bnot 10494]
def bytes10377 : Bytes := ("    let r000028ff: u32 = !r000028fe;\n" : String).toByteArray.data.toList
theorem checked10377 : bytes10377=statementBytes 10495 (op10377.map lower) ∧ bytes10377.length=37 := by core033_kernel_decide
def op10378 : List WordIR.Op := [.band 10493 10495]
def bytes10378 : Bytes := ("    let r00002900: u32 = r000028fd & r000028ff;\n" : String).toByteArray.data.toList
theorem checked10378 : bytes10378=statementBytes 10496 (op10378.map lower) ∧ bytes10378.length=48 := by core033_kernel_decide
def op10379 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10379 : Bytes := ("    let r00002901: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10379 : bytes10379=statementBytes 10497 (op10379.map lower) ∧ bytes10379.length=41 := by core033_kernel_decide
def op10380 : List WordIR.Op := [.bxor 1299 10497]
def bytes10380 : Bytes := ("    let r00002902: u32 = r00000513 ^ r00002901;\n" : String).toByteArray.data.toList
theorem checked10380 : bytes10380=statementBytes 10498 (op10380.map lower) ∧ bytes10380.length=48 := by core033_kernel_decide
def op10381 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10381 : Bytes := ("    let r00002903: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10381 : bytes10381=statementBytes 10499 (op10381.map lower) ∧ bytes10381.length=41 := by core033_kernel_decide
def op10382 : List WordIR.Op := [.bnot 10499]
def bytes10382 : Bytes := ("    let r00002904: u32 = !r00002903;\n" : String).toByteArray.data.toList
theorem checked10382 : bytes10382=statementBytes 10500 (op10382.map lower) ∧ bytes10382.length=37 := by core033_kernel_decide
def op10383 : List WordIR.Op := [.bxor 10498 10500]
def bytes10383 : Bytes := ("    let r00002905: u32 = r00002902 ^ r00002904;\n" : String).toByteArray.data.toList
theorem checked10383 : bytes10383=statementBytes 10501 (op10383.map lower) ∧ bytes10383.length=48 := by core033_kernel_decide
def op10384 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10384 : Bytes := ("    let r00002906: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10384 : bytes10384=statementBytes 10502 (op10384.map lower) ∧ bytes10384.length=41 := by core033_kernel_decide
def op10385 : List WordIR.Op := [.bxor 1299 10502]
def bytes10385 : Bytes := ("    let r00002907: u32 = r00000513 ^ r00002906;\n" : String).toByteArray.data.toList
theorem checked10385 : bytes10385=statementBytes 10503 (op10385.map lower) ∧ bytes10385.length=48 := by core033_kernel_decide
def op10386 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10386 : Bytes := ("    let r00002908: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10386 : bytes10386=statementBytes 10504 (op10386.map lower) ∧ bytes10386.length=41 := by core033_kernel_decide
def op10387 : List WordIR.Op := [.bnot 10504]
def bytes10387 : Bytes := ("    let r00002909: u32 = !r00002908;\n" : String).toByteArray.data.toList
theorem checked10387 : bytes10387=statementBytes 10505 (op10387.map lower) ∧ bytes10387.length=37 := by core033_kernel_decide
def op10388 : List WordIR.Op := [.badd 10503 10505]
def bytes10388 : Bytes := ("    let r0000290a: u32 = r00002907.wrapping_add(r00002909);\n" : String).toByteArray.data.toList
theorem checked10388 : bytes10388=statementBytes 10506 (op10388.map lower) ∧ bytes10388.length=60 := by core033_kernel_decide
def op10389 : List WordIR.Op := [.bnot 10506]
def bytes10389 : Bytes := ("    let r0000290b: u32 = !r0000290a;\n" : String).toByteArray.data.toList
theorem checked10389 : bytes10389=statementBytes 10507 (op10389.map lower) ∧ bytes10389.length=37 := by core033_kernel_decide
def op10390 : List WordIR.Op := [.band 10501 10507]
def bytes10390 : Bytes := ("    let r0000290c: u32 = r00002905 & r0000290b;\n" : String).toByteArray.data.toList
theorem checked10390 : bytes10390=statementBytes 10508 (op10390.map lower) ∧ bytes10390.length=48 := by core033_kernel_decide
def op10391 : List WordIR.Op := [.bxor 10496 10508]
def bytes10391 : Bytes := ("    let r0000290d: u32 = r00002900 ^ r0000290c;\n" : String).toByteArray.data.toList
theorem checked10391 : bytes10391=statementBytes 10509 (op10391.map lower) ∧ bytes10391.length=48 := by core033_kernel_decide
def op10392 : List WordIR.Op := [.shr 10509 31]
def bytes10392 : Bytes := ("    let r0000290e: u32 = r0000290d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10392 : bytes10392=statementBytes 10510 (op10392.map lower) ∧ bytes10392.length=54 := by core033_kernel_decide
def op10393 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10393 : Bytes := ("    let r0000290f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10393 : bytes10393=statementBytes 10511 (op10393.map lower) ∧ bytes10393.length=41 := by core033_kernel_decide
def op10394 : List WordIR.Op := [.bxor 10510 10511]
def bytes10394 : Bytes := ("    let r00002910: u32 = r0000290e ^ r0000290f;\n" : String).toByteArray.data.toList
theorem checked10394 : bytes10394=statementBytes 10512 (op10394.map lower) ∧ bytes10394.length=48 := by core033_kernel_decide
def op10395 : List WordIR.Op := [.bnot 10512]
def bytes10395 : Bytes := ("    let r00002911: u32 = !r00002910;\n" : String).toByteArray.data.toList
theorem checked10395 : bytes10395=statementBytes 10513 (op10395.map lower) ∧ bytes10395.length=37 := by core033_kernel_decide
def op10396 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10396 : Bytes := ("    let r00002912: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10396 : bytes10396=statementBytes 10514 (op10396.map lower) ∧ bytes10396.length=41 := by core033_kernel_decide
def op10397 : List WordIR.Op := [.badd 10513 10514]
def bytes10397 : Bytes := ("    let r00002913: u32 = r00002911.wrapping_add(r00002912);\n" : String).toByteArray.data.toList
theorem checked10397 : bytes10397=statementBytes 10515 (op10397.map lower) ∧ bytes10397.length=60 := by core033_kernel_decide
def op10398 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10398 : Bytes := ("    let r00002914: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10398 : bytes10398=statementBytes 10516 (op10398.map lower) ∧ bytes10398.length=41 := by core033_kernel_decide
def op10399 : List WordIR.Op := [.band 10515 10516]
def bytes10399 : Bytes := ("    let r00002915: u32 = r00002913 & r00002914;\n" : String).toByteArray.data.toList
theorem checked10399 : bytes10399=statementBytes 10517 (op10399.map lower) ∧ bytes10399.length=48 := by core033_kernel_decide
def op10400 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10400 : Bytes := ("    let r00002916: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10400 : bytes10400=statementBytes 10518 (op10400.map lower) ∧ bytes10400.length=41 := by core033_kernel_decide
def op10401 : List WordIR.Op := [.bxor 1299 10518]
def bytes10401 : Bytes := ("    let r00002917: u32 = r00000513 ^ r00002916;\n" : String).toByteArray.data.toList
theorem checked10401 : bytes10401=statementBytes 10519 (op10401.map lower) ∧ bytes10401.length=48 := by core033_kernel_decide
def op10402 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10402 : Bytes := ("    let r00002918: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10402 : bytes10402=statementBytes 10520 (op10402.map lower) ∧ bytes10402.length=41 := by core033_kernel_decide
def op10403 : List WordIR.Op := [.bnot 10520]
def bytes10403 : Bytes := ("    let r00002919: u32 = !r00002918;\n" : String).toByteArray.data.toList
theorem checked10403 : bytes10403=statementBytes 10521 (op10403.map lower) ∧ bytes10403.length=37 := by core033_kernel_decide
def op10404 : List WordIR.Op := [.band 10519 10521]
def bytes10404 : Bytes := ("    let r0000291a: u32 = r00002917 & r00002919;\n" : String).toByteArray.data.toList
theorem checked10404 : bytes10404=statementBytes 10522 (op10404.map lower) ∧ bytes10404.length=48 := by core033_kernel_decide
def op10405 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10405 : Bytes := ("    let r0000291b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10405 : bytes10405=statementBytes 10523 (op10405.map lower) ∧ bytes10405.length=41 := by core033_kernel_decide
def op10406 : List WordIR.Op := [.bxor 1299 10523]
def bytes10406 : Bytes := ("    let r0000291c: u32 = r00000513 ^ r0000291b;\n" : String).toByteArray.data.toList
theorem checked10406 : bytes10406=statementBytes 10524 (op10406.map lower) ∧ bytes10406.length=48 := by core033_kernel_decide
def op10407 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10407 : Bytes := ("    let r0000291d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10407 : bytes10407=statementBytes 10525 (op10407.map lower) ∧ bytes10407.length=41 := by core033_kernel_decide
def op10408 : List WordIR.Op := [.bnot 10525]
def bytes10408 : Bytes := ("    let r0000291e: u32 = !r0000291d;\n" : String).toByteArray.data.toList
theorem checked10408 : bytes10408=statementBytes 10526 (op10408.map lower) ∧ bytes10408.length=37 := by core033_kernel_decide
def op10409 : List WordIR.Op := [.bxor 10524 10526]
def bytes10409 : Bytes := ("    let r0000291f: u32 = r0000291c ^ r0000291e;\n" : String).toByteArray.data.toList
theorem checked10409 : bytes10409=statementBytes 10527 (op10409.map lower) ∧ bytes10409.length=48 := by core033_kernel_decide
def op10410 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10410 : Bytes := ("    let r00002920: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10410 : bytes10410=statementBytes 10528 (op10410.map lower) ∧ bytes10410.length=41 := by core033_kernel_decide
def op10411 : List WordIR.Op := [.bxor 1299 10528]
def bytes10411 : Bytes := ("    let r00002921: u32 = r00000513 ^ r00002920;\n" : String).toByteArray.data.toList
theorem checked10411 : bytes10411=statementBytes 10529 (op10411.map lower) ∧ bytes10411.length=48 := by core033_kernel_decide
def op10412 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10412 : Bytes := ("    let r00002922: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10412 : bytes10412=statementBytes 10530 (op10412.map lower) ∧ bytes10412.length=41 := by core033_kernel_decide
def op10413 : List WordIR.Op := [.bnot 10530]
def bytes10413 : Bytes := ("    let r00002923: u32 = !r00002922;\n" : String).toByteArray.data.toList
theorem checked10413 : bytes10413=statementBytes 10531 (op10413.map lower) ∧ bytes10413.length=37 := by core033_kernel_decide
def op10414 : List WordIR.Op := [.badd 10529 10531]
def bytes10414 : Bytes := ("    let r00002924: u32 = r00002921.wrapping_add(r00002923);\n" : String).toByteArray.data.toList
theorem checked10414 : bytes10414=statementBytes 10532 (op10414.map lower) ∧ bytes10414.length=60 := by core033_kernel_decide
def op10415 : List WordIR.Op := [.bnot 10532]
def bytes10415 : Bytes := ("    let r00002925: u32 = !r00002924;\n" : String).toByteArray.data.toList
theorem checked10415 : bytes10415=statementBytes 10533 (op10415.map lower) ∧ bytes10415.length=37 := by core033_kernel_decide
def op10416 : List WordIR.Op := [.band 10527 10533]
def bytes10416 : Bytes := ("    let r00002926: u32 = r0000291f & r00002925;\n" : String).toByteArray.data.toList
theorem checked10416 : bytes10416=statementBytes 10534 (op10416.map lower) ∧ bytes10416.length=48 := by core033_kernel_decide
def op10417 : List WordIR.Op := [.bxor 10522 10534]
def bytes10417 : Bytes := ("    let r00002927: u32 = r0000291a ^ r00002926;\n" : String).toByteArray.data.toList
theorem checked10417 : bytes10417=statementBytes 10535 (op10417.map lower) ∧ bytes10417.length=48 := by core033_kernel_decide
def op10418 : List WordIR.Op := [.shr 10535 31]
def bytes10418 : Bytes := ("    let r00002928: u32 = r00002927 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10418 : bytes10418=statementBytes 10536 (op10418.map lower) ∧ bytes10418.length=54 := by core033_kernel_decide
def op10419 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10419 : Bytes := ("    let r00002929: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10419 : bytes10419=statementBytes 10537 (op10419.map lower) ∧ bytes10419.length=41 := by core033_kernel_decide
def op10420 : List WordIR.Op := [.bxor 10536 10537]
def bytes10420 : Bytes := ("    let r0000292a: u32 = r00002928 ^ r00002929;\n" : String).toByteArray.data.toList
theorem checked10420 : bytes10420=statementBytes 10538 (op10420.map lower) ∧ bytes10420.length=48 := by core033_kernel_decide
def op10421 : List WordIR.Op := [.bnot 10538]
def bytes10421 : Bytes := ("    let r0000292b: u32 = !r0000292a;\n" : String).toByteArray.data.toList
theorem checked10421 : bytes10421=statementBytes 10539 (op10421.map lower) ∧ bytes10421.length=37 := by core033_kernel_decide
def op10422 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10422 : Bytes := ("    let r0000292c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10422 : bytes10422=statementBytes 10540 (op10422.map lower) ∧ bytes10422.length=41 := by core033_kernel_decide
def op10423 : List WordIR.Op := [.badd 10539 10540]
def bytes10423 : Bytes := ("    let r0000292d: u32 = r0000292b.wrapping_add(r0000292c);\n" : String).toByteArray.data.toList
theorem checked10423 : bytes10423=statementBytes 10541 (op10423.map lower) ∧ bytes10423.length=60 := by core033_kernel_decide
def op10424 : List WordIR.Op := [.bnot 10541]
def bytes10424 : Bytes := ("    let r0000292e: u32 = !r0000292d;\n" : String).toByteArray.data.toList
theorem checked10424 : bytes10424=statementBytes 10542 (op10424.map lower) ∧ bytes10424.length=37 := by core033_kernel_decide
def op10425 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10425 : Bytes := ("    let r0000292f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10425 : bytes10425=statementBytes 10543 (op10425.map lower) ∧ bytes10425.length=41 := by core033_kernel_decide
def op10426 : List WordIR.Op := [.band 10542 10543]
def bytes10426 : Bytes := ("    let r00002930: u32 = r0000292e & r0000292f;\n" : String).toByteArray.data.toList
theorem checked10426 : bytes10426=statementBytes 10544 (op10426.map lower) ∧ bytes10426.length=48 := by core033_kernel_decide
def op10427 : List WordIR.Op := [.bxor 10517 10544]
def bytes10427 : Bytes := ("    let r00002931: u32 = r00002915 ^ r00002930;\n" : String).toByteArray.data.toList
theorem checked10427 : bytes10427=statementBytes 10545 (op10427.map lower) ∧ bytes10427.length=48 := by core033_kernel_decide
def op10428 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10428 : Bytes := ("    let r00002932: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10428 : bytes10428=statementBytes 10546 (op10428.map lower) ∧ bytes10428.length=41 := by core033_kernel_decide
def op10429 : List WordIR.Op := [.bxor 1299 10546]
def bytes10429 : Bytes := ("    let r00002933: u32 = r00000513 ^ r00002932;\n" : String).toByteArray.data.toList
theorem checked10429 : bytes10429=statementBytes 10547 (op10429.map lower) ∧ bytes10429.length=48 := by core033_kernel_decide
def op10430 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10430 : Bytes := ("    let r00002934: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10430 : bytes10430=statementBytes 10548 (op10430.map lower) ∧ bytes10430.length=41 := by core033_kernel_decide
def op10431 : List WordIR.Op := [.bnot 10548]
def bytes10431 : Bytes := ("    let r00002935: u32 = !r00002934;\n" : String).toByteArray.data.toList
theorem checked10431 : bytes10431=statementBytes 10549 (op10431.map lower) ∧ bytes10431.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10368,op10369,op10370,op10371,op10372,op10373,op10374,op10375,op10376,op10377,op10378,op10379,op10380,op10381,op10382,op10383,op10384,op10385,op10386,op10387,op10388,op10389,op10390,op10391,op10392,op10393,op10394,op10395,op10396,op10397,op10398,op10399,op10400,op10401,op10402,op10403,op10404,op10405,op10406,op10407,op10408,op10409,op10410,op10411,op10412,op10413,op10414,op10415,op10416,op10417,op10418,op10419,op10420,op10421,op10422,op10423,op10424,op10425,op10426,op10427,op10428,op10429,op10430,op10431]
def chunks : List Bytes := [bytes10368,bytes10369,bytes10370,bytes10371,bytes10372,bytes10373,bytes10374,bytes10375,bytes10376,bytes10377,bytes10378,bytes10379,bytes10380,bytes10381,bytes10382,bytes10383,bytes10384,bytes10385,bytes10386,bytes10387,bytes10388,bytes10389,bytes10390,bytes10391,bytes10392,bytes10393,bytes10394,bytes10395,bytes10396,bytes10397,bytes10398,bytes10399,bytes10400,bytes10401,bytes10402,bytes10403,bytes10404,bytes10405,bytes10406,bytes10407,bytes10408,bytes10409,bytes10410,bytes10411,bytes10412,bytes10413,bytes10414,bytes10415,bytes10416,bytes10417,bytes10418,bytes10419,bytes10420,bytes10421,bytes10422,bytes10423,bytes10424,bytes10425,bytes10426,bytes10427,bytes10428,bytes10429,bytes10430,bytes10431]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10486 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10368.1 (.cons _ _ _ _ _ checked10369.1 (.cons _ _ _ _ _ checked10370.1 (.cons _ _ _ _ _ checked10371.1 (.cons _ _ _ _ _ checked10372.1 (.cons _ _ _ _ _ checked10373.1 (.cons _ _ _ _ _ checked10374.1 (.cons _ _ _ _ _ checked10375.1 (.cons _ _ _ _ _ checked10376.1 (.cons _ _ _ _ _ checked10377.1 (.cons _ _ _ _ _ checked10378.1 (.cons _ _ _ _ _ checked10379.1 (.cons _ _ _ _ _ checked10380.1 (.cons _ _ _ _ _ checked10381.1 (.cons _ _ _ _ _ checked10382.1 (.cons _ _ _ _ _ checked10383.1 (.cons _ _ _ _ _ checked10384.1 (.cons _ _ _ _ _ checked10385.1 (.cons _ _ _ _ _ checked10386.1 (.cons _ _ _ _ _ checked10387.1 (.cons _ _ _ _ _ checked10388.1 (.cons _ _ _ _ _ checked10389.1 (.cons _ _ _ _ _ checked10390.1 (.cons _ _ _ _ _ checked10391.1 (.cons _ _ _ _ _ checked10392.1 (.cons _ _ _ _ _ checked10393.1 (.cons _ _ _ _ _ checked10394.1 (.cons _ _ _ _ _ checked10395.1 (.cons _ _ _ _ _ checked10396.1 (.cons _ _ _ _ _ checked10397.1 (.cons _ _ _ _ _ checked10398.1 (.cons _ _ _ _ _ checked10399.1 (.cons _ _ _ _ _ checked10400.1 (.cons _ _ _ _ _ checked10401.1 (.cons _ _ _ _ _ checked10402.1 (.cons _ _ _ _ _ checked10403.1 (.cons _ _ _ _ _ checked10404.1 (.cons _ _ _ _ _ checked10405.1 (.cons _ _ _ _ _ checked10406.1 (.cons _ _ _ _ _ checked10407.1 (.cons _ _ _ _ _ checked10408.1 (.cons _ _ _ _ _ checked10409.1 (.cons _ _ _ _ _ checked10410.1 (.cons _ _ _ _ _ checked10411.1 (.cons _ _ _ _ _ checked10412.1 (.cons _ _ _ _ _ checked10413.1 (.cons _ _ _ _ _ checked10414.1 (.cons _ _ _ _ _ checked10415.1 (.cons _ _ _ _ _ checked10416.1 (.cons _ _ _ _ _ checked10417.1 (.cons _ _ _ _ _ checked10418.1 (.cons _ _ _ _ _ checked10419.1 (.cons _ _ _ _ _ checked10420.1 (.cons _ _ _ _ _ checked10421.1 (.cons _ _ _ _ _ checked10422.1 (.cons _ _ _ _ _ checked10423.1 (.cons _ _ _ _ _ checked10424.1 (.cons _ _ _ _ _ checked10425.1 (.cons _ _ _ _ _ checked10426.1 (.cons _ _ _ _ _ checked10427.1 (.cons _ _ _ _ _ checked10428.1 (.cons _ _ _ _ _ checked10429.1 (.cons _ _ _ _ _ checked10430.1 (.cons _ _ _ _ _ checked10431.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10486 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2932 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10368.2,checked10369.2,checked10370.2,checked10371.2,checked10372.2,checked10373.2,checked10374.2,checked10375.2,checked10376.2,checked10377.2,checked10378.2,checked10379.2,checked10380.2,checked10381.2,checked10382.2,checked10383.2,checked10384.2,checked10385.2,checked10386.2,checked10387.2,checked10388.2,checked10389.2,checked10390.2,checked10391.2,checked10392.2,checked10393.2,checked10394.2,checked10395.2,checked10396.2,checked10397.2,checked10398.2,checked10399.2,checked10400.2,checked10401.2,checked10402.2,checked10403.2,checked10404.2,checked10405.2,checked10406.2,checked10407.2,checked10408.2,checked10409.2,checked10410.2,checked10411.2,checked10412.2,checked10413.2,checked10414.2,checked10415.2,checked10416.2,checked10417.2,checked10418.2,checked10419.2,checked10420.2,checked10421.2,checked10422.2,checked10423.2,checked10424.2,checked10425.2,checked10426.2,checked10427.2,checked10428.2,checked10429.2,checked10430.2,checked10431.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup162
