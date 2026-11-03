import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup166
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10624 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10624 : Bytes := ("    let r000029ab: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10624 : bytes10624=statementBytes 10667 (op10624.map lower) ∧ bytes10624.length=41 := by core033_kernel_decide
def op10625 : List WordIR.Op := [.bxor 0 10667]
def bytes10625 : Bytes := ("    let r000029ac: u32 = r00000000 ^ r000029ab;\n" : String).toByteArray.data.toList
theorem checked10625 : bytes10625=statementBytes 10668 (op10625.map lower) ∧ bytes10625.length=48 := by core033_kernel_decide
def op10626 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10626 : Bytes := ("    let r000029ad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10626 : bytes10626=statementBytes 10669 (op10626.map lower) ∧ bytes10626.length=41 := by core033_kernel_decide
def op10627 : List WordIR.Op := [.bnot 10669]
def bytes10627 : Bytes := ("    let r000029ae: u32 = !r000029ad;\n" : String).toByteArray.data.toList
theorem checked10627 : bytes10627=statementBytes 10670 (op10627.map lower) ∧ bytes10627.length=37 := by core033_kernel_decide
def op10628 : List WordIR.Op := [.band 10668 10670]
def bytes10628 : Bytes := ("    let r000029af: u32 = r000029ac & r000029ae;\n" : String).toByteArray.data.toList
theorem checked10628 : bytes10628=statementBytes 10671 (op10628.map lower) ∧ bytes10628.length=48 := by core033_kernel_decide
def op10629 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10629 : Bytes := ("    let r000029b0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10629 : bytes10629=statementBytes 10672 (op10629.map lower) ∧ bytes10629.length=41 := by core033_kernel_decide
def op10630 : List WordIR.Op := [.bxor 0 10672]
def bytes10630 : Bytes := ("    let r000029b1: u32 = r00000000 ^ r000029b0;\n" : String).toByteArray.data.toList
theorem checked10630 : bytes10630=statementBytes 10673 (op10630.map lower) ∧ bytes10630.length=48 := by core033_kernel_decide
def op10631 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10631 : Bytes := ("    let r000029b2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10631 : bytes10631=statementBytes 10674 (op10631.map lower) ∧ bytes10631.length=41 := by core033_kernel_decide
def op10632 : List WordIR.Op := [.bnot 10674]
def bytes10632 : Bytes := ("    let r000029b3: u32 = !r000029b2;\n" : String).toByteArray.data.toList
theorem checked10632 : bytes10632=statementBytes 10675 (op10632.map lower) ∧ bytes10632.length=37 := by core033_kernel_decide
def op10633 : List WordIR.Op := [.bxor 10673 10675]
def bytes10633 : Bytes := ("    let r000029b4: u32 = r000029b1 ^ r000029b3;\n" : String).toByteArray.data.toList
theorem checked10633 : bytes10633=statementBytes 10676 (op10633.map lower) ∧ bytes10633.length=48 := by core033_kernel_decide
def op10634 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10634 : Bytes := ("    let r000029b5: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10634 : bytes10634=statementBytes 10677 (op10634.map lower) ∧ bytes10634.length=41 := by core033_kernel_decide
def op10635 : List WordIR.Op := [.bxor 0 10677]
def bytes10635 : Bytes := ("    let r000029b6: u32 = r00000000 ^ r000029b5;\n" : String).toByteArray.data.toList
theorem checked10635 : bytes10635=statementBytes 10678 (op10635.map lower) ∧ bytes10635.length=48 := by core033_kernel_decide
def op10636 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10636 : Bytes := ("    let r000029b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10636 : bytes10636=statementBytes 10679 (op10636.map lower) ∧ bytes10636.length=41 := by core033_kernel_decide
def op10637 : List WordIR.Op := [.bnot 10679]
def bytes10637 : Bytes := ("    let r000029b8: u32 = !r000029b7;\n" : String).toByteArray.data.toList
theorem checked10637 : bytes10637=statementBytes 10680 (op10637.map lower) ∧ bytes10637.length=37 := by core033_kernel_decide
def op10638 : List WordIR.Op := [.badd 10678 10680]
def bytes10638 : Bytes := ("    let r000029b9: u32 = r000029b6.wrapping_add(r000029b8);\n" : String).toByteArray.data.toList
theorem checked10638 : bytes10638=statementBytes 10681 (op10638.map lower) ∧ bytes10638.length=60 := by core033_kernel_decide
def op10639 : List WordIR.Op := [.bnot 10681]
def bytes10639 : Bytes := ("    let r000029ba: u32 = !r000029b9;\n" : String).toByteArray.data.toList
theorem checked10639 : bytes10639=statementBytes 10682 (op10639.map lower) ∧ bytes10639.length=37 := by core033_kernel_decide
def op10640 : List WordIR.Op := [.band 10676 10682]
def bytes10640 : Bytes := ("    let r000029bb: u32 = r000029b4 & r000029ba;\n" : String).toByteArray.data.toList
theorem checked10640 : bytes10640=statementBytes 10683 (op10640.map lower) ∧ bytes10640.length=48 := by core033_kernel_decide
def op10641 : List WordIR.Op := [.bxor 10671 10683]
def bytes10641 : Bytes := ("    let r000029bc: u32 = r000029af ^ r000029bb;\n" : String).toByteArray.data.toList
theorem checked10641 : bytes10641=statementBytes 10684 (op10641.map lower) ∧ bytes10641.length=48 := by core033_kernel_decide
def op10642 : List WordIR.Op := [.shr 10684 31]
def bytes10642 : Bytes := ("    let r000029bd: u32 = r000029bc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10642 : bytes10642=statementBytes 10685 (op10642.map lower) ∧ bytes10642.length=54 := by core033_kernel_decide
def op10643 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10643 : Bytes := ("    let r000029be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10643 : bytes10643=statementBytes 10686 (op10643.map lower) ∧ bytes10643.length=41 := by core033_kernel_decide
def op10644 : List WordIR.Op := [.bxor 10685 10686]
def bytes10644 : Bytes := ("    let r000029bf: u32 = r000029bd ^ r000029be;\n" : String).toByteArray.data.toList
theorem checked10644 : bytes10644=statementBytes 10687 (op10644.map lower) ∧ bytes10644.length=48 := by core033_kernel_decide
def op10645 : List WordIR.Op := [.bnot 10687]
def bytes10645 : Bytes := ("    let r000029c0: u32 = !r000029bf;\n" : String).toByteArray.data.toList
theorem checked10645 : bytes10645=statementBytes 10688 (op10645.map lower) ∧ bytes10645.length=37 := by core033_kernel_decide
def op10646 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10646 : Bytes := ("    let r000029c1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10646 : bytes10646=statementBytes 10689 (op10646.map lower) ∧ bytes10646.length=41 := by core033_kernel_decide
def op10647 : List WordIR.Op := [.badd 10688 10689]
def bytes10647 : Bytes := ("    let r000029c2: u32 = r000029c0.wrapping_add(r000029c1);\n" : String).toByteArray.data.toList
theorem checked10647 : bytes10647=statementBytes 10690 (op10647.map lower) ∧ bytes10647.length=60 := by core033_kernel_decide
def op10648 : List WordIR.Op := [.bnot 10690]
def bytes10648 : Bytes := ("    let r000029c3: u32 = !r000029c2;\n" : String).toByteArray.data.toList
theorem checked10648 : bytes10648=statementBytes 10691 (op10648.map lower) ∧ bytes10648.length=37 := by core033_kernel_decide
def op10649 : List WordIR.Op := [.band 10691 184]
def bytes10649 : Bytes := ("    let r000029c4: u32 = r000029c3 & r000000b8;\n" : String).toByteArray.data.toList
theorem checked10649 : bytes10649=statementBytes 10692 (op10649.map lower) ∧ bytes10649.length=48 := by core033_kernel_decide
def op10650 : List WordIR.Op := [.bxor 10666 10692]
def bytes10650 : Bytes := ("    let r000029c5: u32 = r000029aa ^ r000029c4;\n" : String).toByteArray.data.toList
theorem checked10650 : bytes10650=statementBytes 10693 (op10650.map lower) ∧ bytes10650.length=48 := by core033_kernel_decide
def op10651 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10651 : Bytes := ("    let r000029c6: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10651 : bytes10651=statementBytes 10694 (op10651.map lower) ∧ bytes10651.length=41 := by core033_kernel_decide
def op10652 : List WordIR.Op := [.bxor 0 10694]
def bytes10652 : Bytes := ("    let r000029c7: u32 = r00000000 ^ r000029c6;\n" : String).toByteArray.data.toList
theorem checked10652 : bytes10652=statementBytes 10695 (op10652.map lower) ∧ bytes10652.length=48 := by core033_kernel_decide
def op10653 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10653 : Bytes := ("    let r000029c8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10653 : bytes10653=statementBytes 10696 (op10653.map lower) ∧ bytes10653.length=41 := by core033_kernel_decide
def op10654 : List WordIR.Op := [.bnot 10696]
def bytes10654 : Bytes := ("    let r000029c9: u32 = !r000029c8;\n" : String).toByteArray.data.toList
theorem checked10654 : bytes10654=statementBytes 10697 (op10654.map lower) ∧ bytes10654.length=37 := by core033_kernel_decide
def op10655 : List WordIR.Op := [.band 10695 10697]
def bytes10655 : Bytes := ("    let r000029ca: u32 = r000029c7 & r000029c9;\n" : String).toByteArray.data.toList
theorem checked10655 : bytes10655=statementBytes 10698 (op10655.map lower) ∧ bytes10655.length=48 := by core033_kernel_decide
def op10656 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10656 : Bytes := ("    let r000029cb: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10656 : bytes10656=statementBytes 10699 (op10656.map lower) ∧ bytes10656.length=41 := by core033_kernel_decide
def op10657 : List WordIR.Op := [.bxor 0 10699]
def bytes10657 : Bytes := ("    let r000029cc: u32 = r00000000 ^ r000029cb;\n" : String).toByteArray.data.toList
theorem checked10657 : bytes10657=statementBytes 10700 (op10657.map lower) ∧ bytes10657.length=48 := by core033_kernel_decide
def op10658 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10658 : Bytes := ("    let r000029cd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10658 : bytes10658=statementBytes 10701 (op10658.map lower) ∧ bytes10658.length=41 := by core033_kernel_decide
def op10659 : List WordIR.Op := [.bnot 10701]
def bytes10659 : Bytes := ("    let r000029ce: u32 = !r000029cd;\n" : String).toByteArray.data.toList
theorem checked10659 : bytes10659=statementBytes 10702 (op10659.map lower) ∧ bytes10659.length=37 := by core033_kernel_decide
def op10660 : List WordIR.Op := [.bxor 10700 10702]
def bytes10660 : Bytes := ("    let r000029cf: u32 = r000029cc ^ r000029ce;\n" : String).toByteArray.data.toList
theorem checked10660 : bytes10660=statementBytes 10703 (op10660.map lower) ∧ bytes10660.length=48 := by core033_kernel_decide
def op10661 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10661 : Bytes := ("    let r000029d0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10661 : bytes10661=statementBytes 10704 (op10661.map lower) ∧ bytes10661.length=41 := by core033_kernel_decide
def op10662 : List WordIR.Op := [.bxor 0 10704]
def bytes10662 : Bytes := ("    let r000029d1: u32 = r00000000 ^ r000029d0;\n" : String).toByteArray.data.toList
theorem checked10662 : bytes10662=statementBytes 10705 (op10662.map lower) ∧ bytes10662.length=48 := by core033_kernel_decide
def op10663 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10663 : Bytes := ("    let r000029d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10663 : bytes10663=statementBytes 10706 (op10663.map lower) ∧ bytes10663.length=41 := by core033_kernel_decide
def op10664 : List WordIR.Op := [.bnot 10706]
def bytes10664 : Bytes := ("    let r000029d3: u32 = !r000029d2;\n" : String).toByteArray.data.toList
theorem checked10664 : bytes10664=statementBytes 10707 (op10664.map lower) ∧ bytes10664.length=37 := by core033_kernel_decide
def op10665 : List WordIR.Op := [.badd 10705 10707]
def bytes10665 : Bytes := ("    let r000029d4: u32 = r000029d1.wrapping_add(r000029d3);\n" : String).toByteArray.data.toList
theorem checked10665 : bytes10665=statementBytes 10708 (op10665.map lower) ∧ bytes10665.length=60 := by core033_kernel_decide
def op10666 : List WordIR.Op := [.bnot 10708]
def bytes10666 : Bytes := ("    let r000029d5: u32 = !r000029d4;\n" : String).toByteArray.data.toList
theorem checked10666 : bytes10666=statementBytes 10709 (op10666.map lower) ∧ bytes10666.length=37 := by core033_kernel_decide
def op10667 : List WordIR.Op := [.band 10703 10709]
def bytes10667 : Bytes := ("    let r000029d6: u32 = r000029cf & r000029d5;\n" : String).toByteArray.data.toList
theorem checked10667 : bytes10667=statementBytes 10710 (op10667.map lower) ∧ bytes10667.length=48 := by core033_kernel_decide
def op10668 : List WordIR.Op := [.bxor 10698 10710]
def bytes10668 : Bytes := ("    let r000029d7: u32 = r000029ca ^ r000029d6;\n" : String).toByteArray.data.toList
theorem checked10668 : bytes10668=statementBytes 10711 (op10668.map lower) ∧ bytes10668.length=48 := by core033_kernel_decide
def op10669 : List WordIR.Op := [.shr 10711 31]
def bytes10669 : Bytes := ("    let r000029d8: u32 = r000029d7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10669 : bytes10669=statementBytes 10712 (op10669.map lower) ∧ bytes10669.length=54 := by core033_kernel_decide
def op10670 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10670 : Bytes := ("    let r000029d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10670 : bytes10670=statementBytes 10713 (op10670.map lower) ∧ bytes10670.length=41 := by core033_kernel_decide
def op10671 : List WordIR.Op := [.bxor 10712 10713]
def bytes10671 : Bytes := ("    let r000029da: u32 = r000029d8 ^ r000029d9;\n" : String).toByteArray.data.toList
theorem checked10671 : bytes10671=statementBytes 10714 (op10671.map lower) ∧ bytes10671.length=48 := by core033_kernel_decide
def op10672 : List WordIR.Op := [.bnot 10714]
def bytes10672 : Bytes := ("    let r000029db: u32 = !r000029da;\n" : String).toByteArray.data.toList
theorem checked10672 : bytes10672=statementBytes 10715 (op10672.map lower) ∧ bytes10672.length=37 := by core033_kernel_decide
def op10673 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10673 : Bytes := ("    let r000029dc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10673 : bytes10673=statementBytes 10716 (op10673.map lower) ∧ bytes10673.length=41 := by core033_kernel_decide
def op10674 : List WordIR.Op := [.badd 10715 10716]
def bytes10674 : Bytes := ("    let r000029dd: u32 = r000029db.wrapping_add(r000029dc);\n" : String).toByteArray.data.toList
theorem checked10674 : bytes10674=statementBytes 10717 (op10674.map lower) ∧ bytes10674.length=60 := by core033_kernel_decide
def op10675 : List WordIR.Op := [.band 10717 9516]
def bytes10675 : Bytes := ("    let r000029de: u32 = r000029dd & r0000252c;\n" : String).toByteArray.data.toList
theorem checked10675 : bytes10675=statementBytes 10718 (op10675.map lower) ∧ bytes10675.length=48 := by core033_kernel_decide
def op10676 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10676 : Bytes := ("    let r000029df: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10676 : bytes10676=statementBytes 10719 (op10676.map lower) ∧ bytes10676.length=41 := by core033_kernel_decide
def op10677 : List WordIR.Op := [.bxor 0 10719]
def bytes10677 : Bytes := ("    let r000029e0: u32 = r00000000 ^ r000029df;\n" : String).toByteArray.data.toList
theorem checked10677 : bytes10677=statementBytes 10720 (op10677.map lower) ∧ bytes10677.length=48 := by core033_kernel_decide
def op10678 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10678 : Bytes := ("    let r000029e1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10678 : bytes10678=statementBytes 10721 (op10678.map lower) ∧ bytes10678.length=41 := by core033_kernel_decide
def op10679 : List WordIR.Op := [.bnot 10721]
def bytes10679 : Bytes := ("    let r000029e2: u32 = !r000029e1;\n" : String).toByteArray.data.toList
theorem checked10679 : bytes10679=statementBytes 10722 (op10679.map lower) ∧ bytes10679.length=37 := by core033_kernel_decide
def op10680 : List WordIR.Op := [.band 10720 10722]
def bytes10680 : Bytes := ("    let r000029e3: u32 = r000029e0 & r000029e2;\n" : String).toByteArray.data.toList
theorem checked10680 : bytes10680=statementBytes 10723 (op10680.map lower) ∧ bytes10680.length=48 := by core033_kernel_decide
def op10681 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10681 : Bytes := ("    let r000029e4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10681 : bytes10681=statementBytes 10724 (op10681.map lower) ∧ bytes10681.length=41 := by core033_kernel_decide
def op10682 : List WordIR.Op := [.bxor 0 10724]
def bytes10682 : Bytes := ("    let r000029e5: u32 = r00000000 ^ r000029e4;\n" : String).toByteArray.data.toList
theorem checked10682 : bytes10682=statementBytes 10725 (op10682.map lower) ∧ bytes10682.length=48 := by core033_kernel_decide
def op10683 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10683 : Bytes := ("    let r000029e6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10683 : bytes10683=statementBytes 10726 (op10683.map lower) ∧ bytes10683.length=41 := by core033_kernel_decide
def op10684 : List WordIR.Op := [.bnot 10726]
def bytes10684 : Bytes := ("    let r000029e7: u32 = !r000029e6;\n" : String).toByteArray.data.toList
theorem checked10684 : bytes10684=statementBytes 10727 (op10684.map lower) ∧ bytes10684.length=37 := by core033_kernel_decide
def op10685 : List WordIR.Op := [.bxor 10725 10727]
def bytes10685 : Bytes := ("    let r000029e8: u32 = r000029e5 ^ r000029e7;\n" : String).toByteArray.data.toList
theorem checked10685 : bytes10685=statementBytes 10728 (op10685.map lower) ∧ bytes10685.length=48 := by core033_kernel_decide
def op10686 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10686 : Bytes := ("    let r000029e9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10686 : bytes10686=statementBytes 10729 (op10686.map lower) ∧ bytes10686.length=41 := by core033_kernel_decide
def op10687 : List WordIR.Op := [.bxor 0 10729]
def bytes10687 : Bytes := ("    let r000029ea: u32 = r00000000 ^ r000029e9;\n" : String).toByteArray.data.toList
theorem checked10687 : bytes10687=statementBytes 10730 (op10687.map lower) ∧ bytes10687.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10624,op10625,op10626,op10627,op10628,op10629,op10630,op10631,op10632,op10633,op10634,op10635,op10636,op10637,op10638,op10639,op10640,op10641,op10642,op10643,op10644,op10645,op10646,op10647,op10648,op10649,op10650,op10651,op10652,op10653,op10654,op10655,op10656,op10657,op10658,op10659,op10660,op10661,op10662,op10663,op10664,op10665,op10666,op10667,op10668,op10669,op10670,op10671,op10672,op10673,op10674,op10675,op10676,op10677,op10678,op10679,op10680,op10681,op10682,op10683,op10684,op10685,op10686,op10687]
def chunks : List Bytes := [bytes10624,bytes10625,bytes10626,bytes10627,bytes10628,bytes10629,bytes10630,bytes10631,bytes10632,bytes10633,bytes10634,bytes10635,bytes10636,bytes10637,bytes10638,bytes10639,bytes10640,bytes10641,bytes10642,bytes10643,bytes10644,bytes10645,bytes10646,bytes10647,bytes10648,bytes10649,bytes10650,bytes10651,bytes10652,bytes10653,bytes10654,bytes10655,bytes10656,bytes10657,bytes10658,bytes10659,bytes10660,bytes10661,bytes10662,bytes10663,bytes10664,bytes10665,bytes10666,bytes10667,bytes10668,bytes10669,bytes10670,bytes10671,bytes10672,bytes10673,bytes10674,bytes10675,bytes10676,bytes10677,bytes10678,bytes10679,bytes10680,bytes10681,bytes10682,bytes10683,bytes10684,bytes10685,bytes10686,bytes10687]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10667 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10624.1 (.cons _ _ _ _ _ checked10625.1 (.cons _ _ _ _ _ checked10626.1 (.cons _ _ _ _ _ checked10627.1 (.cons _ _ _ _ _ checked10628.1 (.cons _ _ _ _ _ checked10629.1 (.cons _ _ _ _ _ checked10630.1 (.cons _ _ _ _ _ checked10631.1 (.cons _ _ _ _ _ checked10632.1 (.cons _ _ _ _ _ checked10633.1 (.cons _ _ _ _ _ checked10634.1 (.cons _ _ _ _ _ checked10635.1 (.cons _ _ _ _ _ checked10636.1 (.cons _ _ _ _ _ checked10637.1 (.cons _ _ _ _ _ checked10638.1 (.cons _ _ _ _ _ checked10639.1 (.cons _ _ _ _ _ checked10640.1 (.cons _ _ _ _ _ checked10641.1 (.cons _ _ _ _ _ checked10642.1 (.cons _ _ _ _ _ checked10643.1 (.cons _ _ _ _ _ checked10644.1 (.cons _ _ _ _ _ checked10645.1 (.cons _ _ _ _ _ checked10646.1 (.cons _ _ _ _ _ checked10647.1 (.cons _ _ _ _ _ checked10648.1 (.cons _ _ _ _ _ checked10649.1 (.cons _ _ _ _ _ checked10650.1 (.cons _ _ _ _ _ checked10651.1 (.cons _ _ _ _ _ checked10652.1 (.cons _ _ _ _ _ checked10653.1 (.cons _ _ _ _ _ checked10654.1 (.cons _ _ _ _ _ checked10655.1 (.cons _ _ _ _ _ checked10656.1 (.cons _ _ _ _ _ checked10657.1 (.cons _ _ _ _ _ checked10658.1 (.cons _ _ _ _ _ checked10659.1 (.cons _ _ _ _ _ checked10660.1 (.cons _ _ _ _ _ checked10661.1 (.cons _ _ _ _ _ checked10662.1 (.cons _ _ _ _ _ checked10663.1 (.cons _ _ _ _ _ checked10664.1 (.cons _ _ _ _ _ checked10665.1 (.cons _ _ _ _ _ checked10666.1 (.cons _ _ _ _ _ checked10667.1 (.cons _ _ _ _ _ checked10668.1 (.cons _ _ _ _ _ checked10669.1 (.cons _ _ _ _ _ checked10670.1 (.cons _ _ _ _ _ checked10671.1 (.cons _ _ _ _ _ checked10672.1 (.cons _ _ _ _ _ checked10673.1 (.cons _ _ _ _ _ checked10674.1 (.cons _ _ _ _ _ checked10675.1 (.cons _ _ _ _ _ checked10676.1 (.cons _ _ _ _ _ checked10677.1 (.cons _ _ _ _ _ checked10678.1 (.cons _ _ _ _ _ checked10679.1 (.cons _ _ _ _ _ checked10680.1 (.cons _ _ _ _ _ checked10681.1 (.cons _ _ _ _ _ checked10682.1 (.cons _ _ _ _ _ checked10683.1 (.cons _ _ _ _ _ checked10684.1 (.cons _ _ _ _ _ checked10685.1 (.cons _ _ _ _ _ checked10686.1 (.cons _ _ _ _ _ checked10687.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10667 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10624.2,checked10625.2,checked10626.2,checked10627.2,checked10628.2,checked10629.2,checked10630.2,checked10631.2,checked10632.2,checked10633.2,checked10634.2,checked10635.2,checked10636.2,checked10637.2,checked10638.2,checked10639.2,checked10640.2,checked10641.2,checked10642.2,checked10643.2,checked10644.2,checked10645.2,checked10646.2,checked10647.2,checked10648.2,checked10649.2,checked10650.2,checked10651.2,checked10652.2,checked10653.2,checked10654.2,checked10655.2,checked10656.2,checked10657.2,checked10658.2,checked10659.2,checked10660.2,checked10661.2,checked10662.2,checked10663.2,checked10664.2,checked10665.2,checked10666.2,checked10667.2,checked10668.2,checked10669.2,checked10670.2,checked10671.2,checked10672.2,checked10673.2,checked10674.2,checked10675.2,checked10676.2,checked10677.2,checked10678.2,checked10679.2,checked10680.2,checked10681.2,checked10682.2,checked10683.2,checked10684.2,checked10685.2,checked10686.2,checked10687.2]
  decide
end ArtifactPathRoundDispatchGroup166
