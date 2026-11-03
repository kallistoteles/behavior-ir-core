import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup153
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9792 : List WordIR.Op := [.bxor 9828 9834]
def bytes9792 : Bytes := ("    let r0000266b: u32 = r00002664 ^ r0000266a;\n" : String).toByteArray.data.toList
theorem checked9792 : bytes9792=statementBytes 9835 (op9792.map lower) ∧ bytes9792.length=48 := by core033_kernel_decide
def op9793 : List WordIR.Op := [.bnot 9406]
def bytes9793 : Bytes := ("    let r0000266c: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9793 : bytes9793=statementBytes 9836 (op9793.map lower) ∧ bytes9793.length=37 := by core033_kernel_decide
def op9794 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9794 : Bytes := ("    let r0000266d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9794 : bytes9794=statementBytes 9837 (op9794.map lower) ∧ bytes9794.length=41 := by core033_kernel_decide
def op9795 : List WordIR.Op := [.badd 9836 9837]
def bytes9795 : Bytes := ("    let r0000266e: u32 = r0000266c.wrapping_add(r0000266d);\n" : String).toByteArray.data.toList
theorem checked9795 : bytes9795=statementBytes 9838 (op9795.map lower) ∧ bytes9795.length=60 := by core033_kernel_decide
def op9796 : List WordIR.Op := [.band 9838 39]
def bytes9796 : Bytes := ("    let r0000266f: u32 = r0000266e & r00000027;\n" : String).toByteArray.data.toList
theorem checked9796 : bytes9796=statementBytes 9839 (op9796.map lower) ∧ bytes9796.length=48 := by core033_kernel_decide
def op9797 : List WordIR.Op := [.bnot 9406]
def bytes9797 : Bytes := ("    let r00002670: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9797 : bytes9797=statementBytes 9840 (op9797.map lower) ∧ bytes9797.length=37 := by core033_kernel_decide
def op9798 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9798 : Bytes := ("    let r00002671: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9798 : bytes9798=statementBytes 9841 (op9798.map lower) ∧ bytes9798.length=41 := by core033_kernel_decide
def op9799 : List WordIR.Op := [.badd 9840 9841]
def bytes9799 : Bytes := ("    let r00002672: u32 = r00002670.wrapping_add(r00002671);\n" : String).toByteArray.data.toList
theorem checked9799 : bytes9799=statementBytes 9842 (op9799.map lower) ∧ bytes9799.length=60 := by core033_kernel_decide
def op9800 : List WordIR.Op := [.bnot 9842]
def bytes9800 : Bytes := ("    let r00002673: u32 = !r00002672;\n" : String).toByteArray.data.toList
theorem checked9800 : bytes9800=statementBytes 9843 (op9800.map lower) ∧ bytes9800.length=37 := by core033_kernel_decide
def op9801 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9801 : Bytes := ("    let r00002674: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9801 : bytes9801=statementBytes 9844 (op9801.map lower) ∧ bytes9801.length=41 := by core033_kernel_decide
def op9802 : List WordIR.Op := [.band 9843 9844]
def bytes9802 : Bytes := ("    let r00002675: u32 = r00002673 & r00002674;\n" : String).toByteArray.data.toList
theorem checked9802 : bytes9802=statementBytes 9845 (op9802.map lower) ∧ bytes9802.length=48 := by core033_kernel_decide
def op9803 : List WordIR.Op := [.bxor 9839 9845]
def bytes9803 : Bytes := ("    let r00002676: u32 = r0000266f ^ r00002675;\n" : String).toByteArray.data.toList
theorem checked9803 : bytes9803=statementBytes 9846 (op9803.map lower) ∧ bytes9803.length=48 := by core033_kernel_decide
def op9804 : List WordIR.Op := [.bnot 9406]
def bytes9804 : Bytes := ("    let r00002677: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9804 : bytes9804=statementBytes 9847 (op9804.map lower) ∧ bytes9804.length=37 := by core033_kernel_decide
def op9805 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9805 : Bytes := ("    let r00002678: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9805 : bytes9805=statementBytes 9848 (op9805.map lower) ∧ bytes9805.length=41 := by core033_kernel_decide
def op9806 : List WordIR.Op := [.badd 9847 9848]
def bytes9806 : Bytes := ("    let r00002679: u32 = r00002677.wrapping_add(r00002678);\n" : String).toByteArray.data.toList
theorem checked9806 : bytes9806=statementBytes 9849 (op9806.map lower) ∧ bytes9806.length=60 := by core033_kernel_decide
def op9807 : List WordIR.Op := [.band 9849 40]
def bytes9807 : Bytes := ("    let r0000267a: u32 = r00002679 & r00000028;\n" : String).toByteArray.data.toList
theorem checked9807 : bytes9807=statementBytes 9850 (op9807.map lower) ∧ bytes9807.length=48 := by core033_kernel_decide
def op9808 : List WordIR.Op := [.bnot 9406]
def bytes9808 : Bytes := ("    let r0000267b: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9808 : bytes9808=statementBytes 9851 (op9808.map lower) ∧ bytes9808.length=37 := by core033_kernel_decide
def op9809 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9809 : Bytes := ("    let r0000267c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9809 : bytes9809=statementBytes 9852 (op9809.map lower) ∧ bytes9809.length=41 := by core033_kernel_decide
def op9810 : List WordIR.Op := [.badd 9851 9852]
def bytes9810 : Bytes := ("    let r0000267d: u32 = r0000267b.wrapping_add(r0000267c);\n" : String).toByteArray.data.toList
theorem checked9810 : bytes9810=statementBytes 9853 (op9810.map lower) ∧ bytes9810.length=60 := by core033_kernel_decide
def op9811 : List WordIR.Op := [.bnot 9853]
def bytes9811 : Bytes := ("    let r0000267e: u32 = !r0000267d;\n" : String).toByteArray.data.toList
theorem checked9811 : bytes9811=statementBytes 9854 (op9811.map lower) ∧ bytes9811.length=37 := by core033_kernel_decide
def op9812 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9812 : Bytes := ("    let r0000267f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9812 : bytes9812=statementBytes 9855 (op9812.map lower) ∧ bytes9812.length=41 := by core033_kernel_decide
def op9813 : List WordIR.Op := [.band 9854 9855]
def bytes9813 : Bytes := ("    let r00002680: u32 = r0000267e & r0000267f;\n" : String).toByteArray.data.toList
theorem checked9813 : bytes9813=statementBytes 9856 (op9813.map lower) ∧ bytes9813.length=48 := by core033_kernel_decide
def op9814 : List WordIR.Op := [.bxor 9850 9856]
def bytes9814 : Bytes := ("    let r00002681: u32 = r0000267a ^ r00002680;\n" : String).toByteArray.data.toList
theorem checked9814 : bytes9814=statementBytes 9857 (op9814.map lower) ∧ bytes9814.length=48 := by core033_kernel_decide
def op9815 : List WordIR.Op := [.bnot 9406]
def bytes9815 : Bytes := ("    let r00002682: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9815 : bytes9815=statementBytes 9858 (op9815.map lower) ∧ bytes9815.length=37 := by core033_kernel_decide
def op9816 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9816 : Bytes := ("    let r00002683: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9816 : bytes9816=statementBytes 9859 (op9816.map lower) ∧ bytes9816.length=41 := by core033_kernel_decide
def op9817 : List WordIR.Op := [.badd 9858 9859]
def bytes9817 : Bytes := ("    let r00002684: u32 = r00002682.wrapping_add(r00002683);\n" : String).toByteArray.data.toList
theorem checked9817 : bytes9817=statementBytes 9860 (op9817.map lower) ∧ bytes9817.length=60 := by core033_kernel_decide
def op9818 : List WordIR.Op := [.band 9860 41]
def bytes9818 : Bytes := ("    let r00002685: u32 = r00002684 & r00000029;\n" : String).toByteArray.data.toList
theorem checked9818 : bytes9818=statementBytes 9861 (op9818.map lower) ∧ bytes9818.length=48 := by core033_kernel_decide
def op9819 : List WordIR.Op := [.bnot 9406]
def bytes9819 : Bytes := ("    let r00002686: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9819 : bytes9819=statementBytes 9862 (op9819.map lower) ∧ bytes9819.length=37 := by core033_kernel_decide
def op9820 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9820 : Bytes := ("    let r00002687: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9820 : bytes9820=statementBytes 9863 (op9820.map lower) ∧ bytes9820.length=41 := by core033_kernel_decide
def op9821 : List WordIR.Op := [.badd 9862 9863]
def bytes9821 : Bytes := ("    let r00002688: u32 = r00002686.wrapping_add(r00002687);\n" : String).toByteArray.data.toList
theorem checked9821 : bytes9821=statementBytes 9864 (op9821.map lower) ∧ bytes9821.length=60 := by core033_kernel_decide
def op9822 : List WordIR.Op := [.bnot 9864]
def bytes9822 : Bytes := ("    let r00002689: u32 = !r00002688;\n" : String).toByteArray.data.toList
theorem checked9822 : bytes9822=statementBytes 9865 (op9822.map lower) ∧ bytes9822.length=37 := by core033_kernel_decide
def op9823 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9823 : Bytes := ("    let r0000268a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9823 : bytes9823=statementBytes 9866 (op9823.map lower) ∧ bytes9823.length=41 := by core033_kernel_decide
def op9824 : List WordIR.Op := [.band 9865 9866]
def bytes9824 : Bytes := ("    let r0000268b: u32 = r00002689 & r0000268a;\n" : String).toByteArray.data.toList
theorem checked9824 : bytes9824=statementBytes 9867 (op9824.map lower) ∧ bytes9824.length=48 := by core033_kernel_decide
def op9825 : List WordIR.Op := [.bxor 9861 9867]
def bytes9825 : Bytes := ("    let r0000268c: u32 = r00002685 ^ r0000268b;\n" : String).toByteArray.data.toList
theorem checked9825 : bytes9825=statementBytes 9868 (op9825.map lower) ∧ bytes9825.length=48 := by core033_kernel_decide
def op9826 : List WordIR.Op := [.bnot 9406]
def bytes9826 : Bytes := ("    let r0000268d: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9826 : bytes9826=statementBytes 9869 (op9826.map lower) ∧ bytes9826.length=37 := by core033_kernel_decide
def op9827 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9827 : Bytes := ("    let r0000268e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9827 : bytes9827=statementBytes 9870 (op9827.map lower) ∧ bytes9827.length=41 := by core033_kernel_decide
def op9828 : List WordIR.Op := [.badd 9869 9870]
def bytes9828 : Bytes := ("    let r0000268f: u32 = r0000268d.wrapping_add(r0000268e);\n" : String).toByteArray.data.toList
theorem checked9828 : bytes9828=statementBytes 9871 (op9828.map lower) ∧ bytes9828.length=60 := by core033_kernel_decide
def op9829 : List WordIR.Op := [.band 9871 42]
def bytes9829 : Bytes := ("    let r00002690: u32 = r0000268f & r0000002a;\n" : String).toByteArray.data.toList
theorem checked9829 : bytes9829=statementBytes 9872 (op9829.map lower) ∧ bytes9829.length=48 := by core033_kernel_decide
def op9830 : List WordIR.Op := [.bnot 9406]
def bytes9830 : Bytes := ("    let r00002691: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9830 : bytes9830=statementBytes 9873 (op9830.map lower) ∧ bytes9830.length=37 := by core033_kernel_decide
def op9831 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9831 : Bytes := ("    let r00002692: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9831 : bytes9831=statementBytes 9874 (op9831.map lower) ∧ bytes9831.length=41 := by core033_kernel_decide
def op9832 : List WordIR.Op := [.badd 9873 9874]
def bytes9832 : Bytes := ("    let r00002693: u32 = r00002691.wrapping_add(r00002692);\n" : String).toByteArray.data.toList
theorem checked9832 : bytes9832=statementBytes 9875 (op9832.map lower) ∧ bytes9832.length=60 := by core033_kernel_decide
def op9833 : List WordIR.Op := [.bnot 9875]
def bytes9833 : Bytes := ("    let r00002694: u32 = !r00002693;\n" : String).toByteArray.data.toList
theorem checked9833 : bytes9833=statementBytes 9876 (op9833.map lower) ∧ bytes9833.length=37 := by core033_kernel_decide
def op9834 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9834 : Bytes := ("    let r00002695: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9834 : bytes9834=statementBytes 9877 (op9834.map lower) ∧ bytes9834.length=41 := by core033_kernel_decide
def op9835 : List WordIR.Op := [.band 9876 9877]
def bytes9835 : Bytes := ("    let r00002696: u32 = r00002694 & r00002695;\n" : String).toByteArray.data.toList
theorem checked9835 : bytes9835=statementBytes 9878 (op9835.map lower) ∧ bytes9835.length=48 := by core033_kernel_decide
def op9836 : List WordIR.Op := [.bxor 9872 9878]
def bytes9836 : Bytes := ("    let r00002697: u32 = r00002690 ^ r00002696;\n" : String).toByteArray.data.toList
theorem checked9836 : bytes9836=statementBytes 9879 (op9836.map lower) ∧ bytes9836.length=48 := by core033_kernel_decide
def op9837 : List WordIR.Op := [.rotr 9802 24]
def bytes9837 : Bytes := ("    let r00002698: u32 = r0000264a.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9837 : bytes9837=statementBytes 9880 (op9837.map lower) ∧ bytes9837.length=65 := by core033_kernel_decide
def op9838 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9838 : Bytes := ("    let r00002699: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9838 : bytes9838=statementBytes 9881 (op9838.map lower) ∧ bytes9838.length=41 := by core033_kernel_decide
def op9839 : List WordIR.Op := [.band 9880 9881]
def bytes9839 : Bytes := ("    let r0000269a: u32 = r00002698 & r00002699;\n" : String).toByteArray.data.toList
theorem checked9839 : bytes9839=statementBytes 9882 (op9839.map lower) ∧ bytes9839.length=48 := by core033_kernel_decide
def op9840 : List WordIR.Op := [.rotr 9802 8]
def bytes9840 : Bytes := ("    let r0000269b: u32 = r0000264a.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9840 : bytes9840=statementBytes 9883 (op9840.map lower) ∧ bytes9840.length=65 := by core033_kernel_decide
def op9841 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9841 : Bytes := ("    let r0000269c: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9841 : bytes9841=statementBytes 9884 (op9841.map lower) ∧ bytes9841.length=41 := by core033_kernel_decide
def op9842 : List WordIR.Op := [.band 9883 9884]
def bytes9842 : Bytes := ("    let r0000269d: u32 = r0000269b & r0000269c;\n" : String).toByteArray.data.toList
theorem checked9842 : bytes9842=statementBytes 9885 (op9842.map lower) ∧ bytes9842.length=48 := by core033_kernel_decide
def op9843 : List WordIR.Op := [.bxor 9882 9885]
def bytes9843 : Bytes := ("    let r0000269e: u32 = r0000269a ^ r0000269d;\n" : String).toByteArray.data.toList
theorem checked9843 : bytes9843=statementBytes 9886 (op9843.map lower) ∧ bytes9843.length=48 := by core033_kernel_decide
def op9844 : List WordIR.Op := [.rotr 9813 24]
def bytes9844 : Bytes := ("    let r0000269f: u32 = r00002655.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9844 : bytes9844=statementBytes 9887 (op9844.map lower) ∧ bytes9844.length=65 := by core033_kernel_decide
def op9845 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9845 : Bytes := ("    let r000026a0: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9845 : bytes9845=statementBytes 9888 (op9845.map lower) ∧ bytes9845.length=41 := by core033_kernel_decide
def op9846 : List WordIR.Op := [.band 9887 9888]
def bytes9846 : Bytes := ("    let r000026a1: u32 = r0000269f & r000026a0;\n" : String).toByteArray.data.toList
theorem checked9846 : bytes9846=statementBytes 9889 (op9846.map lower) ∧ bytes9846.length=48 := by core033_kernel_decide
def op9847 : List WordIR.Op := [.rotr 9813 8]
def bytes9847 : Bytes := ("    let r000026a2: u32 = r00002655.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9847 : bytes9847=statementBytes 9890 (op9847.map lower) ∧ bytes9847.length=65 := by core033_kernel_decide
def op9848 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9848 : Bytes := ("    let r000026a3: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9848 : bytes9848=statementBytes 9891 (op9848.map lower) ∧ bytes9848.length=41 := by core033_kernel_decide
def op9849 : List WordIR.Op := [.band 9890 9891]
def bytes9849 : Bytes := ("    let r000026a4: u32 = r000026a2 & r000026a3;\n" : String).toByteArray.data.toList
theorem checked9849 : bytes9849=statementBytes 9892 (op9849.map lower) ∧ bytes9849.length=48 := by core033_kernel_decide
def op9850 : List WordIR.Op := [.bxor 9889 9892]
def bytes9850 : Bytes := ("    let r000026a5: u32 = r000026a1 ^ r000026a4;\n" : String).toByteArray.data.toList
theorem checked9850 : bytes9850=statementBytes 9893 (op9850.map lower) ∧ bytes9850.length=48 := by core033_kernel_decide
def op9851 : List WordIR.Op := [.rotr 9824 24]
def bytes9851 : Bytes := ("    let r000026a6: u32 = r00002660.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9851 : bytes9851=statementBytes 9894 (op9851.map lower) ∧ bytes9851.length=65 := by core033_kernel_decide
def op9852 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9852 : Bytes := ("    let r000026a7: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9852 : bytes9852=statementBytes 9895 (op9852.map lower) ∧ bytes9852.length=41 := by core033_kernel_decide
def op9853 : List WordIR.Op := [.band 9894 9895]
def bytes9853 : Bytes := ("    let r000026a8: u32 = r000026a6 & r000026a7;\n" : String).toByteArray.data.toList
theorem checked9853 : bytes9853=statementBytes 9896 (op9853.map lower) ∧ bytes9853.length=48 := by core033_kernel_decide
def op9854 : List WordIR.Op := [.rotr 9824 8]
def bytes9854 : Bytes := ("    let r000026a9: u32 = r00002660.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9854 : bytes9854=statementBytes 9897 (op9854.map lower) ∧ bytes9854.length=65 := by core033_kernel_decide
def op9855 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9855 : Bytes := ("    let r000026aa: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9855 : bytes9855=statementBytes 9898 (op9855.map lower) ∧ bytes9855.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9792,op9793,op9794,op9795,op9796,op9797,op9798,op9799,op9800,op9801,op9802,op9803,op9804,op9805,op9806,op9807,op9808,op9809,op9810,op9811,op9812,op9813,op9814,op9815,op9816,op9817,op9818,op9819,op9820,op9821,op9822,op9823,op9824,op9825,op9826,op9827,op9828,op9829,op9830,op9831,op9832,op9833,op9834,op9835,op9836,op9837,op9838,op9839,op9840,op9841,op9842,op9843,op9844,op9845,op9846,op9847,op9848,op9849,op9850,op9851,op9852,op9853,op9854,op9855]
def chunks : List Bytes := [bytes9792,bytes9793,bytes9794,bytes9795,bytes9796,bytes9797,bytes9798,bytes9799,bytes9800,bytes9801,bytes9802,bytes9803,bytes9804,bytes9805,bytes9806,bytes9807,bytes9808,bytes9809,bytes9810,bytes9811,bytes9812,bytes9813,bytes9814,bytes9815,bytes9816,bytes9817,bytes9818,bytes9819,bytes9820,bytes9821,bytes9822,bytes9823,bytes9824,bytes9825,bytes9826,bytes9827,bytes9828,bytes9829,bytes9830,bytes9831,bytes9832,bytes9833,bytes9834,bytes9835,bytes9836,bytes9837,bytes9838,bytes9839,bytes9840,bytes9841,bytes9842,bytes9843,bytes9844,bytes9845,bytes9846,bytes9847,bytes9848,bytes9849,bytes9850,bytes9851,bytes9852,bytes9853,bytes9854,bytes9855]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9835 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9792.1 (.cons _ _ _ _ _ checked9793.1 (.cons _ _ _ _ _ checked9794.1 (.cons _ _ _ _ _ checked9795.1 (.cons _ _ _ _ _ checked9796.1 (.cons _ _ _ _ _ checked9797.1 (.cons _ _ _ _ _ checked9798.1 (.cons _ _ _ _ _ checked9799.1 (.cons _ _ _ _ _ checked9800.1 (.cons _ _ _ _ _ checked9801.1 (.cons _ _ _ _ _ checked9802.1 (.cons _ _ _ _ _ checked9803.1 (.cons _ _ _ _ _ checked9804.1 (.cons _ _ _ _ _ checked9805.1 (.cons _ _ _ _ _ checked9806.1 (.cons _ _ _ _ _ checked9807.1 (.cons _ _ _ _ _ checked9808.1 (.cons _ _ _ _ _ checked9809.1 (.cons _ _ _ _ _ checked9810.1 (.cons _ _ _ _ _ checked9811.1 (.cons _ _ _ _ _ checked9812.1 (.cons _ _ _ _ _ checked9813.1 (.cons _ _ _ _ _ checked9814.1 (.cons _ _ _ _ _ checked9815.1 (.cons _ _ _ _ _ checked9816.1 (.cons _ _ _ _ _ checked9817.1 (.cons _ _ _ _ _ checked9818.1 (.cons _ _ _ _ _ checked9819.1 (.cons _ _ _ _ _ checked9820.1 (.cons _ _ _ _ _ checked9821.1 (.cons _ _ _ _ _ checked9822.1 (.cons _ _ _ _ _ checked9823.1 (.cons _ _ _ _ _ checked9824.1 (.cons _ _ _ _ _ checked9825.1 (.cons _ _ _ _ _ checked9826.1 (.cons _ _ _ _ _ checked9827.1 (.cons _ _ _ _ _ checked9828.1 (.cons _ _ _ _ _ checked9829.1 (.cons _ _ _ _ _ checked9830.1 (.cons _ _ _ _ _ checked9831.1 (.cons _ _ _ _ _ checked9832.1 (.cons _ _ _ _ _ checked9833.1 (.cons _ _ _ _ _ checked9834.1 (.cons _ _ _ _ _ checked9835.1 (.cons _ _ _ _ _ checked9836.1 (.cons _ _ _ _ _ checked9837.1 (.cons _ _ _ _ _ checked9838.1 (.cons _ _ _ _ _ checked9839.1 (.cons _ _ _ _ _ checked9840.1 (.cons _ _ _ _ _ checked9841.1 (.cons _ _ _ _ _ checked9842.1 (.cons _ _ _ _ _ checked9843.1 (.cons _ _ _ _ _ checked9844.1 (.cons _ _ _ _ _ checked9845.1 (.cons _ _ _ _ _ checked9846.1 (.cons _ _ _ _ _ checked9847.1 (.cons _ _ _ _ _ checked9848.1 (.cons _ _ _ _ _ checked9849.1 (.cons _ _ _ _ _ checked9850.1 (.cons _ _ _ _ _ checked9851.1 (.cons _ _ _ _ _ checked9852.1 (.cons _ _ _ _ _ checked9853.1 (.cons _ _ _ _ _ checked9854.1 (.cons _ _ _ _ _ checked9855.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9835 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3012 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9792.2,checked9793.2,checked9794.2,checked9795.2,checked9796.2,checked9797.2,checked9798.2,checked9799.2,checked9800.2,checked9801.2,checked9802.2,checked9803.2,checked9804.2,checked9805.2,checked9806.2,checked9807.2,checked9808.2,checked9809.2,checked9810.2,checked9811.2,checked9812.2,checked9813.2,checked9814.2,checked9815.2,checked9816.2,checked9817.2,checked9818.2,checked9819.2,checked9820.2,checked9821.2,checked9822.2,checked9823.2,checked9824.2,checked9825.2,checked9826.2,checked9827.2,checked9828.2,checked9829.2,checked9830.2,checked9831.2,checked9832.2,checked9833.2,checked9834.2,checked9835.2,checked9836.2,checked9837.2,checked9838.2,checked9839.2,checked9840.2,checked9841.2,checked9842.2,checked9843.2,checked9844.2,checked9845.2,checked9846.2,checked9847.2,checked9848.2,checked9849.2,checked9850.2,checked9851.2,checked9852.2,checked9853.2,checked9854.2,checked9855.2]
  decide
end ArtifactPathRoundDispatchGroup153
