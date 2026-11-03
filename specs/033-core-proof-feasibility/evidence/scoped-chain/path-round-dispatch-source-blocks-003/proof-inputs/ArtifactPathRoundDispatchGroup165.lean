import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup165
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10560 : List WordIR.Op := [.bnot 10602]
def bytes10560 : Bytes := ("    let r0000296b: u32 = !r0000296a;\n" : String).toByteArray.data.toList
theorem checked10560 : bytes10560=statementBytes 10603 (op10560.map lower) ∧ bytes10560.length=37 := by core033_kernel_decide
def op10561 : List WordIR.Op := [.badd 10601 10603]
def bytes10561 : Bytes := ("    let r0000296c: u32 = r00002969.wrapping_add(r0000296b);\n" : String).toByteArray.data.toList
theorem checked10561 : bytes10561=statementBytes 10604 (op10561.map lower) ∧ bytes10561.length=60 := by core033_kernel_decide
def op10562 : List WordIR.Op := [.bnot 10604]
def bytes10562 : Bytes := ("    let r0000296d: u32 = !r0000296c;\n" : String).toByteArray.data.toList
theorem checked10562 : bytes10562=statementBytes 10605 (op10562.map lower) ∧ bytes10562.length=37 := by core033_kernel_decide
def op10563 : List WordIR.Op := [.band 10599 10605]
def bytes10563 : Bytes := ("    let r0000296e: u32 = r00002967 & r0000296d;\n" : String).toByteArray.data.toList
theorem checked10563 : bytes10563=statementBytes 10606 (op10563.map lower) ∧ bytes10563.length=48 := by core033_kernel_decide
def op10564 : List WordIR.Op := [.bxor 10594 10606]
def bytes10564 : Bytes := ("    let r0000296f: u32 = r00002962 ^ r0000296e;\n" : String).toByteArray.data.toList
theorem checked10564 : bytes10564=statementBytes 10607 (op10564.map lower) ∧ bytes10564.length=48 := by core033_kernel_decide
def op10565 : List WordIR.Op := [.shr 10607 31]
def bytes10565 : Bytes := ("    let r00002970: u32 = r0000296f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10565 : bytes10565=statementBytes 10608 (op10565.map lower) ∧ bytes10565.length=54 := by core033_kernel_decide
def op10566 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10566 : Bytes := ("    let r00002971: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10566 : bytes10566=statementBytes 10609 (op10566.map lower) ∧ bytes10566.length=41 := by core033_kernel_decide
def op10567 : List WordIR.Op := [.bxor 10608 10609]
def bytes10567 : Bytes := ("    let r00002972: u32 = r00002970 ^ r00002971;\n" : String).toByteArray.data.toList
theorem checked10567 : bytes10567=statementBytes 10610 (op10567.map lower) ∧ bytes10567.length=48 := by core033_kernel_decide
def op10568 : List WordIR.Op := [.bnot 10610]
def bytes10568 : Bytes := ("    let r00002973: u32 = !r00002972;\n" : String).toByteArray.data.toList
theorem checked10568 : bytes10568=statementBytes 10611 (op10568.map lower) ∧ bytes10568.length=37 := by core033_kernel_decide
def op10569 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10569 : Bytes := ("    let r00002974: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10569 : bytes10569=statementBytes 10612 (op10569.map lower) ∧ bytes10569.length=41 := by core033_kernel_decide
def op10570 : List WordIR.Op := [.badd 10611 10612]
def bytes10570 : Bytes := ("    let r00002975: u32 = r00002973.wrapping_add(r00002974);\n" : String).toByteArray.data.toList
theorem checked10570 : bytes10570=statementBytes 10613 (op10570.map lower) ∧ bytes10570.length=60 := by core033_kernel_decide
def op10571 : List WordIR.Op := [.band 10613 9494]
def bytes10571 : Bytes := ("    let r00002976: u32 = r00002975 & r00002516;\n" : String).toByteArray.data.toList
theorem checked10571 : bytes10571=statementBytes 10614 (op10571.map lower) ∧ bytes10571.length=48 := by core033_kernel_decide
def op10572 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10572 : Bytes := ("    let r00002977: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10572 : bytes10572=statementBytes 10615 (op10572.map lower) ∧ bytes10572.length=41 := by core033_kernel_decide
def op10573 : List WordIR.Op := [.bxor 0 10615]
def bytes10573 : Bytes := ("    let r00002978: u32 = r00000000 ^ r00002977;\n" : String).toByteArray.data.toList
theorem checked10573 : bytes10573=statementBytes 10616 (op10573.map lower) ∧ bytes10573.length=48 := by core033_kernel_decide
def op10574 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10574 : Bytes := ("    let r00002979: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10574 : bytes10574=statementBytes 10617 (op10574.map lower) ∧ bytes10574.length=41 := by core033_kernel_decide
def op10575 : List WordIR.Op := [.bnot 10617]
def bytes10575 : Bytes := ("    let r0000297a: u32 = !r00002979;\n" : String).toByteArray.data.toList
theorem checked10575 : bytes10575=statementBytes 10618 (op10575.map lower) ∧ bytes10575.length=37 := by core033_kernel_decide
def op10576 : List WordIR.Op := [.band 10616 10618]
def bytes10576 : Bytes := ("    let r0000297b: u32 = r00002978 & r0000297a;\n" : String).toByteArray.data.toList
theorem checked10576 : bytes10576=statementBytes 10619 (op10576.map lower) ∧ bytes10576.length=48 := by core033_kernel_decide
def op10577 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10577 : Bytes := ("    let r0000297c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10577 : bytes10577=statementBytes 10620 (op10577.map lower) ∧ bytes10577.length=41 := by core033_kernel_decide
def op10578 : List WordIR.Op := [.bxor 0 10620]
def bytes10578 : Bytes := ("    let r0000297d: u32 = r00000000 ^ r0000297c;\n" : String).toByteArray.data.toList
theorem checked10578 : bytes10578=statementBytes 10621 (op10578.map lower) ∧ bytes10578.length=48 := by core033_kernel_decide
def op10579 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10579 : Bytes := ("    let r0000297e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10579 : bytes10579=statementBytes 10622 (op10579.map lower) ∧ bytes10579.length=41 := by core033_kernel_decide
def op10580 : List WordIR.Op := [.bnot 10622]
def bytes10580 : Bytes := ("    let r0000297f: u32 = !r0000297e;\n" : String).toByteArray.data.toList
theorem checked10580 : bytes10580=statementBytes 10623 (op10580.map lower) ∧ bytes10580.length=37 := by core033_kernel_decide
def op10581 : List WordIR.Op := [.bxor 10621 10623]
def bytes10581 : Bytes := ("    let r00002980: u32 = r0000297d ^ r0000297f;\n" : String).toByteArray.data.toList
theorem checked10581 : bytes10581=statementBytes 10624 (op10581.map lower) ∧ bytes10581.length=48 := by core033_kernel_decide
def op10582 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10582 : Bytes := ("    let r00002981: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10582 : bytes10582=statementBytes 10625 (op10582.map lower) ∧ bytes10582.length=41 := by core033_kernel_decide
def op10583 : List WordIR.Op := [.bxor 0 10625]
def bytes10583 : Bytes := ("    let r00002982: u32 = r00000000 ^ r00002981;\n" : String).toByteArray.data.toList
theorem checked10583 : bytes10583=statementBytes 10626 (op10583.map lower) ∧ bytes10583.length=48 := by core033_kernel_decide
def op10584 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10584 : Bytes := ("    let r00002983: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10584 : bytes10584=statementBytes 10627 (op10584.map lower) ∧ bytes10584.length=41 := by core033_kernel_decide
def op10585 : List WordIR.Op := [.bnot 10627]
def bytes10585 : Bytes := ("    let r00002984: u32 = !r00002983;\n" : String).toByteArray.data.toList
theorem checked10585 : bytes10585=statementBytes 10628 (op10585.map lower) ∧ bytes10585.length=37 := by core033_kernel_decide
def op10586 : List WordIR.Op := [.badd 10626 10628]
def bytes10586 : Bytes := ("    let r00002985: u32 = r00002982.wrapping_add(r00002984);\n" : String).toByteArray.data.toList
theorem checked10586 : bytes10586=statementBytes 10629 (op10586.map lower) ∧ bytes10586.length=60 := by core033_kernel_decide
def op10587 : List WordIR.Op := [.bnot 10629]
def bytes10587 : Bytes := ("    let r00002986: u32 = !r00002985;\n" : String).toByteArray.data.toList
theorem checked10587 : bytes10587=statementBytes 10630 (op10587.map lower) ∧ bytes10587.length=37 := by core033_kernel_decide
def op10588 : List WordIR.Op := [.band 10624 10630]
def bytes10588 : Bytes := ("    let r00002987: u32 = r00002980 & r00002986;\n" : String).toByteArray.data.toList
theorem checked10588 : bytes10588=statementBytes 10631 (op10588.map lower) ∧ bytes10588.length=48 := by core033_kernel_decide
def op10589 : List WordIR.Op := [.bxor 10619 10631]
def bytes10589 : Bytes := ("    let r00002988: u32 = r0000297b ^ r00002987;\n" : String).toByteArray.data.toList
theorem checked10589 : bytes10589=statementBytes 10632 (op10589.map lower) ∧ bytes10589.length=48 := by core033_kernel_decide
def op10590 : List WordIR.Op := [.shr 10632 31]
def bytes10590 : Bytes := ("    let r00002989: u32 = r00002988 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10590 : bytes10590=statementBytes 10633 (op10590.map lower) ∧ bytes10590.length=54 := by core033_kernel_decide
def op10591 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10591 : Bytes := ("    let r0000298a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10591 : bytes10591=statementBytes 10634 (op10591.map lower) ∧ bytes10591.length=41 := by core033_kernel_decide
def op10592 : List WordIR.Op := [.bxor 10633 10634]
def bytes10592 : Bytes := ("    let r0000298b: u32 = r00002989 ^ r0000298a;\n" : String).toByteArray.data.toList
theorem checked10592 : bytes10592=statementBytes 10635 (op10592.map lower) ∧ bytes10592.length=48 := by core033_kernel_decide
def op10593 : List WordIR.Op := [.bnot 10635]
def bytes10593 : Bytes := ("    let r0000298c: u32 = !r0000298b;\n" : String).toByteArray.data.toList
theorem checked10593 : bytes10593=statementBytes 10636 (op10593.map lower) ∧ bytes10593.length=37 := by core033_kernel_decide
def op10594 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10594 : Bytes := ("    let r0000298d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10594 : bytes10594=statementBytes 10637 (op10594.map lower) ∧ bytes10594.length=41 := by core033_kernel_decide
def op10595 : List WordIR.Op := [.badd 10636 10637]
def bytes10595 : Bytes := ("    let r0000298e: u32 = r0000298c.wrapping_add(r0000298d);\n" : String).toByteArray.data.toList
theorem checked10595 : bytes10595=statementBytes 10638 (op10595.map lower) ∧ bytes10595.length=60 := by core033_kernel_decide
def op10596 : List WordIR.Op := [.bnot 10638]
def bytes10596 : Bytes := ("    let r0000298f: u32 = !r0000298e;\n" : String).toByteArray.data.toList
theorem checked10596 : bytes10596=statementBytes 10639 (op10596.map lower) ∧ bytes10596.length=37 := by core033_kernel_decide
def op10597 : List WordIR.Op := [.band 10639 173]
def bytes10597 : Bytes := ("    let r00002990: u32 = r0000298f & r000000ad;\n" : String).toByteArray.data.toList
theorem checked10597 : bytes10597=statementBytes 10640 (op10597.map lower) ∧ bytes10597.length=48 := by core033_kernel_decide
def op10598 : List WordIR.Op := [.bxor 10614 10640]
def bytes10598 : Bytes := ("    let r00002991: u32 = r00002976 ^ r00002990;\n" : String).toByteArray.data.toList
theorem checked10598 : bytes10598=statementBytes 10641 (op10598.map lower) ∧ bytes10598.length=48 := by core033_kernel_decide
def op10599 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10599 : Bytes := ("    let r00002992: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10599 : bytes10599=statementBytes 10642 (op10599.map lower) ∧ bytes10599.length=41 := by core033_kernel_decide
def op10600 : List WordIR.Op := [.bxor 0 10642]
def bytes10600 : Bytes := ("    let r00002993: u32 = r00000000 ^ r00002992;\n" : String).toByteArray.data.toList
theorem checked10600 : bytes10600=statementBytes 10643 (op10600.map lower) ∧ bytes10600.length=48 := by core033_kernel_decide
def op10601 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10601 : Bytes := ("    let r00002994: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10601 : bytes10601=statementBytes 10644 (op10601.map lower) ∧ bytes10601.length=41 := by core033_kernel_decide
def op10602 : List WordIR.Op := [.bnot 10644]
def bytes10602 : Bytes := ("    let r00002995: u32 = !r00002994;\n" : String).toByteArray.data.toList
theorem checked10602 : bytes10602=statementBytes 10645 (op10602.map lower) ∧ bytes10602.length=37 := by core033_kernel_decide
def op10603 : List WordIR.Op := [.band 10643 10645]
def bytes10603 : Bytes := ("    let r00002996: u32 = r00002993 & r00002995;\n" : String).toByteArray.data.toList
theorem checked10603 : bytes10603=statementBytes 10646 (op10603.map lower) ∧ bytes10603.length=48 := by core033_kernel_decide
def op10604 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10604 : Bytes := ("    let r00002997: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10604 : bytes10604=statementBytes 10647 (op10604.map lower) ∧ bytes10604.length=41 := by core033_kernel_decide
def op10605 : List WordIR.Op := [.bxor 0 10647]
def bytes10605 : Bytes := ("    let r00002998: u32 = r00000000 ^ r00002997;\n" : String).toByteArray.data.toList
theorem checked10605 : bytes10605=statementBytes 10648 (op10605.map lower) ∧ bytes10605.length=48 := by core033_kernel_decide
def op10606 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10606 : Bytes := ("    let r00002999: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10606 : bytes10606=statementBytes 10649 (op10606.map lower) ∧ bytes10606.length=41 := by core033_kernel_decide
def op10607 : List WordIR.Op := [.bnot 10649]
def bytes10607 : Bytes := ("    let r0000299a: u32 = !r00002999;\n" : String).toByteArray.data.toList
theorem checked10607 : bytes10607=statementBytes 10650 (op10607.map lower) ∧ bytes10607.length=37 := by core033_kernel_decide
def op10608 : List WordIR.Op := [.bxor 10648 10650]
def bytes10608 : Bytes := ("    let r0000299b: u32 = r00002998 ^ r0000299a;\n" : String).toByteArray.data.toList
theorem checked10608 : bytes10608=statementBytes 10651 (op10608.map lower) ∧ bytes10608.length=48 := by core033_kernel_decide
def op10609 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10609 : Bytes := ("    let r0000299c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10609 : bytes10609=statementBytes 10652 (op10609.map lower) ∧ bytes10609.length=41 := by core033_kernel_decide
def op10610 : List WordIR.Op := [.bxor 0 10652]
def bytes10610 : Bytes := ("    let r0000299d: u32 = r00000000 ^ r0000299c;\n" : String).toByteArray.data.toList
theorem checked10610 : bytes10610=statementBytes 10653 (op10610.map lower) ∧ bytes10610.length=48 := by core033_kernel_decide
def op10611 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10611 : Bytes := ("    let r0000299e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10611 : bytes10611=statementBytes 10654 (op10611.map lower) ∧ bytes10611.length=41 := by core033_kernel_decide
def op10612 : List WordIR.Op := [.bnot 10654]
def bytes10612 : Bytes := ("    let r0000299f: u32 = !r0000299e;\n" : String).toByteArray.data.toList
theorem checked10612 : bytes10612=statementBytes 10655 (op10612.map lower) ∧ bytes10612.length=37 := by core033_kernel_decide
def op10613 : List WordIR.Op := [.badd 10653 10655]
def bytes10613 : Bytes := ("    let r000029a0: u32 = r0000299d.wrapping_add(r0000299f);\n" : String).toByteArray.data.toList
theorem checked10613 : bytes10613=statementBytes 10656 (op10613.map lower) ∧ bytes10613.length=60 := by core033_kernel_decide
def op10614 : List WordIR.Op := [.bnot 10656]
def bytes10614 : Bytes := ("    let r000029a1: u32 = !r000029a0;\n" : String).toByteArray.data.toList
theorem checked10614 : bytes10614=statementBytes 10657 (op10614.map lower) ∧ bytes10614.length=37 := by core033_kernel_decide
def op10615 : List WordIR.Op := [.band 10651 10657]
def bytes10615 : Bytes := ("    let r000029a2: u32 = r0000299b & r000029a1;\n" : String).toByteArray.data.toList
theorem checked10615 : bytes10615=statementBytes 10658 (op10615.map lower) ∧ bytes10615.length=48 := by core033_kernel_decide
def op10616 : List WordIR.Op := [.bxor 10646 10658]
def bytes10616 : Bytes := ("    let r000029a3: u32 = r00002996 ^ r000029a2;\n" : String).toByteArray.data.toList
theorem checked10616 : bytes10616=statementBytes 10659 (op10616.map lower) ∧ bytes10616.length=48 := by core033_kernel_decide
def op10617 : List WordIR.Op := [.shr 10659 31]
def bytes10617 : Bytes := ("    let r000029a4: u32 = r000029a3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10617 : bytes10617=statementBytes 10660 (op10617.map lower) ∧ bytes10617.length=54 := by core033_kernel_decide
def op10618 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10618 : Bytes := ("    let r000029a5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10618 : bytes10618=statementBytes 10661 (op10618.map lower) ∧ bytes10618.length=41 := by core033_kernel_decide
def op10619 : List WordIR.Op := [.bxor 10660 10661]
def bytes10619 : Bytes := ("    let r000029a6: u32 = r000029a4 ^ r000029a5;\n" : String).toByteArray.data.toList
theorem checked10619 : bytes10619=statementBytes 10662 (op10619.map lower) ∧ bytes10619.length=48 := by core033_kernel_decide
def op10620 : List WordIR.Op := [.bnot 10662]
def bytes10620 : Bytes := ("    let r000029a7: u32 = !r000029a6;\n" : String).toByteArray.data.toList
theorem checked10620 : bytes10620=statementBytes 10663 (op10620.map lower) ∧ bytes10620.length=37 := by core033_kernel_decide
def op10621 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10621 : Bytes := ("    let r000029a8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10621 : bytes10621=statementBytes 10664 (op10621.map lower) ∧ bytes10621.length=41 := by core033_kernel_decide
def op10622 : List WordIR.Op := [.badd 10663 10664]
def bytes10622 : Bytes := ("    let r000029a9: u32 = r000029a7.wrapping_add(r000029a8);\n" : String).toByteArray.data.toList
theorem checked10622 : bytes10622=statementBytes 10665 (op10622.map lower) ∧ bytes10622.length=60 := by core033_kernel_decide
def op10623 : List WordIR.Op := [.band 10665 9505]
def bytes10623 : Bytes := ("    let r000029aa: u32 = r000029a9 & r00002521;\n" : String).toByteArray.data.toList
theorem checked10623 : bytes10623=statementBytes 10666 (op10623.map lower) ∧ bytes10623.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10560,op10561,op10562,op10563,op10564,op10565,op10566,op10567,op10568,op10569,op10570,op10571,op10572,op10573,op10574,op10575,op10576,op10577,op10578,op10579,op10580,op10581,op10582,op10583,op10584,op10585,op10586,op10587,op10588,op10589,op10590,op10591,op10592,op10593,op10594,op10595,op10596,op10597,op10598,op10599,op10600,op10601,op10602,op10603,op10604,op10605,op10606,op10607,op10608,op10609,op10610,op10611,op10612,op10613,op10614,op10615,op10616,op10617,op10618,op10619,op10620,op10621,op10622,op10623]
def chunks : List Bytes := [bytes10560,bytes10561,bytes10562,bytes10563,bytes10564,bytes10565,bytes10566,bytes10567,bytes10568,bytes10569,bytes10570,bytes10571,bytes10572,bytes10573,bytes10574,bytes10575,bytes10576,bytes10577,bytes10578,bytes10579,bytes10580,bytes10581,bytes10582,bytes10583,bytes10584,bytes10585,bytes10586,bytes10587,bytes10588,bytes10589,bytes10590,bytes10591,bytes10592,bytes10593,bytes10594,bytes10595,bytes10596,bytes10597,bytes10598,bytes10599,bytes10600,bytes10601,bytes10602,bytes10603,bytes10604,bytes10605,bytes10606,bytes10607,bytes10608,bytes10609,bytes10610,bytes10611,bytes10612,bytes10613,bytes10614,bytes10615,bytes10616,bytes10617,bytes10618,bytes10619,bytes10620,bytes10621,bytes10622,bytes10623]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10603 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10560.1 (.cons _ _ _ _ _ checked10561.1 (.cons _ _ _ _ _ checked10562.1 (.cons _ _ _ _ _ checked10563.1 (.cons _ _ _ _ _ checked10564.1 (.cons _ _ _ _ _ checked10565.1 (.cons _ _ _ _ _ checked10566.1 (.cons _ _ _ _ _ checked10567.1 (.cons _ _ _ _ _ checked10568.1 (.cons _ _ _ _ _ checked10569.1 (.cons _ _ _ _ _ checked10570.1 (.cons _ _ _ _ _ checked10571.1 (.cons _ _ _ _ _ checked10572.1 (.cons _ _ _ _ _ checked10573.1 (.cons _ _ _ _ _ checked10574.1 (.cons _ _ _ _ _ checked10575.1 (.cons _ _ _ _ _ checked10576.1 (.cons _ _ _ _ _ checked10577.1 (.cons _ _ _ _ _ checked10578.1 (.cons _ _ _ _ _ checked10579.1 (.cons _ _ _ _ _ checked10580.1 (.cons _ _ _ _ _ checked10581.1 (.cons _ _ _ _ _ checked10582.1 (.cons _ _ _ _ _ checked10583.1 (.cons _ _ _ _ _ checked10584.1 (.cons _ _ _ _ _ checked10585.1 (.cons _ _ _ _ _ checked10586.1 (.cons _ _ _ _ _ checked10587.1 (.cons _ _ _ _ _ checked10588.1 (.cons _ _ _ _ _ checked10589.1 (.cons _ _ _ _ _ checked10590.1 (.cons _ _ _ _ _ checked10591.1 (.cons _ _ _ _ _ checked10592.1 (.cons _ _ _ _ _ checked10593.1 (.cons _ _ _ _ _ checked10594.1 (.cons _ _ _ _ _ checked10595.1 (.cons _ _ _ _ _ checked10596.1 (.cons _ _ _ _ _ checked10597.1 (.cons _ _ _ _ _ checked10598.1 (.cons _ _ _ _ _ checked10599.1 (.cons _ _ _ _ _ checked10600.1 (.cons _ _ _ _ _ checked10601.1 (.cons _ _ _ _ _ checked10602.1 (.cons _ _ _ _ _ checked10603.1 (.cons _ _ _ _ _ checked10604.1 (.cons _ _ _ _ _ checked10605.1 (.cons _ _ _ _ _ checked10606.1 (.cons _ _ _ _ _ checked10607.1 (.cons _ _ _ _ _ checked10608.1 (.cons _ _ _ _ _ checked10609.1 (.cons _ _ _ _ _ checked10610.1 (.cons _ _ _ _ _ checked10611.1 (.cons _ _ _ _ _ checked10612.1 (.cons _ _ _ _ _ checked10613.1 (.cons _ _ _ _ _ checked10614.1 (.cons _ _ _ _ _ checked10615.1 (.cons _ _ _ _ _ checked10616.1 (.cons _ _ _ _ _ checked10617.1 (.cons _ _ _ _ _ checked10618.1 (.cons _ _ _ _ _ checked10619.1 (.cons _ _ _ _ _ checked10620.1 (.cons _ _ _ _ _ checked10621.1 (.cons _ _ _ _ _ checked10622.1 (.cons _ _ _ _ _ checked10623.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10603 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10560.2,checked10561.2,checked10562.2,checked10563.2,checked10564.2,checked10565.2,checked10566.2,checked10567.2,checked10568.2,checked10569.2,checked10570.2,checked10571.2,checked10572.2,checked10573.2,checked10574.2,checked10575.2,checked10576.2,checked10577.2,checked10578.2,checked10579.2,checked10580.2,checked10581.2,checked10582.2,checked10583.2,checked10584.2,checked10585.2,checked10586.2,checked10587.2,checked10588.2,checked10589.2,checked10590.2,checked10591.2,checked10592.2,checked10593.2,checked10594.2,checked10595.2,checked10596.2,checked10597.2,checked10598.2,checked10599.2,checked10600.2,checked10601.2,checked10602.2,checked10603.2,checked10604.2,checked10605.2,checked10606.2,checked10607.2,checked10608.2,checked10609.2,checked10610.2,checked10611.2,checked10612.2,checked10613.2,checked10614.2,checked10615.2,checked10616.2,checked10617.2,checked10618.2,checked10619.2,checked10620.2,checked10621.2,checked10622.2,checked10623.2]
  decide
end ArtifactPathRoundDispatchGroup165
