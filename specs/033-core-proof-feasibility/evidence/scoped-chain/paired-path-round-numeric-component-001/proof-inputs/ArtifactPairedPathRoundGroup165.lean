import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup165
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10560 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10560 : Bytes := ("    let r000029a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10560 : bytes10560=statementBytes 10656 (op10560.map lower) ∧ bytes10560.length=41 := by core033_kernel_decide
def op10561 : List WordIR.Op := [.bnot 10656]
def bytes10561 : Bytes := ("    let r000029a1: u32 = !r000029a0;\n" : String).toByteArray.data.toList
theorem checked10561 : bytes10561=statementBytes 10657 (op10561.map lower) ∧ bytes10561.length=37 := by core033_kernel_decide
def op10562 : List WordIR.Op := [.badd 10655 10657]
def bytes10562 : Bytes := ("    let r000029a2: u32 = r0000299f.wrapping_add(r000029a1);\n" : String).toByteArray.data.toList
theorem checked10562 : bytes10562=statementBytes 10658 (op10562.map lower) ∧ bytes10562.length=60 := by core033_kernel_decide
def op10563 : List WordIR.Op := [.bnot 10658]
def bytes10563 : Bytes := ("    let r000029a3: u32 = !r000029a2;\n" : String).toByteArray.data.toList
theorem checked10563 : bytes10563=statementBytes 10659 (op10563.map lower) ∧ bytes10563.length=37 := by core033_kernel_decide
def op10564 : List WordIR.Op := [.band 10654 10659]
def bytes10564 : Bytes := ("    let r000029a4: u32 = r0000299e & r000029a3;\n" : String).toByteArray.data.toList
theorem checked10564 : bytes10564=statementBytes 10660 (op10564.map lower) ∧ bytes10564.length=48 := by core033_kernel_decide
def op10565 : List WordIR.Op := [.bxor 10650 10660]
def bytes10565 : Bytes := ("    let r000029a5: u32 = r0000299a ^ r000029a4;\n" : String).toByteArray.data.toList
theorem checked10565 : bytes10565=statementBytes 10661 (op10565.map lower) ∧ bytes10565.length=48 := by core033_kernel_decide
def op10566 : List WordIR.Op := [.shr 10661 31]
def bytes10566 : Bytes := ("    let r000029a6: u32 = r000029a5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10566 : bytes10566=statementBytes 10662 (op10566.map lower) ∧ bytes10566.length=54 := by core033_kernel_decide
def op10567 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10567 : Bytes := ("    let r000029a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10567 : bytes10567=statementBytes 10663 (op10567.map lower) ∧ bytes10567.length=41 := by core033_kernel_decide
def op10568 : List WordIR.Op := [.bxor 10662 10663]
def bytes10568 : Bytes := ("    let r000029a8: u32 = r000029a6 ^ r000029a7;\n" : String).toByteArray.data.toList
theorem checked10568 : bytes10568=statementBytes 10664 (op10568.map lower) ∧ bytes10568.length=48 := by core033_kernel_decide
def op10569 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10569 : Bytes := ("    let r000029a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10569 : bytes10569=statementBytes 10665 (op10569.map lower) ∧ bytes10569.length=41 := by core033_kernel_decide
def op10570 : List WordIR.Op := [.badd 9959 10665]
def bytes10570 : Bytes := ("    let r000029aa: u32 = r000026e7.wrapping_add(r000029a9);\n" : String).toByteArray.data.toList
theorem checked10570 : bytes10570=statementBytes 10666 (op10570.map lower) ∧ bytes10570.length=60 := by core033_kernel_decide
def op10571 : List WordIR.Op := [.bnot 9959]
def bytes10571 : Bytes := ("    let r000029ab: u32 = !r000026e7;\n" : String).toByteArray.data.toList
theorem checked10571 : bytes10571=statementBytes 10667 (op10571.map lower) ∧ bytes10571.length=37 := by core033_kernel_decide
def op10572 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes10572 : Bytes := ("    let r000029ac: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked10572 : bytes10572=statementBytes 10668 (op10572.map lower) ∧ bytes10572.length=41 := by core033_kernel_decide
def op10573 : List WordIR.Op := [.band 10667 10668]
def bytes10573 : Bytes := ("    let r000029ad: u32 = r000029ab & r000029ac;\n" : String).toByteArray.data.toList
theorem checked10573 : bytes10573=statementBytes 10669 (op10573.map lower) ∧ bytes10573.length=48 := by core033_kernel_decide
def op10574 : List WordIR.Op := [.shr 9959 8]
def bytes10574 : Bytes := ("    let r000029ae: u32 = r000026e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked10574 : bytes10574=statementBytes 10670 (op10574.map lower) ∧ bytes10574.length=54 := by core033_kernel_decide
def op10575 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10575 : Bytes := ("    let r000029af: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10575 : bytes10575=statementBytes 10671 (op10575.map lower) ∧ bytes10575.length=41 := by core033_kernel_decide
def op10576 : List WordIR.Op := [.bnot 10671]
def bytes10576 : Bytes := ("    let r000029b0: u32 = !r000029af;\n" : String).toByteArray.data.toList
theorem checked10576 : bytes10576=statementBytes 10672 (op10576.map lower) ∧ bytes10576.length=37 := by core033_kernel_decide
def op10577 : List WordIR.Op := [.band 10670 10672]
def bytes10577 : Bytes := ("    let r000029b1: u32 = r000029ae & r000029b0;\n" : String).toByteArray.data.toList
theorem checked10577 : bytes10577=statementBytes 10673 (op10577.map lower) ∧ bytes10577.length=48 := by core033_kernel_decide
def op10578 : List WordIR.Op := [.shr 9959 8]
def bytes10578 : Bytes := ("    let r000029b2: u32 = r000026e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked10578 : bytes10578=statementBytes 10674 (op10578.map lower) ∧ bytes10578.length=54 := by core033_kernel_decide
def op10579 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10579 : Bytes := ("    let r000029b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10579 : bytes10579=statementBytes 10675 (op10579.map lower) ∧ bytes10579.length=41 := by core033_kernel_decide
def op10580 : List WordIR.Op := [.bnot 10675]
def bytes10580 : Bytes := ("    let r000029b4: u32 = !r000029b3;\n" : String).toByteArray.data.toList
theorem checked10580 : bytes10580=statementBytes 10676 (op10580.map lower) ∧ bytes10580.length=37 := by core033_kernel_decide
def op10581 : List WordIR.Op := [.bxor 10674 10676]
def bytes10581 : Bytes := ("    let r000029b5: u32 = r000029b2 ^ r000029b4;\n" : String).toByteArray.data.toList
theorem checked10581 : bytes10581=statementBytes 10677 (op10581.map lower) ∧ bytes10581.length=48 := by core033_kernel_decide
def op10582 : List WordIR.Op := [.shr 9959 8]
def bytes10582 : Bytes := ("    let r000029b6: u32 = r000026e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked10582 : bytes10582=statementBytes 10678 (op10582.map lower) ∧ bytes10582.length=54 := by core033_kernel_decide
def op10583 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10583 : Bytes := ("    let r000029b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10583 : bytes10583=statementBytes 10679 (op10583.map lower) ∧ bytes10583.length=41 := by core033_kernel_decide
def op10584 : List WordIR.Op := [.bnot 10679]
def bytes10584 : Bytes := ("    let r000029b8: u32 = !r000029b7;\n" : String).toByteArray.data.toList
theorem checked10584 : bytes10584=statementBytes 10680 (op10584.map lower) ∧ bytes10584.length=37 := by core033_kernel_decide
def op10585 : List WordIR.Op := [.badd 10678 10680]
def bytes10585 : Bytes := ("    let r000029b9: u32 = r000029b6.wrapping_add(r000029b8);\n" : String).toByteArray.data.toList
theorem checked10585 : bytes10585=statementBytes 10681 (op10585.map lower) ∧ bytes10585.length=60 := by core033_kernel_decide
def op10586 : List WordIR.Op := [.bnot 10681]
def bytes10586 : Bytes := ("    let r000029ba: u32 = !r000029b9;\n" : String).toByteArray.data.toList
theorem checked10586 : bytes10586=statementBytes 10682 (op10586.map lower) ∧ bytes10586.length=37 := by core033_kernel_decide
def op10587 : List WordIR.Op := [.band 10677 10682]
def bytes10587 : Bytes := ("    let r000029bb: u32 = r000029b5 & r000029ba;\n" : String).toByteArray.data.toList
theorem checked10587 : bytes10587=statementBytes 10683 (op10587.map lower) ∧ bytes10587.length=48 := by core033_kernel_decide
def op10588 : List WordIR.Op := [.bxor 10673 10683]
def bytes10588 : Bytes := ("    let r000029bc: u32 = r000029b1 ^ r000029bb;\n" : String).toByteArray.data.toList
theorem checked10588 : bytes10588=statementBytes 10684 (op10588.map lower) ∧ bytes10588.length=48 := by core033_kernel_decide
def op10589 : List WordIR.Op := [.shr 10684 31]
def bytes10589 : Bytes := ("    let r000029bd: u32 = r000029bc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10589 : bytes10589=statementBytes 10685 (op10589.map lower) ∧ bytes10589.length=54 := by core033_kernel_decide
def op10590 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10590 : Bytes := ("    let r000029be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10590 : bytes10590=statementBytes 10686 (op10590.map lower) ∧ bytes10590.length=41 := by core033_kernel_decide
def op10591 : List WordIR.Op := [.bxor 10685 10686]
def bytes10591 : Bytes := ("    let r000029bf: u32 = r000029bd ^ r000029be;\n" : String).toByteArray.data.toList
theorem checked10591 : bytes10591=statementBytes 10687 (op10591.map lower) ∧ bytes10591.length=48 := by core033_kernel_decide
def op10592 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10592 : Bytes := ("    let r000029c0: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10592 : bytes10592=statementBytes 10688 (op10592.map lower) ∧ bytes10592.length=41 := by core033_kernel_decide
def op10593 : List WordIR.Op := [.bxor 9959 10688]
def bytes10593 : Bytes := ("    let r000029c1: u32 = r000026e7 ^ r000029c0;\n" : String).toByteArray.data.toList
theorem checked10593 : bytes10593=statementBytes 10689 (op10593.map lower) ∧ bytes10593.length=48 := by core033_kernel_decide
def op10594 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10594 : Bytes := ("    let r000029c2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10594 : bytes10594=statementBytes 10690 (op10594.map lower) ∧ bytes10594.length=41 := by core033_kernel_decide
def op10595 : List WordIR.Op := [.bnot 10690]
def bytes10595 : Bytes := ("    let r000029c3: u32 = !r000029c2;\n" : String).toByteArray.data.toList
theorem checked10595 : bytes10595=statementBytes 10691 (op10595.map lower) ∧ bytes10595.length=37 := by core033_kernel_decide
def op10596 : List WordIR.Op := [.band 10689 10691]
def bytes10596 : Bytes := ("    let r000029c4: u32 = r000029c1 & r000029c3;\n" : String).toByteArray.data.toList
theorem checked10596 : bytes10596=statementBytes 10692 (op10596.map lower) ∧ bytes10596.length=48 := by core033_kernel_decide
def op10597 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10597 : Bytes := ("    let r000029c5: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10597 : bytes10597=statementBytes 10693 (op10597.map lower) ∧ bytes10597.length=41 := by core033_kernel_decide
def op10598 : List WordIR.Op := [.bxor 9959 10693]
def bytes10598 : Bytes := ("    let r000029c6: u32 = r000026e7 ^ r000029c5;\n" : String).toByteArray.data.toList
theorem checked10598 : bytes10598=statementBytes 10694 (op10598.map lower) ∧ bytes10598.length=48 := by core033_kernel_decide
def op10599 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10599 : Bytes := ("    let r000029c7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10599 : bytes10599=statementBytes 10695 (op10599.map lower) ∧ bytes10599.length=41 := by core033_kernel_decide
def op10600 : List WordIR.Op := [.bnot 10695]
def bytes10600 : Bytes := ("    let r000029c8: u32 = !r000029c7;\n" : String).toByteArray.data.toList
theorem checked10600 : bytes10600=statementBytes 10696 (op10600.map lower) ∧ bytes10600.length=37 := by core033_kernel_decide
def op10601 : List WordIR.Op := [.bxor 10694 10696]
def bytes10601 : Bytes := ("    let r000029c9: u32 = r000029c6 ^ r000029c8;\n" : String).toByteArray.data.toList
theorem checked10601 : bytes10601=statementBytes 10697 (op10601.map lower) ∧ bytes10601.length=48 := by core033_kernel_decide
def op10602 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10602 : Bytes := ("    let r000029ca: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10602 : bytes10602=statementBytes 10698 (op10602.map lower) ∧ bytes10602.length=41 := by core033_kernel_decide
def op10603 : List WordIR.Op := [.bxor 9959 10698]
def bytes10603 : Bytes := ("    let r000029cb: u32 = r000026e7 ^ r000029ca;\n" : String).toByteArray.data.toList
theorem checked10603 : bytes10603=statementBytes 10699 (op10603.map lower) ∧ bytes10603.length=48 := by core033_kernel_decide
def op10604 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10604 : Bytes := ("    let r000029cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10604 : bytes10604=statementBytes 10700 (op10604.map lower) ∧ bytes10604.length=41 := by core033_kernel_decide
def op10605 : List WordIR.Op := [.bnot 10700]
def bytes10605 : Bytes := ("    let r000029cd: u32 = !r000029cc;\n" : String).toByteArray.data.toList
theorem checked10605 : bytes10605=statementBytes 10701 (op10605.map lower) ∧ bytes10605.length=37 := by core033_kernel_decide
def op10606 : List WordIR.Op := [.badd 10699 10701]
def bytes10606 : Bytes := ("    let r000029ce: u32 = r000029cb.wrapping_add(r000029cd);\n" : String).toByteArray.data.toList
theorem checked10606 : bytes10606=statementBytes 10702 (op10606.map lower) ∧ bytes10606.length=60 := by core033_kernel_decide
def op10607 : List WordIR.Op := [.bnot 10702]
def bytes10607 : Bytes := ("    let r000029cf: u32 = !r000029ce;\n" : String).toByteArray.data.toList
theorem checked10607 : bytes10607=statementBytes 10703 (op10607.map lower) ∧ bytes10607.length=37 := by core033_kernel_decide
def op10608 : List WordIR.Op := [.band 10697 10703]
def bytes10608 : Bytes := ("    let r000029d0: u32 = r000029c9 & r000029cf;\n" : String).toByteArray.data.toList
theorem checked10608 : bytes10608=statementBytes 10704 (op10608.map lower) ∧ bytes10608.length=48 := by core033_kernel_decide
def op10609 : List WordIR.Op := [.bxor 10692 10704]
def bytes10609 : Bytes := ("    let r000029d1: u32 = r000029c4 ^ r000029d0;\n" : String).toByteArray.data.toList
theorem checked10609 : bytes10609=statementBytes 10705 (op10609.map lower) ∧ bytes10609.length=48 := by core033_kernel_decide
def op10610 : List WordIR.Op := [.shr 10705 31]
def bytes10610 : Bytes := ("    let r000029d2: u32 = r000029d1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10610 : bytes10610=statementBytes 10706 (op10610.map lower) ∧ bytes10610.length=54 := by core033_kernel_decide
def op10611 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10611 : Bytes := ("    let r000029d3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10611 : bytes10611=statementBytes 10707 (op10611.map lower) ∧ bytes10611.length=41 := by core033_kernel_decide
def op10612 : List WordIR.Op := [.bxor 10706 10707]
def bytes10612 : Bytes := ("    let r000029d4: u32 = r000029d2 ^ r000029d3;\n" : String).toByteArray.data.toList
theorem checked10612 : bytes10612=statementBytes 10708 (op10612.map lower) ∧ bytes10612.length=48 := by core033_kernel_decide
def op10613 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10613 : Bytes := ("    let r000029d5: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10613 : bytes10613=statementBytes 10709 (op10613.map lower) ∧ bytes10613.length=41 := by core033_kernel_decide
def op10614 : List WordIR.Op := [.bnot 10709]
def bytes10614 : Bytes := ("    let r000029d6: u32 = !r000029d5;\n" : String).toByteArray.data.toList
theorem checked10614 : bytes10614=statementBytes 10710 (op10614.map lower) ∧ bytes10614.length=37 := by core033_kernel_decide
def op10615 : List WordIR.Op := [.band 9959 10710]
def bytes10615 : Bytes := ("    let r000029d7: u32 = r000026e7 & r000029d6;\n" : String).toByteArray.data.toList
theorem checked10615 : bytes10615=statementBytes 10711 (op10615.map lower) ∧ bytes10615.length=48 := by core033_kernel_decide
def op10616 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10616 : Bytes := ("    let r000029d8: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10616 : bytes10616=statementBytes 10712 (op10616.map lower) ∧ bytes10616.length=41 := by core033_kernel_decide
def op10617 : List WordIR.Op := [.bnot 10712]
def bytes10617 : Bytes := ("    let r000029d9: u32 = !r000029d8;\n" : String).toByteArray.data.toList
theorem checked10617 : bytes10617=statementBytes 10713 (op10617.map lower) ∧ bytes10617.length=37 := by core033_kernel_decide
def op10618 : List WordIR.Op := [.bxor 9959 10713]
def bytes10618 : Bytes := ("    let r000029da: u32 = r000026e7 ^ r000029d9;\n" : String).toByteArray.data.toList
theorem checked10618 : bytes10618=statementBytes 10714 (op10618.map lower) ∧ bytes10618.length=48 := by core033_kernel_decide
def op10619 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10619 : Bytes := ("    let r000029db: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10619 : bytes10619=statementBytes 10715 (op10619.map lower) ∧ bytes10619.length=41 := by core033_kernel_decide
def op10620 : List WordIR.Op := [.bnot 10715]
def bytes10620 : Bytes := ("    let r000029dc: u32 = !r000029db;\n" : String).toByteArray.data.toList
theorem checked10620 : bytes10620=statementBytes 10716 (op10620.map lower) ∧ bytes10620.length=37 := by core033_kernel_decide
def op10621 : List WordIR.Op := [.badd 9959 10716]
def bytes10621 : Bytes := ("    let r000029dd: u32 = r000026e7.wrapping_add(r000029dc);\n" : String).toByteArray.data.toList
theorem checked10621 : bytes10621=statementBytes 10717 (op10621.map lower) ∧ bytes10621.length=60 := by core033_kernel_decide
def op10622 : List WordIR.Op := [.bnot 10717]
def bytes10622 : Bytes := ("    let r000029de: u32 = !r000029dd;\n" : String).toByteArray.data.toList
theorem checked10622 : bytes10622=statementBytes 10718 (op10622.map lower) ∧ bytes10622.length=37 := by core033_kernel_decide
def op10623 : List WordIR.Op := [.band 10714 10718]
def bytes10623 : Bytes := ("    let r000029df: u32 = r000029da & r000029de;\n" : String).toByteArray.data.toList
theorem checked10623 : bytes10623=statementBytes 10719 (op10623.map lower) ∧ bytes10623.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10560,op10561,op10562,op10563,op10564,op10565,op10566,op10567,op10568,op10569,op10570,op10571,op10572,op10573,op10574,op10575,op10576,op10577,op10578,op10579,op10580,op10581,op10582,op10583,op10584,op10585,op10586,op10587,op10588,op10589,op10590,op10591,op10592,op10593,op10594,op10595,op10596,op10597,op10598,op10599,op10600,op10601,op10602,op10603,op10604,op10605,op10606,op10607,op10608,op10609,op10610,op10611,op10612,op10613,op10614,op10615,op10616,op10617,op10618,op10619,op10620,op10621,op10622,op10623]
def chunks : List Bytes := [bytes10560,bytes10561,bytes10562,bytes10563,bytes10564,bytes10565,bytes10566,bytes10567,bytes10568,bytes10569,bytes10570,bytes10571,bytes10572,bytes10573,bytes10574,bytes10575,bytes10576,bytes10577,bytes10578,bytes10579,bytes10580,bytes10581,bytes10582,bytes10583,bytes10584,bytes10585,bytes10586,bytes10587,bytes10588,bytes10589,bytes10590,bytes10591,bytes10592,bytes10593,bytes10594,bytes10595,bytes10596,bytes10597,bytes10598,bytes10599,bytes10600,bytes10601,bytes10602,bytes10603,bytes10604,bytes10605,bytes10606,bytes10607,bytes10608,bytes10609,bytes10610,bytes10611,bytes10612,bytes10613,bytes10614,bytes10615,bytes10616,bytes10617,bytes10618,bytes10619,bytes10620,bytes10621,bytes10622,bytes10623]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10656 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10560.1 (.cons _ _ _ _ _ checked10561.1 (.cons _ _ _ _ _ checked10562.1 (.cons _ _ _ _ _ checked10563.1 (.cons _ _ _ _ _ checked10564.1 (.cons _ _ _ _ _ checked10565.1 (.cons _ _ _ _ _ checked10566.1 (.cons _ _ _ _ _ checked10567.1 (.cons _ _ _ _ _ checked10568.1 (.cons _ _ _ _ _ checked10569.1 (.cons _ _ _ _ _ checked10570.1 (.cons _ _ _ _ _ checked10571.1 (.cons _ _ _ _ _ checked10572.1 (.cons _ _ _ _ _ checked10573.1 (.cons _ _ _ _ _ checked10574.1 (.cons _ _ _ _ _ checked10575.1 (.cons _ _ _ _ _ checked10576.1 (.cons _ _ _ _ _ checked10577.1 (.cons _ _ _ _ _ checked10578.1 (.cons _ _ _ _ _ checked10579.1 (.cons _ _ _ _ _ checked10580.1 (.cons _ _ _ _ _ checked10581.1 (.cons _ _ _ _ _ checked10582.1 (.cons _ _ _ _ _ checked10583.1 (.cons _ _ _ _ _ checked10584.1 (.cons _ _ _ _ _ checked10585.1 (.cons _ _ _ _ _ checked10586.1 (.cons _ _ _ _ _ checked10587.1 (.cons _ _ _ _ _ checked10588.1 (.cons _ _ _ _ _ checked10589.1 (.cons _ _ _ _ _ checked10590.1 (.cons _ _ _ _ _ checked10591.1 (.cons _ _ _ _ _ checked10592.1 (.cons _ _ _ _ _ checked10593.1 (.cons _ _ _ _ _ checked10594.1 (.cons _ _ _ _ _ checked10595.1 (.cons _ _ _ _ _ checked10596.1 (.cons _ _ _ _ _ checked10597.1 (.cons _ _ _ _ _ checked10598.1 (.cons _ _ _ _ _ checked10599.1 (.cons _ _ _ _ _ checked10600.1 (.cons _ _ _ _ _ checked10601.1 (.cons _ _ _ _ _ checked10602.1 (.cons _ _ _ _ _ checked10603.1 (.cons _ _ _ _ _ checked10604.1 (.cons _ _ _ _ _ checked10605.1 (.cons _ _ _ _ _ checked10606.1 (.cons _ _ _ _ _ checked10607.1 (.cons _ _ _ _ _ checked10608.1 (.cons _ _ _ _ _ checked10609.1 (.cons _ _ _ _ _ checked10610.1 (.cons _ _ _ _ _ checked10611.1 (.cons _ _ _ _ _ checked10612.1 (.cons _ _ _ _ _ checked10613.1 (.cons _ _ _ _ _ checked10614.1 (.cons _ _ _ _ _ checked10615.1 (.cons _ _ _ _ _ checked10616.1 (.cons _ _ _ _ _ checked10617.1 (.cons _ _ _ _ _ checked10618.1 (.cons _ _ _ _ _ checked10619.1 (.cons _ _ _ _ _ checked10620.1 (.cons _ _ _ _ _ checked10621.1 (.cons _ _ _ _ _ checked10622.1 (.cons _ _ _ _ _ checked10623.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10656 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2877 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10560.2,checked10561.2,checked10562.2,checked10563.2,checked10564.2,checked10565.2,checked10566.2,checked10567.2,checked10568.2,checked10569.2,checked10570.2,checked10571.2,checked10572.2,checked10573.2,checked10574.2,checked10575.2,checked10576.2,checked10577.2,checked10578.2,checked10579.2,checked10580.2,checked10581.2,checked10582.2,checked10583.2,checked10584.2,checked10585.2,checked10586.2,checked10587.2,checked10588.2,checked10589.2,checked10590.2,checked10591.2,checked10592.2,checked10593.2,checked10594.2,checked10595.2,checked10596.2,checked10597.2,checked10598.2,checked10599.2,checked10600.2,checked10601.2,checked10602.2,checked10603.2,checked10604.2,checked10605.2,checked10606.2,checked10607.2,checked10608.2,checked10609.2,checked10610.2,checked10611.2,checked10612.2,checked10613.2,checked10614.2,checked10615.2,checked10616.2,checked10617.2,checked10618.2,checked10619.2,checked10620.2,checked10621.2,checked10622.2,checked10623.2]
  decide
end ArtifactPairedPathRoundGroup165
