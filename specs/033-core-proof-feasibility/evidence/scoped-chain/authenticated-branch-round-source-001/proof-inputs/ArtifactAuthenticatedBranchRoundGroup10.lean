import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup10
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op640 : List WordIR.Op := [.band 757 6]
def bytes640 : Bytes := ("    let r000002f6: u32 = r000002f5 & r00000006;\n" : String).toByteArray.data.toList
theorem checked640 : bytes640=statementBytes 758 (op640.map lower) ∧ bytes640.length=48 := by core033_kernel_decide
def op641 : List WordIR.Op := [.bxor 753 758]
def bytes641 : Bytes := ("    let r000002f7: u32 = r000002f1 ^ r000002f6;\n" : String).toByteArray.data.toList
theorem checked641 : bytes641=statementBytes 759 (op641.map lower) ∧ bytes641.length=48 := by core033_kernel_decide
def op642 : List WordIR.Op := [.bnot 182]
def bytes642 : Bytes := ("    let r000002f8: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked642 : bytes642=statementBytes 760 (op642.map lower) ∧ bytes642.length=37 := by core033_kernel_decide
def op643 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes643 : Bytes := ("    let r000002f9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked643 : bytes643=statementBytes 761 (op643.map lower) ∧ bytes643.length=41 := by core033_kernel_decide
def op644 : List WordIR.Op := [.badd 760 761]
def bytes644 : Bytes := ("    let r000002fa: u32 = r000002f8.wrapping_add(r000002f9);\n" : String).toByteArray.data.toList
theorem checked644 : bytes644=statementBytes 762 (op644.map lower) ∧ bytes644.length=60 := by core033_kernel_decide
def op645 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes645 : Bytes := ("    let r000002fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked645 : bytes645=statementBytes 763 (op645.map lower) ∧ bytes645.length=41 := by core033_kernel_decide
def op646 : List WordIR.Op := [.band 762 763]
def bytes646 : Bytes := ("    let r000002fc: u32 = r000002fa & r000002fb;\n" : String).toByteArray.data.toList
theorem checked646 : bytes646=statementBytes 764 (op646.map lower) ∧ bytes646.length=48 := by core033_kernel_decide
def op647 : List WordIR.Op := [.bnot 182]
def bytes647 : Bytes := ("    let r000002fd: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked647 : bytes647=statementBytes 765 (op647.map lower) ∧ bytes647.length=37 := by core033_kernel_decide
def op648 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes648 : Bytes := ("    let r000002fe: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked648 : bytes648=statementBytes 766 (op648.map lower) ∧ bytes648.length=41 := by core033_kernel_decide
def op649 : List WordIR.Op := [.badd 765 766]
def bytes649 : Bytes := ("    let r000002ff: u32 = r000002fd.wrapping_add(r000002fe);\n" : String).toByteArray.data.toList
theorem checked649 : bytes649=statementBytes 767 (op649.map lower) ∧ bytes649.length=60 := by core033_kernel_decide
def op650 : List WordIR.Op := [.bnot 767]
def bytes650 : Bytes := ("    let r00000300: u32 = !r000002ff;\n" : String).toByteArray.data.toList
theorem checked650 : bytes650=statementBytes 768 (op650.map lower) ∧ bytes650.length=37 := by core033_kernel_decide
def op651 : List WordIR.Op := [.band 768 7]
def bytes651 : Bytes := ("    let r00000301: u32 = r00000300 & r00000007;\n" : String).toByteArray.data.toList
theorem checked651 : bytes651=statementBytes 769 (op651.map lower) ∧ bytes651.length=48 := by core033_kernel_decide
def op652 : List WordIR.Op := [.bxor 764 769]
def bytes652 : Bytes := ("    let r00000302: u32 = r000002fc ^ r00000301;\n" : String).toByteArray.data.toList
theorem checked652 : bytes652=statementBytes 770 (op652.map lower) ∧ bytes652.length=48 := by core033_kernel_decide
def op653 : List WordIR.Op := [.bnot 182]
def bytes653 : Bytes := ("    let r00000303: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked653 : bytes653=statementBytes 771 (op653.map lower) ∧ bytes653.length=37 := by core033_kernel_decide
def op654 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes654 : Bytes := ("    let r00000304: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked654 : bytes654=statementBytes 772 (op654.map lower) ∧ bytes654.length=41 := by core033_kernel_decide
def op655 : List WordIR.Op := [.badd 771 772]
def bytes655 : Bytes := ("    let r00000305: u32 = r00000303.wrapping_add(r00000304);\n" : String).toByteArray.data.toList
theorem checked655 : bytes655=statementBytes 773 (op655.map lower) ∧ bytes655.length=60 := by core033_kernel_decide
def op656 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes656 : Bytes := ("    let r00000306: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked656 : bytes656=statementBytes 774 (op656.map lower) ∧ bytes656.length=41 := by core033_kernel_decide
def op657 : List WordIR.Op := [.band 773 774]
def bytes657 : Bytes := ("    let r00000307: u32 = r00000305 & r00000306;\n" : String).toByteArray.data.toList
theorem checked657 : bytes657=statementBytes 775 (op657.map lower) ∧ bytes657.length=48 := by core033_kernel_decide
def op658 : List WordIR.Op := [.bnot 182]
def bytes658 : Bytes := ("    let r00000308: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked658 : bytes658=statementBytes 776 (op658.map lower) ∧ bytes658.length=37 := by core033_kernel_decide
def op659 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes659 : Bytes := ("    let r00000309: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked659 : bytes659=statementBytes 777 (op659.map lower) ∧ bytes659.length=41 := by core033_kernel_decide
def op660 : List WordIR.Op := [.badd 776 777]
def bytes660 : Bytes := ("    let r0000030a: u32 = r00000308.wrapping_add(r00000309);\n" : String).toByteArray.data.toList
theorem checked660 : bytes660=statementBytes 778 (op660.map lower) ∧ bytes660.length=60 := by core033_kernel_decide
def op661 : List WordIR.Op := [.bnot 778]
def bytes661 : Bytes := ("    let r0000030b: u32 = !r0000030a;\n" : String).toByteArray.data.toList
theorem checked661 : bytes661=statementBytes 779 (op661.map lower) ∧ bytes661.length=37 := by core033_kernel_decide
def op662 : List WordIR.Op := [.band 779 8]
def bytes662 : Bytes := ("    let r0000030c: u32 = r0000030b & r00000008;\n" : String).toByteArray.data.toList
theorem checked662 : bytes662=statementBytes 780 (op662.map lower) ∧ bytes662.length=48 := by core033_kernel_decide
def op663 : List WordIR.Op := [.bxor 775 780]
def bytes663 : Bytes := ("    let r0000030d: u32 = r00000307 ^ r0000030c;\n" : String).toByteArray.data.toList
theorem checked663 : bytes663=statementBytes 781 (op663.map lower) ∧ bytes663.length=48 := by core033_kernel_decide
def op664 : List WordIR.Op := [.bnot 182]
def bytes664 : Bytes := ("    let r0000030e: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked664 : bytes664=statementBytes 782 (op664.map lower) ∧ bytes664.length=37 := by core033_kernel_decide
def op665 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes665 : Bytes := ("    let r0000030f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked665 : bytes665=statementBytes 783 (op665.map lower) ∧ bytes665.length=41 := by core033_kernel_decide
def op666 : List WordIR.Op := [.badd 782 783]
def bytes666 : Bytes := ("    let r00000310: u32 = r0000030e.wrapping_add(r0000030f);\n" : String).toByteArray.data.toList
theorem checked666 : bytes666=statementBytes 784 (op666.map lower) ∧ bytes666.length=60 := by core033_kernel_decide
def op667 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes667 : Bytes := ("    let r00000311: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked667 : bytes667=statementBytes 785 (op667.map lower) ∧ bytes667.length=41 := by core033_kernel_decide
def op668 : List WordIR.Op := [.band 784 785]
def bytes668 : Bytes := ("    let r00000312: u32 = r00000310 & r00000311;\n" : String).toByteArray.data.toList
theorem checked668 : bytes668=statementBytes 786 (op668.map lower) ∧ bytes668.length=48 := by core033_kernel_decide
def op669 : List WordIR.Op := [.bnot 182]
def bytes669 : Bytes := ("    let r00000313: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked669 : bytes669=statementBytes 787 (op669.map lower) ∧ bytes669.length=37 := by core033_kernel_decide
def op670 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes670 : Bytes := ("    let r00000314: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked670 : bytes670=statementBytes 788 (op670.map lower) ∧ bytes670.length=41 := by core033_kernel_decide
def op671 : List WordIR.Op := [.badd 787 788]
def bytes671 : Bytes := ("    let r00000315: u32 = r00000313.wrapping_add(r00000314);\n" : String).toByteArray.data.toList
theorem checked671 : bytes671=statementBytes 789 (op671.map lower) ∧ bytes671.length=60 := by core033_kernel_decide
def op672 : List WordIR.Op := [.bnot 789]
def bytes672 : Bytes := ("    let r00000316: u32 = !r00000315;\n" : String).toByteArray.data.toList
theorem checked672 : bytes672=statementBytes 790 (op672.map lower) ∧ bytes672.length=37 := by core033_kernel_decide
def op673 : List WordIR.Op := [.band 790 9]
def bytes673 : Bytes := ("    let r00000317: u32 = r00000316 & r00000009;\n" : String).toByteArray.data.toList
theorem checked673 : bytes673=statementBytes 791 (op673.map lower) ∧ bytes673.length=48 := by core033_kernel_decide
def op674 : List WordIR.Op := [.bxor 786 791]
def bytes674 : Bytes := ("    let r00000318: u32 = r00000312 ^ r00000317;\n" : String).toByteArray.data.toList
theorem checked674 : bytes674=statementBytes 792 (op674.map lower) ∧ bytes674.length=48 := by core033_kernel_decide
def op675 : List WordIR.Op := [.bnot 182]
def bytes675 : Bytes := ("    let r00000319: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked675 : bytes675=statementBytes 793 (op675.map lower) ∧ bytes675.length=37 := by core033_kernel_decide
def op676 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes676 : Bytes := ("    let r0000031a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked676 : bytes676=statementBytes 794 (op676.map lower) ∧ bytes676.length=41 := by core033_kernel_decide
def op677 : List WordIR.Op := [.badd 793 794]
def bytes677 : Bytes := ("    let r0000031b: u32 = r00000319.wrapping_add(r0000031a);\n" : String).toByteArray.data.toList
theorem checked677 : bytes677=statementBytes 795 (op677.map lower) ∧ bytes677.length=60 := by core033_kernel_decide
def op678 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes678 : Bytes := ("    let r0000031c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked678 : bytes678=statementBytes 796 (op678.map lower) ∧ bytes678.length=41 := by core033_kernel_decide
def op679 : List WordIR.Op := [.band 795 796]
def bytes679 : Bytes := ("    let r0000031d: u32 = r0000031b & r0000031c;\n" : String).toByteArray.data.toList
theorem checked679 : bytes679=statementBytes 797 (op679.map lower) ∧ bytes679.length=48 := by core033_kernel_decide
def op680 : List WordIR.Op := [.bnot 182]
def bytes680 : Bytes := ("    let r0000031e: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked680 : bytes680=statementBytes 798 (op680.map lower) ∧ bytes680.length=37 := by core033_kernel_decide
def op681 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes681 : Bytes := ("    let r0000031f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked681 : bytes681=statementBytes 799 (op681.map lower) ∧ bytes681.length=41 := by core033_kernel_decide
def op682 : List WordIR.Op := [.badd 798 799]
def bytes682 : Bytes := ("    let r00000320: u32 = r0000031e.wrapping_add(r0000031f);\n" : String).toByteArray.data.toList
theorem checked682 : bytes682=statementBytes 800 (op682.map lower) ∧ bytes682.length=60 := by core033_kernel_decide
def op683 : List WordIR.Op := [.bnot 800]
def bytes683 : Bytes := ("    let r00000321: u32 = !r00000320;\n" : String).toByteArray.data.toList
theorem checked683 : bytes683=statementBytes 801 (op683.map lower) ∧ bytes683.length=37 := by core033_kernel_decide
def op684 : List WordIR.Op := [.band 801 10]
def bytes684 : Bytes := ("    let r00000322: u32 = r00000321 & r0000000a;\n" : String).toByteArray.data.toList
theorem checked684 : bytes684=statementBytes 802 (op684.map lower) ∧ bytes684.length=48 := by core033_kernel_decide
def op685 : List WordIR.Op := [.bxor 797 802]
def bytes685 : Bytes := ("    let r00000323: u32 = r0000031d ^ r00000322;\n" : String).toByteArray.data.toList
theorem checked685 : bytes685=statementBytes 803 (op685.map lower) ∧ bytes685.length=48 := by core033_kernel_decide
def op686 : List WordIR.Op := [.bnot 182]
def bytes686 : Bytes := ("    let r00000324: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked686 : bytes686=statementBytes 804 (op686.map lower) ∧ bytes686.length=37 := by core033_kernel_decide
def op687 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes687 : Bytes := ("    let r00000325: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked687 : bytes687=statementBytes 805 (op687.map lower) ∧ bytes687.length=41 := by core033_kernel_decide
def op688 : List WordIR.Op := [.badd 804 805]
def bytes688 : Bytes := ("    let r00000326: u32 = r00000324.wrapping_add(r00000325);\n" : String).toByteArray.data.toList
theorem checked688 : bytes688=statementBytes 806 (op688.map lower) ∧ bytes688.length=60 := by core033_kernel_decide
def op689 : List WordIR.Op := [.band 806 96]
def bytes689 : Bytes := ("    let r00000327: u32 = r00000326 & r00000060;\n" : String).toByteArray.data.toList
theorem checked689 : bytes689=statementBytes 807 (op689.map lower) ∧ bytes689.length=48 := by core033_kernel_decide
def op690 : List WordIR.Op := [.bnot 182]
def bytes690 : Bytes := ("    let r00000328: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked690 : bytes690=statementBytes 808 (op690.map lower) ∧ bytes690.length=37 := by core033_kernel_decide
def op691 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes691 : Bytes := ("    let r00000329: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked691 : bytes691=statementBytes 809 (op691.map lower) ∧ bytes691.length=41 := by core033_kernel_decide
def op692 : List WordIR.Op := [.badd 808 809]
def bytes692 : Bytes := ("    let r0000032a: u32 = r00000328.wrapping_add(r00000329);\n" : String).toByteArray.data.toList
theorem checked692 : bytes692=statementBytes 810 (op692.map lower) ∧ bytes692.length=60 := by core033_kernel_decide
def op693 : List WordIR.Op := [.bnot 810]
def bytes693 : Bytes := ("    let r0000032b: u32 = !r0000032a;\n" : String).toByteArray.data.toList
theorem checked693 : bytes693=statementBytes 811 (op693.map lower) ∧ bytes693.length=37 := by core033_kernel_decide
def op694 : List WordIR.Op := [.bnot 247]
def bytes694 : Bytes := ("    let r0000032c: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked694 : bytes694=statementBytes 812 (op694.map lower) ∧ bytes694.length=37 := by core033_kernel_decide
def op695 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes695 : Bytes := ("    let r0000032d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked695 : bytes695=statementBytes 813 (op695.map lower) ∧ bytes695.length=41 := by core033_kernel_decide
def op696 : List WordIR.Op := [.badd 812 813]
def bytes696 : Bytes := ("    let r0000032e: u32 = r0000032c.wrapping_add(r0000032d);\n" : String).toByteArray.data.toList
theorem checked696 : bytes696=statementBytes 814 (op696.map lower) ∧ bytes696.length=60 := by core033_kernel_decide
def op697 : List WordIR.Op := [.band 814 23]
def bytes697 : Bytes := ("    let r0000032f: u32 = r0000032e & r00000017;\n" : String).toByteArray.data.toList
theorem checked697 : bytes697=statementBytes 815 (op697.map lower) ∧ bytes697.length=48 := by core033_kernel_decide
def op698 : List WordIR.Op := [.bnot 247]
def bytes698 : Bytes := ("    let r00000330: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked698 : bytes698=statementBytes 816 (op698.map lower) ∧ bytes698.length=37 := by core033_kernel_decide
def op699 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes699 : Bytes := ("    let r00000331: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked699 : bytes699=statementBytes 817 (op699.map lower) ∧ bytes699.length=41 := by core033_kernel_decide
def op700 : List WordIR.Op := [.badd 816 817]
def bytes700 : Bytes := ("    let r00000332: u32 = r00000330.wrapping_add(r00000331);\n" : String).toByteArray.data.toList
theorem checked700 : bytes700=statementBytes 818 (op700.map lower) ∧ bytes700.length=60 := by core033_kernel_decide
def op701 : List WordIR.Op := [.bnot 818]
def bytes701 : Bytes := ("    let r00000333: u32 = !r00000332;\n" : String).toByteArray.data.toList
theorem checked701 : bytes701=statementBytes 819 (op701.map lower) ∧ bytes701.length=37 := by core033_kernel_decide
def op702 : List WordIR.Op := [.band 819 11]
def bytes702 : Bytes := ("    let r00000334: u32 = r00000333 & r0000000b;\n" : String).toByteArray.data.toList
theorem checked702 : bytes702=statementBytes 820 (op702.map lower) ∧ bytes702.length=48 := by core033_kernel_decide
def op703 : List WordIR.Op := [.bxor 815 820]
def bytes703 : Bytes := ("    let r00000335: u32 = r0000032f ^ r00000334;\n" : String).toByteArray.data.toList
theorem checked703 : bytes703=statementBytes 821 (op703.map lower) ∧ bytes703.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op640,op641,op642,op643,op644,op645,op646,op647,op648,op649,op650,op651,op652,op653,op654,op655,op656,op657,op658,op659,op660,op661,op662,op663,op664,op665,op666,op667,op668,op669,op670,op671,op672,op673,op674,op675,op676,op677,op678,op679,op680,op681,op682,op683,op684,op685,op686,op687,op688,op689,op690,op691,op692,op693,op694,op695,op696,op697,op698,op699,op700,op701,op702,op703]
def chunks : List Bytes := [bytes640,bytes641,bytes642,bytes643,bytes644,bytes645,bytes646,bytes647,bytes648,bytes649,bytes650,bytes651,bytes652,bytes653,bytes654,bytes655,bytes656,bytes657,bytes658,bytes659,bytes660,bytes661,bytes662,bytes663,bytes664,bytes665,bytes666,bytes667,bytes668,bytes669,bytes670,bytes671,bytes672,bytes673,bytes674,bytes675,bytes676,bytes677,bytes678,bytes679,bytes680,bytes681,bytes682,bytes683,bytes684,bytes685,bytes686,bytes687,bytes688,bytes689,bytes690,bytes691,bytes692,bytes693,bytes694,bytes695,bytes696,bytes697,bytes698,bytes699,bytes700,bytes701,bytes702,bytes703]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 758 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked640.1 (.cons _ _ _ _ _ checked641.1 (.cons _ _ _ _ _ checked642.1 (.cons _ _ _ _ _ checked643.1 (.cons _ _ _ _ _ checked644.1 (.cons _ _ _ _ _ checked645.1 (.cons _ _ _ _ _ checked646.1 (.cons _ _ _ _ _ checked647.1 (.cons _ _ _ _ _ checked648.1 (.cons _ _ _ _ _ checked649.1 (.cons _ _ _ _ _ checked650.1 (.cons _ _ _ _ _ checked651.1 (.cons _ _ _ _ _ checked652.1 (.cons _ _ _ _ _ checked653.1 (.cons _ _ _ _ _ checked654.1 (.cons _ _ _ _ _ checked655.1 (.cons _ _ _ _ _ checked656.1 (.cons _ _ _ _ _ checked657.1 (.cons _ _ _ _ _ checked658.1 (.cons _ _ _ _ _ checked659.1 (.cons _ _ _ _ _ checked660.1 (.cons _ _ _ _ _ checked661.1 (.cons _ _ _ _ _ checked662.1 (.cons _ _ _ _ _ checked663.1 (.cons _ _ _ _ _ checked664.1 (.cons _ _ _ _ _ checked665.1 (.cons _ _ _ _ _ checked666.1 (.cons _ _ _ _ _ checked667.1 (.cons _ _ _ _ _ checked668.1 (.cons _ _ _ _ _ checked669.1 (.cons _ _ _ _ _ checked670.1 (.cons _ _ _ _ _ checked671.1 (.cons _ _ _ _ _ checked672.1 (.cons _ _ _ _ _ checked673.1 (.cons _ _ _ _ _ checked674.1 (.cons _ _ _ _ _ checked675.1 (.cons _ _ _ _ _ checked676.1 (.cons _ _ _ _ _ checked677.1 (.cons _ _ _ _ _ checked678.1 (.cons _ _ _ _ _ checked679.1 (.cons _ _ _ _ _ checked680.1 (.cons _ _ _ _ _ checked681.1 (.cons _ _ _ _ _ checked682.1 (.cons _ _ _ _ _ checked683.1 (.cons _ _ _ _ _ checked684.1 (.cons _ _ _ _ _ checked685.1 (.cons _ _ _ _ _ checked686.1 (.cons _ _ _ _ _ checked687.1 (.cons _ _ _ _ _ checked688.1 (.cons _ _ _ _ _ checked689.1 (.cons _ _ _ _ _ checked690.1 (.cons _ _ _ _ _ checked691.1 (.cons _ _ _ _ _ checked692.1 (.cons _ _ _ _ _ checked693.1 (.cons _ _ _ _ _ checked694.1 (.cons _ _ _ _ _ checked695.1 (.cons _ _ _ _ _ checked696.1 (.cons _ _ _ _ _ checked697.1 (.cons _ _ _ _ _ checked698.1 (.cons _ _ _ _ _ checked699.1 (.cons _ _ _ _ _ checked700.1 (.cons _ _ _ _ _ checked701.1 (.cons _ _ _ _ _ checked702.1 (.cons _ _ _ _ _ checked703.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 758 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2906 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked640.2,checked641.2,checked642.2,checked643.2,checked644.2,checked645.2,checked646.2,checked647.2,checked648.2,checked649.2,checked650.2,checked651.2,checked652.2,checked653.2,checked654.2,checked655.2,checked656.2,checked657.2,checked658.2,checked659.2,checked660.2,checked661.2,checked662.2,checked663.2,checked664.2,checked665.2,checked666.2,checked667.2,checked668.2,checked669.2,checked670.2,checked671.2,checked672.2,checked673.2,checked674.2,checked675.2,checked676.2,checked677.2,checked678.2,checked679.2,checked680.2,checked681.2,checked682.2,checked683.2,checked684.2,checked685.2,checked686.2,checked687.2,checked688.2,checked689.2,checked690.2,checked691.2,checked692.2,checked693.2,checked694.2,checked695.2,checked696.2,checked697.2,checked698.2,checked699.2,checked700.2,checked701.2,checked702.2,checked703.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup10
