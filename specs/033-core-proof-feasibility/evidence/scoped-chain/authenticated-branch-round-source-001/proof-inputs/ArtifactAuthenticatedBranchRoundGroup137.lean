import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup137
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8768 : List WordIR.Op := [.band 8835 8808]
def bytes8768 : Bytes := ("    let r000022b6: u32 = r00002283 & r00002268;\n" : String).toByteArray.data.toList
theorem checked8768 : bytes8768=statementBytes 8886 (op8768.map lower) ∧ bytes8768.length=48 := by core033_kernel_decide
def op8769 : List WordIR.Op := [.bxor 8885 8886]
def bytes8769 : Bytes := ("    let r000022b7: u32 = r000022b5 ^ r000022b6;\n" : String).toByteArray.data.toList
theorem checked8769 : bytes8769=statementBytes 8887 (op8769.map lower) ∧ bytes8769.length=48 := by core033_kernel_decide
def op8770 : List WordIR.Op := [.badd 8882 8887]
def bytes8770 : Bytes := ("    let r000022b8: u32 = r000022b2.wrapping_add(r000022b7);\n" : String).toByteArray.data.toList
theorem checked8770 : bytes8770=statementBytes 8888 (op8770.map lower) ∧ bytes8770.length=60 := by core033_kernel_decide
def op8771 : List WordIR.Op := [.badd 8877 8888]
def bytes8771 : Bytes := ("    let r000022b9: u32 = r000022ad.wrapping_add(r000022b8);\n" : String).toByteArray.data.toList
theorem checked8771 : bytes8771=statementBytes 8889 (op8771.map lower) ∧ bytes8771.length=60 := by core033_kernel_decide
def op8772 : List WordIR.Op := [.badd 8781 8877]
def bytes8772 : Bytes := ("    let r000022ba: u32 = r0000224d.wrapping_add(r000022ad);\n" : String).toByteArray.data.toList
theorem checked8772 : bytes8772=statementBytes 8890 (op8772.map lower) ∧ bytes8772.length=60 := by core033_kernel_decide
def op8773 : List WordIR.Op := [.rotr 8890 6]
def bytes8773 : Bytes := ("    let r000022bb: u32 = r000022ba.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8773 : bytes8773=statementBytes 8891 (op8773.map lower) ∧ bytes8773.length=65 := by core033_kernel_decide
def op8774 : List WordIR.Op := [.rotr 8890 11]
def bytes8774 : Bytes := ("    let r000022bc: u32 = r000022ba.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8774 : bytes8774=statementBytes 8892 (op8774.map lower) ∧ bytes8774.length=65 := by core033_kernel_decide
def op8775 : List WordIR.Op := [.bxor 8891 8892]
def bytes8775 : Bytes := ("    let r000022bd: u32 = r000022bb ^ r000022bc;\n" : String).toByteArray.data.toList
theorem checked8775 : bytes8775=statementBytes 8893 (op8775.map lower) ∧ bytes8775.length=48 := by core033_kernel_decide
def op8776 : List WordIR.Op := [.rotr 8890 25]
def bytes8776 : Bytes := ("    let r000022be: u32 = r000022ba.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8776 : bytes8776=statementBytes 8894 (op8776.map lower) ∧ bytes8776.length=65 := by core033_kernel_decide
def op8777 : List WordIR.Op := [.bxor 8893 8894]
def bytes8777 : Bytes := ("    let r000022bf: u32 = r000022bd ^ r000022be;\n" : String).toByteArray.data.toList
theorem checked8777 : bytes8777=statementBytes 8895 (op8777.map lower) ∧ bytes8777.length=48 := by core033_kernel_decide
def op8778 : List WordIR.Op := [.badd 8809 8895]
def bytes8778 : Bytes := ("    let r000022c0: u32 = r00002269.wrapping_add(r000022bf);\n" : String).toByteArray.data.toList
theorem checked8778 : bytes8778=statementBytes 8896 (op8778.map lower) ∧ bytes8778.length=60 := by core033_kernel_decide
def op8779 : List WordIR.Op := [.band 8890 8863]
def bytes8779 : Bytes := ("    let r000022c1: u32 = r000022ba & r0000229f;\n" : String).toByteArray.data.toList
theorem checked8779 : bytes8779=statementBytes 8897 (op8779.map lower) ∧ bytes8779.length=48 := by core033_kernel_decide
def op8780 : List WordIR.Op := [.bnot 8890]
def bytes8780 : Bytes := ("    let r000022c2: u32 = !r000022ba;\n" : String).toByteArray.data.toList
theorem checked8780 : bytes8780=statementBytes 8898 (op8780.map lower) ∧ bytes8780.length=37 := by core033_kernel_decide
def op8781 : List WordIR.Op := [.band 8898 8836]
def bytes8781 : Bytes := ("    let r000022c3: u32 = r000022c2 & r00002284;\n" : String).toByteArray.data.toList
theorem checked8781 : bytes8781=statementBytes 8899 (op8781.map lower) ∧ bytes8781.length=48 := by core033_kernel_decide
def op8782 : List WordIR.Op := [.bxor 8897 8899]
def bytes8782 : Bytes := ("    let r000022c4: u32 = r000022c1 ^ r000022c3;\n" : String).toByteArray.data.toList
theorem checked8782 : bytes8782=statementBytes 8900 (op8782.map lower) ∧ bytes8782.length=48 := by core033_kernel_decide
def op8783 : List WordIR.Op := [.badd 8896 8900]
def bytes8783 : Bytes := ("    let r000022c5: u32 = r000022c0.wrapping_add(r000022c4);\n" : String).toByteArray.data.toList
theorem checked8783 : bytes8783=statementBytes 8901 (op8783.map lower) ∧ bytes8783.length=60 := by core033_kernel_decide
def op8784 : List WordIR.Op := [.literal (BitVec.ofNat 32 1508970993)]
def bytes8784 : Bytes := ("    let r000022c6: u32 = 0x59f111f1_u32;\n" : String).toByteArray.data.toList
theorem checked8784 : bytes8784=statementBytes 8902 (op8784.map lower) ∧ bytes8784.length=41 := by core033_kernel_decide
def op8785 : List WordIR.Op := [.badd 8901 8902]
def bytes8785 : Bytes := ("    let r000022c7: u32 = r000022c5.wrapping_add(r000022c6);\n" : String).toByteArray.data.toList
theorem checked8785 : bytes8785=statementBytes 8903 (op8785.map lower) ∧ bytes8785.length=60 := by core033_kernel_decide
def op8786 : List WordIR.Op := [.badd 8903 6919]
def bytes8786 : Bytes := ("    let r000022c8: u32 = r000022c7.wrapping_add(r00001b07);\n" : String).toByteArray.data.toList
theorem checked8786 : bytes8786=statementBytes 8904 (op8786.map lower) ∧ bytes8786.length=60 := by core033_kernel_decide
def op8787 : List WordIR.Op := [.rotr 8889 2]
def bytes8787 : Bytes := ("    let r000022c9: u32 = r000022b9.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8787 : bytes8787=statementBytes 8905 (op8787.map lower) ∧ bytes8787.length=65 := by core033_kernel_decide
def op8788 : List WordIR.Op := [.rotr 8889 13]
def bytes8788 : Bytes := ("    let r000022ca: u32 = r000022b9.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8788 : bytes8788=statementBytes 8906 (op8788.map lower) ∧ bytes8788.length=65 := by core033_kernel_decide
def op8789 : List WordIR.Op := [.bxor 8905 8906]
def bytes8789 : Bytes := ("    let r000022cb: u32 = r000022c9 ^ r000022ca;\n" : String).toByteArray.data.toList
theorem checked8789 : bytes8789=statementBytes 8907 (op8789.map lower) ∧ bytes8789.length=48 := by core033_kernel_decide
def op8790 : List WordIR.Op := [.rotr 8889 22]
def bytes8790 : Bytes := ("    let r000022cc: u32 = r000022b9.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8790 : bytes8790=statementBytes 8908 (op8790.map lower) ∧ bytes8790.length=65 := by core033_kernel_decide
def op8791 : List WordIR.Op := [.bxor 8907 8908]
def bytes8791 : Bytes := ("    let r000022cd: u32 = r000022cb ^ r000022cc;\n" : String).toByteArray.data.toList
theorem checked8791 : bytes8791=statementBytes 8909 (op8791.map lower) ∧ bytes8791.length=48 := by core033_kernel_decide
def op8792 : List WordIR.Op := [.band 8889 8862]
def bytes8792 : Bytes := ("    let r000022ce: u32 = r000022b9 & r0000229e;\n" : String).toByteArray.data.toList
theorem checked8792 : bytes8792=statementBytes 8910 (op8792.map lower) ∧ bytes8792.length=48 := by core033_kernel_decide
def op8793 : List WordIR.Op := [.band 8889 8835]
def bytes8793 : Bytes := ("    let r000022cf: u32 = r000022b9 & r00002283;\n" : String).toByteArray.data.toList
theorem checked8793 : bytes8793=statementBytes 8911 (op8793.map lower) ∧ bytes8793.length=48 := by core033_kernel_decide
def op8794 : List WordIR.Op := [.bxor 8910 8911]
def bytes8794 : Bytes := ("    let r000022d0: u32 = r000022ce ^ r000022cf;\n" : String).toByteArray.data.toList
theorem checked8794 : bytes8794=statementBytes 8912 (op8794.map lower) ∧ bytes8794.length=48 := by core033_kernel_decide
def op8795 : List WordIR.Op := [.band 8862 8835]
def bytes8795 : Bytes := ("    let r000022d1: u32 = r0000229e & r00002283;\n" : String).toByteArray.data.toList
theorem checked8795 : bytes8795=statementBytes 8913 (op8795.map lower) ∧ bytes8795.length=48 := by core033_kernel_decide
def op8796 : List WordIR.Op := [.bxor 8912 8913]
def bytes8796 : Bytes := ("    let r000022d2: u32 = r000022d0 ^ r000022d1;\n" : String).toByteArray.data.toList
theorem checked8796 : bytes8796=statementBytes 8914 (op8796.map lower) ∧ bytes8796.length=48 := by core033_kernel_decide
def op8797 : List WordIR.Op := [.badd 8909 8914]
def bytes8797 : Bytes := ("    let r000022d3: u32 = r000022cd.wrapping_add(r000022d2);\n" : String).toByteArray.data.toList
theorem checked8797 : bytes8797=statementBytes 8915 (op8797.map lower) ∧ bytes8797.length=60 := by core033_kernel_decide
def op8798 : List WordIR.Op := [.badd 8904 8915]
def bytes8798 : Bytes := ("    let r000022d4: u32 = r000022c8.wrapping_add(r000022d3);\n" : String).toByteArray.data.toList
theorem checked8798 : bytes8798=statementBytes 8916 (op8798.map lower) ∧ bytes8798.length=60 := by core033_kernel_decide
def op8799 : List WordIR.Op := [.badd 8808 8904]
def bytes8799 : Bytes := ("    let r000022d5: u32 = r00002268.wrapping_add(r000022c8);\n" : String).toByteArray.data.toList
theorem checked8799 : bytes8799=statementBytes 8917 (op8799.map lower) ∧ bytes8799.length=60 := by core033_kernel_decide
def op8800 : List WordIR.Op := [.rotr 8917 6]
def bytes8800 : Bytes := ("    let r000022d6: u32 = r000022d5.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8800 : bytes8800=statementBytes 8918 (op8800.map lower) ∧ bytes8800.length=65 := by core033_kernel_decide
def op8801 : List WordIR.Op := [.rotr 8917 11]
def bytes8801 : Bytes := ("    let r000022d7: u32 = r000022d5.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8801 : bytes8801=statementBytes 8919 (op8801.map lower) ∧ bytes8801.length=65 := by core033_kernel_decide
def op8802 : List WordIR.Op := [.bxor 8918 8919]
def bytes8802 : Bytes := ("    let r000022d8: u32 = r000022d6 ^ r000022d7;\n" : String).toByteArray.data.toList
theorem checked8802 : bytes8802=statementBytes 8920 (op8802.map lower) ∧ bytes8802.length=48 := by core033_kernel_decide
def op8803 : List WordIR.Op := [.rotr 8917 25]
def bytes8803 : Bytes := ("    let r000022d9: u32 = r000022d5.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8803 : bytes8803=statementBytes 8921 (op8803.map lower) ∧ bytes8803.length=65 := by core033_kernel_decide
def op8804 : List WordIR.Op := [.bxor 8920 8921]
def bytes8804 : Bytes := ("    let r000022da: u32 = r000022d8 ^ r000022d9;\n" : String).toByteArray.data.toList
theorem checked8804 : bytes8804=statementBytes 8922 (op8804.map lower) ∧ bytes8804.length=48 := by core033_kernel_decide
def op8805 : List WordIR.Op := [.badd 8836 8922]
def bytes8805 : Bytes := ("    let r000022db: u32 = r00002284.wrapping_add(r000022da);\n" : String).toByteArray.data.toList
theorem checked8805 : bytes8805=statementBytes 8923 (op8805.map lower) ∧ bytes8805.length=60 := by core033_kernel_decide
def op8806 : List WordIR.Op := [.band 8917 8890]
def bytes8806 : Bytes := ("    let r000022dc: u32 = r000022d5 & r000022ba;\n" : String).toByteArray.data.toList
theorem checked8806 : bytes8806=statementBytes 8924 (op8806.map lower) ∧ bytes8806.length=48 := by core033_kernel_decide
def op8807 : List WordIR.Op := [.bnot 8917]
def bytes8807 : Bytes := ("    let r000022dd: u32 = !r000022d5;\n" : String).toByteArray.data.toList
theorem checked8807 : bytes8807=statementBytes 8925 (op8807.map lower) ∧ bytes8807.length=37 := by core033_kernel_decide
def op8808 : List WordIR.Op := [.band 8925 8863]
def bytes8808 : Bytes := ("    let r000022de: u32 = r000022dd & r0000229f;\n" : String).toByteArray.data.toList
theorem checked8808 : bytes8808=statementBytes 8926 (op8808.map lower) ∧ bytes8808.length=48 := by core033_kernel_decide
def op8809 : List WordIR.Op := [.bxor 8924 8926]
def bytes8809 : Bytes := ("    let r000022df: u32 = r000022dc ^ r000022de;\n" : String).toByteArray.data.toList
theorem checked8809 : bytes8809=statementBytes 8927 (op8809.map lower) ∧ bytes8809.length=48 := by core033_kernel_decide
def op8810 : List WordIR.Op := [.badd 8923 8927]
def bytes8810 : Bytes := ("    let r000022e0: u32 = r000022db.wrapping_add(r000022df);\n" : String).toByteArray.data.toList
theorem checked8810 : bytes8810=statementBytes 8928 (op8810.map lower) ∧ bytes8810.length=60 := by core033_kernel_decide
def op8811 : List WordIR.Op := [.literal (BitVec.ofNat 32 2453635748)]
def bytes8811 : Bytes := ("    let r000022e1: u32 = 0x923f82a4_u32;\n" : String).toByteArray.data.toList
theorem checked8811 : bytes8811=statementBytes 8929 (op8811.map lower) ∧ bytes8811.length=41 := by core033_kernel_decide
def op8812 : List WordIR.Op := [.badd 8928 8929]
def bytes8812 : Bytes := ("    let r000022e2: u32 = r000022e0.wrapping_add(r000022e1);\n" : String).toByteArray.data.toList
theorem checked8812 : bytes8812=statementBytes 8930 (op8812.map lower) ∧ bytes8812.length=60 := by core033_kernel_decide
def op8813 : List WordIR.Op := [.badd 8930 6925]
def bytes8813 : Bytes := ("    let r000022e3: u32 = r000022e2.wrapping_add(r00001b0d);\n" : String).toByteArray.data.toList
theorem checked8813 : bytes8813=statementBytes 8931 (op8813.map lower) ∧ bytes8813.length=60 := by core033_kernel_decide
def op8814 : List WordIR.Op := [.rotr 8916 2]
def bytes8814 : Bytes := ("    let r000022e4: u32 = r000022d4.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8814 : bytes8814=statementBytes 8932 (op8814.map lower) ∧ bytes8814.length=65 := by core033_kernel_decide
def op8815 : List WordIR.Op := [.rotr 8916 13]
def bytes8815 : Bytes := ("    let r000022e5: u32 = r000022d4.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8815 : bytes8815=statementBytes 8933 (op8815.map lower) ∧ bytes8815.length=65 := by core033_kernel_decide
def op8816 : List WordIR.Op := [.bxor 8932 8933]
def bytes8816 : Bytes := ("    let r000022e6: u32 = r000022e4 ^ r000022e5;\n" : String).toByteArray.data.toList
theorem checked8816 : bytes8816=statementBytes 8934 (op8816.map lower) ∧ bytes8816.length=48 := by core033_kernel_decide
def op8817 : List WordIR.Op := [.rotr 8916 22]
def bytes8817 : Bytes := ("    let r000022e7: u32 = r000022d4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8817 : bytes8817=statementBytes 8935 (op8817.map lower) ∧ bytes8817.length=65 := by core033_kernel_decide
def op8818 : List WordIR.Op := [.bxor 8934 8935]
def bytes8818 : Bytes := ("    let r000022e8: u32 = r000022e6 ^ r000022e7;\n" : String).toByteArray.data.toList
theorem checked8818 : bytes8818=statementBytes 8936 (op8818.map lower) ∧ bytes8818.length=48 := by core033_kernel_decide
def op8819 : List WordIR.Op := [.band 8916 8889]
def bytes8819 : Bytes := ("    let r000022e9: u32 = r000022d4 & r000022b9;\n" : String).toByteArray.data.toList
theorem checked8819 : bytes8819=statementBytes 8937 (op8819.map lower) ∧ bytes8819.length=48 := by core033_kernel_decide
def op8820 : List WordIR.Op := [.band 8916 8862]
def bytes8820 : Bytes := ("    let r000022ea: u32 = r000022d4 & r0000229e;\n" : String).toByteArray.data.toList
theorem checked8820 : bytes8820=statementBytes 8938 (op8820.map lower) ∧ bytes8820.length=48 := by core033_kernel_decide
def op8821 : List WordIR.Op := [.bxor 8937 8938]
def bytes8821 : Bytes := ("    let r000022eb: u32 = r000022e9 ^ r000022ea;\n" : String).toByteArray.data.toList
theorem checked8821 : bytes8821=statementBytes 8939 (op8821.map lower) ∧ bytes8821.length=48 := by core033_kernel_decide
def op8822 : List WordIR.Op := [.band 8889 8862]
def bytes8822 : Bytes := ("    let r000022ec: u32 = r000022b9 & r0000229e;\n" : String).toByteArray.data.toList
theorem checked8822 : bytes8822=statementBytes 8940 (op8822.map lower) ∧ bytes8822.length=48 := by core033_kernel_decide
def op8823 : List WordIR.Op := [.bxor 8939 8940]
def bytes8823 : Bytes := ("    let r000022ed: u32 = r000022eb ^ r000022ec;\n" : String).toByteArray.data.toList
theorem checked8823 : bytes8823=statementBytes 8941 (op8823.map lower) ∧ bytes8823.length=48 := by core033_kernel_decide
def op8824 : List WordIR.Op := [.badd 8936 8941]
def bytes8824 : Bytes := ("    let r000022ee: u32 = r000022e8.wrapping_add(r000022ed);\n" : String).toByteArray.data.toList
theorem checked8824 : bytes8824=statementBytes 8942 (op8824.map lower) ∧ bytes8824.length=60 := by core033_kernel_decide
def op8825 : List WordIR.Op := [.badd 8931 8942]
def bytes8825 : Bytes := ("    let r000022ef: u32 = r000022e3.wrapping_add(r000022ee);\n" : String).toByteArray.data.toList
theorem checked8825 : bytes8825=statementBytes 8943 (op8825.map lower) ∧ bytes8825.length=60 := by core033_kernel_decide
def op8826 : List WordIR.Op := [.badd 8835 8931]
def bytes8826 : Bytes := ("    let r000022f0: u32 = r00002283.wrapping_add(r000022e3);\n" : String).toByteArray.data.toList
theorem checked8826 : bytes8826=statementBytes 8944 (op8826.map lower) ∧ bytes8826.length=60 := by core033_kernel_decide
def op8827 : List WordIR.Op := [.rotr 8944 6]
def bytes8827 : Bytes := ("    let r000022f1: u32 = r000022f0.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8827 : bytes8827=statementBytes 8945 (op8827.map lower) ∧ bytes8827.length=65 := by core033_kernel_decide
def op8828 : List WordIR.Op := [.rotr 8944 11]
def bytes8828 : Bytes := ("    let r000022f2: u32 = r000022f0.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8828 : bytes8828=statementBytes 8946 (op8828.map lower) ∧ bytes8828.length=65 := by core033_kernel_decide
def op8829 : List WordIR.Op := [.bxor 8945 8946]
def bytes8829 : Bytes := ("    let r000022f3: u32 = r000022f1 ^ r000022f2;\n" : String).toByteArray.data.toList
theorem checked8829 : bytes8829=statementBytes 8947 (op8829.map lower) ∧ bytes8829.length=48 := by core033_kernel_decide
def op8830 : List WordIR.Op := [.rotr 8944 25]
def bytes8830 : Bytes := ("    let r000022f4: u32 = r000022f0.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8830 : bytes8830=statementBytes 8948 (op8830.map lower) ∧ bytes8830.length=65 := by core033_kernel_decide
def op8831 : List WordIR.Op := [.bxor 8947 8948]
def bytes8831 : Bytes := ("    let r000022f5: u32 = r000022f3 ^ r000022f4;\n" : String).toByteArray.data.toList
theorem checked8831 : bytes8831=statementBytes 8949 (op8831.map lower) ∧ bytes8831.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8768,op8769,op8770,op8771,op8772,op8773,op8774,op8775,op8776,op8777,op8778,op8779,op8780,op8781,op8782,op8783,op8784,op8785,op8786,op8787,op8788,op8789,op8790,op8791,op8792,op8793,op8794,op8795,op8796,op8797,op8798,op8799,op8800,op8801,op8802,op8803,op8804,op8805,op8806,op8807,op8808,op8809,op8810,op8811,op8812,op8813,op8814,op8815,op8816,op8817,op8818,op8819,op8820,op8821,op8822,op8823,op8824,op8825,op8826,op8827,op8828,op8829,op8830,op8831]
def chunks : List Bytes := [bytes8768,bytes8769,bytes8770,bytes8771,bytes8772,bytes8773,bytes8774,bytes8775,bytes8776,bytes8777,bytes8778,bytes8779,bytes8780,bytes8781,bytes8782,bytes8783,bytes8784,bytes8785,bytes8786,bytes8787,bytes8788,bytes8789,bytes8790,bytes8791,bytes8792,bytes8793,bytes8794,bytes8795,bytes8796,bytes8797,bytes8798,bytes8799,bytes8800,bytes8801,bytes8802,bytes8803,bytes8804,bytes8805,bytes8806,bytes8807,bytes8808,bytes8809,bytes8810,bytes8811,bytes8812,bytes8813,bytes8814,bytes8815,bytes8816,bytes8817,bytes8818,bytes8819,bytes8820,bytes8821,bytes8822,bytes8823,bytes8824,bytes8825,bytes8826,bytes8827,bytes8828,bytes8829,bytes8830,bytes8831]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8886 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8768.1 (.cons _ _ _ _ _ checked8769.1 (.cons _ _ _ _ _ checked8770.1 (.cons _ _ _ _ _ checked8771.1 (.cons _ _ _ _ _ checked8772.1 (.cons _ _ _ _ _ checked8773.1 (.cons _ _ _ _ _ checked8774.1 (.cons _ _ _ _ _ checked8775.1 (.cons _ _ _ _ _ checked8776.1 (.cons _ _ _ _ _ checked8777.1 (.cons _ _ _ _ _ checked8778.1 (.cons _ _ _ _ _ checked8779.1 (.cons _ _ _ _ _ checked8780.1 (.cons _ _ _ _ _ checked8781.1 (.cons _ _ _ _ _ checked8782.1 (.cons _ _ _ _ _ checked8783.1 (.cons _ _ _ _ _ checked8784.1 (.cons _ _ _ _ _ checked8785.1 (.cons _ _ _ _ _ checked8786.1 (.cons _ _ _ _ _ checked8787.1 (.cons _ _ _ _ _ checked8788.1 (.cons _ _ _ _ _ checked8789.1 (.cons _ _ _ _ _ checked8790.1 (.cons _ _ _ _ _ checked8791.1 (.cons _ _ _ _ _ checked8792.1 (.cons _ _ _ _ _ checked8793.1 (.cons _ _ _ _ _ checked8794.1 (.cons _ _ _ _ _ checked8795.1 (.cons _ _ _ _ _ checked8796.1 (.cons _ _ _ _ _ checked8797.1 (.cons _ _ _ _ _ checked8798.1 (.cons _ _ _ _ _ checked8799.1 (.cons _ _ _ _ _ checked8800.1 (.cons _ _ _ _ _ checked8801.1 (.cons _ _ _ _ _ checked8802.1 (.cons _ _ _ _ _ checked8803.1 (.cons _ _ _ _ _ checked8804.1 (.cons _ _ _ _ _ checked8805.1 (.cons _ _ _ _ _ checked8806.1 (.cons _ _ _ _ _ checked8807.1 (.cons _ _ _ _ _ checked8808.1 (.cons _ _ _ _ _ checked8809.1 (.cons _ _ _ _ _ checked8810.1 (.cons _ _ _ _ _ checked8811.1 (.cons _ _ _ _ _ checked8812.1 (.cons _ _ _ _ _ checked8813.1 (.cons _ _ _ _ _ checked8814.1 (.cons _ _ _ _ _ checked8815.1 (.cons _ _ _ _ _ checked8816.1 (.cons _ _ _ _ _ checked8817.1 (.cons _ _ _ _ _ checked8818.1 (.cons _ _ _ _ _ checked8819.1 (.cons _ _ _ _ _ checked8820.1 (.cons _ _ _ _ _ checked8821.1 (.cons _ _ _ _ _ checked8822.1 (.cons _ _ _ _ _ checked8823.1 (.cons _ _ _ _ _ checked8824.1 (.cons _ _ _ _ _ checked8825.1 (.cons _ _ _ _ _ checked8826.1 (.cons _ _ _ _ _ checked8827.1 (.cons _ _ _ _ _ checked8828.1 (.cons _ _ _ _ _ checked8829.1 (.cons _ _ _ _ _ checked8830.1 (.cons _ _ _ _ _ checked8831.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8886 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8768.2,checked8769.2,checked8770.2,checked8771.2,checked8772.2,checked8773.2,checked8774.2,checked8775.2,checked8776.2,checked8777.2,checked8778.2,checked8779.2,checked8780.2,checked8781.2,checked8782.2,checked8783.2,checked8784.2,checked8785.2,checked8786.2,checked8787.2,checked8788.2,checked8789.2,checked8790.2,checked8791.2,checked8792.2,checked8793.2,checked8794.2,checked8795.2,checked8796.2,checked8797.2,checked8798.2,checked8799.2,checked8800.2,checked8801.2,checked8802.2,checked8803.2,checked8804.2,checked8805.2,checked8806.2,checked8807.2,checked8808.2,checked8809.2,checked8810.2,checked8811.2,checked8812.2,checked8813.2,checked8814.2,checked8815.2,checked8816.2,checked8817.2,checked8818.2,checked8819.2,checked8820.2,checked8821.2,checked8822.2,checked8823.2,checked8824.2,checked8825.2,checked8826.2,checked8827.2,checked8828.2,checked8829.2,checked8830.2,checked8831.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup137
