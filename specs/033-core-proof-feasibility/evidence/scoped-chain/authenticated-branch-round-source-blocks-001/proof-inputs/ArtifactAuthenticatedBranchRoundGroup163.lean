import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup163
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10432 : List WordIR.Op := [.band 10547 10549]
def bytes10432 : Bytes := ("    let r00002936: u32 = r00002933 & r00002935;\n" : String).toByteArray.data.toList
theorem checked10432 : bytes10432=statementBytes 10550 (op10432.map lower) ∧ bytes10432.length=48 := by core033_kernel_decide
def op10433 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10433 : Bytes := ("    let r00002937: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10433 : bytes10433=statementBytes 10551 (op10433.map lower) ∧ bytes10433.length=41 := by core033_kernel_decide
def op10434 : List WordIR.Op := [.bxor 1299 10551]
def bytes10434 : Bytes := ("    let r00002938: u32 = r00000513 ^ r00002937;\n" : String).toByteArray.data.toList
theorem checked10434 : bytes10434=statementBytes 10552 (op10434.map lower) ∧ bytes10434.length=48 := by core033_kernel_decide
def op10435 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10435 : Bytes := ("    let r00002939: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10435 : bytes10435=statementBytes 10553 (op10435.map lower) ∧ bytes10435.length=41 := by core033_kernel_decide
def op10436 : List WordIR.Op := [.bnot 10553]
def bytes10436 : Bytes := ("    let r0000293a: u32 = !r00002939;\n" : String).toByteArray.data.toList
theorem checked10436 : bytes10436=statementBytes 10554 (op10436.map lower) ∧ bytes10436.length=37 := by core033_kernel_decide
def op10437 : List WordIR.Op := [.bxor 10552 10554]
def bytes10437 : Bytes := ("    let r0000293b: u32 = r00002938 ^ r0000293a;\n" : String).toByteArray.data.toList
theorem checked10437 : bytes10437=statementBytes 10555 (op10437.map lower) ∧ bytes10437.length=48 := by core033_kernel_decide
def op10438 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10438 : Bytes := ("    let r0000293c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10438 : bytes10438=statementBytes 10556 (op10438.map lower) ∧ bytes10438.length=41 := by core033_kernel_decide
def op10439 : List WordIR.Op := [.bxor 1299 10556]
def bytes10439 : Bytes := ("    let r0000293d: u32 = r00000513 ^ r0000293c;\n" : String).toByteArray.data.toList
theorem checked10439 : bytes10439=statementBytes 10557 (op10439.map lower) ∧ bytes10439.length=48 := by core033_kernel_decide
def op10440 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10440 : Bytes := ("    let r0000293e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10440 : bytes10440=statementBytes 10558 (op10440.map lower) ∧ bytes10440.length=41 := by core033_kernel_decide
def op10441 : List WordIR.Op := [.bnot 10558]
def bytes10441 : Bytes := ("    let r0000293f: u32 = !r0000293e;\n" : String).toByteArray.data.toList
theorem checked10441 : bytes10441=statementBytes 10559 (op10441.map lower) ∧ bytes10441.length=37 := by core033_kernel_decide
def op10442 : List WordIR.Op := [.badd 10557 10559]
def bytes10442 : Bytes := ("    let r00002940: u32 = r0000293d.wrapping_add(r0000293f);\n" : String).toByteArray.data.toList
theorem checked10442 : bytes10442=statementBytes 10560 (op10442.map lower) ∧ bytes10442.length=60 := by core033_kernel_decide
def op10443 : List WordIR.Op := [.bnot 10560]
def bytes10443 : Bytes := ("    let r00002941: u32 = !r00002940;\n" : String).toByteArray.data.toList
theorem checked10443 : bytes10443=statementBytes 10561 (op10443.map lower) ∧ bytes10443.length=37 := by core033_kernel_decide
def op10444 : List WordIR.Op := [.band 10555 10561]
def bytes10444 : Bytes := ("    let r00002942: u32 = r0000293b & r00002941;\n" : String).toByteArray.data.toList
theorem checked10444 : bytes10444=statementBytes 10562 (op10444.map lower) ∧ bytes10444.length=48 := by core033_kernel_decide
def op10445 : List WordIR.Op := [.bxor 10550 10562]
def bytes10445 : Bytes := ("    let r00002943: u32 = r00002936 ^ r00002942;\n" : String).toByteArray.data.toList
theorem checked10445 : bytes10445=statementBytes 10563 (op10445.map lower) ∧ bytes10445.length=48 := by core033_kernel_decide
def op10446 : List WordIR.Op := [.shr 10563 31]
def bytes10446 : Bytes := ("    let r00002944: u32 = r00002943 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10446 : bytes10446=statementBytes 10564 (op10446.map lower) ∧ bytes10446.length=54 := by core033_kernel_decide
def op10447 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10447 : Bytes := ("    let r00002945: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10447 : bytes10447=statementBytes 10565 (op10447.map lower) ∧ bytes10447.length=41 := by core033_kernel_decide
def op10448 : List WordIR.Op := [.bxor 10564 10565]
def bytes10448 : Bytes := ("    let r00002946: u32 = r00002944 ^ r00002945;\n" : String).toByteArray.data.toList
theorem checked10448 : bytes10448=statementBytes 10566 (op10448.map lower) ∧ bytes10448.length=48 := by core033_kernel_decide
def op10449 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10449 : Bytes := ("    let r00002947: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10449 : bytes10449=statementBytes 10567 (op10449.map lower) ∧ bytes10449.length=41 := by core033_kernel_decide
def op10450 : List WordIR.Op := [.bxor 1299 10567]
def bytes10450 : Bytes := ("    let r00002948: u32 = r00000513 ^ r00002947;\n" : String).toByteArray.data.toList
theorem checked10450 : bytes10450=statementBytes 10568 (op10450.map lower) ∧ bytes10450.length=48 := by core033_kernel_decide
def op10451 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10451 : Bytes := ("    let r00002949: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10451 : bytes10451=statementBytes 10569 (op10451.map lower) ∧ bytes10451.length=41 := by core033_kernel_decide
def op10452 : List WordIR.Op := [.bnot 10569]
def bytes10452 : Bytes := ("    let r0000294a: u32 = !r00002949;\n" : String).toByteArray.data.toList
theorem checked10452 : bytes10452=statementBytes 10570 (op10452.map lower) ∧ bytes10452.length=37 := by core033_kernel_decide
def op10453 : List WordIR.Op := [.band 10568 10570]
def bytes10453 : Bytes := ("    let r0000294b: u32 = r00002948 & r0000294a;\n" : String).toByteArray.data.toList
theorem checked10453 : bytes10453=statementBytes 10571 (op10453.map lower) ∧ bytes10453.length=48 := by core033_kernel_decide
def op10454 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10454 : Bytes := ("    let r0000294c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10454 : bytes10454=statementBytes 10572 (op10454.map lower) ∧ bytes10454.length=41 := by core033_kernel_decide
def op10455 : List WordIR.Op := [.bxor 1299 10572]
def bytes10455 : Bytes := ("    let r0000294d: u32 = r00000513 ^ r0000294c;\n" : String).toByteArray.data.toList
theorem checked10455 : bytes10455=statementBytes 10573 (op10455.map lower) ∧ bytes10455.length=48 := by core033_kernel_decide
def op10456 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10456 : Bytes := ("    let r0000294e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10456 : bytes10456=statementBytes 10574 (op10456.map lower) ∧ bytes10456.length=41 := by core033_kernel_decide
def op10457 : List WordIR.Op := [.bnot 10574]
def bytes10457 : Bytes := ("    let r0000294f: u32 = !r0000294e;\n" : String).toByteArray.data.toList
theorem checked10457 : bytes10457=statementBytes 10575 (op10457.map lower) ∧ bytes10457.length=37 := by core033_kernel_decide
def op10458 : List WordIR.Op := [.bxor 10573 10575]
def bytes10458 : Bytes := ("    let r00002950: u32 = r0000294d ^ r0000294f;\n" : String).toByteArray.data.toList
theorem checked10458 : bytes10458=statementBytes 10576 (op10458.map lower) ∧ bytes10458.length=48 := by core033_kernel_decide
def op10459 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes10459 : Bytes := ("    let r00002951: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked10459 : bytes10459=statementBytes 10577 (op10459.map lower) ∧ bytes10459.length=41 := by core033_kernel_decide
def op10460 : List WordIR.Op := [.bxor 1299 10577]
def bytes10460 : Bytes := ("    let r00002952: u32 = r00000513 ^ r00002951;\n" : String).toByteArray.data.toList
theorem checked10460 : bytes10460=statementBytes 10578 (op10460.map lower) ∧ bytes10460.length=48 := by core033_kernel_decide
def op10461 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10461 : Bytes := ("    let r00002953: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10461 : bytes10461=statementBytes 10579 (op10461.map lower) ∧ bytes10461.length=41 := by core033_kernel_decide
def op10462 : List WordIR.Op := [.bnot 10579]
def bytes10462 : Bytes := ("    let r00002954: u32 = !r00002953;\n" : String).toByteArray.data.toList
theorem checked10462 : bytes10462=statementBytes 10580 (op10462.map lower) ∧ bytes10462.length=37 := by core033_kernel_decide
def op10463 : List WordIR.Op := [.badd 10578 10580]
def bytes10463 : Bytes := ("    let r00002955: u32 = r00002952.wrapping_add(r00002954);\n" : String).toByteArray.data.toList
theorem checked10463 : bytes10463=statementBytes 10581 (op10463.map lower) ∧ bytes10463.length=60 := by core033_kernel_decide
def op10464 : List WordIR.Op := [.bnot 10581]
def bytes10464 : Bytes := ("    let r00002956: u32 = !r00002955;\n" : String).toByteArray.data.toList
theorem checked10464 : bytes10464=statementBytes 10582 (op10464.map lower) ∧ bytes10464.length=37 := by core033_kernel_decide
def op10465 : List WordIR.Op := [.band 10576 10582]
def bytes10465 : Bytes := ("    let r00002957: u32 = r00002950 & r00002956;\n" : String).toByteArray.data.toList
theorem checked10465 : bytes10465=statementBytes 10583 (op10465.map lower) ∧ bytes10465.length=48 := by core033_kernel_decide
def op10466 : List WordIR.Op := [.bxor 10571 10583]
def bytes10466 : Bytes := ("    let r00002958: u32 = r0000294b ^ r00002957;\n" : String).toByteArray.data.toList
theorem checked10466 : bytes10466=statementBytes 10584 (op10466.map lower) ∧ bytes10466.length=48 := by core033_kernel_decide
def op10467 : List WordIR.Op := [.shr 10584 31]
def bytes10467 : Bytes := ("    let r00002959: u32 = r00002958 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10467 : bytes10467=statementBytes 10585 (op10467.map lower) ∧ bytes10467.length=54 := by core033_kernel_decide
def op10468 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10468 : Bytes := ("    let r0000295a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10468 : bytes10468=statementBytes 10586 (op10468.map lower) ∧ bytes10468.length=41 := by core033_kernel_decide
def op10469 : List WordIR.Op := [.bxor 10585 10586]
def bytes10469 : Bytes := ("    let r0000295b: u32 = r00002959 ^ r0000295a;\n" : String).toByteArray.data.toList
theorem checked10469 : bytes10469=statementBytes 10587 (op10469.map lower) ∧ bytes10469.length=48 := by core033_kernel_decide
def op10470 : List WordIR.Op := [.bxor 10566 10587]
def bytes10470 : Bytes := ("    let r0000295c: u32 = r00002946 ^ r0000295b;\n" : String).toByteArray.data.toList
theorem checked10470 : bytes10470=statementBytes 10588 (op10470.map lower) ∧ bytes10470.length=48 := by core033_kernel_decide
def op10471 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10471 : Bytes := ("    let r0000295d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10471 : bytes10471=statementBytes 10589 (op10471.map lower) ∧ bytes10471.length=41 := by core033_kernel_decide
def op10472 : List WordIR.Op := [.bxor 693 10589]
def bytes10472 : Bytes := ("    let r0000295e: u32 = r000002b5 ^ r0000295d;\n" : String).toByteArray.data.toList
theorem checked10472 : bytes10472=statementBytes 10590 (op10472.map lower) ∧ bytes10472.length=48 := by core033_kernel_decide
def op10473 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10473 : Bytes := ("    let r0000295f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10473 : bytes10473=statementBytes 10591 (op10473.map lower) ∧ bytes10473.length=41 := by core033_kernel_decide
def op10474 : List WordIR.Op := [.bnot 10591]
def bytes10474 : Bytes := ("    let r00002960: u32 = !r0000295f;\n" : String).toByteArray.data.toList
theorem checked10474 : bytes10474=statementBytes 10592 (op10474.map lower) ∧ bytes10474.length=37 := by core033_kernel_decide
def op10475 : List WordIR.Op := [.band 10590 10592]
def bytes10475 : Bytes := ("    let r00002961: u32 = r0000295e & r00002960;\n" : String).toByteArray.data.toList
theorem checked10475 : bytes10475=statementBytes 10593 (op10475.map lower) ∧ bytes10475.length=48 := by core033_kernel_decide
def op10476 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10476 : Bytes := ("    let r00002962: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10476 : bytes10476=statementBytes 10594 (op10476.map lower) ∧ bytes10476.length=41 := by core033_kernel_decide
def op10477 : List WordIR.Op := [.bxor 693 10594]
def bytes10477 : Bytes := ("    let r00002963: u32 = r000002b5 ^ r00002962;\n" : String).toByteArray.data.toList
theorem checked10477 : bytes10477=statementBytes 10595 (op10477.map lower) ∧ bytes10477.length=48 := by core033_kernel_decide
def op10478 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10478 : Bytes := ("    let r00002964: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10478 : bytes10478=statementBytes 10596 (op10478.map lower) ∧ bytes10478.length=41 := by core033_kernel_decide
def op10479 : List WordIR.Op := [.bnot 10596]
def bytes10479 : Bytes := ("    let r00002965: u32 = !r00002964;\n" : String).toByteArray.data.toList
theorem checked10479 : bytes10479=statementBytes 10597 (op10479.map lower) ∧ bytes10479.length=37 := by core033_kernel_decide
def op10480 : List WordIR.Op := [.bxor 10595 10597]
def bytes10480 : Bytes := ("    let r00002966: u32 = r00002963 ^ r00002965;\n" : String).toByteArray.data.toList
theorem checked10480 : bytes10480=statementBytes 10598 (op10480.map lower) ∧ bytes10480.length=48 := by core033_kernel_decide
def op10481 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10481 : Bytes := ("    let r00002967: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10481 : bytes10481=statementBytes 10599 (op10481.map lower) ∧ bytes10481.length=41 := by core033_kernel_decide
def op10482 : List WordIR.Op := [.bxor 693 10599]
def bytes10482 : Bytes := ("    let r00002968: u32 = r000002b5 ^ r00002967;\n" : String).toByteArray.data.toList
theorem checked10482 : bytes10482=statementBytes 10600 (op10482.map lower) ∧ bytes10482.length=48 := by core033_kernel_decide
def op10483 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10483 : Bytes := ("    let r00002969: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10483 : bytes10483=statementBytes 10601 (op10483.map lower) ∧ bytes10483.length=41 := by core033_kernel_decide
def op10484 : List WordIR.Op := [.bnot 10601]
def bytes10484 : Bytes := ("    let r0000296a: u32 = !r00002969;\n" : String).toByteArray.data.toList
theorem checked10484 : bytes10484=statementBytes 10602 (op10484.map lower) ∧ bytes10484.length=37 := by core033_kernel_decide
def op10485 : List WordIR.Op := [.badd 10600 10602]
def bytes10485 : Bytes := ("    let r0000296b: u32 = r00002968.wrapping_add(r0000296a);\n" : String).toByteArray.data.toList
theorem checked10485 : bytes10485=statementBytes 10603 (op10485.map lower) ∧ bytes10485.length=60 := by core033_kernel_decide
def op10486 : List WordIR.Op := [.bnot 10603]
def bytes10486 : Bytes := ("    let r0000296c: u32 = !r0000296b;\n" : String).toByteArray.data.toList
theorem checked10486 : bytes10486=statementBytes 10604 (op10486.map lower) ∧ bytes10486.length=37 := by core033_kernel_decide
def op10487 : List WordIR.Op := [.band 10598 10604]
def bytes10487 : Bytes := ("    let r0000296d: u32 = r00002966 & r0000296c;\n" : String).toByteArray.data.toList
theorem checked10487 : bytes10487=statementBytes 10605 (op10487.map lower) ∧ bytes10487.length=48 := by core033_kernel_decide
def op10488 : List WordIR.Op := [.bxor 10593 10605]
def bytes10488 : Bytes := ("    let r0000296e: u32 = r00002961 ^ r0000296d;\n" : String).toByteArray.data.toList
theorem checked10488 : bytes10488=statementBytes 10606 (op10488.map lower) ∧ bytes10488.length=48 := by core033_kernel_decide
def op10489 : List WordIR.Op := [.shr 10606 31]
def bytes10489 : Bytes := ("    let r0000296f: u32 = r0000296e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10489 : bytes10489=statementBytes 10607 (op10489.map lower) ∧ bytes10489.length=54 := by core033_kernel_decide
def op10490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10490 : Bytes := ("    let r00002970: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10490 : bytes10490=statementBytes 10608 (op10490.map lower) ∧ bytes10490.length=41 := by core033_kernel_decide
def op10491 : List WordIR.Op := [.bxor 10607 10608]
def bytes10491 : Bytes := ("    let r00002971: u32 = r0000296f ^ r00002970;\n" : String).toByteArray.data.toList
theorem checked10491 : bytes10491=statementBytes 10609 (op10491.map lower) ∧ bytes10491.length=48 := by core033_kernel_decide
def op10492 : List WordIR.Op := [.bnot 10609]
def bytes10492 : Bytes := ("    let r00002972: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10492 : bytes10492=statementBytes 10610 (op10492.map lower) ∧ bytes10492.length=37 := by core033_kernel_decide
def op10493 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10493 : Bytes := ("    let r00002973: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10493 : bytes10493=statementBytes 10611 (op10493.map lower) ∧ bytes10493.length=41 := by core033_kernel_decide
def op10494 : List WordIR.Op := [.badd 10610 10611]
def bytes10494 : Bytes := ("    let r00002974: u32 = r00002972.wrapping_add(r00002973);\n" : String).toByteArray.data.toList
theorem checked10494 : bytes10494=statementBytes 10612 (op10494.map lower) ∧ bytes10494.length=60 := by core033_kernel_decide
def op10495 : List WordIR.Op := [.band 10612 693]
def bytes10495 : Bytes := ("    let r00002975: u32 = r00002974 & r000002b5;\n" : String).toByteArray.data.toList
theorem checked10495 : bytes10495=statementBytes 10613 (op10495.map lower) ∧ bytes10495.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10432,op10433,op10434,op10435,op10436,op10437,op10438,op10439,op10440,op10441,op10442,op10443,op10444,op10445,op10446,op10447,op10448,op10449,op10450,op10451,op10452,op10453,op10454,op10455,op10456,op10457,op10458,op10459,op10460,op10461,op10462,op10463,op10464,op10465,op10466,op10467,op10468,op10469,op10470,op10471,op10472,op10473,op10474,op10475,op10476,op10477,op10478,op10479,op10480,op10481,op10482,op10483,op10484,op10485,op10486,op10487,op10488,op10489,op10490,op10491,op10492,op10493,op10494,op10495]
def chunks : List Bytes := [bytes10432,bytes10433,bytes10434,bytes10435,bytes10436,bytes10437,bytes10438,bytes10439,bytes10440,bytes10441,bytes10442,bytes10443,bytes10444,bytes10445,bytes10446,bytes10447,bytes10448,bytes10449,bytes10450,bytes10451,bytes10452,bytes10453,bytes10454,bytes10455,bytes10456,bytes10457,bytes10458,bytes10459,bytes10460,bytes10461,bytes10462,bytes10463,bytes10464,bytes10465,bytes10466,bytes10467,bytes10468,bytes10469,bytes10470,bytes10471,bytes10472,bytes10473,bytes10474,bytes10475,bytes10476,bytes10477,bytes10478,bytes10479,bytes10480,bytes10481,bytes10482,bytes10483,bytes10484,bytes10485,bytes10486,bytes10487,bytes10488,bytes10489,bytes10490,bytes10491,bytes10492,bytes10493,bytes10494,bytes10495]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10550 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10432.1 (.cons _ _ _ _ _ checked10433.1 (.cons _ _ _ _ _ checked10434.1 (.cons _ _ _ _ _ checked10435.1 (.cons _ _ _ _ _ checked10436.1 (.cons _ _ _ _ _ checked10437.1 (.cons _ _ _ _ _ checked10438.1 (.cons _ _ _ _ _ checked10439.1 (.cons _ _ _ _ _ checked10440.1 (.cons _ _ _ _ _ checked10441.1 (.cons _ _ _ _ _ checked10442.1 (.cons _ _ _ _ _ checked10443.1 (.cons _ _ _ _ _ checked10444.1 (.cons _ _ _ _ _ checked10445.1 (.cons _ _ _ _ _ checked10446.1 (.cons _ _ _ _ _ checked10447.1 (.cons _ _ _ _ _ checked10448.1 (.cons _ _ _ _ _ checked10449.1 (.cons _ _ _ _ _ checked10450.1 (.cons _ _ _ _ _ checked10451.1 (.cons _ _ _ _ _ checked10452.1 (.cons _ _ _ _ _ checked10453.1 (.cons _ _ _ _ _ checked10454.1 (.cons _ _ _ _ _ checked10455.1 (.cons _ _ _ _ _ checked10456.1 (.cons _ _ _ _ _ checked10457.1 (.cons _ _ _ _ _ checked10458.1 (.cons _ _ _ _ _ checked10459.1 (.cons _ _ _ _ _ checked10460.1 (.cons _ _ _ _ _ checked10461.1 (.cons _ _ _ _ _ checked10462.1 (.cons _ _ _ _ _ checked10463.1 (.cons _ _ _ _ _ checked10464.1 (.cons _ _ _ _ _ checked10465.1 (.cons _ _ _ _ _ checked10466.1 (.cons _ _ _ _ _ checked10467.1 (.cons _ _ _ _ _ checked10468.1 (.cons _ _ _ _ _ checked10469.1 (.cons _ _ _ _ _ checked10470.1 (.cons _ _ _ _ _ checked10471.1 (.cons _ _ _ _ _ checked10472.1 (.cons _ _ _ _ _ checked10473.1 (.cons _ _ _ _ _ checked10474.1 (.cons _ _ _ _ _ checked10475.1 (.cons _ _ _ _ _ checked10476.1 (.cons _ _ _ _ _ checked10477.1 (.cons _ _ _ _ _ checked10478.1 (.cons _ _ _ _ _ checked10479.1 (.cons _ _ _ _ _ checked10480.1 (.cons _ _ _ _ _ checked10481.1 (.cons _ _ _ _ _ checked10482.1 (.cons _ _ _ _ _ checked10483.1 (.cons _ _ _ _ _ checked10484.1 (.cons _ _ _ _ _ checked10485.1 (.cons _ _ _ _ _ checked10486.1 (.cons _ _ _ _ _ checked10487.1 (.cons _ _ _ _ _ checked10488.1 (.cons _ _ _ _ _ checked10489.1 (.cons _ _ _ _ _ checked10490.1 (.cons _ _ _ _ _ checked10491.1 (.cons _ _ _ _ _ checked10492.1 (.cons _ _ _ _ _ checked10493.1 (.cons _ _ _ _ _ checked10494.1 (.cons _ _ _ _ _ checked10495.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10550 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2866 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10432.2,checked10433.2,checked10434.2,checked10435.2,checked10436.2,checked10437.2,checked10438.2,checked10439.2,checked10440.2,checked10441.2,checked10442.2,checked10443.2,checked10444.2,checked10445.2,checked10446.2,checked10447.2,checked10448.2,checked10449.2,checked10450.2,checked10451.2,checked10452.2,checked10453.2,checked10454.2,checked10455.2,checked10456.2,checked10457.2,checked10458.2,checked10459.2,checked10460.2,checked10461.2,checked10462.2,checked10463.2,checked10464.2,checked10465.2,checked10466.2,checked10467.2,checked10468.2,checked10469.2,checked10470.2,checked10471.2,checked10472.2,checked10473.2,checked10474.2,checked10475.2,checked10476.2,checked10477.2,checked10478.2,checked10479.2,checked10480.2,checked10481.2,checked10482.2,checked10483.2,checked10484.2,checked10485.2,checked10486.2,checked10487.2,checked10488.2,checked10489.2,checked10490.2,checked10491.2,checked10492.2,checked10493.2,checked10494.2,checked10495.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup163
