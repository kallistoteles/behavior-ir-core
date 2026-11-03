import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup13
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op832 : List WordIR.Op := [.badd 948 949]
def bytes832 : Bytes := ("    let r000003b6: u32 = r000003b4.wrapping_add(r000003b5);\n" : String).toByteArray.data.toList
theorem checked832 : bytes832=statementBytes 950 (op832.map lower) ∧ bytes832.length=60 := by core033_kernel_decide
def op833 : List WordIR.Op := [.bnot 950]
def bytes833 : Bytes := ("    let r000003b7: u32 = !r000003b6;\n" : String).toByteArray.data.toList
theorem checked833 : bytes833=statementBytes 951 (op833.map lower) ∧ bytes833.length=37 := by core033_kernel_decide
def op834 : List WordIR.Op := [.bnot 247]
def bytes834 : Bytes := ("    let r000003b8: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked834 : bytes834=statementBytes 952 (op834.map lower) ∧ bytes834.length=37 := by core033_kernel_decide
def op835 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes835 : Bytes := ("    let r000003b9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked835 : bytes835=statementBytes 953 (op835.map lower) ∧ bytes835.length=41 := by core033_kernel_decide
def op836 : List WordIR.Op := [.badd 952 953]
def bytes836 : Bytes := ("    let r000003ba: u32 = r000003b8.wrapping_add(r000003b9);\n" : String).toByteArray.data.toList
theorem checked836 : bytes836=statementBytes 954 (op836.map lower) ∧ bytes836.length=60 := by core033_kernel_decide
def op837 : List WordIR.Op := [.band 954 30]
def bytes837 : Bytes := ("    let r000003bb: u32 = r000003ba & r0000001e;\n" : String).toByteArray.data.toList
theorem checked837 : bytes837=statementBytes 955 (op837.map lower) ∧ bytes837.length=48 := by core033_kernel_decide
def op838 : List WordIR.Op := [.bnot 247]
def bytes838 : Bytes := ("    let r000003bc: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked838 : bytes838=statementBytes 956 (op838.map lower) ∧ bytes838.length=37 := by core033_kernel_decide
def op839 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes839 : Bytes := ("    let r000003bd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked839 : bytes839=statementBytes 957 (op839.map lower) ∧ bytes839.length=41 := by core033_kernel_decide
def op840 : List WordIR.Op := [.badd 956 957]
def bytes840 : Bytes := ("    let r000003be: u32 = r000003bc.wrapping_add(r000003bd);\n" : String).toByteArray.data.toList
theorem checked840 : bytes840=statementBytes 958 (op840.map lower) ∧ bytes840.length=60 := by core033_kernel_decide
def op841 : List WordIR.Op := [.bnot 958]
def bytes841 : Bytes := ("    let r000003bf: u32 = !r000003be;\n" : String).toByteArray.data.toList
theorem checked841 : bytes841=statementBytes 959 (op841.map lower) ∧ bytes841.length=37 := by core033_kernel_decide
def op842 : List WordIR.Op := [.band 959 18]
def bytes842 : Bytes := ("    let r000003c0: u32 = r000003bf & r00000012;\n" : String).toByteArray.data.toList
theorem checked842 : bytes842=statementBytes 960 (op842.map lower) ∧ bytes842.length=48 := by core033_kernel_decide
def op843 : List WordIR.Op := [.bxor 955 960]
def bytes843 : Bytes := ("    let r000003c1: u32 = r000003bb ^ r000003c0;\n" : String).toByteArray.data.toList
theorem checked843 : bytes843=statementBytes 961 (op843.map lower) ∧ bytes843.length=48 := by core033_kernel_decide
def op844 : List WordIR.Op := [.band 951 961]
def bytes844 : Bytes := ("    let r000003c2: u32 = r000003b7 & r000003c1;\n" : String).toByteArray.data.toList
theorem checked844 : bytes844=statementBytes 962 (op844.map lower) ∧ bytes844.length=48 := by core033_kernel_decide
def op845 : List WordIR.Op := [.bxor 947 962]
def bytes845 : Bytes := ("    let r000003c3: u32 = r000003b3 ^ r000003c2;\n" : String).toByteArray.data.toList
theorem checked845 : bytes845=statementBytes 963 (op845.map lower) ∧ bytes845.length=48 := by core033_kernel_decide
def op846 : List WordIR.Op := [.bnot 182]
def bytes846 : Bytes := ("    let r000003c4: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked846 : bytes846=statementBytes 964 (op846.map lower) ∧ bytes846.length=37 := by core033_kernel_decide
def op847 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes847 : Bytes := ("    let r000003c5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked847 : bytes847=statementBytes 965 (op847.map lower) ∧ bytes847.length=41 := by core033_kernel_decide
def op848 : List WordIR.Op := [.badd 964 965]
def bytes848 : Bytes := ("    let r000003c6: u32 = r000003c4.wrapping_add(r000003c5);\n" : String).toByteArray.data.toList
theorem checked848 : bytes848=statementBytes 966 (op848.map lower) ∧ bytes848.length=60 := by core033_kernel_decide
def op849 : List WordIR.Op := [.band 966 104]
def bytes849 : Bytes := ("    let r000003c7: u32 = r000003c6 & r00000068;\n" : String).toByteArray.data.toList
theorem checked849 : bytes849=statementBytes 967 (op849.map lower) ∧ bytes849.length=48 := by core033_kernel_decide
def op850 : List WordIR.Op := [.bnot 182]
def bytes850 : Bytes := ("    let r000003c8: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked850 : bytes850=statementBytes 968 (op850.map lower) ∧ bytes850.length=37 := by core033_kernel_decide
def op851 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes851 : Bytes := ("    let r000003c9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked851 : bytes851=statementBytes 969 (op851.map lower) ∧ bytes851.length=41 := by core033_kernel_decide
def op852 : List WordIR.Op := [.badd 968 969]
def bytes852 : Bytes := ("    let r000003ca: u32 = r000003c8.wrapping_add(r000003c9);\n" : String).toByteArray.data.toList
theorem checked852 : bytes852=statementBytes 970 (op852.map lower) ∧ bytes852.length=60 := by core033_kernel_decide
def op853 : List WordIR.Op := [.bnot 970]
def bytes853 : Bytes := ("    let r000003cb: u32 = !r000003ca;\n" : String).toByteArray.data.toList
theorem checked853 : bytes853=statementBytes 971 (op853.map lower) ∧ bytes853.length=37 := by core033_kernel_decide
def op854 : List WordIR.Op := [.band 971 35]
def bytes854 : Bytes := ("    let r000003cc: u32 = r000003cb & r00000023;\n" : String).toByteArray.data.toList
theorem checked854 : bytes854=statementBytes 972 (op854.map lower) ∧ bytes854.length=48 := by core033_kernel_decide
def op855 : List WordIR.Op := [.bxor 967 972]
def bytes855 : Bytes := ("    let r000003cd: u32 = r000003c7 ^ r000003cc;\n" : String).toByteArray.data.toList
theorem checked855 : bytes855=statementBytes 973 (op855.map lower) ∧ bytes855.length=48 := by core033_kernel_decide
def op856 : List WordIR.Op := [.bnot 182]
def bytes856 : Bytes := ("    let r000003ce: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked856 : bytes856=statementBytes 974 (op856.map lower) ∧ bytes856.length=37 := by core033_kernel_decide
def op857 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes857 : Bytes := ("    let r000003cf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked857 : bytes857=statementBytes 975 (op857.map lower) ∧ bytes857.length=41 := by core033_kernel_decide
def op858 : List WordIR.Op := [.badd 974 975]
def bytes858 : Bytes := ("    let r000003d0: u32 = r000003ce.wrapping_add(r000003cf);\n" : String).toByteArray.data.toList
theorem checked858 : bytes858=statementBytes 976 (op858.map lower) ∧ bytes858.length=60 := by core033_kernel_decide
def op859 : List WordIR.Op := [.band 976 105]
def bytes859 : Bytes := ("    let r000003d1: u32 = r000003d0 & r00000069;\n" : String).toByteArray.data.toList
theorem checked859 : bytes859=statementBytes 977 (op859.map lower) ∧ bytes859.length=48 := by core033_kernel_decide
def op860 : List WordIR.Op := [.bnot 182]
def bytes860 : Bytes := ("    let r000003d2: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked860 : bytes860=statementBytes 978 (op860.map lower) ∧ bytes860.length=37 := by core033_kernel_decide
def op861 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes861 : Bytes := ("    let r000003d3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked861 : bytes861=statementBytes 979 (op861.map lower) ∧ bytes861.length=41 := by core033_kernel_decide
def op862 : List WordIR.Op := [.badd 978 979]
def bytes862 : Bytes := ("    let r000003d4: u32 = r000003d2.wrapping_add(r000003d3);\n" : String).toByteArray.data.toList
theorem checked862 : bytes862=statementBytes 980 (op862.map lower) ∧ bytes862.length=60 := by core033_kernel_decide
def op863 : List WordIR.Op := [.bnot 980]
def bytes863 : Bytes := ("    let r000003d5: u32 = !r000003d4;\n" : String).toByteArray.data.toList
theorem checked863 : bytes863=statementBytes 981 (op863.map lower) ∧ bytes863.length=37 := by core033_kernel_decide
def op864 : List WordIR.Op := [.band 981 36]
def bytes864 : Bytes := ("    let r000003d6: u32 = r000003d5 & r00000024;\n" : String).toByteArray.data.toList
theorem checked864 : bytes864=statementBytes 982 (op864.map lower) ∧ bytes864.length=48 := by core033_kernel_decide
def op865 : List WordIR.Op := [.bxor 977 982]
def bytes865 : Bytes := ("    let r000003d7: u32 = r000003d1 ^ r000003d6;\n" : String).toByteArray.data.toList
theorem checked865 : bytes865=statementBytes 983 (op865.map lower) ∧ bytes865.length=48 := by core033_kernel_decide
def op866 : List WordIR.Op := [.bnot 182]
def bytes866 : Bytes := ("    let r000003d8: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked866 : bytes866=statementBytes 984 (op866.map lower) ∧ bytes866.length=37 := by core033_kernel_decide
def op867 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes867 : Bytes := ("    let r000003d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked867 : bytes867=statementBytes 985 (op867.map lower) ∧ bytes867.length=41 := by core033_kernel_decide
def op868 : List WordIR.Op := [.badd 984 985]
def bytes868 : Bytes := ("    let r000003da: u32 = r000003d8.wrapping_add(r000003d9);\n" : String).toByteArray.data.toList
theorem checked868 : bytes868=statementBytes 986 (op868.map lower) ∧ bytes868.length=60 := by core033_kernel_decide
def op869 : List WordIR.Op := [.band 986 106]
def bytes869 : Bytes := ("    let r000003db: u32 = r000003da & r0000006a;\n" : String).toByteArray.data.toList
theorem checked869 : bytes869=statementBytes 987 (op869.map lower) ∧ bytes869.length=48 := by core033_kernel_decide
def op870 : List WordIR.Op := [.bnot 182]
def bytes870 : Bytes := ("    let r000003dc: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked870 : bytes870=statementBytes 988 (op870.map lower) ∧ bytes870.length=37 := by core033_kernel_decide
def op871 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes871 : Bytes := ("    let r000003dd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked871 : bytes871=statementBytes 989 (op871.map lower) ∧ bytes871.length=41 := by core033_kernel_decide
def op872 : List WordIR.Op := [.badd 988 989]
def bytes872 : Bytes := ("    let r000003de: u32 = r000003dc.wrapping_add(r000003dd);\n" : String).toByteArray.data.toList
theorem checked872 : bytes872=statementBytes 990 (op872.map lower) ∧ bytes872.length=60 := by core033_kernel_decide
def op873 : List WordIR.Op := [.bnot 990]
def bytes873 : Bytes := ("    let r000003df: u32 = !r000003de;\n" : String).toByteArray.data.toList
theorem checked873 : bytes873=statementBytes 991 (op873.map lower) ∧ bytes873.length=37 := by core033_kernel_decide
def op874 : List WordIR.Op := [.band 991 37]
def bytes874 : Bytes := ("    let r000003e0: u32 = r000003df & r00000025;\n" : String).toByteArray.data.toList
theorem checked874 : bytes874=statementBytes 992 (op874.map lower) ∧ bytes874.length=48 := by core033_kernel_decide
def op875 : List WordIR.Op := [.bxor 987 992]
def bytes875 : Bytes := ("    let r000003e1: u32 = r000003db ^ r000003e0;\n" : String).toByteArray.data.toList
theorem checked875 : bytes875=statementBytes 993 (op875.map lower) ∧ bytes875.length=48 := by core033_kernel_decide
def op876 : List WordIR.Op := [.bnot 182]
def bytes876 : Bytes := ("    let r000003e2: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked876 : bytes876=statementBytes 994 (op876.map lower) ∧ bytes876.length=37 := by core033_kernel_decide
def op877 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes877 : Bytes := ("    let r000003e3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked877 : bytes877=statementBytes 995 (op877.map lower) ∧ bytes877.length=41 := by core033_kernel_decide
def op878 : List WordIR.Op := [.badd 994 995]
def bytes878 : Bytes := ("    let r000003e4: u32 = r000003e2.wrapping_add(r000003e3);\n" : String).toByteArray.data.toList
theorem checked878 : bytes878=statementBytes 996 (op878.map lower) ∧ bytes878.length=60 := by core033_kernel_decide
def op879 : List WordIR.Op := [.band 996 107]
def bytes879 : Bytes := ("    let r000003e5: u32 = r000003e4 & r0000006b;\n" : String).toByteArray.data.toList
theorem checked879 : bytes879=statementBytes 997 (op879.map lower) ∧ bytes879.length=48 := by core033_kernel_decide
def op880 : List WordIR.Op := [.bnot 182]
def bytes880 : Bytes := ("    let r000003e6: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked880 : bytes880=statementBytes 998 (op880.map lower) ∧ bytes880.length=37 := by core033_kernel_decide
def op881 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes881 : Bytes := ("    let r000003e7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked881 : bytes881=statementBytes 999 (op881.map lower) ∧ bytes881.length=41 := by core033_kernel_decide
def op882 : List WordIR.Op := [.badd 998 999]
def bytes882 : Bytes := ("    let r000003e8: u32 = r000003e6.wrapping_add(r000003e7);\n" : String).toByteArray.data.toList
theorem checked882 : bytes882=statementBytes 1000 (op882.map lower) ∧ bytes882.length=60 := by core033_kernel_decide
def op883 : List WordIR.Op := [.bnot 1000]
def bytes883 : Bytes := ("    let r000003e9: u32 = !r000003e8;\n" : String).toByteArray.data.toList
theorem checked883 : bytes883=statementBytes 1001 (op883.map lower) ∧ bytes883.length=37 := by core033_kernel_decide
def op884 : List WordIR.Op := [.band 1001 38]
def bytes884 : Bytes := ("    let r000003ea: u32 = r000003e9 & r00000026;\n" : String).toByteArray.data.toList
theorem checked884 : bytes884=statementBytes 1002 (op884.map lower) ∧ bytes884.length=48 := by core033_kernel_decide
def op885 : List WordIR.Op := [.bxor 997 1002]
def bytes885 : Bytes := ("    let r000003eb: u32 = r000003e5 ^ r000003ea;\n" : String).toByteArray.data.toList
theorem checked885 : bytes885=statementBytes 1003 (op885.map lower) ∧ bytes885.length=48 := by core033_kernel_decide
def op886 : List WordIR.Op := [.bnot 182]
def bytes886 : Bytes := ("    let r000003ec: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked886 : bytes886=statementBytes 1004 (op886.map lower) ∧ bytes886.length=37 := by core033_kernel_decide
def op887 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes887 : Bytes := ("    let r000003ed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked887 : bytes887=statementBytes 1005 (op887.map lower) ∧ bytes887.length=41 := by core033_kernel_decide
def op888 : List WordIR.Op := [.badd 1004 1005]
def bytes888 : Bytes := ("    let r000003ee: u32 = r000003ec.wrapping_add(r000003ed);\n" : String).toByteArray.data.toList
theorem checked888 : bytes888=statementBytes 1006 (op888.map lower) ∧ bytes888.length=60 := by core033_kernel_decide
def op889 : List WordIR.Op := [.band 1006 108]
def bytes889 : Bytes := ("    let r000003ef: u32 = r000003ee & r0000006c;\n" : String).toByteArray.data.toList
theorem checked889 : bytes889=statementBytes 1007 (op889.map lower) ∧ bytes889.length=48 := by core033_kernel_decide
def op890 : List WordIR.Op := [.bnot 182]
def bytes890 : Bytes := ("    let r000003f0: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked890 : bytes890=statementBytes 1008 (op890.map lower) ∧ bytes890.length=37 := by core033_kernel_decide
def op891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes891 : Bytes := ("    let r000003f1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked891 : bytes891=statementBytes 1009 (op891.map lower) ∧ bytes891.length=41 := by core033_kernel_decide
def op892 : List WordIR.Op := [.badd 1008 1009]
def bytes892 : Bytes := ("    let r000003f2: u32 = r000003f0.wrapping_add(r000003f1);\n" : String).toByteArray.data.toList
theorem checked892 : bytes892=statementBytes 1010 (op892.map lower) ∧ bytes892.length=60 := by core033_kernel_decide
def op893 : List WordIR.Op := [.bnot 1010]
def bytes893 : Bytes := ("    let r000003f3: u32 = !r000003f2;\n" : String).toByteArray.data.toList
theorem checked893 : bytes893=statementBytes 1011 (op893.map lower) ∧ bytes893.length=37 := by core033_kernel_decide
def op894 : List WordIR.Op := [.band 1011 39]
def bytes894 : Bytes := ("    let r000003f4: u32 = r000003f3 & r00000027;\n" : String).toByteArray.data.toList
theorem checked894 : bytes894=statementBytes 1012 (op894.map lower) ∧ bytes894.length=48 := by core033_kernel_decide
def op895 : List WordIR.Op := [.bxor 1007 1012]
def bytes895 : Bytes := ("    let r000003f5: u32 = r000003ef ^ r000003f4;\n" : String).toByteArray.data.toList
theorem checked895 : bytes895=statementBytes 1013 (op895.map lower) ∧ bytes895.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op832,op833,op834,op835,op836,op837,op838,op839,op840,op841,op842,op843,op844,op845,op846,op847,op848,op849,op850,op851,op852,op853,op854,op855,op856,op857,op858,op859,op860,op861,op862,op863,op864,op865,op866,op867,op868,op869,op870,op871,op872,op873,op874,op875,op876,op877,op878,op879,op880,op881,op882,op883,op884,op885,op886,op887,op888,op889,op890,op891,op892,op893,op894,op895]
def chunks : List Bytes := [bytes832,bytes833,bytes834,bytes835,bytes836,bytes837,bytes838,bytes839,bytes840,bytes841,bytes842,bytes843,bytes844,bytes845,bytes846,bytes847,bytes848,bytes849,bytes850,bytes851,bytes852,bytes853,bytes854,bytes855,bytes856,bytes857,bytes858,bytes859,bytes860,bytes861,bytes862,bytes863,bytes864,bytes865,bytes866,bytes867,bytes868,bytes869,bytes870,bytes871,bytes872,bytes873,bytes874,bytes875,bytes876,bytes877,bytes878,bytes879,bytes880,bytes881,bytes882,bytes883,bytes884,bytes885,bytes886,bytes887,bytes888,bytes889,bytes890,bytes891,bytes892,bytes893,bytes894,bytes895]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 950 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked832.1 (.cons _ _ _ _ _ checked833.1 (.cons _ _ _ _ _ checked834.1 (.cons _ _ _ _ _ checked835.1 (.cons _ _ _ _ _ checked836.1 (.cons _ _ _ _ _ checked837.1 (.cons _ _ _ _ _ checked838.1 (.cons _ _ _ _ _ checked839.1 (.cons _ _ _ _ _ checked840.1 (.cons _ _ _ _ _ checked841.1 (.cons _ _ _ _ _ checked842.1 (.cons _ _ _ _ _ checked843.1 (.cons _ _ _ _ _ checked844.1 (.cons _ _ _ _ _ checked845.1 (.cons _ _ _ _ _ checked846.1 (.cons _ _ _ _ _ checked847.1 (.cons _ _ _ _ _ checked848.1 (.cons _ _ _ _ _ checked849.1 (.cons _ _ _ _ _ checked850.1 (.cons _ _ _ _ _ checked851.1 (.cons _ _ _ _ _ checked852.1 (.cons _ _ _ _ _ checked853.1 (.cons _ _ _ _ _ checked854.1 (.cons _ _ _ _ _ checked855.1 (.cons _ _ _ _ _ checked856.1 (.cons _ _ _ _ _ checked857.1 (.cons _ _ _ _ _ checked858.1 (.cons _ _ _ _ _ checked859.1 (.cons _ _ _ _ _ checked860.1 (.cons _ _ _ _ _ checked861.1 (.cons _ _ _ _ _ checked862.1 (.cons _ _ _ _ _ checked863.1 (.cons _ _ _ _ _ checked864.1 (.cons _ _ _ _ _ checked865.1 (.cons _ _ _ _ _ checked866.1 (.cons _ _ _ _ _ checked867.1 (.cons _ _ _ _ _ checked868.1 (.cons _ _ _ _ _ checked869.1 (.cons _ _ _ _ _ checked870.1 (.cons _ _ _ _ _ checked871.1 (.cons _ _ _ _ _ checked872.1 (.cons _ _ _ _ _ checked873.1 (.cons _ _ _ _ _ checked874.1 (.cons _ _ _ _ _ checked875.1 (.cons _ _ _ _ _ checked876.1 (.cons _ _ _ _ _ checked877.1 (.cons _ _ _ _ _ checked878.1 (.cons _ _ _ _ _ checked879.1 (.cons _ _ _ _ _ checked880.1 (.cons _ _ _ _ _ checked881.1 (.cons _ _ _ _ _ checked882.1 (.cons _ _ _ _ _ checked883.1 (.cons _ _ _ _ _ checked884.1 (.cons _ _ _ _ _ checked885.1 (.cons _ _ _ _ _ checked886.1 (.cons _ _ _ _ _ checked887.1 (.cons _ _ _ _ _ checked888.1 (.cons _ _ _ _ _ checked889.1 (.cons _ _ _ _ _ checked890.1 (.cons _ _ _ _ _ checked891.1 (.cons _ _ _ _ _ checked892.1 (.cons _ _ _ _ _ checked893.1 (.cons _ _ _ _ _ checked894.1 (.cons _ _ _ _ _ checked895.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 950 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2935 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked832.2,checked833.2,checked834.2,checked835.2,checked836.2,checked837.2,checked838.2,checked839.2,checked840.2,checked841.2,checked842.2,checked843.2,checked844.2,checked845.2,checked846.2,checked847.2,checked848.2,checked849.2,checked850.2,checked851.2,checked852.2,checked853.2,checked854.2,checked855.2,checked856.2,checked857.2,checked858.2,checked859.2,checked860.2,checked861.2,checked862.2,checked863.2,checked864.2,checked865.2,checked866.2,checked867.2,checked868.2,checked869.2,checked870.2,checked871.2,checked872.2,checked873.2,checked874.2,checked875.2,checked876.2,checked877.2,checked878.2,checked879.2,checked880.2,checked881.2,checked882.2,checked883.2,checked884.2,checked885.2,checked886.2,checked887.2,checked888.2,checked889.2,checked890.2,checked891.2,checked892.2,checked893.2,checked894.2,checked895.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup13
