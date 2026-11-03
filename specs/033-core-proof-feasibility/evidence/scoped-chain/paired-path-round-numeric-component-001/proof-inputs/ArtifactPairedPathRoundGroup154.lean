import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup154
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9856 : List WordIR.Op := [.band 9951 2]
def bytes9856 : Bytes := ("    let r000026e0: u32 = r000026df & r00000002;\n" : String).toByteArray.data.toList
theorem checked9856 : bytes9856=statementBytes 9952 (op9856.map lower) ∧ bytes9856.length=48 := by core033_kernel_decide
def op9857 : List WordIR.Op := [.bnot 9926]
def bytes9857 : Bytes := ("    let r000026e1: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9857 : bytes9857=statementBytes 9953 (op9857.map lower) ∧ bytes9857.length=37 := by core033_kernel_decide
def op9858 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9858 : Bytes := ("    let r000026e2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9858 : bytes9858=statementBytes 9954 (op9858.map lower) ∧ bytes9858.length=41 := by core033_kernel_decide
def op9859 : List WordIR.Op := [.badd 9953 9954]
def bytes9859 : Bytes := ("    let r000026e3: u32 = r000026e1.wrapping_add(r000026e2);\n" : String).toByteArray.data.toList
theorem checked9859 : bytes9859=statementBytes 9955 (op9859.map lower) ∧ bytes9859.length=60 := by core033_kernel_decide
def op9860 : List WordIR.Op := [.bnot 9955]
def bytes9860 : Bytes := ("    let r000026e4: u32 = !r000026e3;\n" : String).toByteArray.data.toList
theorem checked9860 : bytes9860=statementBytes 9956 (op9860.map lower) ∧ bytes9860.length=37 := by core033_kernel_decide
def op9861 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9861 : Bytes := ("    let r000026e5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9861 : bytes9861=statementBytes 9957 (op9861.map lower) ∧ bytes9861.length=41 := by core033_kernel_decide
def op9862 : List WordIR.Op := [.band 9956 9957]
def bytes9862 : Bytes := ("    let r000026e6: u32 = r000026e4 & r000026e5;\n" : String).toByteArray.data.toList
theorem checked9862 : bytes9862=statementBytes 9958 (op9862.map lower) ∧ bytes9862.length=48 := by core033_kernel_decide
def op9863 : List WordIR.Op := [.bxor 9952 9958]
def bytes9863 : Bytes := ("    let r000026e7: u32 = r000026e0 ^ r000026e6;\n" : String).toByteArray.data.toList
theorem checked9863 : bytes9863=statementBytes 9959 (op9863.map lower) ∧ bytes9863.length=48 := by core033_kernel_decide
def op9864 : List WordIR.Op := [.bnot 9926]
def bytes9864 : Bytes := ("    let r000026e8: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9864 : bytes9864=statementBytes 9960 (op9864.map lower) ∧ bytes9864.length=37 := by core033_kernel_decide
def op9865 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9865 : Bytes := ("    let r000026e9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9865 : bytes9865=statementBytes 9961 (op9865.map lower) ∧ bytes9865.length=41 := by core033_kernel_decide
def op9866 : List WordIR.Op := [.badd 9960 9961]
def bytes9866 : Bytes := ("    let r000026ea: u32 = r000026e8.wrapping_add(r000026e9);\n" : String).toByteArray.data.toList
theorem checked9866 : bytes9866=statementBytes 9962 (op9866.map lower) ∧ bytes9866.length=60 := by core033_kernel_decide
def op9867 : List WordIR.Op := [.band 9962 3]
def bytes9867 : Bytes := ("    let r000026eb: u32 = r000026ea & r00000003;\n" : String).toByteArray.data.toList
theorem checked9867 : bytes9867=statementBytes 9963 (op9867.map lower) ∧ bytes9867.length=48 := by core033_kernel_decide
def op9868 : List WordIR.Op := [.bnot 9926]
def bytes9868 : Bytes := ("    let r000026ec: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9868 : bytes9868=statementBytes 9964 (op9868.map lower) ∧ bytes9868.length=37 := by core033_kernel_decide
def op9869 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9869 : Bytes := ("    let r000026ed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9869 : bytes9869=statementBytes 9965 (op9869.map lower) ∧ bytes9869.length=41 := by core033_kernel_decide
def op9870 : List WordIR.Op := [.badd 9964 9965]
def bytes9870 : Bytes := ("    let r000026ee: u32 = r000026ec.wrapping_add(r000026ed);\n" : String).toByteArray.data.toList
theorem checked9870 : bytes9870=statementBytes 9966 (op9870.map lower) ∧ bytes9870.length=60 := by core033_kernel_decide
def op9871 : List WordIR.Op := [.bnot 9966]
def bytes9871 : Bytes := ("    let r000026ef: u32 = !r000026ee;\n" : String).toByteArray.data.toList
theorem checked9871 : bytes9871=statementBytes 9967 (op9871.map lower) ∧ bytes9871.length=37 := by core033_kernel_decide
def op9872 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9872 : Bytes := ("    let r000026f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9872 : bytes9872=statementBytes 9968 (op9872.map lower) ∧ bytes9872.length=41 := by core033_kernel_decide
def op9873 : List WordIR.Op := [.band 9967 9968]
def bytes9873 : Bytes := ("    let r000026f1: u32 = r000026ef & r000026f0;\n" : String).toByteArray.data.toList
theorem checked9873 : bytes9873=statementBytes 9969 (op9873.map lower) ∧ bytes9873.length=48 := by core033_kernel_decide
def op9874 : List WordIR.Op := [.bxor 9963 9969]
def bytes9874 : Bytes := ("    let r000026f2: u32 = r000026eb ^ r000026f1;\n" : String).toByteArray.data.toList
theorem checked9874 : bytes9874=statementBytes 9970 (op9874.map lower) ∧ bytes9874.length=48 := by core033_kernel_decide
def op9875 : List WordIR.Op := [.bnot 9926]
def bytes9875 : Bytes := ("    let r000026f3: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9875 : bytes9875=statementBytes 9971 (op9875.map lower) ∧ bytes9875.length=37 := by core033_kernel_decide
def op9876 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9876 : Bytes := ("    let r000026f4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9876 : bytes9876=statementBytes 9972 (op9876.map lower) ∧ bytes9876.length=41 := by core033_kernel_decide
def op9877 : List WordIR.Op := [.badd 9971 9972]
def bytes9877 : Bytes := ("    let r000026f5: u32 = r000026f3.wrapping_add(r000026f4);\n" : String).toByteArray.data.toList
theorem checked9877 : bytes9877=statementBytes 9973 (op9877.map lower) ∧ bytes9877.length=60 := by core033_kernel_decide
def op9878 : List WordIR.Op := [.band 9973 4]
def bytes9878 : Bytes := ("    let r000026f6: u32 = r000026f5 & r00000004;\n" : String).toByteArray.data.toList
theorem checked9878 : bytes9878=statementBytes 9974 (op9878.map lower) ∧ bytes9878.length=48 := by core033_kernel_decide
def op9879 : List WordIR.Op := [.bnot 9926]
def bytes9879 : Bytes := ("    let r000026f7: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9879 : bytes9879=statementBytes 9975 (op9879.map lower) ∧ bytes9879.length=37 := by core033_kernel_decide
def op9880 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9880 : Bytes := ("    let r000026f8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9880 : bytes9880=statementBytes 9976 (op9880.map lower) ∧ bytes9880.length=41 := by core033_kernel_decide
def op9881 : List WordIR.Op := [.badd 9975 9976]
def bytes9881 : Bytes := ("    let r000026f9: u32 = r000026f7.wrapping_add(r000026f8);\n" : String).toByteArray.data.toList
theorem checked9881 : bytes9881=statementBytes 9977 (op9881.map lower) ∧ bytes9881.length=60 := by core033_kernel_decide
def op9882 : List WordIR.Op := [.bnot 9977]
def bytes9882 : Bytes := ("    let r000026fa: u32 = !r000026f9;\n" : String).toByteArray.data.toList
theorem checked9882 : bytes9882=statementBytes 9978 (op9882.map lower) ∧ bytes9882.length=37 := by core033_kernel_decide
def op9883 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9883 : Bytes := ("    let r000026fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9883 : bytes9883=statementBytes 9979 (op9883.map lower) ∧ bytes9883.length=41 := by core033_kernel_decide
def op9884 : List WordIR.Op := [.band 9978 9979]
def bytes9884 : Bytes := ("    let r000026fc: u32 = r000026fa & r000026fb;\n" : String).toByteArray.data.toList
theorem checked9884 : bytes9884=statementBytes 9980 (op9884.map lower) ∧ bytes9884.length=48 := by core033_kernel_decide
def op9885 : List WordIR.Op := [.bxor 9974 9980]
def bytes9885 : Bytes := ("    let r000026fd: u32 = r000026f6 ^ r000026fc;\n" : String).toByteArray.data.toList
theorem checked9885 : bytes9885=statementBytes 9981 (op9885.map lower) ∧ bytes9885.length=48 := by core033_kernel_decide
def op9886 : List WordIR.Op := [.bnot 9926]
def bytes9886 : Bytes := ("    let r000026fe: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9886 : bytes9886=statementBytes 9982 (op9886.map lower) ∧ bytes9886.length=37 := by core033_kernel_decide
def op9887 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9887 : Bytes := ("    let r000026ff: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9887 : bytes9887=statementBytes 9983 (op9887.map lower) ∧ bytes9887.length=41 := by core033_kernel_decide
def op9888 : List WordIR.Op := [.badd 9982 9983]
def bytes9888 : Bytes := ("    let r00002700: u32 = r000026fe.wrapping_add(r000026ff);\n" : String).toByteArray.data.toList
theorem checked9888 : bytes9888=statementBytes 9984 (op9888.map lower) ∧ bytes9888.length=60 := by core033_kernel_decide
def op9889 : List WordIR.Op := [.band 9984 5]
def bytes9889 : Bytes := ("    let r00002701: u32 = r00002700 & r00000005;\n" : String).toByteArray.data.toList
theorem checked9889 : bytes9889=statementBytes 9985 (op9889.map lower) ∧ bytes9889.length=48 := by core033_kernel_decide
def op9890 : List WordIR.Op := [.bnot 9926]
def bytes9890 : Bytes := ("    let r00002702: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9890 : bytes9890=statementBytes 9986 (op9890.map lower) ∧ bytes9890.length=37 := by core033_kernel_decide
def op9891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9891 : Bytes := ("    let r00002703: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9891 : bytes9891=statementBytes 9987 (op9891.map lower) ∧ bytes9891.length=41 := by core033_kernel_decide
def op9892 : List WordIR.Op := [.badd 9986 9987]
def bytes9892 : Bytes := ("    let r00002704: u32 = r00002702.wrapping_add(r00002703);\n" : String).toByteArray.data.toList
theorem checked9892 : bytes9892=statementBytes 9988 (op9892.map lower) ∧ bytes9892.length=60 := by core033_kernel_decide
def op9893 : List WordIR.Op := [.bnot 9988]
def bytes9893 : Bytes := ("    let r00002705: u32 = !r00002704;\n" : String).toByteArray.data.toList
theorem checked9893 : bytes9893=statementBytes 9989 (op9893.map lower) ∧ bytes9893.length=37 := by core033_kernel_decide
def op9894 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9894 : Bytes := ("    let r00002706: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9894 : bytes9894=statementBytes 9990 (op9894.map lower) ∧ bytes9894.length=41 := by core033_kernel_decide
def op9895 : List WordIR.Op := [.band 9989 9990]
def bytes9895 : Bytes := ("    let r00002707: u32 = r00002705 & r00002706;\n" : String).toByteArray.data.toList
theorem checked9895 : bytes9895=statementBytes 9991 (op9895.map lower) ∧ bytes9895.length=48 := by core033_kernel_decide
def op9896 : List WordIR.Op := [.bxor 9985 9991]
def bytes9896 : Bytes := ("    let r00002708: u32 = r00002701 ^ r00002707;\n" : String).toByteArray.data.toList
theorem checked9896 : bytes9896=statementBytes 9992 (op9896.map lower) ∧ bytes9896.length=48 := by core033_kernel_decide
def op9897 : List WordIR.Op := [.bnot 9926]
def bytes9897 : Bytes := ("    let r00002709: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9897 : bytes9897=statementBytes 9993 (op9897.map lower) ∧ bytes9897.length=37 := by core033_kernel_decide
def op9898 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9898 : Bytes := ("    let r0000270a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9898 : bytes9898=statementBytes 9994 (op9898.map lower) ∧ bytes9898.length=41 := by core033_kernel_decide
def op9899 : List WordIR.Op := [.badd 9993 9994]
def bytes9899 : Bytes := ("    let r0000270b: u32 = r00002709.wrapping_add(r0000270a);\n" : String).toByteArray.data.toList
theorem checked9899 : bytes9899=statementBytes 9995 (op9899.map lower) ∧ bytes9899.length=60 := by core033_kernel_decide
def op9900 : List WordIR.Op := [.band 9995 6]
def bytes9900 : Bytes := ("    let r0000270c: u32 = r0000270b & r00000006;\n" : String).toByteArray.data.toList
theorem checked9900 : bytes9900=statementBytes 9996 (op9900.map lower) ∧ bytes9900.length=48 := by core033_kernel_decide
def op9901 : List WordIR.Op := [.bnot 9926]
def bytes9901 : Bytes := ("    let r0000270d: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9901 : bytes9901=statementBytes 9997 (op9901.map lower) ∧ bytes9901.length=37 := by core033_kernel_decide
def op9902 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9902 : Bytes := ("    let r0000270e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9902 : bytes9902=statementBytes 9998 (op9902.map lower) ∧ bytes9902.length=41 := by core033_kernel_decide
def op9903 : List WordIR.Op := [.badd 9997 9998]
def bytes9903 : Bytes := ("    let r0000270f: u32 = r0000270d.wrapping_add(r0000270e);\n" : String).toByteArray.data.toList
theorem checked9903 : bytes9903=statementBytes 9999 (op9903.map lower) ∧ bytes9903.length=60 := by core033_kernel_decide
def op9904 : List WordIR.Op := [.bnot 9999]
def bytes9904 : Bytes := ("    let r00002710: u32 = !r0000270f;\n" : String).toByteArray.data.toList
theorem checked9904 : bytes9904=statementBytes 10000 (op9904.map lower) ∧ bytes9904.length=37 := by core033_kernel_decide
def op9905 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9905 : Bytes := ("    let r00002711: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9905 : bytes9905=statementBytes 10001 (op9905.map lower) ∧ bytes9905.length=41 := by core033_kernel_decide
def op9906 : List WordIR.Op := [.band 10000 10001]
def bytes9906 : Bytes := ("    let r00002712: u32 = r00002710 & r00002711;\n" : String).toByteArray.data.toList
theorem checked9906 : bytes9906=statementBytes 10002 (op9906.map lower) ∧ bytes9906.length=48 := by core033_kernel_decide
def op9907 : List WordIR.Op := [.bxor 9996 10002]
def bytes9907 : Bytes := ("    let r00002713: u32 = r0000270c ^ r00002712;\n" : String).toByteArray.data.toList
theorem checked9907 : bytes9907=statementBytes 10003 (op9907.map lower) ∧ bytes9907.length=48 := by core033_kernel_decide
def op9908 : List WordIR.Op := [.bnot 9926]
def bytes9908 : Bytes := ("    let r00002714: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9908 : bytes9908=statementBytes 10004 (op9908.map lower) ∧ bytes9908.length=37 := by core033_kernel_decide
def op9909 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9909 : Bytes := ("    let r00002715: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9909 : bytes9909=statementBytes 10005 (op9909.map lower) ∧ bytes9909.length=41 := by core033_kernel_decide
def op9910 : List WordIR.Op := [.badd 10004 10005]
def bytes9910 : Bytes := ("    let r00002716: u32 = r00002714.wrapping_add(r00002715);\n" : String).toByteArray.data.toList
theorem checked9910 : bytes9910=statementBytes 10006 (op9910.map lower) ∧ bytes9910.length=60 := by core033_kernel_decide
def op9911 : List WordIR.Op := [.band 10006 7]
def bytes9911 : Bytes := ("    let r00002717: u32 = r00002716 & r00000007;\n" : String).toByteArray.data.toList
theorem checked9911 : bytes9911=statementBytes 10007 (op9911.map lower) ∧ bytes9911.length=48 := by core033_kernel_decide
def op9912 : List WordIR.Op := [.bnot 9926]
def bytes9912 : Bytes := ("    let r00002718: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9912 : bytes9912=statementBytes 10008 (op9912.map lower) ∧ bytes9912.length=37 := by core033_kernel_decide
def op9913 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9913 : Bytes := ("    let r00002719: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9913 : bytes9913=statementBytes 10009 (op9913.map lower) ∧ bytes9913.length=41 := by core033_kernel_decide
def op9914 : List WordIR.Op := [.badd 10008 10009]
def bytes9914 : Bytes := ("    let r0000271a: u32 = r00002718.wrapping_add(r00002719);\n" : String).toByteArray.data.toList
theorem checked9914 : bytes9914=statementBytes 10010 (op9914.map lower) ∧ bytes9914.length=60 := by core033_kernel_decide
def op9915 : List WordIR.Op := [.bnot 10010]
def bytes9915 : Bytes := ("    let r0000271b: u32 = !r0000271a;\n" : String).toByteArray.data.toList
theorem checked9915 : bytes9915=statementBytes 10011 (op9915.map lower) ∧ bytes9915.length=37 := by core033_kernel_decide
def op9916 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9916 : Bytes := ("    let r0000271c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9916 : bytes9916=statementBytes 10012 (op9916.map lower) ∧ bytes9916.length=41 := by core033_kernel_decide
def op9917 : List WordIR.Op := [.band 10011 10012]
def bytes9917 : Bytes := ("    let r0000271d: u32 = r0000271b & r0000271c;\n" : String).toByteArray.data.toList
theorem checked9917 : bytes9917=statementBytes 10013 (op9917.map lower) ∧ bytes9917.length=48 := by core033_kernel_decide
def op9918 : List WordIR.Op := [.bxor 10007 10013]
def bytes9918 : Bytes := ("    let r0000271e: u32 = r00002717 ^ r0000271d;\n" : String).toByteArray.data.toList
theorem checked9918 : bytes9918=statementBytes 10014 (op9918.map lower) ∧ bytes9918.length=48 := by core033_kernel_decide
def op9919 : List WordIR.Op := [.bnot 9926]
def bytes9919 : Bytes := ("    let r0000271f: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked9919 : bytes9919=statementBytes 10015 (op9919.map lower) ∧ bytes9919.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9856,op9857,op9858,op9859,op9860,op9861,op9862,op9863,op9864,op9865,op9866,op9867,op9868,op9869,op9870,op9871,op9872,op9873,op9874,op9875,op9876,op9877,op9878,op9879,op9880,op9881,op9882,op9883,op9884,op9885,op9886,op9887,op9888,op9889,op9890,op9891,op9892,op9893,op9894,op9895,op9896,op9897,op9898,op9899,op9900,op9901,op9902,op9903,op9904,op9905,op9906,op9907,op9908,op9909,op9910,op9911,op9912,op9913,op9914,op9915,op9916,op9917,op9918,op9919]
def chunks : List Bytes := [bytes9856,bytes9857,bytes9858,bytes9859,bytes9860,bytes9861,bytes9862,bytes9863,bytes9864,bytes9865,bytes9866,bytes9867,bytes9868,bytes9869,bytes9870,bytes9871,bytes9872,bytes9873,bytes9874,bytes9875,bytes9876,bytes9877,bytes9878,bytes9879,bytes9880,bytes9881,bytes9882,bytes9883,bytes9884,bytes9885,bytes9886,bytes9887,bytes9888,bytes9889,bytes9890,bytes9891,bytes9892,bytes9893,bytes9894,bytes9895,bytes9896,bytes9897,bytes9898,bytes9899,bytes9900,bytes9901,bytes9902,bytes9903,bytes9904,bytes9905,bytes9906,bytes9907,bytes9908,bytes9909,bytes9910,bytes9911,bytes9912,bytes9913,bytes9914,bytes9915,bytes9916,bytes9917,bytes9918,bytes9919]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9952 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9856.1 (.cons _ _ _ _ _ checked9857.1 (.cons _ _ _ _ _ checked9858.1 (.cons _ _ _ _ _ checked9859.1 (.cons _ _ _ _ _ checked9860.1 (.cons _ _ _ _ _ checked9861.1 (.cons _ _ _ _ _ checked9862.1 (.cons _ _ _ _ _ checked9863.1 (.cons _ _ _ _ _ checked9864.1 (.cons _ _ _ _ _ checked9865.1 (.cons _ _ _ _ _ checked9866.1 (.cons _ _ _ _ _ checked9867.1 (.cons _ _ _ _ _ checked9868.1 (.cons _ _ _ _ _ checked9869.1 (.cons _ _ _ _ _ checked9870.1 (.cons _ _ _ _ _ checked9871.1 (.cons _ _ _ _ _ checked9872.1 (.cons _ _ _ _ _ checked9873.1 (.cons _ _ _ _ _ checked9874.1 (.cons _ _ _ _ _ checked9875.1 (.cons _ _ _ _ _ checked9876.1 (.cons _ _ _ _ _ checked9877.1 (.cons _ _ _ _ _ checked9878.1 (.cons _ _ _ _ _ checked9879.1 (.cons _ _ _ _ _ checked9880.1 (.cons _ _ _ _ _ checked9881.1 (.cons _ _ _ _ _ checked9882.1 (.cons _ _ _ _ _ checked9883.1 (.cons _ _ _ _ _ checked9884.1 (.cons _ _ _ _ _ checked9885.1 (.cons _ _ _ _ _ checked9886.1 (.cons _ _ _ _ _ checked9887.1 (.cons _ _ _ _ _ checked9888.1 (.cons _ _ _ _ _ checked9889.1 (.cons _ _ _ _ _ checked9890.1 (.cons _ _ _ _ _ checked9891.1 (.cons _ _ _ _ _ checked9892.1 (.cons _ _ _ _ _ checked9893.1 (.cons _ _ _ _ _ checked9894.1 (.cons _ _ _ _ _ checked9895.1 (.cons _ _ _ _ _ checked9896.1 (.cons _ _ _ _ _ checked9897.1 (.cons _ _ _ _ _ checked9898.1 (.cons _ _ _ _ _ checked9899.1 (.cons _ _ _ _ _ checked9900.1 (.cons _ _ _ _ _ checked9901.1 (.cons _ _ _ _ _ checked9902.1 (.cons _ _ _ _ _ checked9903.1 (.cons _ _ _ _ _ checked9904.1 (.cons _ _ _ _ _ checked9905.1 (.cons _ _ _ _ _ checked9906.1 (.cons _ _ _ _ _ checked9907.1 (.cons _ _ _ _ _ checked9908.1 (.cons _ _ _ _ _ checked9909.1 (.cons _ _ _ _ _ checked9910.1 (.cons _ _ _ _ _ checked9911.1 (.cons _ _ _ _ _ checked9912.1 (.cons _ _ _ _ _ checked9913.1 (.cons _ _ _ _ _ checked9914.1 (.cons _ _ _ _ _ checked9915.1 (.cons _ _ _ _ _ checked9916.1 (.cons _ _ _ _ _ checked9917.1 (.cons _ _ _ _ _ checked9918.1 (.cons _ _ _ _ _ checked9919.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9952 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2887 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9856.2,checked9857.2,checked9858.2,checked9859.2,checked9860.2,checked9861.2,checked9862.2,checked9863.2,checked9864.2,checked9865.2,checked9866.2,checked9867.2,checked9868.2,checked9869.2,checked9870.2,checked9871.2,checked9872.2,checked9873.2,checked9874.2,checked9875.2,checked9876.2,checked9877.2,checked9878.2,checked9879.2,checked9880.2,checked9881.2,checked9882.2,checked9883.2,checked9884.2,checked9885.2,checked9886.2,checked9887.2,checked9888.2,checked9889.2,checked9890.2,checked9891.2,checked9892.2,checked9893.2,checked9894.2,checked9895.2,checked9896.2,checked9897.2,checked9898.2,checked9899.2,checked9900.2,checked9901.2,checked9902.2,checked9903.2,checked9904.2,checked9905.2,checked9906.2,checked9907.2,checked9908.2,checked9909.2,checked9910.2,checked9911.2,checked9912.2,checked9913.2,checked9914.2,checked9915.2,checked9916.2,checked9917.2,checked9918.2,checked9919.2]
  decide
end ArtifactPairedPathRoundGroup154
