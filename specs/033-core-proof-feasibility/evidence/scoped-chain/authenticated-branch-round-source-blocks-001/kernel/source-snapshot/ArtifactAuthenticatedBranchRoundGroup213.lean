import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup213
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13632 : List WordIR.Op := [.band 13749 35]
def bytes13632 : Bytes := ("    let r000035b6: u32 = r000035b5 & r00000023;\n" : String).toByteArray.data.toList
theorem checked13632 : bytes13632=statementBytes 13750 (op13632.map lower) ∧ bytes13632.length=48 := by core033_kernel_decide
def op13633 : List WordIR.Op := [.bxor 13745 13750]
def bytes13633 : Bytes := ("    let r000035b7: u32 = r000035b1 ^ r000035b6;\n" : String).toByteArray.data.toList
theorem checked13633 : bytes13633=statementBytes 13751 (op13633.map lower) ∧ bytes13633.length=48 := by core033_kernel_decide
def op13634 : List WordIR.Op := [.bnot 398]
def bytes13634 : Bytes := ("    let r000035b8: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13634 : bytes13634=statementBytes 13752 (op13634.map lower) ∧ bytes13634.length=37 := by core033_kernel_decide
def op13635 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13635 : Bytes := ("    let r000035b9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13635 : bytes13635=statementBytes 13753 (op13635.map lower) ∧ bytes13635.length=41 := by core033_kernel_decide
def op13636 : List WordIR.Op := [.badd 13752 13753]
def bytes13636 : Bytes := ("    let r000035ba: u32 = r000035b8.wrapping_add(r000035b9);\n" : String).toByteArray.data.toList
theorem checked13636 : bytes13636=statementBytes 13754 (op13636.map lower) ∧ bytes13636.length=60 := by core033_kernel_decide
def op13637 : List WordIR.Op := [.band 13754 12104]
def bytes13637 : Bytes := ("    let r000035bb: u32 = r000035ba & r00002f48;\n" : String).toByteArray.data.toList
theorem checked13637 : bytes13637=statementBytes 13755 (op13637.map lower) ∧ bytes13637.length=48 := by core033_kernel_decide
def op13638 : List WordIR.Op := [.bnot 398]
def bytes13638 : Bytes := ("    let r000035bc: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13638 : bytes13638=statementBytes 13756 (op13638.map lower) ∧ bytes13638.length=37 := by core033_kernel_decide
def op13639 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13639 : Bytes := ("    let r000035bd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13639 : bytes13639=statementBytes 13757 (op13639.map lower) ∧ bytes13639.length=41 := by core033_kernel_decide
def op13640 : List WordIR.Op := [.badd 13756 13757]
def bytes13640 : Bytes := ("    let r000035be: u32 = r000035bc.wrapping_add(r000035bd);\n" : String).toByteArray.data.toList
theorem checked13640 : bytes13640=statementBytes 13758 (op13640.map lower) ∧ bytes13640.length=60 := by core033_kernel_decide
def op13641 : List WordIR.Op := [.bnot 13758]
def bytes13641 : Bytes := ("    let r000035bf: u32 = !r000035be;\n" : String).toByteArray.data.toList
theorem checked13641 : bytes13641=statementBytes 13759 (op13641.map lower) ∧ bytes13641.length=37 := by core033_kernel_decide
def op13642 : List WordIR.Op := [.band 13759 36]
def bytes13642 : Bytes := ("    let r000035c0: u32 = r000035bf & r00000024;\n" : String).toByteArray.data.toList
theorem checked13642 : bytes13642=statementBytes 13760 (op13642.map lower) ∧ bytes13642.length=48 := by core033_kernel_decide
def op13643 : List WordIR.Op := [.bxor 13755 13760]
def bytes13643 : Bytes := ("    let r000035c1: u32 = r000035bb ^ r000035c0;\n" : String).toByteArray.data.toList
theorem checked13643 : bytes13643=statementBytes 13761 (op13643.map lower) ∧ bytes13643.length=48 := by core033_kernel_decide
def op13644 : List WordIR.Op := [.bnot 398]
def bytes13644 : Bytes := ("    let r000035c2: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13644 : bytes13644=statementBytes 13762 (op13644.map lower) ∧ bytes13644.length=37 := by core033_kernel_decide
def op13645 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13645 : Bytes := ("    let r000035c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13645 : bytes13645=statementBytes 13763 (op13645.map lower) ∧ bytes13645.length=41 := by core033_kernel_decide
def op13646 : List WordIR.Op := [.badd 13762 13763]
def bytes13646 : Bytes := ("    let r000035c4: u32 = r000035c2.wrapping_add(r000035c3);\n" : String).toByteArray.data.toList
theorem checked13646 : bytes13646=statementBytes 13764 (op13646.map lower) ∧ bytes13646.length=60 := by core033_kernel_decide
def op13647 : List WordIR.Op := [.band 13764 12156]
def bytes13647 : Bytes := ("    let r000035c5: u32 = r000035c4 & r00002f7c;\n" : String).toByteArray.data.toList
theorem checked13647 : bytes13647=statementBytes 13765 (op13647.map lower) ∧ bytes13647.length=48 := by core033_kernel_decide
def op13648 : List WordIR.Op := [.bnot 398]
def bytes13648 : Bytes := ("    let r000035c6: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13648 : bytes13648=statementBytes 13766 (op13648.map lower) ∧ bytes13648.length=37 := by core033_kernel_decide
def op13649 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13649 : Bytes := ("    let r000035c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13649 : bytes13649=statementBytes 13767 (op13649.map lower) ∧ bytes13649.length=41 := by core033_kernel_decide
def op13650 : List WordIR.Op := [.badd 13766 13767]
def bytes13650 : Bytes := ("    let r000035c8: u32 = r000035c6.wrapping_add(r000035c7);\n" : String).toByteArray.data.toList
theorem checked13650 : bytes13650=statementBytes 13768 (op13650.map lower) ∧ bytes13650.length=60 := by core033_kernel_decide
def op13651 : List WordIR.Op := [.bnot 13768]
def bytes13651 : Bytes := ("    let r000035c9: u32 = !r000035c8;\n" : String).toByteArray.data.toList
theorem checked13651 : bytes13651=statementBytes 13769 (op13651.map lower) ∧ bytes13651.length=37 := by core033_kernel_decide
def op13652 : List WordIR.Op := [.band 13769 37]
def bytes13652 : Bytes := ("    let r000035ca: u32 = r000035c9 & r00000025;\n" : String).toByteArray.data.toList
theorem checked13652 : bytes13652=statementBytes 13770 (op13652.map lower) ∧ bytes13652.length=48 := by core033_kernel_decide
def op13653 : List WordIR.Op := [.bxor 13765 13770]
def bytes13653 : Bytes := ("    let r000035cb: u32 = r000035c5 ^ r000035ca;\n" : String).toByteArray.data.toList
theorem checked13653 : bytes13653=statementBytes 13771 (op13653.map lower) ∧ bytes13653.length=48 := by core033_kernel_decide
def op13654 : List WordIR.Op := [.bnot 398]
def bytes13654 : Bytes := ("    let r000035cc: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13654 : bytes13654=statementBytes 13772 (op13654.map lower) ∧ bytes13654.length=37 := by core033_kernel_decide
def op13655 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13655 : Bytes := ("    let r000035cd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13655 : bytes13655=statementBytes 13773 (op13655.map lower) ∧ bytes13655.length=41 := by core033_kernel_decide
def op13656 : List WordIR.Op := [.badd 13772 13773]
def bytes13656 : Bytes := ("    let r000035ce: u32 = r000035cc.wrapping_add(r000035cd);\n" : String).toByteArray.data.toList
theorem checked13656 : bytes13656=statementBytes 13774 (op13656.map lower) ∧ bytes13656.length=60 := by core033_kernel_decide
def op13657 : List WordIR.Op := [.band 13774 12208]
def bytes13657 : Bytes := ("    let r000035cf: u32 = r000035ce & r00002fb0;\n" : String).toByteArray.data.toList
theorem checked13657 : bytes13657=statementBytes 13775 (op13657.map lower) ∧ bytes13657.length=48 := by core033_kernel_decide
def op13658 : List WordIR.Op := [.bnot 398]
def bytes13658 : Bytes := ("    let r000035d0: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13658 : bytes13658=statementBytes 13776 (op13658.map lower) ∧ bytes13658.length=37 := by core033_kernel_decide
def op13659 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13659 : Bytes := ("    let r000035d1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13659 : bytes13659=statementBytes 13777 (op13659.map lower) ∧ bytes13659.length=41 := by core033_kernel_decide
def op13660 : List WordIR.Op := [.badd 13776 13777]
def bytes13660 : Bytes := ("    let r000035d2: u32 = r000035d0.wrapping_add(r000035d1);\n" : String).toByteArray.data.toList
theorem checked13660 : bytes13660=statementBytes 13778 (op13660.map lower) ∧ bytes13660.length=60 := by core033_kernel_decide
def op13661 : List WordIR.Op := [.bnot 13778]
def bytes13661 : Bytes := ("    let r000035d3: u32 = !r000035d2;\n" : String).toByteArray.data.toList
theorem checked13661 : bytes13661=statementBytes 13779 (op13661.map lower) ∧ bytes13661.length=37 := by core033_kernel_decide
def op13662 : List WordIR.Op := [.band 13779 38]
def bytes13662 : Bytes := ("    let r000035d4: u32 = r000035d3 & r00000026;\n" : String).toByteArray.data.toList
theorem checked13662 : bytes13662=statementBytes 13780 (op13662.map lower) ∧ bytes13662.length=48 := by core033_kernel_decide
def op13663 : List WordIR.Op := [.bxor 13775 13780]
def bytes13663 : Bytes := ("    let r000035d5: u32 = r000035cf ^ r000035d4;\n" : String).toByteArray.data.toList
theorem checked13663 : bytes13663=statementBytes 13781 (op13663.map lower) ∧ bytes13663.length=48 := by core033_kernel_decide
def op13664 : List WordIR.Op := [.bnot 398]
def bytes13664 : Bytes := ("    let r000035d6: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13664 : bytes13664=statementBytes 13782 (op13664.map lower) ∧ bytes13664.length=37 := by core033_kernel_decide
def op13665 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13665 : Bytes := ("    let r000035d7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13665 : bytes13665=statementBytes 13783 (op13665.map lower) ∧ bytes13665.length=41 := by core033_kernel_decide
def op13666 : List WordIR.Op := [.badd 13782 13783]
def bytes13666 : Bytes := ("    let r000035d8: u32 = r000035d6.wrapping_add(r000035d7);\n" : String).toByteArray.data.toList
theorem checked13666 : bytes13666=statementBytes 13784 (op13666.map lower) ∧ bytes13666.length=60 := by core033_kernel_decide
def op13667 : List WordIR.Op := [.band 13784 12260]
def bytes13667 : Bytes := ("    let r000035d9: u32 = r000035d8 & r00002fe4;\n" : String).toByteArray.data.toList
theorem checked13667 : bytes13667=statementBytes 13785 (op13667.map lower) ∧ bytes13667.length=48 := by core033_kernel_decide
def op13668 : List WordIR.Op := [.bnot 398]
def bytes13668 : Bytes := ("    let r000035da: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13668 : bytes13668=statementBytes 13786 (op13668.map lower) ∧ bytes13668.length=37 := by core033_kernel_decide
def op13669 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13669 : Bytes := ("    let r000035db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13669 : bytes13669=statementBytes 13787 (op13669.map lower) ∧ bytes13669.length=41 := by core033_kernel_decide
def op13670 : List WordIR.Op := [.badd 13786 13787]
def bytes13670 : Bytes := ("    let r000035dc: u32 = r000035da.wrapping_add(r000035db);\n" : String).toByteArray.data.toList
theorem checked13670 : bytes13670=statementBytes 13788 (op13670.map lower) ∧ bytes13670.length=60 := by core033_kernel_decide
def op13671 : List WordIR.Op := [.bnot 13788]
def bytes13671 : Bytes := ("    let r000035dd: u32 = !r000035dc;\n" : String).toByteArray.data.toList
theorem checked13671 : bytes13671=statementBytes 13789 (op13671.map lower) ∧ bytes13671.length=37 := by core033_kernel_decide
def op13672 : List WordIR.Op := [.band 13789 39]
def bytes13672 : Bytes := ("    let r000035de: u32 = r000035dd & r00000027;\n" : String).toByteArray.data.toList
theorem checked13672 : bytes13672=statementBytes 13790 (op13672.map lower) ∧ bytes13672.length=48 := by core033_kernel_decide
def op13673 : List WordIR.Op := [.bxor 13785 13790]
def bytes13673 : Bytes := ("    let r000035df: u32 = r000035d9 ^ r000035de;\n" : String).toByteArray.data.toList
theorem checked13673 : bytes13673=statementBytes 13791 (op13673.map lower) ∧ bytes13673.length=48 := by core033_kernel_decide
def op13674 : List WordIR.Op := [.bnot 398]
def bytes13674 : Bytes := ("    let r000035e0: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13674 : bytes13674=statementBytes 13792 (op13674.map lower) ∧ bytes13674.length=37 := by core033_kernel_decide
def op13675 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13675 : Bytes := ("    let r000035e1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13675 : bytes13675=statementBytes 13793 (op13675.map lower) ∧ bytes13675.length=41 := by core033_kernel_decide
def op13676 : List WordIR.Op := [.badd 13792 13793]
def bytes13676 : Bytes := ("    let r000035e2: u32 = r000035e0.wrapping_add(r000035e1);\n" : String).toByteArray.data.toList
theorem checked13676 : bytes13676=statementBytes 13794 (op13676.map lower) ∧ bytes13676.length=60 := by core033_kernel_decide
def op13677 : List WordIR.Op := [.band 13794 12312]
def bytes13677 : Bytes := ("    let r000035e3: u32 = r000035e2 & r00003018;\n" : String).toByteArray.data.toList
theorem checked13677 : bytes13677=statementBytes 13795 (op13677.map lower) ∧ bytes13677.length=48 := by core033_kernel_decide
def op13678 : List WordIR.Op := [.bnot 398]
def bytes13678 : Bytes := ("    let r000035e4: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13678 : bytes13678=statementBytes 13796 (op13678.map lower) ∧ bytes13678.length=37 := by core033_kernel_decide
def op13679 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13679 : Bytes := ("    let r000035e5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13679 : bytes13679=statementBytes 13797 (op13679.map lower) ∧ bytes13679.length=41 := by core033_kernel_decide
def op13680 : List WordIR.Op := [.badd 13796 13797]
def bytes13680 : Bytes := ("    let r000035e6: u32 = r000035e4.wrapping_add(r000035e5);\n" : String).toByteArray.data.toList
theorem checked13680 : bytes13680=statementBytes 13798 (op13680.map lower) ∧ bytes13680.length=60 := by core033_kernel_decide
def op13681 : List WordIR.Op := [.bnot 13798]
def bytes13681 : Bytes := ("    let r000035e7: u32 = !r000035e6;\n" : String).toByteArray.data.toList
theorem checked13681 : bytes13681=statementBytes 13799 (op13681.map lower) ∧ bytes13681.length=37 := by core033_kernel_decide
def op13682 : List WordIR.Op := [.band 13799 40]
def bytes13682 : Bytes := ("    let r000035e8: u32 = r000035e7 & r00000028;\n" : String).toByteArray.data.toList
theorem checked13682 : bytes13682=statementBytes 13800 (op13682.map lower) ∧ bytes13682.length=48 := by core033_kernel_decide
def op13683 : List WordIR.Op := [.bxor 13795 13800]
def bytes13683 : Bytes := ("    let r000035e9: u32 = r000035e3 ^ r000035e8;\n" : String).toByteArray.data.toList
theorem checked13683 : bytes13683=statementBytes 13801 (op13683.map lower) ∧ bytes13683.length=48 := by core033_kernel_decide
def op13684 : List WordIR.Op := [.bnot 398]
def bytes13684 : Bytes := ("    let r000035ea: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13684 : bytes13684=statementBytes 13802 (op13684.map lower) ∧ bytes13684.length=37 := by core033_kernel_decide
def op13685 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13685 : Bytes := ("    let r000035eb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13685 : bytes13685=statementBytes 13803 (op13685.map lower) ∧ bytes13685.length=41 := by core033_kernel_decide
def op13686 : List WordIR.Op := [.badd 13802 13803]
def bytes13686 : Bytes := ("    let r000035ec: u32 = r000035ea.wrapping_add(r000035eb);\n" : String).toByteArray.data.toList
theorem checked13686 : bytes13686=statementBytes 13804 (op13686.map lower) ∧ bytes13686.length=60 := by core033_kernel_decide
def op13687 : List WordIR.Op := [.band 13804 12364]
def bytes13687 : Bytes := ("    let r000035ed: u32 = r000035ec & r0000304c;\n" : String).toByteArray.data.toList
theorem checked13687 : bytes13687=statementBytes 13805 (op13687.map lower) ∧ bytes13687.length=48 := by core033_kernel_decide
def op13688 : List WordIR.Op := [.bnot 398]
def bytes13688 : Bytes := ("    let r000035ee: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13688 : bytes13688=statementBytes 13806 (op13688.map lower) ∧ bytes13688.length=37 := by core033_kernel_decide
def op13689 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13689 : Bytes := ("    let r000035ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13689 : bytes13689=statementBytes 13807 (op13689.map lower) ∧ bytes13689.length=41 := by core033_kernel_decide
def op13690 : List WordIR.Op := [.badd 13806 13807]
def bytes13690 : Bytes := ("    let r000035f0: u32 = r000035ee.wrapping_add(r000035ef);\n" : String).toByteArray.data.toList
theorem checked13690 : bytes13690=statementBytes 13808 (op13690.map lower) ∧ bytes13690.length=60 := by core033_kernel_decide
def op13691 : List WordIR.Op := [.bnot 13808]
def bytes13691 : Bytes := ("    let r000035f1: u32 = !r000035f0;\n" : String).toByteArray.data.toList
theorem checked13691 : bytes13691=statementBytes 13809 (op13691.map lower) ∧ bytes13691.length=37 := by core033_kernel_decide
def op13692 : List WordIR.Op := [.band 13809 41]
def bytes13692 : Bytes := ("    let r000035f2: u32 = r000035f1 & r00000029;\n" : String).toByteArray.data.toList
theorem checked13692 : bytes13692=statementBytes 13810 (op13692.map lower) ∧ bytes13692.length=48 := by core033_kernel_decide
def op13693 : List WordIR.Op := [.bxor 13805 13810]
def bytes13693 : Bytes := ("    let r000035f3: u32 = r000035ed ^ r000035f2;\n" : String).toByteArray.data.toList
theorem checked13693 : bytes13693=statementBytes 13811 (op13693.map lower) ∧ bytes13693.length=48 := by core033_kernel_decide
def op13694 : List WordIR.Op := [.bnot 398]
def bytes13694 : Bytes := ("    let r000035f4: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13694 : bytes13694=statementBytes 13812 (op13694.map lower) ∧ bytes13694.length=37 := by core033_kernel_decide
def op13695 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13695 : Bytes := ("    let r000035f5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13695 : bytes13695=statementBytes 13813 (op13695.map lower) ∧ bytes13695.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13632,op13633,op13634,op13635,op13636,op13637,op13638,op13639,op13640,op13641,op13642,op13643,op13644,op13645,op13646,op13647,op13648,op13649,op13650,op13651,op13652,op13653,op13654,op13655,op13656,op13657,op13658,op13659,op13660,op13661,op13662,op13663,op13664,op13665,op13666,op13667,op13668,op13669,op13670,op13671,op13672,op13673,op13674,op13675,op13676,op13677,op13678,op13679,op13680,op13681,op13682,op13683,op13684,op13685,op13686,op13687,op13688,op13689,op13690,op13691,op13692,op13693,op13694,op13695]
def chunks : List Bytes := [bytes13632,bytes13633,bytes13634,bytes13635,bytes13636,bytes13637,bytes13638,bytes13639,bytes13640,bytes13641,bytes13642,bytes13643,bytes13644,bytes13645,bytes13646,bytes13647,bytes13648,bytes13649,bytes13650,bytes13651,bytes13652,bytes13653,bytes13654,bytes13655,bytes13656,bytes13657,bytes13658,bytes13659,bytes13660,bytes13661,bytes13662,bytes13663,bytes13664,bytes13665,bytes13666,bytes13667,bytes13668,bytes13669,bytes13670,bytes13671,bytes13672,bytes13673,bytes13674,bytes13675,bytes13676,bytes13677,bytes13678,bytes13679,bytes13680,bytes13681,bytes13682,bytes13683,bytes13684,bytes13685,bytes13686,bytes13687,bytes13688,bytes13689,bytes13690,bytes13691,bytes13692,bytes13693,bytes13694,bytes13695]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13750 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13632.1 (.cons _ _ _ _ _ checked13633.1 (.cons _ _ _ _ _ checked13634.1 (.cons _ _ _ _ _ checked13635.1 (.cons _ _ _ _ _ checked13636.1 (.cons _ _ _ _ _ checked13637.1 (.cons _ _ _ _ _ checked13638.1 (.cons _ _ _ _ _ checked13639.1 (.cons _ _ _ _ _ checked13640.1 (.cons _ _ _ _ _ checked13641.1 (.cons _ _ _ _ _ checked13642.1 (.cons _ _ _ _ _ checked13643.1 (.cons _ _ _ _ _ checked13644.1 (.cons _ _ _ _ _ checked13645.1 (.cons _ _ _ _ _ checked13646.1 (.cons _ _ _ _ _ checked13647.1 (.cons _ _ _ _ _ checked13648.1 (.cons _ _ _ _ _ checked13649.1 (.cons _ _ _ _ _ checked13650.1 (.cons _ _ _ _ _ checked13651.1 (.cons _ _ _ _ _ checked13652.1 (.cons _ _ _ _ _ checked13653.1 (.cons _ _ _ _ _ checked13654.1 (.cons _ _ _ _ _ checked13655.1 (.cons _ _ _ _ _ checked13656.1 (.cons _ _ _ _ _ checked13657.1 (.cons _ _ _ _ _ checked13658.1 (.cons _ _ _ _ _ checked13659.1 (.cons _ _ _ _ _ checked13660.1 (.cons _ _ _ _ _ checked13661.1 (.cons _ _ _ _ _ checked13662.1 (.cons _ _ _ _ _ checked13663.1 (.cons _ _ _ _ _ checked13664.1 (.cons _ _ _ _ _ checked13665.1 (.cons _ _ _ _ _ checked13666.1 (.cons _ _ _ _ _ checked13667.1 (.cons _ _ _ _ _ checked13668.1 (.cons _ _ _ _ _ checked13669.1 (.cons _ _ _ _ _ checked13670.1 (.cons _ _ _ _ _ checked13671.1 (.cons _ _ _ _ _ checked13672.1 (.cons _ _ _ _ _ checked13673.1 (.cons _ _ _ _ _ checked13674.1 (.cons _ _ _ _ _ checked13675.1 (.cons _ _ _ _ _ checked13676.1 (.cons _ _ _ _ _ checked13677.1 (.cons _ _ _ _ _ checked13678.1 (.cons _ _ _ _ _ checked13679.1 (.cons _ _ _ _ _ checked13680.1 (.cons _ _ _ _ _ checked13681.1 (.cons _ _ _ _ _ checked13682.1 (.cons _ _ _ _ _ checked13683.1 (.cons _ _ _ _ _ checked13684.1 (.cons _ _ _ _ _ checked13685.1 (.cons _ _ _ _ _ checked13686.1 (.cons _ _ _ _ _ checked13687.1 (.cons _ _ _ _ _ checked13688.1 (.cons _ _ _ _ _ checked13689.1 (.cons _ _ _ _ _ checked13690.1 (.cons _ _ _ _ _ checked13691.1 (.cons _ _ _ _ _ checked13692.1 (.cons _ _ _ _ _ checked13693.1 (.cons _ _ _ _ _ checked13694.1 (.cons _ _ _ _ _ checked13695.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13750 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2916 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13632.2,checked13633.2,checked13634.2,checked13635.2,checked13636.2,checked13637.2,checked13638.2,checked13639.2,checked13640.2,checked13641.2,checked13642.2,checked13643.2,checked13644.2,checked13645.2,checked13646.2,checked13647.2,checked13648.2,checked13649.2,checked13650.2,checked13651.2,checked13652.2,checked13653.2,checked13654.2,checked13655.2,checked13656.2,checked13657.2,checked13658.2,checked13659.2,checked13660.2,checked13661.2,checked13662.2,checked13663.2,checked13664.2,checked13665.2,checked13666.2,checked13667.2,checked13668.2,checked13669.2,checked13670.2,checked13671.2,checked13672.2,checked13673.2,checked13674.2,checked13675.2,checked13676.2,checked13677.2,checked13678.2,checked13679.2,checked13680.2,checked13681.2,checked13682.2,checked13683.2,checked13684.2,checked13685.2,checked13686.2,checked13687.2,checked13688.2,checked13689.2,checked13690.2,checked13691.2,checked13692.2,checked13693.2,checked13694.2,checked13695.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup213
