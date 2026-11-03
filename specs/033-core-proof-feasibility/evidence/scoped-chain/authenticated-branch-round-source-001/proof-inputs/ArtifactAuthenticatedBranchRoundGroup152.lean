import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup152
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9728 : List WordIR.Op := [.badd 9841 9845]
def bytes9728 : Bytes := ("    let r00002676: u32 = r00002671.wrapping_add(r00002675);\n" : String).toByteArray.data.toList
theorem checked9728 : bytes9728=statementBytes 9846 (op9728.map lower) ∧ bytes9728.length=60 := by core033_kernel_decide
def op9729 : List WordIR.Op := [.literal (BitVec.ofNat 32 2730485921)]
def bytes9729 : Bytes := ("    let r00002677: u32 = 0xa2bfe8a1_u32;\n" : String).toByteArray.data.toList
theorem checked9729 : bytes9729=statementBytes 9847 (op9729.map lower) ∧ bytes9729.length=41 := by core033_kernel_decide
def op9730 : List WordIR.Op := [.badd 9846 9847]
def bytes9730 : Bytes := ("    let r00002678: u32 = r00002676.wrapping_add(r00002677);\n" : String).toByteArray.data.toList
theorem checked9730 : bytes9730=statementBytes 9848 (op9730.map lower) ∧ bytes9730.length=60 := by core033_kernel_decide
def op9731 : List WordIR.Op := [.badd 9848 8456]
def bytes9731 : Bytes := ("    let r00002679: u32 = r00002678.wrapping_add(r00002108);\n" : String).toByteArray.data.toList
theorem checked9731 : bytes9731=statementBytes 9849 (op9731.map lower) ∧ bytes9731.length=60 := by core033_kernel_decide
def op9732 : List WordIR.Op := [.rotr 9834 2]
def bytes9732 : Bytes := ("    let r0000267a: u32 = r0000266a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9732 : bytes9732=statementBytes 9850 (op9732.map lower) ∧ bytes9732.length=65 := by core033_kernel_decide
def op9733 : List WordIR.Op := [.rotr 9834 13]
def bytes9733 : Bytes := ("    let r0000267b: u32 = r0000266a.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9733 : bytes9733=statementBytes 9851 (op9733.map lower) ∧ bytes9733.length=65 := by core033_kernel_decide
def op9734 : List WordIR.Op := [.bxor 9850 9851]
def bytes9734 : Bytes := ("    let r0000267c: u32 = r0000267a ^ r0000267b;\n" : String).toByteArray.data.toList
theorem checked9734 : bytes9734=statementBytes 9852 (op9734.map lower) ∧ bytes9734.length=48 := by core033_kernel_decide
def op9735 : List WordIR.Op := [.rotr 9834 22]
def bytes9735 : Bytes := ("    let r0000267d: u32 = r0000266a.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9735 : bytes9735=statementBytes 9853 (op9735.map lower) ∧ bytes9735.length=65 := by core033_kernel_decide
def op9736 : List WordIR.Op := [.bxor 9852 9853]
def bytes9736 : Bytes := ("    let r0000267e: u32 = r0000267c ^ r0000267d;\n" : String).toByteArray.data.toList
theorem checked9736 : bytes9736=statementBytes 9854 (op9736.map lower) ∧ bytes9736.length=48 := by core033_kernel_decide
def op9737 : List WordIR.Op := [.band 9834 9807]
def bytes9737 : Bytes := ("    let r0000267f: u32 = r0000266a & r0000264f;\n" : String).toByteArray.data.toList
theorem checked9737 : bytes9737=statementBytes 9855 (op9737.map lower) ∧ bytes9737.length=48 := by core033_kernel_decide
def op9738 : List WordIR.Op := [.band 9834 9780]
def bytes9738 : Bytes := ("    let r00002680: u32 = r0000266a & r00002634;\n" : String).toByteArray.data.toList
theorem checked9738 : bytes9738=statementBytes 9856 (op9738.map lower) ∧ bytes9738.length=48 := by core033_kernel_decide
def op9739 : List WordIR.Op := [.bxor 9855 9856]
def bytes9739 : Bytes := ("    let r00002681: u32 = r0000267f ^ r00002680;\n" : String).toByteArray.data.toList
theorem checked9739 : bytes9739=statementBytes 9857 (op9739.map lower) ∧ bytes9739.length=48 := by core033_kernel_decide
def op9740 : List WordIR.Op := [.band 9807 9780]
def bytes9740 : Bytes := ("    let r00002682: u32 = r0000264f & r00002634;\n" : String).toByteArray.data.toList
theorem checked9740 : bytes9740=statementBytes 9858 (op9740.map lower) ∧ bytes9740.length=48 := by core033_kernel_decide
def op9741 : List WordIR.Op := [.bxor 9857 9858]
def bytes9741 : Bytes := ("    let r00002683: u32 = r00002681 ^ r00002682;\n" : String).toByteArray.data.toList
theorem checked9741 : bytes9741=statementBytes 9859 (op9741.map lower) ∧ bytes9741.length=48 := by core033_kernel_decide
def op9742 : List WordIR.Op := [.badd 9854 9859]
def bytes9742 : Bytes := ("    let r00002684: u32 = r0000267e.wrapping_add(r00002683);\n" : String).toByteArray.data.toList
theorem checked9742 : bytes9742=statementBytes 9860 (op9742.map lower) ∧ bytes9742.length=60 := by core033_kernel_decide
def op9743 : List WordIR.Op := [.badd 9849 9860]
def bytes9743 : Bytes := ("    let r00002685: u32 = r00002679.wrapping_add(r00002684);\n" : String).toByteArray.data.toList
theorem checked9743 : bytes9743=statementBytes 9861 (op9743.map lower) ∧ bytes9743.length=60 := by core033_kernel_decide
def op9744 : List WordIR.Op := [.badd 9753 9849]
def bytes9744 : Bytes := ("    let r00002686: u32 = r00002619.wrapping_add(r00002679);\n" : String).toByteArray.data.toList
theorem checked9744 : bytes9744=statementBytes 9862 (op9744.map lower) ∧ bytes9744.length=60 := by core033_kernel_decide
def op9745 : List WordIR.Op := [.rotr 9862 6]
def bytes9745 : Bytes := ("    let r00002687: u32 = r00002686.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9745 : bytes9745=statementBytes 9863 (op9745.map lower) ∧ bytes9745.length=65 := by core033_kernel_decide
def op9746 : List WordIR.Op := [.rotr 9862 11]
def bytes9746 : Bytes := ("    let r00002688: u32 = r00002686.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9746 : bytes9746=statementBytes 9864 (op9746.map lower) ∧ bytes9746.length=65 := by core033_kernel_decide
def op9747 : List WordIR.Op := [.bxor 9863 9864]
def bytes9747 : Bytes := ("    let r00002689: u32 = r00002687 ^ r00002688;\n" : String).toByteArray.data.toList
theorem checked9747 : bytes9747=statementBytes 9865 (op9747.map lower) ∧ bytes9747.length=48 := by core033_kernel_decide
def op9748 : List WordIR.Op := [.rotr 9862 25]
def bytes9748 : Bytes := ("    let r0000268a: u32 = r00002686.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9748 : bytes9748=statementBytes 9866 (op9748.map lower) ∧ bytes9748.length=65 := by core033_kernel_decide
def op9749 : List WordIR.Op := [.bxor 9865 9866]
def bytes9749 : Bytes := ("    let r0000268b: u32 = r00002689 ^ r0000268a;\n" : String).toByteArray.data.toList
theorem checked9749 : bytes9749=statementBytes 9867 (op9749.map lower) ∧ bytes9749.length=48 := by core033_kernel_decide
def op9750 : List WordIR.Op := [.badd 9781 9867]
def bytes9750 : Bytes := ("    let r0000268c: u32 = r00002635.wrapping_add(r0000268b);\n" : String).toByteArray.data.toList
theorem checked9750 : bytes9750=statementBytes 9868 (op9750.map lower) ∧ bytes9750.length=60 := by core033_kernel_decide
def op9751 : List WordIR.Op := [.band 9862 9835]
def bytes9751 : Bytes := ("    let r0000268d: u32 = r00002686 & r0000266b;\n" : String).toByteArray.data.toList
theorem checked9751 : bytes9751=statementBytes 9869 (op9751.map lower) ∧ bytes9751.length=48 := by core033_kernel_decide
def op9752 : List WordIR.Op := [.bnot 9862]
def bytes9752 : Bytes := ("    let r0000268e: u32 = !r00002686;\n" : String).toByteArray.data.toList
theorem checked9752 : bytes9752=statementBytes 9870 (op9752.map lower) ∧ bytes9752.length=37 := by core033_kernel_decide
def op9753 : List WordIR.Op := [.band 9870 9808]
def bytes9753 : Bytes := ("    let r0000268f: u32 = r0000268e & r00002650;\n" : String).toByteArray.data.toList
theorem checked9753 : bytes9753=statementBytes 9871 (op9753.map lower) ∧ bytes9753.length=48 := by core033_kernel_decide
def op9754 : List WordIR.Op := [.bxor 9869 9871]
def bytes9754 : Bytes := ("    let r00002690: u32 = r0000268d ^ r0000268f;\n" : String).toByteArray.data.toList
theorem checked9754 : bytes9754=statementBytes 9872 (op9754.map lower) ∧ bytes9754.length=48 := by core033_kernel_decide
def op9755 : List WordIR.Op := [.badd 9868 9872]
def bytes9755 : Bytes := ("    let r00002691: u32 = r0000268c.wrapping_add(r00002690);\n" : String).toByteArray.data.toList
theorem checked9755 : bytes9755=statementBytes 9873 (op9755.map lower) ∧ bytes9755.length=60 := by core033_kernel_decide
def op9756 : List WordIR.Op := [.literal (BitVec.ofNat 32 2820302411)]
def bytes9756 : Bytes := ("    let r00002692: u32 = 0xa81a664b_u32;\n" : String).toByteArray.data.toList
theorem checked9756 : bytes9756=statementBytes 9874 (op9756.map lower) ∧ bytes9756.length=41 := by core033_kernel_decide
def op9757 : List WordIR.Op := [.badd 9873 9874]
def bytes9757 : Bytes := ("    let r00002693: u32 = r00002691.wrapping_add(r00002692);\n" : String).toByteArray.data.toList
theorem checked9757 : bytes9757=statementBytes 9875 (op9757.map lower) ∧ bytes9757.length=60 := by core033_kernel_decide
def op9758 : List WordIR.Op := [.badd 9875 8469]
def bytes9758 : Bytes := ("    let r00002694: u32 = r00002693.wrapping_add(r00002115);\n" : String).toByteArray.data.toList
theorem checked9758 : bytes9758=statementBytes 9876 (op9758.map lower) ∧ bytes9758.length=60 := by core033_kernel_decide
def op9759 : List WordIR.Op := [.rotr 9861 2]
def bytes9759 : Bytes := ("    let r00002695: u32 = r00002685.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9759 : bytes9759=statementBytes 9877 (op9759.map lower) ∧ bytes9759.length=65 := by core033_kernel_decide
def op9760 : List WordIR.Op := [.rotr 9861 13]
def bytes9760 : Bytes := ("    let r00002696: u32 = r00002685.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9760 : bytes9760=statementBytes 9878 (op9760.map lower) ∧ bytes9760.length=65 := by core033_kernel_decide
def op9761 : List WordIR.Op := [.bxor 9877 9878]
def bytes9761 : Bytes := ("    let r00002697: u32 = r00002695 ^ r00002696;\n" : String).toByteArray.data.toList
theorem checked9761 : bytes9761=statementBytes 9879 (op9761.map lower) ∧ bytes9761.length=48 := by core033_kernel_decide
def op9762 : List WordIR.Op := [.rotr 9861 22]
def bytes9762 : Bytes := ("    let r00002698: u32 = r00002685.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9762 : bytes9762=statementBytes 9880 (op9762.map lower) ∧ bytes9762.length=65 := by core033_kernel_decide
def op9763 : List WordIR.Op := [.bxor 9879 9880]
def bytes9763 : Bytes := ("    let r00002699: u32 = r00002697 ^ r00002698;\n" : String).toByteArray.data.toList
theorem checked9763 : bytes9763=statementBytes 9881 (op9763.map lower) ∧ bytes9763.length=48 := by core033_kernel_decide
def op9764 : List WordIR.Op := [.band 9861 9834]
def bytes9764 : Bytes := ("    let r0000269a: u32 = r00002685 & r0000266a;\n" : String).toByteArray.data.toList
theorem checked9764 : bytes9764=statementBytes 9882 (op9764.map lower) ∧ bytes9764.length=48 := by core033_kernel_decide
def op9765 : List WordIR.Op := [.band 9861 9807]
def bytes9765 : Bytes := ("    let r0000269b: u32 = r00002685 & r0000264f;\n" : String).toByteArray.data.toList
theorem checked9765 : bytes9765=statementBytes 9883 (op9765.map lower) ∧ bytes9765.length=48 := by core033_kernel_decide
def op9766 : List WordIR.Op := [.bxor 9882 9883]
def bytes9766 : Bytes := ("    let r0000269c: u32 = r0000269a ^ r0000269b;\n" : String).toByteArray.data.toList
theorem checked9766 : bytes9766=statementBytes 9884 (op9766.map lower) ∧ bytes9766.length=48 := by core033_kernel_decide
def op9767 : List WordIR.Op := [.band 9834 9807]
def bytes9767 : Bytes := ("    let r0000269d: u32 = r0000266a & r0000264f;\n" : String).toByteArray.data.toList
theorem checked9767 : bytes9767=statementBytes 9885 (op9767.map lower) ∧ bytes9767.length=48 := by core033_kernel_decide
def op9768 : List WordIR.Op := [.bxor 9884 9885]
def bytes9768 : Bytes := ("    let r0000269e: u32 = r0000269c ^ r0000269d;\n" : String).toByteArray.data.toList
theorem checked9768 : bytes9768=statementBytes 9886 (op9768.map lower) ∧ bytes9768.length=48 := by core033_kernel_decide
def op9769 : List WordIR.Op := [.badd 9881 9886]
def bytes9769 : Bytes := ("    let r0000269f: u32 = r00002699.wrapping_add(r0000269e);\n" : String).toByteArray.data.toList
theorem checked9769 : bytes9769=statementBytes 9887 (op9769.map lower) ∧ bytes9769.length=60 := by core033_kernel_decide
def op9770 : List WordIR.Op := [.badd 9876 9887]
def bytes9770 : Bytes := ("    let r000026a0: u32 = r00002694.wrapping_add(r0000269f);\n" : String).toByteArray.data.toList
theorem checked9770 : bytes9770=statementBytes 9888 (op9770.map lower) ∧ bytes9770.length=60 := by core033_kernel_decide
def op9771 : List WordIR.Op := [.badd 9780 9876]
def bytes9771 : Bytes := ("    let r000026a1: u32 = r00002634.wrapping_add(r00002694);\n" : String).toByteArray.data.toList
theorem checked9771 : bytes9771=statementBytes 9889 (op9771.map lower) ∧ bytes9771.length=60 := by core033_kernel_decide
def op9772 : List WordIR.Op := [.rotr 9889 6]
def bytes9772 : Bytes := ("    let r000026a2: u32 = r000026a1.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9772 : bytes9772=statementBytes 9890 (op9772.map lower) ∧ bytes9772.length=65 := by core033_kernel_decide
def op9773 : List WordIR.Op := [.rotr 9889 11]
def bytes9773 : Bytes := ("    let r000026a3: u32 = r000026a1.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9773 : bytes9773=statementBytes 9891 (op9773.map lower) ∧ bytes9773.length=65 := by core033_kernel_decide
def op9774 : List WordIR.Op := [.bxor 9890 9891]
def bytes9774 : Bytes := ("    let r000026a4: u32 = r000026a2 ^ r000026a3;\n" : String).toByteArray.data.toList
theorem checked9774 : bytes9774=statementBytes 9892 (op9774.map lower) ∧ bytes9774.length=48 := by core033_kernel_decide
def op9775 : List WordIR.Op := [.rotr 9889 25]
def bytes9775 : Bytes := ("    let r000026a5: u32 = r000026a1.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9775 : bytes9775=statementBytes 9893 (op9775.map lower) ∧ bytes9775.length=65 := by core033_kernel_decide
def op9776 : List WordIR.Op := [.bxor 9892 9893]
def bytes9776 : Bytes := ("    let r000026a6: u32 = r000026a4 ^ r000026a5;\n" : String).toByteArray.data.toList
theorem checked9776 : bytes9776=statementBytes 9894 (op9776.map lower) ∧ bytes9776.length=48 := by core033_kernel_decide
def op9777 : List WordIR.Op := [.badd 9808 9894]
def bytes9777 : Bytes := ("    let r000026a7: u32 = r00002650.wrapping_add(r000026a6);\n" : String).toByteArray.data.toList
theorem checked9777 : bytes9777=statementBytes 9895 (op9777.map lower) ∧ bytes9777.length=60 := by core033_kernel_decide
def op9778 : List WordIR.Op := [.band 9889 9862]
def bytes9778 : Bytes := ("    let r000026a8: u32 = r000026a1 & r00002686;\n" : String).toByteArray.data.toList
theorem checked9778 : bytes9778=statementBytes 9896 (op9778.map lower) ∧ bytes9778.length=48 := by core033_kernel_decide
def op9779 : List WordIR.Op := [.bnot 9889]
def bytes9779 : Bytes := ("    let r000026a9: u32 = !r000026a1;\n" : String).toByteArray.data.toList
theorem checked9779 : bytes9779=statementBytes 9897 (op9779.map lower) ∧ bytes9779.length=37 := by core033_kernel_decide
def op9780 : List WordIR.Op := [.band 9897 9835]
def bytes9780 : Bytes := ("    let r000026aa: u32 = r000026a9 & r0000266b;\n" : String).toByteArray.data.toList
theorem checked9780 : bytes9780=statementBytes 9898 (op9780.map lower) ∧ bytes9780.length=48 := by core033_kernel_decide
def op9781 : List WordIR.Op := [.bxor 9896 9898]
def bytes9781 : Bytes := ("    let r000026ab: u32 = r000026a8 ^ r000026aa;\n" : String).toByteArray.data.toList
theorem checked9781 : bytes9781=statementBytes 9899 (op9781.map lower) ∧ bytes9781.length=48 := by core033_kernel_decide
def op9782 : List WordIR.Op := [.badd 9895 9899]
def bytes9782 : Bytes := ("    let r000026ac: u32 = r000026a7.wrapping_add(r000026ab);\n" : String).toByteArray.data.toList
theorem checked9782 : bytes9782=statementBytes 9900 (op9782.map lower) ∧ bytes9782.length=60 := by core033_kernel_decide
def op9783 : List WordIR.Op := [.literal (BitVec.ofNat 32 3259730800)]
def bytes9783 : Bytes := ("    let r000026ad: u32 = 0xc24b8b70_u32;\n" : String).toByteArray.data.toList
theorem checked9783 : bytes9783=statementBytes 9901 (op9783.map lower) ∧ bytes9783.length=41 := by core033_kernel_decide
def op9784 : List WordIR.Op := [.badd 9900 9901]
def bytes9784 : Bytes := ("    let r000026ae: u32 = r000026ac.wrapping_add(r000026ad);\n" : String).toByteArray.data.toList
theorem checked9784 : bytes9784=statementBytes 9902 (op9784.map lower) ∧ bytes9784.length=60 := by core033_kernel_decide
def op9785 : List WordIR.Op := [.badd 9902 8482]
def bytes9785 : Bytes := ("    let r000026af: u32 = r000026ae.wrapping_add(r00002122);\n" : String).toByteArray.data.toList
theorem checked9785 : bytes9785=statementBytes 9903 (op9785.map lower) ∧ bytes9785.length=60 := by core033_kernel_decide
def op9786 : List WordIR.Op := [.rotr 9888 2]
def bytes9786 : Bytes := ("    let r000026b0: u32 = r000026a0.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9786 : bytes9786=statementBytes 9904 (op9786.map lower) ∧ bytes9786.length=65 := by core033_kernel_decide
def op9787 : List WordIR.Op := [.rotr 9888 13]
def bytes9787 : Bytes := ("    let r000026b1: u32 = r000026a0.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9787 : bytes9787=statementBytes 9905 (op9787.map lower) ∧ bytes9787.length=65 := by core033_kernel_decide
def op9788 : List WordIR.Op := [.bxor 9904 9905]
def bytes9788 : Bytes := ("    let r000026b2: u32 = r000026b0 ^ r000026b1;\n" : String).toByteArray.data.toList
theorem checked9788 : bytes9788=statementBytes 9906 (op9788.map lower) ∧ bytes9788.length=48 := by core033_kernel_decide
def op9789 : List WordIR.Op := [.rotr 9888 22]
def bytes9789 : Bytes := ("    let r000026b3: u32 = r000026a0.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9789 : bytes9789=statementBytes 9907 (op9789.map lower) ∧ bytes9789.length=65 := by core033_kernel_decide
def op9790 : List WordIR.Op := [.bxor 9906 9907]
def bytes9790 : Bytes := ("    let r000026b4: u32 = r000026b2 ^ r000026b3;\n" : String).toByteArray.data.toList
theorem checked9790 : bytes9790=statementBytes 9908 (op9790.map lower) ∧ bytes9790.length=48 := by core033_kernel_decide
def op9791 : List WordIR.Op := [.band 9888 9861]
def bytes9791 : Bytes := ("    let r000026b5: u32 = r000026a0 & r00002685;\n" : String).toByteArray.data.toList
theorem checked9791 : bytes9791=statementBytes 9909 (op9791.map lower) ∧ bytes9791.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9728,op9729,op9730,op9731,op9732,op9733,op9734,op9735,op9736,op9737,op9738,op9739,op9740,op9741,op9742,op9743,op9744,op9745,op9746,op9747,op9748,op9749,op9750,op9751,op9752,op9753,op9754,op9755,op9756,op9757,op9758,op9759,op9760,op9761,op9762,op9763,op9764,op9765,op9766,op9767,op9768,op9769,op9770,op9771,op9772,op9773,op9774,op9775,op9776,op9777,op9778,op9779,op9780,op9781,op9782,op9783,op9784,op9785,op9786,op9787,op9788,op9789,op9790,op9791]
def chunks : List Bytes := [bytes9728,bytes9729,bytes9730,bytes9731,bytes9732,bytes9733,bytes9734,bytes9735,bytes9736,bytes9737,bytes9738,bytes9739,bytes9740,bytes9741,bytes9742,bytes9743,bytes9744,bytes9745,bytes9746,bytes9747,bytes9748,bytes9749,bytes9750,bytes9751,bytes9752,bytes9753,bytes9754,bytes9755,bytes9756,bytes9757,bytes9758,bytes9759,bytes9760,bytes9761,bytes9762,bytes9763,bytes9764,bytes9765,bytes9766,bytes9767,bytes9768,bytes9769,bytes9770,bytes9771,bytes9772,bytes9773,bytes9774,bytes9775,bytes9776,bytes9777,bytes9778,bytes9779,bytes9780,bytes9781,bytes9782,bytes9783,bytes9784,bytes9785,bytes9786,bytes9787,bytes9788,bytes9789,bytes9790,bytes9791]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9846 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9728.1 (.cons _ _ _ _ _ checked9729.1 (.cons _ _ _ _ _ checked9730.1 (.cons _ _ _ _ _ checked9731.1 (.cons _ _ _ _ _ checked9732.1 (.cons _ _ _ _ _ checked9733.1 (.cons _ _ _ _ _ checked9734.1 (.cons _ _ _ _ _ checked9735.1 (.cons _ _ _ _ _ checked9736.1 (.cons _ _ _ _ _ checked9737.1 (.cons _ _ _ _ _ checked9738.1 (.cons _ _ _ _ _ checked9739.1 (.cons _ _ _ _ _ checked9740.1 (.cons _ _ _ _ _ checked9741.1 (.cons _ _ _ _ _ checked9742.1 (.cons _ _ _ _ _ checked9743.1 (.cons _ _ _ _ _ checked9744.1 (.cons _ _ _ _ _ checked9745.1 (.cons _ _ _ _ _ checked9746.1 (.cons _ _ _ _ _ checked9747.1 (.cons _ _ _ _ _ checked9748.1 (.cons _ _ _ _ _ checked9749.1 (.cons _ _ _ _ _ checked9750.1 (.cons _ _ _ _ _ checked9751.1 (.cons _ _ _ _ _ checked9752.1 (.cons _ _ _ _ _ checked9753.1 (.cons _ _ _ _ _ checked9754.1 (.cons _ _ _ _ _ checked9755.1 (.cons _ _ _ _ _ checked9756.1 (.cons _ _ _ _ _ checked9757.1 (.cons _ _ _ _ _ checked9758.1 (.cons _ _ _ _ _ checked9759.1 (.cons _ _ _ _ _ checked9760.1 (.cons _ _ _ _ _ checked9761.1 (.cons _ _ _ _ _ checked9762.1 (.cons _ _ _ _ _ checked9763.1 (.cons _ _ _ _ _ checked9764.1 (.cons _ _ _ _ _ checked9765.1 (.cons _ _ _ _ _ checked9766.1 (.cons _ _ _ _ _ checked9767.1 (.cons _ _ _ _ _ checked9768.1 (.cons _ _ _ _ _ checked9769.1 (.cons _ _ _ _ _ checked9770.1 (.cons _ _ _ _ _ checked9771.1 (.cons _ _ _ _ _ checked9772.1 (.cons _ _ _ _ _ checked9773.1 (.cons _ _ _ _ _ checked9774.1 (.cons _ _ _ _ _ checked9775.1 (.cons _ _ _ _ _ checked9776.1 (.cons _ _ _ _ _ checked9777.1 (.cons _ _ _ _ _ checked9778.1 (.cons _ _ _ _ _ checked9779.1 (.cons _ _ _ _ _ checked9780.1 (.cons _ _ _ _ _ checked9781.1 (.cons _ _ _ _ _ checked9782.1 (.cons _ _ _ _ _ checked9783.1 (.cons _ _ _ _ _ checked9784.1 (.cons _ _ _ _ _ checked9785.1 (.cons _ _ _ _ _ checked9786.1 (.cons _ _ _ _ _ checked9787.1 (.cons _ _ _ _ _ checked9788.1 (.cons _ _ _ _ _ checked9789.1 (.cons _ _ _ _ _ checked9790.1 (.cons _ _ _ _ _ checked9791.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9846 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3488 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9728.2,checked9729.2,checked9730.2,checked9731.2,checked9732.2,checked9733.2,checked9734.2,checked9735.2,checked9736.2,checked9737.2,checked9738.2,checked9739.2,checked9740.2,checked9741.2,checked9742.2,checked9743.2,checked9744.2,checked9745.2,checked9746.2,checked9747.2,checked9748.2,checked9749.2,checked9750.2,checked9751.2,checked9752.2,checked9753.2,checked9754.2,checked9755.2,checked9756.2,checked9757.2,checked9758.2,checked9759.2,checked9760.2,checked9761.2,checked9762.2,checked9763.2,checked9764.2,checked9765.2,checked9766.2,checked9767.2,checked9768.2,checked9769.2,checked9770.2,checked9771.2,checked9772.2,checked9773.2,checked9774.2,checked9775.2,checked9776.2,checked9777.2,checked9778.2,checked9779.2,checked9780.2,checked9781.2,checked9782.2,checked9783.2,checked9784.2,checked9785.2,checked9786.2,checked9787.2,checked9788.2,checked9789.2,checked9790.2,checked9791.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup152
