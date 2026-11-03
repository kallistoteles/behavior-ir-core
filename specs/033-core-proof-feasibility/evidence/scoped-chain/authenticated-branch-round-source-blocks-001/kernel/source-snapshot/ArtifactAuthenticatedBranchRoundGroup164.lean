import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup164
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10496 : List WordIR.Op := [.bnot 10609]
def bytes10496 : Bytes := ("    let r00002976: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10496 : bytes10496=statementBytes 10614 (op10496.map lower) ∧ bytes10496.length=37 := by core033_kernel_decide
def op10497 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10497 : Bytes := ("    let r00002977: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10497 : bytes10497=statementBytes 10615 (op10497.map lower) ∧ bytes10497.length=41 := by core033_kernel_decide
def op10498 : List WordIR.Op := [.badd 10614 10615]
def bytes10498 : Bytes := ("    let r00002978: u32 = r00002976.wrapping_add(r00002977);\n" : String).toByteArray.data.toList
theorem checked10498 : bytes10498=statementBytes 10616 (op10498.map lower) ∧ bytes10498.length=60 := by core033_kernel_decide
def op10499 : List WordIR.Op := [.bnot 10616]
def bytes10499 : Bytes := ("    let r00002979: u32 = !r00002978;\n" : String).toByteArray.data.toList
theorem checked10499 : bytes10499=statementBytes 10617 (op10499.map lower) ∧ bytes10499.length=37 := by core033_kernel_decide
def op10500 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10500 : Bytes := ("    let r0000297a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10500 : bytes10500=statementBytes 10618 (op10500.map lower) ∧ bytes10500.length=41 := by core033_kernel_decide
def op10501 : List WordIR.Op := [.band 10617 10618]
def bytes10501 : Bytes := ("    let r0000297b: u32 = r00002979 & r0000297a;\n" : String).toByteArray.data.toList
theorem checked10501 : bytes10501=statementBytes 10619 (op10501.map lower) ∧ bytes10501.length=48 := by core033_kernel_decide
def op10502 : List WordIR.Op := [.bxor 10613 10619]
def bytes10502 : Bytes := ("    let r0000297c: u32 = r00002975 ^ r0000297b;\n" : String).toByteArray.data.toList
theorem checked10502 : bytes10502=statementBytes 10620 (op10502.map lower) ∧ bytes10502.length=48 := by core033_kernel_decide
def op10503 : List WordIR.Op := [.bnot 10609]
def bytes10503 : Bytes := ("    let r0000297d: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10503 : bytes10503=statementBytes 10621 (op10503.map lower) ∧ bytes10503.length=37 := by core033_kernel_decide
def op10504 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10504 : Bytes := ("    let r0000297e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10504 : bytes10504=statementBytes 10622 (op10504.map lower) ∧ bytes10504.length=41 := by core033_kernel_decide
def op10505 : List WordIR.Op := [.badd 10621 10622]
def bytes10505 : Bytes := ("    let r0000297f: u32 = r0000297d.wrapping_add(r0000297e);\n" : String).toByteArray.data.toList
theorem checked10505 : bytes10505=statementBytes 10623 (op10505.map lower) ∧ bytes10505.length=60 := by core033_kernel_decide
def op10506 : List WordIR.Op := [.band 10623 703]
def bytes10506 : Bytes := ("    let r00002980: u32 = r0000297f & r000002bf;\n" : String).toByteArray.data.toList
theorem checked10506 : bytes10506=statementBytes 10624 (op10506.map lower) ∧ bytes10506.length=48 := by core033_kernel_decide
def op10507 : List WordIR.Op := [.bnot 10609]
def bytes10507 : Bytes := ("    let r00002981: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10507 : bytes10507=statementBytes 10625 (op10507.map lower) ∧ bytes10507.length=37 := by core033_kernel_decide
def op10508 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10508 : Bytes := ("    let r00002982: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10508 : bytes10508=statementBytes 10626 (op10508.map lower) ∧ bytes10508.length=41 := by core033_kernel_decide
def op10509 : List WordIR.Op := [.badd 10625 10626]
def bytes10509 : Bytes := ("    let r00002983: u32 = r00002981.wrapping_add(r00002982);\n" : String).toByteArray.data.toList
theorem checked10509 : bytes10509=statementBytes 10627 (op10509.map lower) ∧ bytes10509.length=60 := by core033_kernel_decide
def op10510 : List WordIR.Op := [.bnot 10627]
def bytes10510 : Bytes := ("    let r00002984: u32 = !r00002983;\n" : String).toByteArray.data.toList
theorem checked10510 : bytes10510=statementBytes 10628 (op10510.map lower) ∧ bytes10510.length=37 := by core033_kernel_decide
def op10511 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10511 : Bytes := ("    let r00002985: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10511 : bytes10511=statementBytes 10629 (op10511.map lower) ∧ bytes10511.length=41 := by core033_kernel_decide
def op10512 : List WordIR.Op := [.band 10628 10629]
def bytes10512 : Bytes := ("    let r00002986: u32 = r00002984 & r00002985;\n" : String).toByteArray.data.toList
theorem checked10512 : bytes10512=statementBytes 10630 (op10512.map lower) ∧ bytes10512.length=48 := by core033_kernel_decide
def op10513 : List WordIR.Op := [.bxor 10624 10630]
def bytes10513 : Bytes := ("    let r00002987: u32 = r00002980 ^ r00002986;\n" : String).toByteArray.data.toList
theorem checked10513 : bytes10513=statementBytes 10631 (op10513.map lower) ∧ bytes10513.length=48 := by core033_kernel_decide
def op10514 : List WordIR.Op := [.bnot 10609]
def bytes10514 : Bytes := ("    let r00002988: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10514 : bytes10514=statementBytes 10632 (op10514.map lower) ∧ bytes10514.length=37 := by core033_kernel_decide
def op10515 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10515 : Bytes := ("    let r00002989: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10515 : bytes10515=statementBytes 10633 (op10515.map lower) ∧ bytes10515.length=41 := by core033_kernel_decide
def op10516 : List WordIR.Op := [.badd 10632 10633]
def bytes10516 : Bytes := ("    let r0000298a: u32 = r00002988.wrapping_add(r00002989);\n" : String).toByteArray.data.toList
theorem checked10516 : bytes10516=statementBytes 10634 (op10516.map lower) ∧ bytes10516.length=60 := by core033_kernel_decide
def op10517 : List WordIR.Op := [.band 10634 715]
def bytes10517 : Bytes := ("    let r0000298b: u32 = r0000298a & r000002cb;\n" : String).toByteArray.data.toList
theorem checked10517 : bytes10517=statementBytes 10635 (op10517.map lower) ∧ bytes10517.length=48 := by core033_kernel_decide
def op10518 : List WordIR.Op := [.bnot 10609]
def bytes10518 : Bytes := ("    let r0000298c: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10518 : bytes10518=statementBytes 10636 (op10518.map lower) ∧ bytes10518.length=37 := by core033_kernel_decide
def op10519 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10519 : Bytes := ("    let r0000298d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10519 : bytes10519=statementBytes 10637 (op10519.map lower) ∧ bytes10519.length=41 := by core033_kernel_decide
def op10520 : List WordIR.Op := [.badd 10636 10637]
def bytes10520 : Bytes := ("    let r0000298e: u32 = r0000298c.wrapping_add(r0000298d);\n" : String).toByteArray.data.toList
theorem checked10520 : bytes10520=statementBytes 10638 (op10520.map lower) ∧ bytes10520.length=60 := by core033_kernel_decide
def op10521 : List WordIR.Op := [.bnot 10638]
def bytes10521 : Bytes := ("    let r0000298f: u32 = !r0000298e;\n" : String).toByteArray.data.toList
theorem checked10521 : bytes10521=statementBytes 10639 (op10521.map lower) ∧ bytes10521.length=37 := by core033_kernel_decide
def op10522 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10522 : Bytes := ("    let r00002990: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10522 : bytes10522=statementBytes 10640 (op10522.map lower) ∧ bytes10522.length=41 := by core033_kernel_decide
def op10523 : List WordIR.Op := [.band 10639 10640]
def bytes10523 : Bytes := ("    let r00002991: u32 = r0000298f & r00002990;\n" : String).toByteArray.data.toList
theorem checked10523 : bytes10523=statementBytes 10641 (op10523.map lower) ∧ bytes10523.length=48 := by core033_kernel_decide
def op10524 : List WordIR.Op := [.bxor 10635 10641]
def bytes10524 : Bytes := ("    let r00002992: u32 = r0000298b ^ r00002991;\n" : String).toByteArray.data.toList
theorem checked10524 : bytes10524=statementBytes 10642 (op10524.map lower) ∧ bytes10524.length=48 := by core033_kernel_decide
def op10525 : List WordIR.Op := [.bnot 10609]
def bytes10525 : Bytes := ("    let r00002993: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10525 : bytes10525=statementBytes 10643 (op10525.map lower) ∧ bytes10525.length=37 := by core033_kernel_decide
def op10526 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10526 : Bytes := ("    let r00002994: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10526 : bytes10526=statementBytes 10644 (op10526.map lower) ∧ bytes10526.length=41 := by core033_kernel_decide
def op10527 : List WordIR.Op := [.badd 10643 10644]
def bytes10527 : Bytes := ("    let r00002995: u32 = r00002993.wrapping_add(r00002994);\n" : String).toByteArray.data.toList
theorem checked10527 : bytes10527=statementBytes 10645 (op10527.map lower) ∧ bytes10527.length=60 := by core033_kernel_decide
def op10528 : List WordIR.Op := [.band 10645 726]
def bytes10528 : Bytes := ("    let r00002996: u32 = r00002995 & r000002d6;\n" : String).toByteArray.data.toList
theorem checked10528 : bytes10528=statementBytes 10646 (op10528.map lower) ∧ bytes10528.length=48 := by core033_kernel_decide
def op10529 : List WordIR.Op := [.bnot 10609]
def bytes10529 : Bytes := ("    let r00002997: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10529 : bytes10529=statementBytes 10647 (op10529.map lower) ∧ bytes10529.length=37 := by core033_kernel_decide
def op10530 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10530 : Bytes := ("    let r00002998: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10530 : bytes10530=statementBytes 10648 (op10530.map lower) ∧ bytes10530.length=41 := by core033_kernel_decide
def op10531 : List WordIR.Op := [.badd 10647 10648]
def bytes10531 : Bytes := ("    let r00002999: u32 = r00002997.wrapping_add(r00002998);\n" : String).toByteArray.data.toList
theorem checked10531 : bytes10531=statementBytes 10649 (op10531.map lower) ∧ bytes10531.length=60 := by core033_kernel_decide
def op10532 : List WordIR.Op := [.bnot 10649]
def bytes10532 : Bytes := ("    let r0000299a: u32 = !r00002999;\n" : String).toByteArray.data.toList
theorem checked10532 : bytes10532=statementBytes 10650 (op10532.map lower) ∧ bytes10532.length=37 := by core033_kernel_decide
def op10533 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10533 : Bytes := ("    let r0000299b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10533 : bytes10533=statementBytes 10651 (op10533.map lower) ∧ bytes10533.length=41 := by core033_kernel_decide
def op10534 : List WordIR.Op := [.band 10650 10651]
def bytes10534 : Bytes := ("    let r0000299c: u32 = r0000299a & r0000299b;\n" : String).toByteArray.data.toList
theorem checked10534 : bytes10534=statementBytes 10652 (op10534.map lower) ∧ bytes10534.length=48 := by core033_kernel_decide
def op10535 : List WordIR.Op := [.bxor 10646 10652]
def bytes10535 : Bytes := ("    let r0000299d: u32 = r00002996 ^ r0000299c;\n" : String).toByteArray.data.toList
theorem checked10535 : bytes10535=statementBytes 10653 (op10535.map lower) ∧ bytes10535.length=48 := by core033_kernel_decide
def op10536 : List WordIR.Op := [.bnot 10609]
def bytes10536 : Bytes := ("    let r0000299e: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10536 : bytes10536=statementBytes 10654 (op10536.map lower) ∧ bytes10536.length=37 := by core033_kernel_decide
def op10537 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10537 : Bytes := ("    let r0000299f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10537 : bytes10537=statementBytes 10655 (op10537.map lower) ∧ bytes10537.length=41 := by core033_kernel_decide
def op10538 : List WordIR.Op := [.badd 10654 10655]
def bytes10538 : Bytes := ("    let r000029a0: u32 = r0000299e.wrapping_add(r0000299f);\n" : String).toByteArray.data.toList
theorem checked10538 : bytes10538=statementBytes 10656 (op10538.map lower) ∧ bytes10538.length=60 := by core033_kernel_decide
def op10539 : List WordIR.Op := [.band 10656 737]
def bytes10539 : Bytes := ("    let r000029a1: u32 = r000029a0 & r000002e1;\n" : String).toByteArray.data.toList
theorem checked10539 : bytes10539=statementBytes 10657 (op10539.map lower) ∧ bytes10539.length=48 := by core033_kernel_decide
def op10540 : List WordIR.Op := [.bnot 10609]
def bytes10540 : Bytes := ("    let r000029a2: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10540 : bytes10540=statementBytes 10658 (op10540.map lower) ∧ bytes10540.length=37 := by core033_kernel_decide
def op10541 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10541 : Bytes := ("    let r000029a3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10541 : bytes10541=statementBytes 10659 (op10541.map lower) ∧ bytes10541.length=41 := by core033_kernel_decide
def op10542 : List WordIR.Op := [.badd 10658 10659]
def bytes10542 : Bytes := ("    let r000029a4: u32 = r000029a2.wrapping_add(r000029a3);\n" : String).toByteArray.data.toList
theorem checked10542 : bytes10542=statementBytes 10660 (op10542.map lower) ∧ bytes10542.length=60 := by core033_kernel_decide
def op10543 : List WordIR.Op := [.bnot 10660]
def bytes10543 : Bytes := ("    let r000029a5: u32 = !r000029a4;\n" : String).toByteArray.data.toList
theorem checked10543 : bytes10543=statementBytes 10661 (op10543.map lower) ∧ bytes10543.length=37 := by core033_kernel_decide
def op10544 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10544 : Bytes := ("    let r000029a6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10544 : bytes10544=statementBytes 10662 (op10544.map lower) ∧ bytes10544.length=41 := by core033_kernel_decide
def op10545 : List WordIR.Op := [.band 10661 10662]
def bytes10545 : Bytes := ("    let r000029a7: u32 = r000029a5 & r000029a6;\n" : String).toByteArray.data.toList
theorem checked10545 : bytes10545=statementBytes 10663 (op10545.map lower) ∧ bytes10545.length=48 := by core033_kernel_decide
def op10546 : List WordIR.Op := [.bxor 10657 10663]
def bytes10546 : Bytes := ("    let r000029a8: u32 = r000029a1 ^ r000029a7;\n" : String).toByteArray.data.toList
theorem checked10546 : bytes10546=statementBytes 10664 (op10546.map lower) ∧ bytes10546.length=48 := by core033_kernel_decide
def op10547 : List WordIR.Op := [.bnot 10609]
def bytes10547 : Bytes := ("    let r000029a9: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10547 : bytes10547=statementBytes 10665 (op10547.map lower) ∧ bytes10547.length=37 := by core033_kernel_decide
def op10548 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10548 : Bytes := ("    let r000029aa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10548 : bytes10548=statementBytes 10666 (op10548.map lower) ∧ bytes10548.length=41 := by core033_kernel_decide
def op10549 : List WordIR.Op := [.badd 10665 10666]
def bytes10549 : Bytes := ("    let r000029ab: u32 = r000029a9.wrapping_add(r000029aa);\n" : String).toByteArray.data.toList
theorem checked10549 : bytes10549=statementBytes 10667 (op10549.map lower) ∧ bytes10549.length=60 := by core033_kernel_decide
def op10550 : List WordIR.Op := [.band 10667 748]
def bytes10550 : Bytes := ("    let r000029ac: u32 = r000029ab & r000002ec;\n" : String).toByteArray.data.toList
theorem checked10550 : bytes10550=statementBytes 10668 (op10550.map lower) ∧ bytes10550.length=48 := by core033_kernel_decide
def op10551 : List WordIR.Op := [.bnot 10609]
def bytes10551 : Bytes := ("    let r000029ad: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10551 : bytes10551=statementBytes 10669 (op10551.map lower) ∧ bytes10551.length=37 := by core033_kernel_decide
def op10552 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10552 : Bytes := ("    let r000029ae: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10552 : bytes10552=statementBytes 10670 (op10552.map lower) ∧ bytes10552.length=41 := by core033_kernel_decide
def op10553 : List WordIR.Op := [.badd 10669 10670]
def bytes10553 : Bytes := ("    let r000029af: u32 = r000029ad.wrapping_add(r000029ae);\n" : String).toByteArray.data.toList
theorem checked10553 : bytes10553=statementBytes 10671 (op10553.map lower) ∧ bytes10553.length=60 := by core033_kernel_decide
def op10554 : List WordIR.Op := [.bnot 10671]
def bytes10554 : Bytes := ("    let r000029b0: u32 = !r000029af;\n" : String).toByteArray.data.toList
theorem checked10554 : bytes10554=statementBytes 10672 (op10554.map lower) ∧ bytes10554.length=37 := by core033_kernel_decide
def op10555 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10555 : Bytes := ("    let r000029b1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10555 : bytes10555=statementBytes 10673 (op10555.map lower) ∧ bytes10555.length=41 := by core033_kernel_decide
def op10556 : List WordIR.Op := [.band 10672 10673]
def bytes10556 : Bytes := ("    let r000029b2: u32 = r000029b0 & r000029b1;\n" : String).toByteArray.data.toList
theorem checked10556 : bytes10556=statementBytes 10674 (op10556.map lower) ∧ bytes10556.length=48 := by core033_kernel_decide
def op10557 : List WordIR.Op := [.bxor 10668 10674]
def bytes10557 : Bytes := ("    let r000029b3: u32 = r000029ac ^ r000029b2;\n" : String).toByteArray.data.toList
theorem checked10557 : bytes10557=statementBytes 10675 (op10557.map lower) ∧ bytes10557.length=48 := by core033_kernel_decide
def op10558 : List WordIR.Op := [.bnot 10609]
def bytes10558 : Bytes := ("    let r000029b4: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10558 : bytes10558=statementBytes 10676 (op10558.map lower) ∧ bytes10558.length=37 := by core033_kernel_decide
def op10559 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10559 : Bytes := ("    let r000029b5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10559 : bytes10559=statementBytes 10677 (op10559.map lower) ∧ bytes10559.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10496,op10497,op10498,op10499,op10500,op10501,op10502,op10503,op10504,op10505,op10506,op10507,op10508,op10509,op10510,op10511,op10512,op10513,op10514,op10515,op10516,op10517,op10518,op10519,op10520,op10521,op10522,op10523,op10524,op10525,op10526,op10527,op10528,op10529,op10530,op10531,op10532,op10533,op10534,op10535,op10536,op10537,op10538,op10539,op10540,op10541,op10542,op10543,op10544,op10545,op10546,op10547,op10548,op10549,op10550,op10551,op10552,op10553,op10554,op10555,op10556,op10557,op10558,op10559]
def chunks : List Bytes := [bytes10496,bytes10497,bytes10498,bytes10499,bytes10500,bytes10501,bytes10502,bytes10503,bytes10504,bytes10505,bytes10506,bytes10507,bytes10508,bytes10509,bytes10510,bytes10511,bytes10512,bytes10513,bytes10514,bytes10515,bytes10516,bytes10517,bytes10518,bytes10519,bytes10520,bytes10521,bytes10522,bytes10523,bytes10524,bytes10525,bytes10526,bytes10527,bytes10528,bytes10529,bytes10530,bytes10531,bytes10532,bytes10533,bytes10534,bytes10535,bytes10536,bytes10537,bytes10538,bytes10539,bytes10540,bytes10541,bytes10542,bytes10543,bytes10544,bytes10545,bytes10546,bytes10547,bytes10548,bytes10549,bytes10550,bytes10551,bytes10552,bytes10553,bytes10554,bytes10555,bytes10556,bytes10557,bytes10558,bytes10559]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10614 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10496.1 (.cons _ _ _ _ _ checked10497.1 (.cons _ _ _ _ _ checked10498.1 (.cons _ _ _ _ _ checked10499.1 (.cons _ _ _ _ _ checked10500.1 (.cons _ _ _ _ _ checked10501.1 (.cons _ _ _ _ _ checked10502.1 (.cons _ _ _ _ _ checked10503.1 (.cons _ _ _ _ _ checked10504.1 (.cons _ _ _ _ _ checked10505.1 (.cons _ _ _ _ _ checked10506.1 (.cons _ _ _ _ _ checked10507.1 (.cons _ _ _ _ _ checked10508.1 (.cons _ _ _ _ _ checked10509.1 (.cons _ _ _ _ _ checked10510.1 (.cons _ _ _ _ _ checked10511.1 (.cons _ _ _ _ _ checked10512.1 (.cons _ _ _ _ _ checked10513.1 (.cons _ _ _ _ _ checked10514.1 (.cons _ _ _ _ _ checked10515.1 (.cons _ _ _ _ _ checked10516.1 (.cons _ _ _ _ _ checked10517.1 (.cons _ _ _ _ _ checked10518.1 (.cons _ _ _ _ _ checked10519.1 (.cons _ _ _ _ _ checked10520.1 (.cons _ _ _ _ _ checked10521.1 (.cons _ _ _ _ _ checked10522.1 (.cons _ _ _ _ _ checked10523.1 (.cons _ _ _ _ _ checked10524.1 (.cons _ _ _ _ _ checked10525.1 (.cons _ _ _ _ _ checked10526.1 (.cons _ _ _ _ _ checked10527.1 (.cons _ _ _ _ _ checked10528.1 (.cons _ _ _ _ _ checked10529.1 (.cons _ _ _ _ _ checked10530.1 (.cons _ _ _ _ _ checked10531.1 (.cons _ _ _ _ _ checked10532.1 (.cons _ _ _ _ _ checked10533.1 (.cons _ _ _ _ _ checked10534.1 (.cons _ _ _ _ _ checked10535.1 (.cons _ _ _ _ _ checked10536.1 (.cons _ _ _ _ _ checked10537.1 (.cons _ _ _ _ _ checked10538.1 (.cons _ _ _ _ _ checked10539.1 (.cons _ _ _ _ _ checked10540.1 (.cons _ _ _ _ _ checked10541.1 (.cons _ _ _ _ _ checked10542.1 (.cons _ _ _ _ _ checked10543.1 (.cons _ _ _ _ _ checked10544.1 (.cons _ _ _ _ _ checked10545.1 (.cons _ _ _ _ _ checked10546.1 (.cons _ _ _ _ _ checked10547.1 (.cons _ _ _ _ _ checked10548.1 (.cons _ _ _ _ _ checked10549.1 (.cons _ _ _ _ _ checked10550.1 (.cons _ _ _ _ _ checked10551.1 (.cons _ _ _ _ _ checked10552.1 (.cons _ _ _ _ _ checked10553.1 (.cons _ _ _ _ _ checked10554.1 (.cons _ _ _ _ _ checked10555.1 (.cons _ _ _ _ _ checked10556.1 (.cons _ _ _ _ _ checked10557.1 (.cons _ _ _ _ _ checked10558.1 (.cons _ _ _ _ _ checked10559.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10614 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2880 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10496.2,checked10497.2,checked10498.2,checked10499.2,checked10500.2,checked10501.2,checked10502.2,checked10503.2,checked10504.2,checked10505.2,checked10506.2,checked10507.2,checked10508.2,checked10509.2,checked10510.2,checked10511.2,checked10512.2,checked10513.2,checked10514.2,checked10515.2,checked10516.2,checked10517.2,checked10518.2,checked10519.2,checked10520.2,checked10521.2,checked10522.2,checked10523.2,checked10524.2,checked10525.2,checked10526.2,checked10527.2,checked10528.2,checked10529.2,checked10530.2,checked10531.2,checked10532.2,checked10533.2,checked10534.2,checked10535.2,checked10536.2,checked10537.2,checked10538.2,checked10539.2,checked10540.2,checked10541.2,checked10542.2,checked10543.2,checked10544.2,checked10545.2,checked10546.2,checked10547.2,checked10548.2,checked10549.2,checked10550.2,checked10551.2,checked10552.2,checked10553.2,checked10554.2,checked10555.2,checked10556.2,checked10557.2,checked10558.2,checked10559.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup164
