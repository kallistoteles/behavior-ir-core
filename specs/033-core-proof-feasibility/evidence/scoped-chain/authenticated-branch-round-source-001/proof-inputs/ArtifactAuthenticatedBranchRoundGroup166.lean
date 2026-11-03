import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup166
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10624 : List WordIR.Op := [.bnot 10609]
def bytes10624 : Bytes := ("    let r000029f6: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10624 : bytes10624=statementBytes 10742 (op10624.map lower) ∧ bytes10624.length=37 := by core033_kernel_decide
def op10625 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10625 : Bytes := ("    let r000029f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10625 : bytes10625=statementBytes 10743 (op10625.map lower) ∧ bytes10625.length=41 := by core033_kernel_decide
def op10626 : List WordIR.Op := [.badd 10742 10743]
def bytes10626 : Bytes := ("    let r000029f8: u32 = r000029f6.wrapping_add(r000029f7);\n" : String).toByteArray.data.toList
theorem checked10626 : bytes10626=statementBytes 10744 (op10626.map lower) ∧ bytes10626.length=60 := by core033_kernel_decide
def op10627 : List WordIR.Op := [.band 10744 843]
def bytes10627 : Bytes := ("    let r000029f9: u32 = r000029f8 & r0000034b;\n" : String).toByteArray.data.toList
theorem checked10627 : bytes10627=statementBytes 10745 (op10627.map lower) ∧ bytes10627.length=48 := by core033_kernel_decide
def op10628 : List WordIR.Op := [.bnot 10609]
def bytes10628 : Bytes := ("    let r000029fa: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10628 : bytes10628=statementBytes 10746 (op10628.map lower) ∧ bytes10628.length=37 := by core033_kernel_decide
def op10629 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10629 : Bytes := ("    let r000029fb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10629 : bytes10629=statementBytes 10747 (op10629.map lower) ∧ bytes10629.length=41 := by core033_kernel_decide
def op10630 : List WordIR.Op := [.badd 10746 10747]
def bytes10630 : Bytes := ("    let r000029fc: u32 = r000029fa.wrapping_add(r000029fb);\n" : String).toByteArray.data.toList
theorem checked10630 : bytes10630=statementBytes 10748 (op10630.map lower) ∧ bytes10630.length=60 := by core033_kernel_decide
def op10631 : List WordIR.Op := [.bnot 10748]
def bytes10631 : Bytes := ("    let r000029fd: u32 = !r000029fc;\n" : String).toByteArray.data.toList
theorem checked10631 : bytes10631=statementBytes 10749 (op10631.map lower) ∧ bytes10631.length=37 := by core033_kernel_decide
def op10632 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10632 : Bytes := ("    let r000029fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10632 : bytes10632=statementBytes 10750 (op10632.map lower) ∧ bytes10632.length=41 := by core033_kernel_decide
def op10633 : List WordIR.Op := [.band 10749 10750]
def bytes10633 : Bytes := ("    let r000029ff: u32 = r000029fd & r000029fe;\n" : String).toByteArray.data.toList
theorem checked10633 : bytes10633=statementBytes 10751 (op10633.map lower) ∧ bytes10633.length=48 := by core033_kernel_decide
def op10634 : List WordIR.Op := [.bxor 10745 10751]
def bytes10634 : Bytes := ("    let r00002a00: u32 = r000029f9 ^ r000029ff;\n" : String).toByteArray.data.toList
theorem checked10634 : bytes10634=statementBytes 10752 (op10634.map lower) ∧ bytes10634.length=48 := by core033_kernel_decide
def op10635 : List WordIR.Op := [.bnot 10609]
def bytes10635 : Bytes := ("    let r00002a01: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10635 : bytes10635=statementBytes 10753 (op10635.map lower) ∧ bytes10635.length=37 := by core033_kernel_decide
def op10636 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10636 : Bytes := ("    let r00002a02: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10636 : bytes10636=statementBytes 10754 (op10636.map lower) ∧ bytes10636.length=41 := by core033_kernel_decide
def op10637 : List WordIR.Op := [.badd 10753 10754]
def bytes10637 : Bytes := ("    let r00002a03: u32 = r00002a01.wrapping_add(r00002a02);\n" : String).toByteArray.data.toList
theorem checked10637 : bytes10637=statementBytes 10755 (op10637.map lower) ∧ bytes10637.length=60 := by core033_kernel_decide
def op10638 : List WordIR.Op := [.band 10755 863]
def bytes10638 : Bytes := ("    let r00002a04: u32 = r00002a03 & r0000035f;\n" : String).toByteArray.data.toList
theorem checked10638 : bytes10638=statementBytes 10756 (op10638.map lower) ∧ bytes10638.length=48 := by core033_kernel_decide
def op10639 : List WordIR.Op := [.bnot 10609]
def bytes10639 : Bytes := ("    let r00002a05: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10639 : bytes10639=statementBytes 10757 (op10639.map lower) ∧ bytes10639.length=37 := by core033_kernel_decide
def op10640 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10640 : Bytes := ("    let r00002a06: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10640 : bytes10640=statementBytes 10758 (op10640.map lower) ∧ bytes10640.length=41 := by core033_kernel_decide
def op10641 : List WordIR.Op := [.badd 10757 10758]
def bytes10641 : Bytes := ("    let r00002a07: u32 = r00002a05.wrapping_add(r00002a06);\n" : String).toByteArray.data.toList
theorem checked10641 : bytes10641=statementBytes 10759 (op10641.map lower) ∧ bytes10641.length=60 := by core033_kernel_decide
def op10642 : List WordIR.Op := [.bnot 10759]
def bytes10642 : Bytes := ("    let r00002a08: u32 = !r00002a07;\n" : String).toByteArray.data.toList
theorem checked10642 : bytes10642=statementBytes 10760 (op10642.map lower) ∧ bytes10642.length=37 := by core033_kernel_decide
def op10643 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10643 : Bytes := ("    let r00002a09: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10643 : bytes10643=statementBytes 10761 (op10643.map lower) ∧ bytes10643.length=41 := by core033_kernel_decide
def op10644 : List WordIR.Op := [.band 10760 10761]
def bytes10644 : Bytes := ("    let r00002a0a: u32 = r00002a08 & r00002a09;\n" : String).toByteArray.data.toList
theorem checked10644 : bytes10644=statementBytes 10762 (op10644.map lower) ∧ bytes10644.length=48 := by core033_kernel_decide
def op10645 : List WordIR.Op := [.bxor 10756 10762]
def bytes10645 : Bytes := ("    let r00002a0b: u32 = r00002a04 ^ r00002a0a;\n" : String).toByteArray.data.toList
theorem checked10645 : bytes10645=statementBytes 10763 (op10645.map lower) ∧ bytes10645.length=48 := by core033_kernel_decide
def op10646 : List WordIR.Op := [.bnot 10609]
def bytes10646 : Bytes := ("    let r00002a0c: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10646 : bytes10646=statementBytes 10764 (op10646.map lower) ∧ bytes10646.length=37 := by core033_kernel_decide
def op10647 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10647 : Bytes := ("    let r00002a0d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10647 : bytes10647=statementBytes 10765 (op10647.map lower) ∧ bytes10647.length=41 := by core033_kernel_decide
def op10648 : List WordIR.Op := [.badd 10764 10765]
def bytes10648 : Bytes := ("    let r00002a0e: u32 = r00002a0c.wrapping_add(r00002a0d);\n" : String).toByteArray.data.toList
theorem checked10648 : bytes10648=statementBytes 10766 (op10648.map lower) ∧ bytes10648.length=60 := by core033_kernel_decide
def op10649 : List WordIR.Op := [.band 10766 883]
def bytes10649 : Bytes := ("    let r00002a0f: u32 = r00002a0e & r00000373;\n" : String).toByteArray.data.toList
theorem checked10649 : bytes10649=statementBytes 10767 (op10649.map lower) ∧ bytes10649.length=48 := by core033_kernel_decide
def op10650 : List WordIR.Op := [.bnot 10609]
def bytes10650 : Bytes := ("    let r00002a10: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10650 : bytes10650=statementBytes 10768 (op10650.map lower) ∧ bytes10650.length=37 := by core033_kernel_decide
def op10651 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10651 : Bytes := ("    let r00002a11: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10651 : bytes10651=statementBytes 10769 (op10651.map lower) ∧ bytes10651.length=41 := by core033_kernel_decide
def op10652 : List WordIR.Op := [.badd 10768 10769]
def bytes10652 : Bytes := ("    let r00002a12: u32 = r00002a10.wrapping_add(r00002a11);\n" : String).toByteArray.data.toList
theorem checked10652 : bytes10652=statementBytes 10770 (op10652.map lower) ∧ bytes10652.length=60 := by core033_kernel_decide
def op10653 : List WordIR.Op := [.bnot 10770]
def bytes10653 : Bytes := ("    let r00002a13: u32 = !r00002a12;\n" : String).toByteArray.data.toList
theorem checked10653 : bytes10653=statementBytes 10771 (op10653.map lower) ∧ bytes10653.length=37 := by core033_kernel_decide
def op10654 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10654 : Bytes := ("    let r00002a14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10654 : bytes10654=statementBytes 10772 (op10654.map lower) ∧ bytes10654.length=41 := by core033_kernel_decide
def op10655 : List WordIR.Op := [.band 10771 10772]
def bytes10655 : Bytes := ("    let r00002a15: u32 = r00002a13 & r00002a14;\n" : String).toByteArray.data.toList
theorem checked10655 : bytes10655=statementBytes 10773 (op10655.map lower) ∧ bytes10655.length=48 := by core033_kernel_decide
def op10656 : List WordIR.Op := [.bxor 10767 10773]
def bytes10656 : Bytes := ("    let r00002a16: u32 = r00002a0f ^ r00002a15;\n" : String).toByteArray.data.toList
theorem checked10656 : bytes10656=statementBytes 10774 (op10656.map lower) ∧ bytes10656.length=48 := by core033_kernel_decide
def op10657 : List WordIR.Op := [.bnot 10609]
def bytes10657 : Bytes := ("    let r00002a17: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10657 : bytes10657=statementBytes 10775 (op10657.map lower) ∧ bytes10657.length=37 := by core033_kernel_decide
def op10658 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10658 : Bytes := ("    let r00002a18: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10658 : bytes10658=statementBytes 10776 (op10658.map lower) ∧ bytes10658.length=41 := by core033_kernel_decide
def op10659 : List WordIR.Op := [.badd 10775 10776]
def bytes10659 : Bytes := ("    let r00002a19: u32 = r00002a17.wrapping_add(r00002a18);\n" : String).toByteArray.data.toList
theorem checked10659 : bytes10659=statementBytes 10777 (op10659.map lower) ∧ bytes10659.length=60 := by core033_kernel_decide
def op10660 : List WordIR.Op := [.band 10777 903]
def bytes10660 : Bytes := ("    let r00002a1a: u32 = r00002a19 & r00000387;\n" : String).toByteArray.data.toList
theorem checked10660 : bytes10660=statementBytes 10778 (op10660.map lower) ∧ bytes10660.length=48 := by core033_kernel_decide
def op10661 : List WordIR.Op := [.bnot 10609]
def bytes10661 : Bytes := ("    let r00002a1b: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10661 : bytes10661=statementBytes 10779 (op10661.map lower) ∧ bytes10661.length=37 := by core033_kernel_decide
def op10662 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10662 : Bytes := ("    let r00002a1c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10662 : bytes10662=statementBytes 10780 (op10662.map lower) ∧ bytes10662.length=41 := by core033_kernel_decide
def op10663 : List WordIR.Op := [.badd 10779 10780]
def bytes10663 : Bytes := ("    let r00002a1d: u32 = r00002a1b.wrapping_add(r00002a1c);\n" : String).toByteArray.data.toList
theorem checked10663 : bytes10663=statementBytes 10781 (op10663.map lower) ∧ bytes10663.length=60 := by core033_kernel_decide
def op10664 : List WordIR.Op := [.bnot 10781]
def bytes10664 : Bytes := ("    let r00002a1e: u32 = !r00002a1d;\n" : String).toByteArray.data.toList
theorem checked10664 : bytes10664=statementBytes 10782 (op10664.map lower) ∧ bytes10664.length=37 := by core033_kernel_decide
def op10665 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10665 : Bytes := ("    let r00002a1f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10665 : bytes10665=statementBytes 10783 (op10665.map lower) ∧ bytes10665.length=41 := by core033_kernel_decide
def op10666 : List WordIR.Op := [.band 10782 10783]
def bytes10666 : Bytes := ("    let r00002a20: u32 = r00002a1e & r00002a1f;\n" : String).toByteArray.data.toList
theorem checked10666 : bytes10666=statementBytes 10784 (op10666.map lower) ∧ bytes10666.length=48 := by core033_kernel_decide
def op10667 : List WordIR.Op := [.bxor 10778 10784]
def bytes10667 : Bytes := ("    let r00002a21: u32 = r00002a1a ^ r00002a20;\n" : String).toByteArray.data.toList
theorem checked10667 : bytes10667=statementBytes 10785 (op10667.map lower) ∧ bytes10667.length=48 := by core033_kernel_decide
def op10668 : List WordIR.Op := [.bnot 10609]
def bytes10668 : Bytes := ("    let r00002a22: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10668 : bytes10668=statementBytes 10786 (op10668.map lower) ∧ bytes10668.length=37 := by core033_kernel_decide
def op10669 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10669 : Bytes := ("    let r00002a23: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10669 : bytes10669=statementBytes 10787 (op10669.map lower) ∧ bytes10669.length=41 := by core033_kernel_decide
def op10670 : List WordIR.Op := [.badd 10786 10787]
def bytes10670 : Bytes := ("    let r00002a24: u32 = r00002a22.wrapping_add(r00002a23);\n" : String).toByteArray.data.toList
theorem checked10670 : bytes10670=statementBytes 10788 (op10670.map lower) ∧ bytes10670.length=60 := by core033_kernel_decide
def op10671 : List WordIR.Op := [.band 10788 923]
def bytes10671 : Bytes := ("    let r00002a25: u32 = r00002a24 & r0000039b;\n" : String).toByteArray.data.toList
theorem checked10671 : bytes10671=statementBytes 10789 (op10671.map lower) ∧ bytes10671.length=48 := by core033_kernel_decide
def op10672 : List WordIR.Op := [.bnot 10609]
def bytes10672 : Bytes := ("    let r00002a26: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10672 : bytes10672=statementBytes 10790 (op10672.map lower) ∧ bytes10672.length=37 := by core033_kernel_decide
def op10673 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10673 : Bytes := ("    let r00002a27: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10673 : bytes10673=statementBytes 10791 (op10673.map lower) ∧ bytes10673.length=41 := by core033_kernel_decide
def op10674 : List WordIR.Op := [.badd 10790 10791]
def bytes10674 : Bytes := ("    let r00002a28: u32 = r00002a26.wrapping_add(r00002a27);\n" : String).toByteArray.data.toList
theorem checked10674 : bytes10674=statementBytes 10792 (op10674.map lower) ∧ bytes10674.length=60 := by core033_kernel_decide
def op10675 : List WordIR.Op := [.bnot 10792]
def bytes10675 : Bytes := ("    let r00002a29: u32 = !r00002a28;\n" : String).toByteArray.data.toList
theorem checked10675 : bytes10675=statementBytes 10793 (op10675.map lower) ∧ bytes10675.length=37 := by core033_kernel_decide
def op10676 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10676 : Bytes := ("    let r00002a2a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10676 : bytes10676=statementBytes 10794 (op10676.map lower) ∧ bytes10676.length=41 := by core033_kernel_decide
def op10677 : List WordIR.Op := [.band 10793 10794]
def bytes10677 : Bytes := ("    let r00002a2b: u32 = r00002a29 & r00002a2a;\n" : String).toByteArray.data.toList
theorem checked10677 : bytes10677=statementBytes 10795 (op10677.map lower) ∧ bytes10677.length=48 := by core033_kernel_decide
def op10678 : List WordIR.Op := [.bxor 10789 10795]
def bytes10678 : Bytes := ("    let r00002a2c: u32 = r00002a25 ^ r00002a2b;\n" : String).toByteArray.data.toList
theorem checked10678 : bytes10678=statementBytes 10796 (op10678.map lower) ∧ bytes10678.length=48 := by core033_kernel_decide
def op10679 : List WordIR.Op := [.bnot 10609]
def bytes10679 : Bytes := ("    let r00002a2d: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10679 : bytes10679=statementBytes 10797 (op10679.map lower) ∧ bytes10679.length=37 := by core033_kernel_decide
def op10680 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10680 : Bytes := ("    let r00002a2e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10680 : bytes10680=statementBytes 10798 (op10680.map lower) ∧ bytes10680.length=41 := by core033_kernel_decide
def op10681 : List WordIR.Op := [.badd 10797 10798]
def bytes10681 : Bytes := ("    let r00002a2f: u32 = r00002a2d.wrapping_add(r00002a2e);\n" : String).toByteArray.data.toList
theorem checked10681 : bytes10681=statementBytes 10799 (op10681.map lower) ∧ bytes10681.length=60 := by core033_kernel_decide
def op10682 : List WordIR.Op := [.band 10799 943]
def bytes10682 : Bytes := ("    let r00002a30: u32 = r00002a2f & r000003af;\n" : String).toByteArray.data.toList
theorem checked10682 : bytes10682=statementBytes 10800 (op10682.map lower) ∧ bytes10682.length=48 := by core033_kernel_decide
def op10683 : List WordIR.Op := [.bnot 10609]
def bytes10683 : Bytes := ("    let r00002a31: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10683 : bytes10683=statementBytes 10801 (op10683.map lower) ∧ bytes10683.length=37 := by core033_kernel_decide
def op10684 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10684 : Bytes := ("    let r00002a32: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10684 : bytes10684=statementBytes 10802 (op10684.map lower) ∧ bytes10684.length=41 := by core033_kernel_decide
def op10685 : List WordIR.Op := [.badd 10801 10802]
def bytes10685 : Bytes := ("    let r00002a33: u32 = r00002a31.wrapping_add(r00002a32);\n" : String).toByteArray.data.toList
theorem checked10685 : bytes10685=statementBytes 10803 (op10685.map lower) ∧ bytes10685.length=60 := by core033_kernel_decide
def op10686 : List WordIR.Op := [.bnot 10803]
def bytes10686 : Bytes := ("    let r00002a34: u32 = !r00002a33;\n" : String).toByteArray.data.toList
theorem checked10686 : bytes10686=statementBytes 10804 (op10686.map lower) ∧ bytes10686.length=37 := by core033_kernel_decide
def op10687 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10687 : Bytes := ("    let r00002a35: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10687 : bytes10687=statementBytes 10805 (op10687.map lower) ∧ bytes10687.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10624,op10625,op10626,op10627,op10628,op10629,op10630,op10631,op10632,op10633,op10634,op10635,op10636,op10637,op10638,op10639,op10640,op10641,op10642,op10643,op10644,op10645,op10646,op10647,op10648,op10649,op10650,op10651,op10652,op10653,op10654,op10655,op10656,op10657,op10658,op10659,op10660,op10661,op10662,op10663,op10664,op10665,op10666,op10667,op10668,op10669,op10670,op10671,op10672,op10673,op10674,op10675,op10676,op10677,op10678,op10679,op10680,op10681,op10682,op10683,op10684,op10685,op10686,op10687]
def chunks : List Bytes := [bytes10624,bytes10625,bytes10626,bytes10627,bytes10628,bytes10629,bytes10630,bytes10631,bytes10632,bytes10633,bytes10634,bytes10635,bytes10636,bytes10637,bytes10638,bytes10639,bytes10640,bytes10641,bytes10642,bytes10643,bytes10644,bytes10645,bytes10646,bytes10647,bytes10648,bytes10649,bytes10650,bytes10651,bytes10652,bytes10653,bytes10654,bytes10655,bytes10656,bytes10657,bytes10658,bytes10659,bytes10660,bytes10661,bytes10662,bytes10663,bytes10664,bytes10665,bytes10666,bytes10667,bytes10668,bytes10669,bytes10670,bytes10671,bytes10672,bytes10673,bytes10674,bytes10675,bytes10676,bytes10677,bytes10678,bytes10679,bytes10680,bytes10681,bytes10682,bytes10683,bytes10684,bytes10685,bytes10686,bytes10687]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10742 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10624.1 (.cons _ _ _ _ _ checked10625.1 (.cons _ _ _ _ _ checked10626.1 (.cons _ _ _ _ _ checked10627.1 (.cons _ _ _ _ _ checked10628.1 (.cons _ _ _ _ _ checked10629.1 (.cons _ _ _ _ _ checked10630.1 (.cons _ _ _ _ _ checked10631.1 (.cons _ _ _ _ _ checked10632.1 (.cons _ _ _ _ _ checked10633.1 (.cons _ _ _ _ _ checked10634.1 (.cons _ _ _ _ _ checked10635.1 (.cons _ _ _ _ _ checked10636.1 (.cons _ _ _ _ _ checked10637.1 (.cons _ _ _ _ _ checked10638.1 (.cons _ _ _ _ _ checked10639.1 (.cons _ _ _ _ _ checked10640.1 (.cons _ _ _ _ _ checked10641.1 (.cons _ _ _ _ _ checked10642.1 (.cons _ _ _ _ _ checked10643.1 (.cons _ _ _ _ _ checked10644.1 (.cons _ _ _ _ _ checked10645.1 (.cons _ _ _ _ _ checked10646.1 (.cons _ _ _ _ _ checked10647.1 (.cons _ _ _ _ _ checked10648.1 (.cons _ _ _ _ _ checked10649.1 (.cons _ _ _ _ _ checked10650.1 (.cons _ _ _ _ _ checked10651.1 (.cons _ _ _ _ _ checked10652.1 (.cons _ _ _ _ _ checked10653.1 (.cons _ _ _ _ _ checked10654.1 (.cons _ _ _ _ _ checked10655.1 (.cons _ _ _ _ _ checked10656.1 (.cons _ _ _ _ _ checked10657.1 (.cons _ _ _ _ _ checked10658.1 (.cons _ _ _ _ _ checked10659.1 (.cons _ _ _ _ _ checked10660.1 (.cons _ _ _ _ _ checked10661.1 (.cons _ _ _ _ _ checked10662.1 (.cons _ _ _ _ _ checked10663.1 (.cons _ _ _ _ _ checked10664.1 (.cons _ _ _ _ _ checked10665.1 (.cons _ _ _ _ _ checked10666.1 (.cons _ _ _ _ _ checked10667.1 (.cons _ _ _ _ _ checked10668.1 (.cons _ _ _ _ _ checked10669.1 (.cons _ _ _ _ _ checked10670.1 (.cons _ _ _ _ _ checked10671.1 (.cons _ _ _ _ _ checked10672.1 (.cons _ _ _ _ _ checked10673.1 (.cons _ _ _ _ _ checked10674.1 (.cons _ _ _ _ _ checked10675.1 (.cons _ _ _ _ _ checked10676.1 (.cons _ _ _ _ _ checked10677.1 (.cons _ _ _ _ _ checked10678.1 (.cons _ _ _ _ _ checked10679.1 (.cons _ _ _ _ _ checked10680.1 (.cons _ _ _ _ _ checked10681.1 (.cons _ _ _ _ _ checked10682.1 (.cons _ _ _ _ _ checked10683.1 (.cons _ _ _ _ _ checked10684.1 (.cons _ _ _ _ _ checked10685.1 (.cons _ _ _ _ _ checked10686.1 (.cons _ _ _ _ _ checked10687.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10742 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2892 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10624.2,checked10625.2,checked10626.2,checked10627.2,checked10628.2,checked10629.2,checked10630.2,checked10631.2,checked10632.2,checked10633.2,checked10634.2,checked10635.2,checked10636.2,checked10637.2,checked10638.2,checked10639.2,checked10640.2,checked10641.2,checked10642.2,checked10643.2,checked10644.2,checked10645.2,checked10646.2,checked10647.2,checked10648.2,checked10649.2,checked10650.2,checked10651.2,checked10652.2,checked10653.2,checked10654.2,checked10655.2,checked10656.2,checked10657.2,checked10658.2,checked10659.2,checked10660.2,checked10661.2,checked10662.2,checked10663.2,checked10664.2,checked10665.2,checked10666.2,checked10667.2,checked10668.2,checked10669.2,checked10670.2,checked10671.2,checked10672.2,checked10673.2,checked10674.2,checked10675.2,checked10676.2,checked10677.2,checked10678.2,checked10679.2,checked10680.2,checked10681.2,checked10682.2,checked10683.2,checked10684.2,checked10685.2,checked10686.2,checked10687.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup166
