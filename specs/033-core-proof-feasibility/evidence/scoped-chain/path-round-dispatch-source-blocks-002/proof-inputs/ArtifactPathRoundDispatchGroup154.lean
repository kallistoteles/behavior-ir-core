import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup154
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9856 : List WordIR.Op := [.band 9897 9898]
def bytes9856 : Bytes := ("    let r000026ab: u32 = r000026a9 & r000026aa;\n" : String).toByteArray.data.toList
theorem checked9856 : bytes9856=statementBytes 9899 (op9856.map lower) ∧ bytes9856.length=48 := by core033_kernel_decide
def op9857 : List WordIR.Op := [.bxor 9896 9899]
def bytes9857 : Bytes := ("    let r000026ac: u32 = r000026a8 ^ r000026ab;\n" : String).toByteArray.data.toList
theorem checked9857 : bytes9857=statementBytes 9900 (op9857.map lower) ∧ bytes9857.length=48 := by core033_kernel_decide
def op9858 : List WordIR.Op := [.rotr 9835 24]
def bytes9858 : Bytes := ("    let r000026ad: u32 = r0000266b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9858 : bytes9858=statementBytes 9901 (op9858.map lower) ∧ bytes9858.length=65 := by core033_kernel_decide
def op9859 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9859 : Bytes := ("    let r000026ae: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9859 : bytes9859=statementBytes 9902 (op9859.map lower) ∧ bytes9859.length=41 := by core033_kernel_decide
def op9860 : List WordIR.Op := [.band 9901 9902]
def bytes9860 : Bytes := ("    let r000026af: u32 = r000026ad & r000026ae;\n" : String).toByteArray.data.toList
theorem checked9860 : bytes9860=statementBytes 9903 (op9860.map lower) ∧ bytes9860.length=48 := by core033_kernel_decide
def op9861 : List WordIR.Op := [.rotr 9835 8]
def bytes9861 : Bytes := ("    let r000026b0: u32 = r0000266b.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9861 : bytes9861=statementBytes 9904 (op9861.map lower) ∧ bytes9861.length=65 := by core033_kernel_decide
def op9862 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9862 : Bytes := ("    let r000026b1: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9862 : bytes9862=statementBytes 9905 (op9862.map lower) ∧ bytes9862.length=41 := by core033_kernel_decide
def op9863 : List WordIR.Op := [.band 9904 9905]
def bytes9863 : Bytes := ("    let r000026b2: u32 = r000026b0 & r000026b1;\n" : String).toByteArray.data.toList
theorem checked9863 : bytes9863=statementBytes 9906 (op9863.map lower) ∧ bytes9863.length=48 := by core033_kernel_decide
def op9864 : List WordIR.Op := [.bxor 9903 9906]
def bytes9864 : Bytes := ("    let r000026b3: u32 = r000026af ^ r000026b2;\n" : String).toByteArray.data.toList
theorem checked9864 : bytes9864=statementBytes 9907 (op9864.map lower) ∧ bytes9864.length=48 := by core033_kernel_decide
def op9865 : List WordIR.Op := [.rotr 9846 24]
def bytes9865 : Bytes := ("    let r000026b4: u32 = r00002676.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9865 : bytes9865=statementBytes 9908 (op9865.map lower) ∧ bytes9865.length=65 := by core033_kernel_decide
def op9866 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9866 : Bytes := ("    let r000026b5: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9866 : bytes9866=statementBytes 9909 (op9866.map lower) ∧ bytes9866.length=41 := by core033_kernel_decide
def op9867 : List WordIR.Op := [.band 9908 9909]
def bytes9867 : Bytes := ("    let r000026b6: u32 = r000026b4 & r000026b5;\n" : String).toByteArray.data.toList
theorem checked9867 : bytes9867=statementBytes 9910 (op9867.map lower) ∧ bytes9867.length=48 := by core033_kernel_decide
def op9868 : List WordIR.Op := [.rotr 9846 8]
def bytes9868 : Bytes := ("    let r000026b7: u32 = r00002676.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9868 : bytes9868=statementBytes 9911 (op9868.map lower) ∧ bytes9868.length=65 := by core033_kernel_decide
def op9869 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9869 : Bytes := ("    let r000026b8: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9869 : bytes9869=statementBytes 9912 (op9869.map lower) ∧ bytes9869.length=41 := by core033_kernel_decide
def op9870 : List WordIR.Op := [.band 9911 9912]
def bytes9870 : Bytes := ("    let r000026b9: u32 = r000026b7 & r000026b8;\n" : String).toByteArray.data.toList
theorem checked9870 : bytes9870=statementBytes 9913 (op9870.map lower) ∧ bytes9870.length=48 := by core033_kernel_decide
def op9871 : List WordIR.Op := [.bxor 9910 9913]
def bytes9871 : Bytes := ("    let r000026ba: u32 = r000026b6 ^ r000026b9;\n" : String).toByteArray.data.toList
theorem checked9871 : bytes9871=statementBytes 9914 (op9871.map lower) ∧ bytes9871.length=48 := by core033_kernel_decide
def op9872 : List WordIR.Op := [.rotr 9857 24]
def bytes9872 : Bytes := ("    let r000026bb: u32 = r00002681.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9872 : bytes9872=statementBytes 9915 (op9872.map lower) ∧ bytes9872.length=65 := by core033_kernel_decide
def op9873 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9873 : Bytes := ("    let r000026bc: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9873 : bytes9873=statementBytes 9916 (op9873.map lower) ∧ bytes9873.length=41 := by core033_kernel_decide
def op9874 : List WordIR.Op := [.band 9915 9916]
def bytes9874 : Bytes := ("    let r000026bd: u32 = r000026bb & r000026bc;\n" : String).toByteArray.data.toList
theorem checked9874 : bytes9874=statementBytes 9917 (op9874.map lower) ∧ bytes9874.length=48 := by core033_kernel_decide
def op9875 : List WordIR.Op := [.rotr 9857 8]
def bytes9875 : Bytes := ("    let r000026be: u32 = r00002681.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9875 : bytes9875=statementBytes 9918 (op9875.map lower) ∧ bytes9875.length=65 := by core033_kernel_decide
def op9876 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9876 : Bytes := ("    let r000026bf: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9876 : bytes9876=statementBytes 9919 (op9876.map lower) ∧ bytes9876.length=41 := by core033_kernel_decide
def op9877 : List WordIR.Op := [.band 9918 9919]
def bytes9877 : Bytes := ("    let r000026c0: u32 = r000026be & r000026bf;\n" : String).toByteArray.data.toList
theorem checked9877 : bytes9877=statementBytes 9920 (op9877.map lower) ∧ bytes9877.length=48 := by core033_kernel_decide
def op9878 : List WordIR.Op := [.bxor 9917 9920]
def bytes9878 : Bytes := ("    let r000026c1: u32 = r000026bd ^ r000026c0;\n" : String).toByteArray.data.toList
theorem checked9878 : bytes9878=statementBytes 9921 (op9878.map lower) ∧ bytes9878.length=48 := by core033_kernel_decide
def op9879 : List WordIR.Op := [.rotr 9868 24]
def bytes9879 : Bytes := ("    let r000026c2: u32 = r0000268c.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9879 : bytes9879=statementBytes 9922 (op9879.map lower) ∧ bytes9879.length=65 := by core033_kernel_decide
def op9880 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9880 : Bytes := ("    let r000026c3: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9880 : bytes9880=statementBytes 9923 (op9880.map lower) ∧ bytes9880.length=41 := by core033_kernel_decide
def op9881 : List WordIR.Op := [.band 9922 9923]
def bytes9881 : Bytes := ("    let r000026c4: u32 = r000026c2 & r000026c3;\n" : String).toByteArray.data.toList
theorem checked9881 : bytes9881=statementBytes 9924 (op9881.map lower) ∧ bytes9881.length=48 := by core033_kernel_decide
def op9882 : List WordIR.Op := [.rotr 9868 8]
def bytes9882 : Bytes := ("    let r000026c5: u32 = r0000268c.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9882 : bytes9882=statementBytes 9925 (op9882.map lower) ∧ bytes9882.length=65 := by core033_kernel_decide
def op9883 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9883 : Bytes := ("    let r000026c6: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9883 : bytes9883=statementBytes 9926 (op9883.map lower) ∧ bytes9883.length=41 := by core033_kernel_decide
def op9884 : List WordIR.Op := [.band 9925 9926]
def bytes9884 : Bytes := ("    let r000026c7: u32 = r000026c5 & r000026c6;\n" : String).toByteArray.data.toList
theorem checked9884 : bytes9884=statementBytes 9927 (op9884.map lower) ∧ bytes9884.length=48 := by core033_kernel_decide
def op9885 : List WordIR.Op := [.bxor 9924 9927]
def bytes9885 : Bytes := ("    let r000026c8: u32 = r000026c4 ^ r000026c7;\n" : String).toByteArray.data.toList
theorem checked9885 : bytes9885=statementBytes 9928 (op9885.map lower) ∧ bytes9885.length=48 := by core033_kernel_decide
def op9886 : List WordIR.Op := [.rotr 9879 24]
def bytes9886 : Bytes := ("    let r000026c9: u32 = r00002697.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked9886 : bytes9886=statementBytes 9929 (op9886.map lower) ∧ bytes9886.length=65 := by core033_kernel_decide
def op9887 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935)]
def bytes9887 : Bytes := ("    let r000026ca: u32 = 0x00ff00ff_u32;\n" : String).toByteArray.data.toList
theorem checked9887 : bytes9887=statementBytes 9930 (op9887.map lower) ∧ bytes9887.length=41 := by core033_kernel_decide
def op9888 : List WordIR.Op := [.band 9929 9930]
def bytes9888 : Bytes := ("    let r000026cb: u32 = r000026c9 & r000026ca;\n" : String).toByteArray.data.toList
theorem checked9888 : bytes9888=statementBytes 9931 (op9888.map lower) ∧ bytes9888.length=48 := by core033_kernel_decide
def op9889 : List WordIR.Op := [.rotr 9879 8]
def bytes9889 : Bytes := ("    let r000026cc: u32 = r00002697.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked9889 : bytes9889=statementBytes 9932 (op9889.map lower) ∧ bytes9889.length=65 := by core033_kernel_decide
def op9890 : List WordIR.Op := [.literal (BitVec.ofNat 32 4278255360)]
def bytes9890 : Bytes := ("    let r000026cd: u32 = 0xff00ff00_u32;\n" : String).toByteArray.data.toList
theorem checked9890 : bytes9890=statementBytes 9933 (op9890.map lower) ∧ bytes9890.length=41 := by core033_kernel_decide
def op9891 : List WordIR.Op := [.band 9932 9933]
def bytes9891 : Bytes := ("    let r000026ce: u32 = r000026cc & r000026cd;\n" : String).toByteArray.data.toList
theorem checked9891 : bytes9891=statementBytes 9934 (op9891.map lower) ∧ bytes9891.length=48 := by core033_kernel_decide
def op9892 : List WordIR.Op := [.bxor 9931 9934]
def bytes9892 : Bytes := ("    let r000026cf: u32 = r000026cb ^ r000026ce;\n" : String).toByteArray.data.toList
theorem checked9892 : bytes9892=statementBytes 9935 (op9892.map lower) ∧ bytes9892.length=48 := by core033_kernel_decide
def op9893 : List WordIR.Op := [.badd 9714 9736]
def bytes9893 : Bytes := ("    let r000026d0: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked9893 : bytes9893=statementBytes 9936 (op9893.map lower) ∧ bytes9893.length=60 := by core033_kernel_decide
def op9894 : List WordIR.Op := [.badd 9725 9747]
def bytes9894 : Bytes := ("    let r000026d1: u32 = r000025fd.wrapping_add(r00002613);\n" : String).toByteArray.data.toList
theorem checked9894 : bytes9894=statementBytes 9937 (op9894.map lower) ∧ bytes9894.length=60 := by core033_kernel_decide
def op9895 : List WordIR.Op := [.band 9714 9736]
def bytes9895 : Bytes := ("    let r000026d2: u32 = r000025f2 & r00002608;\n" : String).toByteArray.data.toList
theorem checked9895 : bytes9895=statementBytes 9938 (op9895.map lower) ∧ bytes9895.length=48 := by core033_kernel_decide
def op9896 : List WordIR.Op := [.bxor 9714 9736]
def bytes9896 : Bytes := ("    let r000026d3: u32 = r000025f2 ^ r00002608;\n" : String).toByteArray.data.toList
theorem checked9896 : bytes9896=statementBytes 9939 (op9896.map lower) ∧ bytes9896.length=48 := by core033_kernel_decide
def op9897 : List WordIR.Op := [.badd 9714 9736]
def bytes9897 : Bytes := ("    let r000026d4: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked9897 : bytes9897=statementBytes 9940 (op9897.map lower) ∧ bytes9897.length=60 := by core033_kernel_decide
def op9898 : List WordIR.Op := [.bnot 9940]
def bytes9898 : Bytes := ("    let r000026d5: u32 = !r000026d4;\n" : String).toByteArray.data.toList
theorem checked9898 : bytes9898=statementBytes 9941 (op9898.map lower) ∧ bytes9898.length=37 := by core033_kernel_decide
def op9899 : List WordIR.Op := [.band 9939 9941]
def bytes9899 : Bytes := ("    let r000026d6: u32 = r000026d3 & r000026d5;\n" : String).toByteArray.data.toList
theorem checked9899 : bytes9899=statementBytes 9942 (op9899.map lower) ∧ bytes9899.length=48 := by core033_kernel_decide
def op9900 : List WordIR.Op := [.bxor 9938 9942]
def bytes9900 : Bytes := ("    let r000026d7: u32 = r000026d2 ^ r000026d6;\n" : String).toByteArray.data.toList
theorem checked9900 : bytes9900=statementBytes 9943 (op9900.map lower) ∧ bytes9900.length=48 := by core033_kernel_decide
def op9901 : List WordIR.Op := [.shr 9943 31]
def bytes9901 : Bytes := ("    let r000026d8: u32 = r000026d7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9901 : bytes9901=statementBytes 9944 (op9901.map lower) ∧ bytes9901.length=54 := by core033_kernel_decide
def op9902 : List WordIR.Op := [.badd 9937 9944]
def bytes9902 : Bytes := ("    let r000026d9: u32 = r000026d1.wrapping_add(r000026d8);\n" : String).toByteArray.data.toList
theorem checked9902 : bytes9902=statementBytes 9945 (op9902.map lower) ∧ bytes9902.length=60 := by core033_kernel_decide
def op9903 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9903 : Bytes := ("    let r000026da: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9903 : bytes9903=statementBytes 9946 (op9903.map lower) ∧ bytes9903.length=41 := by core033_kernel_decide
def op9904 : List WordIR.Op := [.bnot 9946]
def bytes9904 : Bytes := ("    let r000026db: u32 = !r000026da;\n" : String).toByteArray.data.toList
theorem checked9904 : bytes9904=statementBytes 9947 (op9904.map lower) ∧ bytes9904.length=37 := by core033_kernel_decide
def op9905 : List WordIR.Op := [.band 9725 9947]
def bytes9905 : Bytes := ("    let r000026dc: u32 = r000025fd & r000026db;\n" : String).toByteArray.data.toList
theorem checked9905 : bytes9905=statementBytes 9948 (op9905.map lower) ∧ bytes9905.length=48 := by core033_kernel_decide
def op9906 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9906 : Bytes := ("    let r000026dd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9906 : bytes9906=statementBytes 9949 (op9906.map lower) ∧ bytes9906.length=41 := by core033_kernel_decide
def op9907 : List WordIR.Op := [.bnot 9949]
def bytes9907 : Bytes := ("    let r000026de: u32 = !r000026dd;\n" : String).toByteArray.data.toList
theorem checked9907 : bytes9907=statementBytes 9950 (op9907.map lower) ∧ bytes9907.length=37 := by core033_kernel_decide
def op9908 : List WordIR.Op := [.bxor 9725 9950]
def bytes9908 : Bytes := ("    let r000026df: u32 = r000025fd ^ r000026de;\n" : String).toByteArray.data.toList
theorem checked9908 : bytes9908=statementBytes 9951 (op9908.map lower) ∧ bytes9908.length=48 := by core033_kernel_decide
def op9909 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9909 : Bytes := ("    let r000026e0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9909 : bytes9909=statementBytes 9952 (op9909.map lower) ∧ bytes9909.length=41 := by core033_kernel_decide
def op9910 : List WordIR.Op := [.bnot 9952]
def bytes9910 : Bytes := ("    let r000026e1: u32 = !r000026e0;\n" : String).toByteArray.data.toList
theorem checked9910 : bytes9910=statementBytes 9953 (op9910.map lower) ∧ bytes9910.length=37 := by core033_kernel_decide
def op9911 : List WordIR.Op := [.badd 9725 9953]
def bytes9911 : Bytes := ("    let r000026e2: u32 = r000025fd.wrapping_add(r000026e1);\n" : String).toByteArray.data.toList
theorem checked9911 : bytes9911=statementBytes 9954 (op9911.map lower) ∧ bytes9911.length=60 := by core033_kernel_decide
def op9912 : List WordIR.Op := [.bnot 9954]
def bytes9912 : Bytes := ("    let r000026e3: u32 = !r000026e2;\n" : String).toByteArray.data.toList
theorem checked9912 : bytes9912=statementBytes 9955 (op9912.map lower) ∧ bytes9912.length=37 := by core033_kernel_decide
def op9913 : List WordIR.Op := [.band 9951 9955]
def bytes9913 : Bytes := ("    let r000026e4: u32 = r000026df & r000026e3;\n" : String).toByteArray.data.toList
theorem checked9913 : bytes9913=statementBytes 9956 (op9913.map lower) ∧ bytes9913.length=48 := by core033_kernel_decide
def op9914 : List WordIR.Op := [.bxor 9948 9956]
def bytes9914 : Bytes := ("    let r000026e5: u32 = r000026dc ^ r000026e4;\n" : String).toByteArray.data.toList
theorem checked9914 : bytes9914=statementBytes 9957 (op9914.map lower) ∧ bytes9914.length=48 := by core033_kernel_decide
def op9915 : List WordIR.Op := [.shr 9957 31]
def bytes9915 : Bytes := ("    let r000026e6: u32 = r000026e5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9915 : bytes9915=statementBytes 9958 (op9915.map lower) ∧ bytes9915.length=54 := by core033_kernel_decide
def op9916 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9916 : Bytes := ("    let r000026e7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9916 : bytes9916=statementBytes 9959 (op9916.map lower) ∧ bytes9916.length=41 := by core033_kernel_decide
def op9917 : List WordIR.Op := [.bxor 9958 9959]
def bytes9917 : Bytes := ("    let r000026e8: u32 = r000026e6 ^ r000026e7;\n" : String).toByteArray.data.toList
theorem checked9917 : bytes9917=statementBytes 9960 (op9917.map lower) ∧ bytes9917.length=48 := by core033_kernel_decide
def op9918 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes9918 : Bytes := ("    let r000026e9: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked9918 : bytes9918=statementBytes 9961 (op9918.map lower) ∧ bytes9918.length=41 := by core033_kernel_decide
def op9919 : List WordIR.Op := [.bnot 9961]
def bytes9919 : Bytes := ("    let r000026ea: u32 = !r000026e9;\n" : String).toByteArray.data.toList
theorem checked9919 : bytes9919=statementBytes 9962 (op9919.map lower) ∧ bytes9919.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9856,op9857,op9858,op9859,op9860,op9861,op9862,op9863,op9864,op9865,op9866,op9867,op9868,op9869,op9870,op9871,op9872,op9873,op9874,op9875,op9876,op9877,op9878,op9879,op9880,op9881,op9882,op9883,op9884,op9885,op9886,op9887,op9888,op9889,op9890,op9891,op9892,op9893,op9894,op9895,op9896,op9897,op9898,op9899,op9900,op9901,op9902,op9903,op9904,op9905,op9906,op9907,op9908,op9909,op9910,op9911,op9912,op9913,op9914,op9915,op9916,op9917,op9918,op9919]
def chunks : List Bytes := [bytes9856,bytes9857,bytes9858,bytes9859,bytes9860,bytes9861,bytes9862,bytes9863,bytes9864,bytes9865,bytes9866,bytes9867,bytes9868,bytes9869,bytes9870,bytes9871,bytes9872,bytes9873,bytes9874,bytes9875,bytes9876,bytes9877,bytes9878,bytes9879,bytes9880,bytes9881,bytes9882,bytes9883,bytes9884,bytes9885,bytes9886,bytes9887,bytes9888,bytes9889,bytes9890,bytes9891,bytes9892,bytes9893,bytes9894,bytes9895,bytes9896,bytes9897,bytes9898,bytes9899,bytes9900,bytes9901,bytes9902,bytes9903,bytes9904,bytes9905,bytes9906,bytes9907,bytes9908,bytes9909,bytes9910,bytes9911,bytes9912,bytes9913,bytes9914,bytes9915,bytes9916,bytes9917,bytes9918,bytes9919]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9899 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9856.1 (.cons _ _ _ _ _ checked9857.1 (.cons _ _ _ _ _ checked9858.1 (.cons _ _ _ _ _ checked9859.1 (.cons _ _ _ _ _ checked9860.1 (.cons _ _ _ _ _ checked9861.1 (.cons _ _ _ _ _ checked9862.1 (.cons _ _ _ _ _ checked9863.1 (.cons _ _ _ _ _ checked9864.1 (.cons _ _ _ _ _ checked9865.1 (.cons _ _ _ _ _ checked9866.1 (.cons _ _ _ _ _ checked9867.1 (.cons _ _ _ _ _ checked9868.1 (.cons _ _ _ _ _ checked9869.1 (.cons _ _ _ _ _ checked9870.1 (.cons _ _ _ _ _ checked9871.1 (.cons _ _ _ _ _ checked9872.1 (.cons _ _ _ _ _ checked9873.1 (.cons _ _ _ _ _ checked9874.1 (.cons _ _ _ _ _ checked9875.1 (.cons _ _ _ _ _ checked9876.1 (.cons _ _ _ _ _ checked9877.1 (.cons _ _ _ _ _ checked9878.1 (.cons _ _ _ _ _ checked9879.1 (.cons _ _ _ _ _ checked9880.1 (.cons _ _ _ _ _ checked9881.1 (.cons _ _ _ _ _ checked9882.1 (.cons _ _ _ _ _ checked9883.1 (.cons _ _ _ _ _ checked9884.1 (.cons _ _ _ _ _ checked9885.1 (.cons _ _ _ _ _ checked9886.1 (.cons _ _ _ _ _ checked9887.1 (.cons _ _ _ _ _ checked9888.1 (.cons _ _ _ _ _ checked9889.1 (.cons _ _ _ _ _ checked9890.1 (.cons _ _ _ _ _ checked9891.1 (.cons _ _ _ _ _ checked9892.1 (.cons _ _ _ _ _ checked9893.1 (.cons _ _ _ _ _ checked9894.1 (.cons _ _ _ _ _ checked9895.1 (.cons _ _ _ _ _ checked9896.1 (.cons _ _ _ _ _ checked9897.1 (.cons _ _ _ _ _ checked9898.1 (.cons _ _ _ _ _ checked9899.1 (.cons _ _ _ _ _ checked9900.1 (.cons _ _ _ _ _ checked9901.1 (.cons _ _ _ _ _ checked9902.1 (.cons _ _ _ _ _ checked9903.1 (.cons _ _ _ _ _ checked9904.1 (.cons _ _ _ _ _ checked9905.1 (.cons _ _ _ _ _ checked9906.1 (.cons _ _ _ _ _ checked9907.1 (.cons _ _ _ _ _ checked9908.1 (.cons _ _ _ _ _ checked9909.1 (.cons _ _ _ _ _ checked9910.1 (.cons _ _ _ _ _ checked9911.1 (.cons _ _ _ _ _ checked9912.1 (.cons _ _ _ _ _ checked9913.1 (.cons _ _ _ _ _ checked9914.1 (.cons _ _ _ _ _ checked9915.1 (.cons _ _ _ _ _ checked9916.1 (.cons _ _ _ _ _ checked9917.1 (.cons _ _ _ _ _ checked9918.1 (.cons _ _ _ _ _ checked9919.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9899 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3143 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9856.2,checked9857.2,checked9858.2,checked9859.2,checked9860.2,checked9861.2,checked9862.2,checked9863.2,checked9864.2,checked9865.2,checked9866.2,checked9867.2,checked9868.2,checked9869.2,checked9870.2,checked9871.2,checked9872.2,checked9873.2,checked9874.2,checked9875.2,checked9876.2,checked9877.2,checked9878.2,checked9879.2,checked9880.2,checked9881.2,checked9882.2,checked9883.2,checked9884.2,checked9885.2,checked9886.2,checked9887.2,checked9888.2,checked9889.2,checked9890.2,checked9891.2,checked9892.2,checked9893.2,checked9894.2,checked9895.2,checked9896.2,checked9897.2,checked9898.2,checked9899.2,checked9900.2,checked9901.2,checked9902.2,checked9903.2,checked9904.2,checked9905.2,checked9906.2,checked9907.2,checked9908.2,checked9909.2,checked9910.2,checked9911.2,checked9912.2,checked9913.2,checked9914.2,checked9915.2,checked9916.2,checked9917.2,checked9918.2,checked9919.2]
  decide
end ArtifactPathRoundDispatchGroup154
