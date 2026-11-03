import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup151
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9664 : List WordIR.Op := [.rotr 9781 6]
def bytes9664 : Bytes := ("    let r00002636: u32 = r00002635.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9664 : bytes9664=statementBytes 9782 (op9664.map lower) ∧ bytes9664.length=65 := by core033_kernel_decide
def op9665 : List WordIR.Op := [.rotr 9781 11]
def bytes9665 : Bytes := ("    let r00002637: u32 = r00002635.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9665 : bytes9665=statementBytes 9783 (op9665.map lower) ∧ bytes9665.length=65 := by core033_kernel_decide
def op9666 : List WordIR.Op := [.bxor 9782 9783]
def bytes9666 : Bytes := ("    let r00002638: u32 = r00002636 ^ r00002637;\n" : String).toByteArray.data.toList
theorem checked9666 : bytes9666=statementBytes 9784 (op9666.map lower) ∧ bytes9666.length=48 := by core033_kernel_decide
def op9667 : List WordIR.Op := [.rotr 9781 25]
def bytes9667 : Bytes := ("    let r00002639: u32 = r00002635.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9667 : bytes9667=statementBytes 9785 (op9667.map lower) ∧ bytes9667.length=65 := by core033_kernel_decide
def op9668 : List WordIR.Op := [.bxor 9784 9785]
def bytes9668 : Bytes := ("    let r0000263a: u32 = r00002638 ^ r00002639;\n" : String).toByteArray.data.toList
theorem checked9668 : bytes9668=statementBytes 9786 (op9668.map lower) ∧ bytes9668.length=48 := by core033_kernel_decide
def op9669 : List WordIR.Op := [.badd 9700 9786]
def bytes9669 : Bytes := ("    let r0000263b: u32 = r000025e4.wrapping_add(r0000263a);\n" : String).toByteArray.data.toList
theorem checked9669 : bytes9669=statementBytes 9787 (op9669.map lower) ∧ bytes9669.length=60 := by core033_kernel_decide
def op9670 : List WordIR.Op := [.band 9781 9754]
def bytes9670 : Bytes := ("    let r0000263c: u32 = r00002635 & r0000261a;\n" : String).toByteArray.data.toList
theorem checked9670 : bytes9670=statementBytes 9788 (op9670.map lower) ∧ bytes9670.length=48 := by core033_kernel_decide
def op9671 : List WordIR.Op := [.bnot 9781]
def bytes9671 : Bytes := ("    let r0000263d: u32 = !r00002635;\n" : String).toByteArray.data.toList
theorem checked9671 : bytes9671=statementBytes 9789 (op9671.map lower) ∧ bytes9671.length=37 := by core033_kernel_decide
def op9672 : List WordIR.Op := [.band 9789 9727]
def bytes9672 : Bytes := ("    let r0000263e: u32 = r0000263d & r000025ff;\n" : String).toByteArray.data.toList
theorem checked9672 : bytes9672=statementBytes 9790 (op9672.map lower) ∧ bytes9672.length=48 := by core033_kernel_decide
def op9673 : List WordIR.Op := [.bxor 9788 9790]
def bytes9673 : Bytes := ("    let r0000263f: u32 = r0000263c ^ r0000263e;\n" : String).toByteArray.data.toList
theorem checked9673 : bytes9673=statementBytes 9791 (op9673.map lower) ∧ bytes9673.length=48 := by core033_kernel_decide
def op9674 : List WordIR.Op := [.badd 9787 9791]
def bytes9674 : Bytes := ("    let r00002640: u32 = r0000263b.wrapping_add(r0000263f);\n" : String).toByteArray.data.toList
theorem checked9674 : bytes9674=statementBytes 9792 (op9674.map lower) ∧ bytes9674.length=60 := by core033_kernel_decide
def op9675 : List WordIR.Op := [.literal (BitVec.ofNat 32 2177026350)]
def bytes9675 : Bytes := ("    let r00002641: u32 = 0x81c2c92e_u32;\n" : String).toByteArray.data.toList
theorem checked9675 : bytes9675=statementBytes 9793 (op9675.map lower) ∧ bytes9675.length=41 := by core033_kernel_decide
def op9676 : List WordIR.Op := [.badd 9792 9793]
def bytes9676 : Bytes := ("    let r00002642: u32 = r00002640.wrapping_add(r00002641);\n" : String).toByteArray.data.toList
theorem checked9676 : bytes9676=statementBytes 9794 (op9676.map lower) ∧ bytes9676.length=60 := by core033_kernel_decide
def op9677 : List WordIR.Op := [.badd 9794 8430]
def bytes9677 : Bytes := ("    let r00002643: u32 = r00002642.wrapping_add(r000020ee);\n" : String).toByteArray.data.toList
theorem checked9677 : bytes9677=statementBytes 9795 (op9677.map lower) ∧ bytes9677.length=60 := by core033_kernel_decide
def op9678 : List WordIR.Op := [.rotr 9780 2]
def bytes9678 : Bytes := ("    let r00002644: u32 = r00002634.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9678 : bytes9678=statementBytes 9796 (op9678.map lower) ∧ bytes9678.length=65 := by core033_kernel_decide
def op9679 : List WordIR.Op := [.rotr 9780 13]
def bytes9679 : Bytes := ("    let r00002645: u32 = r00002634.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9679 : bytes9679=statementBytes 9797 (op9679.map lower) ∧ bytes9679.length=65 := by core033_kernel_decide
def op9680 : List WordIR.Op := [.bxor 9796 9797]
def bytes9680 : Bytes := ("    let r00002646: u32 = r00002644 ^ r00002645;\n" : String).toByteArray.data.toList
theorem checked9680 : bytes9680=statementBytes 9798 (op9680.map lower) ∧ bytes9680.length=48 := by core033_kernel_decide
def op9681 : List WordIR.Op := [.rotr 9780 22]
def bytes9681 : Bytes := ("    let r00002647: u32 = r00002634.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9681 : bytes9681=statementBytes 9799 (op9681.map lower) ∧ bytes9681.length=65 := by core033_kernel_decide
def op9682 : List WordIR.Op := [.bxor 9798 9799]
def bytes9682 : Bytes := ("    let r00002648: u32 = r00002646 ^ r00002647;\n" : String).toByteArray.data.toList
theorem checked9682 : bytes9682=statementBytes 9800 (op9682.map lower) ∧ bytes9682.length=48 := by core033_kernel_decide
def op9683 : List WordIR.Op := [.band 9780 9753]
def bytes9683 : Bytes := ("    let r00002649: u32 = r00002634 & r00002619;\n" : String).toByteArray.data.toList
theorem checked9683 : bytes9683=statementBytes 9801 (op9683.map lower) ∧ bytes9683.length=48 := by core033_kernel_decide
def op9684 : List WordIR.Op := [.band 9780 9726]
def bytes9684 : Bytes := ("    let r0000264a: u32 = r00002634 & r000025fe;\n" : String).toByteArray.data.toList
theorem checked9684 : bytes9684=statementBytes 9802 (op9684.map lower) ∧ bytes9684.length=48 := by core033_kernel_decide
def op9685 : List WordIR.Op := [.bxor 9801 9802]
def bytes9685 : Bytes := ("    let r0000264b: u32 = r00002649 ^ r0000264a;\n" : String).toByteArray.data.toList
theorem checked9685 : bytes9685=statementBytes 9803 (op9685.map lower) ∧ bytes9685.length=48 := by core033_kernel_decide
def op9686 : List WordIR.Op := [.band 9753 9726]
def bytes9686 : Bytes := ("    let r0000264c: u32 = r00002619 & r000025fe;\n" : String).toByteArray.data.toList
theorem checked9686 : bytes9686=statementBytes 9804 (op9686.map lower) ∧ bytes9686.length=48 := by core033_kernel_decide
def op9687 : List WordIR.Op := [.bxor 9803 9804]
def bytes9687 : Bytes := ("    let r0000264d: u32 = r0000264b ^ r0000264c;\n" : String).toByteArray.data.toList
theorem checked9687 : bytes9687=statementBytes 9805 (op9687.map lower) ∧ bytes9687.length=48 := by core033_kernel_decide
def op9688 : List WordIR.Op := [.badd 9800 9805]
def bytes9688 : Bytes := ("    let r0000264e: u32 = r00002648.wrapping_add(r0000264d);\n" : String).toByteArray.data.toList
theorem checked9688 : bytes9688=statementBytes 9806 (op9688.map lower) ∧ bytes9688.length=60 := by core033_kernel_decide
def op9689 : List WordIR.Op := [.badd 9795 9806]
def bytes9689 : Bytes := ("    let r0000264f: u32 = r00002643.wrapping_add(r0000264e);\n" : String).toByteArray.data.toList
theorem checked9689 : bytes9689=statementBytes 9807 (op9689.map lower) ∧ bytes9689.length=60 := by core033_kernel_decide
def op9690 : List WordIR.Op := [.badd 9699 9795]
def bytes9690 : Bytes := ("    let r00002650: u32 = r000025e3.wrapping_add(r00002643);\n" : String).toByteArray.data.toList
theorem checked9690 : bytes9690=statementBytes 9808 (op9690.map lower) ∧ bytes9690.length=60 := by core033_kernel_decide
def op9691 : List WordIR.Op := [.rotr 9808 6]
def bytes9691 : Bytes := ("    let r00002651: u32 = r00002650.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9691 : bytes9691=statementBytes 9809 (op9691.map lower) ∧ bytes9691.length=65 := by core033_kernel_decide
def op9692 : List WordIR.Op := [.rotr 9808 11]
def bytes9692 : Bytes := ("    let r00002652: u32 = r00002650.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9692 : bytes9692=statementBytes 9810 (op9692.map lower) ∧ bytes9692.length=65 := by core033_kernel_decide
def op9693 : List WordIR.Op := [.bxor 9809 9810]
def bytes9693 : Bytes := ("    let r00002653: u32 = r00002651 ^ r00002652;\n" : String).toByteArray.data.toList
theorem checked9693 : bytes9693=statementBytes 9811 (op9693.map lower) ∧ bytes9693.length=48 := by core033_kernel_decide
def op9694 : List WordIR.Op := [.rotr 9808 25]
def bytes9694 : Bytes := ("    let r00002654: u32 = r00002650.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9694 : bytes9694=statementBytes 9812 (op9694.map lower) ∧ bytes9694.length=65 := by core033_kernel_decide
def op9695 : List WordIR.Op := [.bxor 9811 9812]
def bytes9695 : Bytes := ("    let r00002655: u32 = r00002653 ^ r00002654;\n" : String).toByteArray.data.toList
theorem checked9695 : bytes9695=statementBytes 9813 (op9695.map lower) ∧ bytes9695.length=48 := by core033_kernel_decide
def op9696 : List WordIR.Op := [.badd 9727 9813]
def bytes9696 : Bytes := ("    let r00002656: u32 = r000025ff.wrapping_add(r00002655);\n" : String).toByteArray.data.toList
theorem checked9696 : bytes9696=statementBytes 9814 (op9696.map lower) ∧ bytes9696.length=60 := by core033_kernel_decide
def op9697 : List WordIR.Op := [.band 9808 9781]
def bytes9697 : Bytes := ("    let r00002657: u32 = r00002650 & r00002635;\n" : String).toByteArray.data.toList
theorem checked9697 : bytes9697=statementBytes 9815 (op9697.map lower) ∧ bytes9697.length=48 := by core033_kernel_decide
def op9698 : List WordIR.Op := [.bnot 9808]
def bytes9698 : Bytes := ("    let r00002658: u32 = !r00002650;\n" : String).toByteArray.data.toList
theorem checked9698 : bytes9698=statementBytes 9816 (op9698.map lower) ∧ bytes9698.length=37 := by core033_kernel_decide
def op9699 : List WordIR.Op := [.band 9816 9754]
def bytes9699 : Bytes := ("    let r00002659: u32 = r00002658 & r0000261a;\n" : String).toByteArray.data.toList
theorem checked9699 : bytes9699=statementBytes 9817 (op9699.map lower) ∧ bytes9699.length=48 := by core033_kernel_decide
def op9700 : List WordIR.Op := [.bxor 9815 9817]
def bytes9700 : Bytes := ("    let r0000265a: u32 = r00002657 ^ r00002659;\n" : String).toByteArray.data.toList
theorem checked9700 : bytes9700=statementBytes 9818 (op9700.map lower) ∧ bytes9700.length=48 := by core033_kernel_decide
def op9701 : List WordIR.Op := [.badd 9814 9818]
def bytes9701 : Bytes := ("    let r0000265b: u32 = r00002656.wrapping_add(r0000265a);\n" : String).toByteArray.data.toList
theorem checked9701 : bytes9701=statementBytes 9819 (op9701.map lower) ∧ bytes9701.length=60 := by core033_kernel_decide
def op9702 : List WordIR.Op := [.literal (BitVec.ofNat 32 2456956037)]
def bytes9702 : Bytes := ("    let r0000265c: u32 = 0x92722c85_u32;\n" : String).toByteArray.data.toList
theorem checked9702 : bytes9702=statementBytes 9820 (op9702.map lower) ∧ bytes9702.length=41 := by core033_kernel_decide
def op9703 : List WordIR.Op := [.badd 9819 9820]
def bytes9703 : Bytes := ("    let r0000265d: u32 = r0000265b.wrapping_add(r0000265c);\n" : String).toByteArray.data.toList
theorem checked9703 : bytes9703=statementBytes 9821 (op9703.map lower) ∧ bytes9703.length=60 := by core033_kernel_decide
def op9704 : List WordIR.Op := [.badd 9821 8443]
def bytes9704 : Bytes := ("    let r0000265e: u32 = r0000265d.wrapping_add(r000020fb);\n" : String).toByteArray.data.toList
theorem checked9704 : bytes9704=statementBytes 9822 (op9704.map lower) ∧ bytes9704.length=60 := by core033_kernel_decide
def op9705 : List WordIR.Op := [.rotr 9807 2]
def bytes9705 : Bytes := ("    let r0000265f: u32 = r0000264f.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9705 : bytes9705=statementBytes 9823 (op9705.map lower) ∧ bytes9705.length=65 := by core033_kernel_decide
def op9706 : List WordIR.Op := [.rotr 9807 13]
def bytes9706 : Bytes := ("    let r00002660: u32 = r0000264f.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9706 : bytes9706=statementBytes 9824 (op9706.map lower) ∧ bytes9706.length=65 := by core033_kernel_decide
def op9707 : List WordIR.Op := [.bxor 9823 9824]
def bytes9707 : Bytes := ("    let r00002661: u32 = r0000265f ^ r00002660;\n" : String).toByteArray.data.toList
theorem checked9707 : bytes9707=statementBytes 9825 (op9707.map lower) ∧ bytes9707.length=48 := by core033_kernel_decide
def op9708 : List WordIR.Op := [.rotr 9807 22]
def bytes9708 : Bytes := ("    let r00002662: u32 = r0000264f.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9708 : bytes9708=statementBytes 9826 (op9708.map lower) ∧ bytes9708.length=65 := by core033_kernel_decide
def op9709 : List WordIR.Op := [.bxor 9825 9826]
def bytes9709 : Bytes := ("    let r00002663: u32 = r00002661 ^ r00002662;\n" : String).toByteArray.data.toList
theorem checked9709 : bytes9709=statementBytes 9827 (op9709.map lower) ∧ bytes9709.length=48 := by core033_kernel_decide
def op9710 : List WordIR.Op := [.band 9807 9780]
def bytes9710 : Bytes := ("    let r00002664: u32 = r0000264f & r00002634;\n" : String).toByteArray.data.toList
theorem checked9710 : bytes9710=statementBytes 9828 (op9710.map lower) ∧ bytes9710.length=48 := by core033_kernel_decide
def op9711 : List WordIR.Op := [.band 9807 9753]
def bytes9711 : Bytes := ("    let r00002665: u32 = r0000264f & r00002619;\n" : String).toByteArray.data.toList
theorem checked9711 : bytes9711=statementBytes 9829 (op9711.map lower) ∧ bytes9711.length=48 := by core033_kernel_decide
def op9712 : List WordIR.Op := [.bxor 9828 9829]
def bytes9712 : Bytes := ("    let r00002666: u32 = r00002664 ^ r00002665;\n" : String).toByteArray.data.toList
theorem checked9712 : bytes9712=statementBytes 9830 (op9712.map lower) ∧ bytes9712.length=48 := by core033_kernel_decide
def op9713 : List WordIR.Op := [.band 9780 9753]
def bytes9713 : Bytes := ("    let r00002667: u32 = r00002634 & r00002619;\n" : String).toByteArray.data.toList
theorem checked9713 : bytes9713=statementBytes 9831 (op9713.map lower) ∧ bytes9713.length=48 := by core033_kernel_decide
def op9714 : List WordIR.Op := [.bxor 9830 9831]
def bytes9714 : Bytes := ("    let r00002668: u32 = r00002666 ^ r00002667;\n" : String).toByteArray.data.toList
theorem checked9714 : bytes9714=statementBytes 9832 (op9714.map lower) ∧ bytes9714.length=48 := by core033_kernel_decide
def op9715 : List WordIR.Op := [.badd 9827 9832]
def bytes9715 : Bytes := ("    let r00002669: u32 = r00002663.wrapping_add(r00002668);\n" : String).toByteArray.data.toList
theorem checked9715 : bytes9715=statementBytes 9833 (op9715.map lower) ∧ bytes9715.length=60 := by core033_kernel_decide
def op9716 : List WordIR.Op := [.badd 9822 9833]
def bytes9716 : Bytes := ("    let r0000266a: u32 = r0000265e.wrapping_add(r00002669);\n" : String).toByteArray.data.toList
theorem checked9716 : bytes9716=statementBytes 9834 (op9716.map lower) ∧ bytes9716.length=60 := by core033_kernel_decide
def op9717 : List WordIR.Op := [.badd 9726 9822]
def bytes9717 : Bytes := ("    let r0000266b: u32 = r000025fe.wrapping_add(r0000265e);\n" : String).toByteArray.data.toList
theorem checked9717 : bytes9717=statementBytes 9835 (op9717.map lower) ∧ bytes9717.length=60 := by core033_kernel_decide
def op9718 : List WordIR.Op := [.rotr 9835 6]
def bytes9718 : Bytes := ("    let r0000266c: u32 = r0000266b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9718 : bytes9718=statementBytes 9836 (op9718.map lower) ∧ bytes9718.length=65 := by core033_kernel_decide
def op9719 : List WordIR.Op := [.rotr 9835 11]
def bytes9719 : Bytes := ("    let r0000266d: u32 = r0000266b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9719 : bytes9719=statementBytes 9837 (op9719.map lower) ∧ bytes9719.length=65 := by core033_kernel_decide
def op9720 : List WordIR.Op := [.bxor 9836 9837]
def bytes9720 : Bytes := ("    let r0000266e: u32 = r0000266c ^ r0000266d;\n" : String).toByteArray.data.toList
theorem checked9720 : bytes9720=statementBytes 9838 (op9720.map lower) ∧ bytes9720.length=48 := by core033_kernel_decide
def op9721 : List WordIR.Op := [.rotr 9835 25]
def bytes9721 : Bytes := ("    let r0000266f: u32 = r0000266b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9721 : bytes9721=statementBytes 9839 (op9721.map lower) ∧ bytes9721.length=65 := by core033_kernel_decide
def op9722 : List WordIR.Op := [.bxor 9838 9839]
def bytes9722 : Bytes := ("    let r00002670: u32 = r0000266e ^ r0000266f;\n" : String).toByteArray.data.toList
theorem checked9722 : bytes9722=statementBytes 9840 (op9722.map lower) ∧ bytes9722.length=48 := by core033_kernel_decide
def op9723 : List WordIR.Op := [.badd 9754 9840]
def bytes9723 : Bytes := ("    let r00002671: u32 = r0000261a.wrapping_add(r00002670);\n" : String).toByteArray.data.toList
theorem checked9723 : bytes9723=statementBytes 9841 (op9723.map lower) ∧ bytes9723.length=60 := by core033_kernel_decide
def op9724 : List WordIR.Op := [.band 9835 9808]
def bytes9724 : Bytes := ("    let r00002672: u32 = r0000266b & r00002650;\n" : String).toByteArray.data.toList
theorem checked9724 : bytes9724=statementBytes 9842 (op9724.map lower) ∧ bytes9724.length=48 := by core033_kernel_decide
def op9725 : List WordIR.Op := [.bnot 9835]
def bytes9725 : Bytes := ("    let r00002673: u32 = !r0000266b;\n" : String).toByteArray.data.toList
theorem checked9725 : bytes9725=statementBytes 9843 (op9725.map lower) ∧ bytes9725.length=37 := by core033_kernel_decide
def op9726 : List WordIR.Op := [.band 9843 9781]
def bytes9726 : Bytes := ("    let r00002674: u32 = r00002673 & r00002635;\n" : String).toByteArray.data.toList
theorem checked9726 : bytes9726=statementBytes 9844 (op9726.map lower) ∧ bytes9726.length=48 := by core033_kernel_decide
def op9727 : List WordIR.Op := [.bxor 9842 9844]
def bytes9727 : Bytes := ("    let r00002675: u32 = r00002672 ^ r00002674;\n" : String).toByteArray.data.toList
theorem checked9727 : bytes9727=statementBytes 9845 (op9727.map lower) ∧ bytes9727.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9664,op9665,op9666,op9667,op9668,op9669,op9670,op9671,op9672,op9673,op9674,op9675,op9676,op9677,op9678,op9679,op9680,op9681,op9682,op9683,op9684,op9685,op9686,op9687,op9688,op9689,op9690,op9691,op9692,op9693,op9694,op9695,op9696,op9697,op9698,op9699,op9700,op9701,op9702,op9703,op9704,op9705,op9706,op9707,op9708,op9709,op9710,op9711,op9712,op9713,op9714,op9715,op9716,op9717,op9718,op9719,op9720,op9721,op9722,op9723,op9724,op9725,op9726,op9727]
def chunks : List Bytes := [bytes9664,bytes9665,bytes9666,bytes9667,bytes9668,bytes9669,bytes9670,bytes9671,bytes9672,bytes9673,bytes9674,bytes9675,bytes9676,bytes9677,bytes9678,bytes9679,bytes9680,bytes9681,bytes9682,bytes9683,bytes9684,bytes9685,bytes9686,bytes9687,bytes9688,bytes9689,bytes9690,bytes9691,bytes9692,bytes9693,bytes9694,bytes9695,bytes9696,bytes9697,bytes9698,bytes9699,bytes9700,bytes9701,bytes9702,bytes9703,bytes9704,bytes9705,bytes9706,bytes9707,bytes9708,bytes9709,bytes9710,bytes9711,bytes9712,bytes9713,bytes9714,bytes9715,bytes9716,bytes9717,bytes9718,bytes9719,bytes9720,bytes9721,bytes9722,bytes9723,bytes9724,bytes9725,bytes9726,bytes9727]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9782 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9664.1 (.cons _ _ _ _ _ checked9665.1 (.cons _ _ _ _ _ checked9666.1 (.cons _ _ _ _ _ checked9667.1 (.cons _ _ _ _ _ checked9668.1 (.cons _ _ _ _ _ checked9669.1 (.cons _ _ _ _ _ checked9670.1 (.cons _ _ _ _ _ checked9671.1 (.cons _ _ _ _ _ checked9672.1 (.cons _ _ _ _ _ checked9673.1 (.cons _ _ _ _ _ checked9674.1 (.cons _ _ _ _ _ checked9675.1 (.cons _ _ _ _ _ checked9676.1 (.cons _ _ _ _ _ checked9677.1 (.cons _ _ _ _ _ checked9678.1 (.cons _ _ _ _ _ checked9679.1 (.cons _ _ _ _ _ checked9680.1 (.cons _ _ _ _ _ checked9681.1 (.cons _ _ _ _ _ checked9682.1 (.cons _ _ _ _ _ checked9683.1 (.cons _ _ _ _ _ checked9684.1 (.cons _ _ _ _ _ checked9685.1 (.cons _ _ _ _ _ checked9686.1 (.cons _ _ _ _ _ checked9687.1 (.cons _ _ _ _ _ checked9688.1 (.cons _ _ _ _ _ checked9689.1 (.cons _ _ _ _ _ checked9690.1 (.cons _ _ _ _ _ checked9691.1 (.cons _ _ _ _ _ checked9692.1 (.cons _ _ _ _ _ checked9693.1 (.cons _ _ _ _ _ checked9694.1 (.cons _ _ _ _ _ checked9695.1 (.cons _ _ _ _ _ checked9696.1 (.cons _ _ _ _ _ checked9697.1 (.cons _ _ _ _ _ checked9698.1 (.cons _ _ _ _ _ checked9699.1 (.cons _ _ _ _ _ checked9700.1 (.cons _ _ _ _ _ checked9701.1 (.cons _ _ _ _ _ checked9702.1 (.cons _ _ _ _ _ checked9703.1 (.cons _ _ _ _ _ checked9704.1 (.cons _ _ _ _ _ checked9705.1 (.cons _ _ _ _ _ checked9706.1 (.cons _ _ _ _ _ checked9707.1 (.cons _ _ _ _ _ checked9708.1 (.cons _ _ _ _ _ checked9709.1 (.cons _ _ _ _ _ checked9710.1 (.cons _ _ _ _ _ checked9711.1 (.cons _ _ _ _ _ checked9712.1 (.cons _ _ _ _ _ checked9713.1 (.cons _ _ _ _ _ checked9714.1 (.cons _ _ _ _ _ checked9715.1 (.cons _ _ _ _ _ checked9716.1 (.cons _ _ _ _ _ checked9717.1 (.cons _ _ _ _ _ checked9718.1 (.cons _ _ _ _ _ checked9719.1 (.cons _ _ _ _ _ checked9720.1 (.cons _ _ _ _ _ checked9721.1 (.cons _ _ _ _ _ checked9722.1 (.cons _ _ _ _ _ checked9723.1 (.cons _ _ _ _ _ checked9724.1 (.cons _ _ _ _ _ checked9725.1 (.cons _ _ _ _ _ checked9726.1 (.cons _ _ _ _ _ checked9727.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9782 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3460 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9664.2,checked9665.2,checked9666.2,checked9667.2,checked9668.2,checked9669.2,checked9670.2,checked9671.2,checked9672.2,checked9673.2,checked9674.2,checked9675.2,checked9676.2,checked9677.2,checked9678.2,checked9679.2,checked9680.2,checked9681.2,checked9682.2,checked9683.2,checked9684.2,checked9685.2,checked9686.2,checked9687.2,checked9688.2,checked9689.2,checked9690.2,checked9691.2,checked9692.2,checked9693.2,checked9694.2,checked9695.2,checked9696.2,checked9697.2,checked9698.2,checked9699.2,checked9700.2,checked9701.2,checked9702.2,checked9703.2,checked9704.2,checked9705.2,checked9706.2,checked9707.2,checked9708.2,checked9709.2,checked9710.2,checked9711.2,checked9712.2,checked9713.2,checked9714.2,checked9715.2,checked9716.2,checked9717.2,checked9718.2,checked9719.2,checked9720.2,checked9721.2,checked9722.2,checked9723.2,checked9724.2,checked9725.2,checked9726.2,checked9727.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup151
