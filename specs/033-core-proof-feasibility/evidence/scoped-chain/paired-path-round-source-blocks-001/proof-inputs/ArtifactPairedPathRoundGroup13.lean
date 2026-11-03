import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup13
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op832 : List WordIR.Op := [.band 927 43]
def bytes832 : Bytes := ("    let r000003a0: u32 = r0000039f & r0000002b;\n" : String).toByteArray.data.toList
theorem checked832 : bytes832=statementBytes 928 (op832.map lower) ∧ bytes832.length=48 := by core033_kernel_decide
def op833 : List WordIR.Op := [.bnot 605]
def bytes833 : Bytes := ("    let r000003a1: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked833 : bytes833=statementBytes 929 (op833.map lower) ∧ bytes833.length=37 := by core033_kernel_decide
def op834 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes834 : Bytes := ("    let r000003a2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked834 : bytes834=statementBytes 930 (op834.map lower) ∧ bytes834.length=41 := by core033_kernel_decide
def op835 : List WordIR.Op := [.badd 929 930]
def bytes835 : Bytes := ("    let r000003a3: u32 = r000003a1.wrapping_add(r000003a2);\n" : String).toByteArray.data.toList
theorem checked835 : bytes835=statementBytes 931 (op835.map lower) ∧ bytes835.length=60 := by core033_kernel_decide
def op836 : List WordIR.Op := [.bnot 931]
def bytes836 : Bytes := ("    let r000003a4: u32 = !r000003a3;\n" : String).toByteArray.data.toList
theorem checked836 : bytes836=statementBytes 932 (op836.map lower) ∧ bytes836.length=37 := by core033_kernel_decide
def op837 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes837 : Bytes := ("    let r000003a5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked837 : bytes837=statementBytes 933 (op837.map lower) ∧ bytes837.length=41 := by core033_kernel_decide
def op838 : List WordIR.Op := [.band 932 933]
def bytes838 : Bytes := ("    let r000003a6: u32 = r000003a4 & r000003a5;\n" : String).toByteArray.data.toList
theorem checked838 : bytes838=statementBytes 934 (op838.map lower) ∧ bytes838.length=48 := by core033_kernel_decide
def op839 : List WordIR.Op := [.bxor 928 934]
def bytes839 : Bytes := ("    let r000003a7: u32 = r000003a0 ^ r000003a6;\n" : String).toByteArray.data.toList
theorem checked839 : bytes839=statementBytes 935 (op839.map lower) ∧ bytes839.length=48 := by core033_kernel_decide
def op840 : List WordIR.Op := [.bnot 605]
def bytes840 : Bytes := ("    let r000003a8: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked840 : bytes840=statementBytes 936 (op840.map lower) ∧ bytes840.length=37 := by core033_kernel_decide
def op841 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes841 : Bytes := ("    let r000003a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked841 : bytes841=statementBytes 937 (op841.map lower) ∧ bytes841.length=41 := by core033_kernel_decide
def op842 : List WordIR.Op := [.badd 936 937]
def bytes842 : Bytes := ("    let r000003aa: u32 = r000003a8.wrapping_add(r000003a9);\n" : String).toByteArray.data.toList
theorem checked842 : bytes842=statementBytes 938 (op842.map lower) ∧ bytes842.length=60 := by core033_kernel_decide
def op843 : List WordIR.Op := [.band 938 44]
def bytes843 : Bytes := ("    let r000003ab: u32 = r000003aa & r0000002c;\n" : String).toByteArray.data.toList
theorem checked843 : bytes843=statementBytes 939 (op843.map lower) ∧ bytes843.length=48 := by core033_kernel_decide
def op844 : List WordIR.Op := [.bnot 605]
def bytes844 : Bytes := ("    let r000003ac: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked844 : bytes844=statementBytes 940 (op844.map lower) ∧ bytes844.length=37 := by core033_kernel_decide
def op845 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes845 : Bytes := ("    let r000003ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked845 : bytes845=statementBytes 941 (op845.map lower) ∧ bytes845.length=41 := by core033_kernel_decide
def op846 : List WordIR.Op := [.badd 940 941]
def bytes846 : Bytes := ("    let r000003ae: u32 = r000003ac.wrapping_add(r000003ad);\n" : String).toByteArray.data.toList
theorem checked846 : bytes846=statementBytes 942 (op846.map lower) ∧ bytes846.length=60 := by core033_kernel_decide
def op847 : List WordIR.Op := [.bnot 942]
def bytes847 : Bytes := ("    let r000003af: u32 = !r000003ae;\n" : String).toByteArray.data.toList
theorem checked847 : bytes847=statementBytes 943 (op847.map lower) ∧ bytes847.length=37 := by core033_kernel_decide
def op848 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes848 : Bytes := ("    let r000003b0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked848 : bytes848=statementBytes 944 (op848.map lower) ∧ bytes848.length=41 := by core033_kernel_decide
def op849 : List WordIR.Op := [.band 943 944]
def bytes849 : Bytes := ("    let r000003b1: u32 = r000003af & r000003b0;\n" : String).toByteArray.data.toList
theorem checked849 : bytes849=statementBytes 945 (op849.map lower) ∧ bytes849.length=48 := by core033_kernel_decide
def op850 : List WordIR.Op := [.bxor 939 945]
def bytes850 : Bytes := ("    let r000003b2: u32 = r000003ab ^ r000003b1;\n" : String).toByteArray.data.toList
theorem checked850 : bytes850=statementBytes 946 (op850.map lower) ∧ bytes850.length=48 := by core033_kernel_decide
def op851 : List WordIR.Op := [.bnot 605]
def bytes851 : Bytes := ("    let r000003b3: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked851 : bytes851=statementBytes 947 (op851.map lower) ∧ bytes851.length=37 := by core033_kernel_decide
def op852 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes852 : Bytes := ("    let r000003b4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked852 : bytes852=statementBytes 948 (op852.map lower) ∧ bytes852.length=41 := by core033_kernel_decide
def op853 : List WordIR.Op := [.badd 947 948]
def bytes853 : Bytes := ("    let r000003b5: u32 = r000003b3.wrapping_add(r000003b4);\n" : String).toByteArray.data.toList
theorem checked853 : bytes853=statementBytes 949 (op853.map lower) ∧ bytes853.length=60 := by core033_kernel_decide
def op854 : List WordIR.Op := [.band 949 552]
def bytes854 : Bytes := ("    let r000003b6: u32 = r000003b5 & r00000228;\n" : String).toByteArray.data.toList
theorem checked854 : bytes854=statementBytes 950 (op854.map lower) ∧ bytes854.length=48 := by core033_kernel_decide
def op855 : List WordIR.Op := [.bnot 605]
def bytes855 : Bytes := ("    let r000003b7: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked855 : bytes855=statementBytes 951 (op855.map lower) ∧ bytes855.length=37 := by core033_kernel_decide
def op856 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes856 : Bytes := ("    let r000003b8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked856 : bytes856=statementBytes 952 (op856.map lower) ∧ bytes856.length=41 := by core033_kernel_decide
def op857 : List WordIR.Op := [.badd 951 952]
def bytes857 : Bytes := ("    let r000003b9: u32 = r000003b7.wrapping_add(r000003b8);\n" : String).toByteArray.data.toList
theorem checked857 : bytes857=statementBytes 953 (op857.map lower) ∧ bytes857.length=60 := by core033_kernel_decide
def op858 : List WordIR.Op := [.bnot 953]
def bytes858 : Bytes := ("    let r000003ba: u32 = !r000003b9;\n" : String).toByteArray.data.toList
theorem checked858 : bytes858=statementBytes 954 (op858.map lower) ∧ bytes858.length=37 := by core033_kernel_decide
def op859 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes859 : Bytes := ("    let r000003bb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked859 : bytes859=statementBytes 955 (op859.map lower) ∧ bytes859.length=41 := by core033_kernel_decide
def op860 : List WordIR.Op := [.band 954 955]
def bytes860 : Bytes := ("    let r000003bc: u32 = r000003ba & r000003bb;\n" : String).toByteArray.data.toList
theorem checked860 : bytes860=statementBytes 956 (op860.map lower) ∧ bytes860.length=48 := by core033_kernel_decide
def op861 : List WordIR.Op := [.bxor 950 956]
def bytes861 : Bytes := ("    let r000003bd: u32 = r000003b6 ^ r000003bc;\n" : String).toByteArray.data.toList
theorem checked861 : bytes861=statementBytes 957 (op861.map lower) ∧ bytes861.length=48 := by core033_kernel_decide
def op862 : List WordIR.Op := [.bnot 605]
def bytes862 : Bytes := ("    let r000003be: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked862 : bytes862=statementBytes 958 (op862.map lower) ∧ bytes862.length=37 := by core033_kernel_decide
def op863 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes863 : Bytes := ("    let r000003bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked863 : bytes863=statementBytes 959 (op863.map lower) ∧ bytes863.length=41 := by core033_kernel_decide
def op864 : List WordIR.Op := [.badd 958 959]
def bytes864 : Bytes := ("    let r000003c0: u32 = r000003be.wrapping_add(r000003bf);\n" : String).toByteArray.data.toList
theorem checked864 : bytes864=statementBytes 960 (op864.map lower) ∧ bytes864.length=60 := by core033_kernel_decide
def op865 : List WordIR.Op := [.band 960 45]
def bytes865 : Bytes := ("    let r000003c1: u32 = r000003c0 & r0000002d;\n" : String).toByteArray.data.toList
theorem checked865 : bytes865=statementBytes 961 (op865.map lower) ∧ bytes865.length=48 := by core033_kernel_decide
def op866 : List WordIR.Op := [.bnot 605]
def bytes866 : Bytes := ("    let r000003c2: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked866 : bytes866=statementBytes 962 (op866.map lower) ∧ bytes866.length=37 := by core033_kernel_decide
def op867 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes867 : Bytes := ("    let r000003c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked867 : bytes867=statementBytes 963 (op867.map lower) ∧ bytes867.length=41 := by core033_kernel_decide
def op868 : List WordIR.Op := [.badd 962 963]
def bytes868 : Bytes := ("    let r000003c4: u32 = r000003c2.wrapping_add(r000003c3);\n" : String).toByteArray.data.toList
theorem checked868 : bytes868=statementBytes 964 (op868.map lower) ∧ bytes868.length=60 := by core033_kernel_decide
def op869 : List WordIR.Op := [.bnot 964]
def bytes869 : Bytes := ("    let r000003c5: u32 = !r000003c4;\n" : String).toByteArray.data.toList
theorem checked869 : bytes869=statementBytes 965 (op869.map lower) ∧ bytes869.length=37 := by core033_kernel_decide
def op870 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes870 : Bytes := ("    let r000003c6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked870 : bytes870=statementBytes 966 (op870.map lower) ∧ bytes870.length=41 := by core033_kernel_decide
def op871 : List WordIR.Op := [.band 965 966]
def bytes871 : Bytes := ("    let r000003c7: u32 = r000003c5 & r000003c6;\n" : String).toByteArray.data.toList
theorem checked871 : bytes871=statementBytes 967 (op871.map lower) ∧ bytes871.length=48 := by core033_kernel_decide
def op872 : List WordIR.Op := [.bxor 961 967]
def bytes872 : Bytes := ("    let r000003c8: u32 = r000003c1 ^ r000003c7;\n" : String).toByteArray.data.toList
theorem checked872 : bytes872=statementBytes 968 (op872.map lower) ∧ bytes872.length=48 := by core033_kernel_decide
def op873 : List WordIR.Op := [.bnot 605]
def bytes873 : Bytes := ("    let r000003c9: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked873 : bytes873=statementBytes 969 (op873.map lower) ∧ bytes873.length=37 := by core033_kernel_decide
def op874 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes874 : Bytes := ("    let r000003ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked874 : bytes874=statementBytes 970 (op874.map lower) ∧ bytes874.length=41 := by core033_kernel_decide
def op875 : List WordIR.Op := [.badd 969 970]
def bytes875 : Bytes := ("    let r000003cb: u32 = r000003c9.wrapping_add(r000003ca);\n" : String).toByteArray.data.toList
theorem checked875 : bytes875=statementBytes 971 (op875.map lower) ∧ bytes875.length=60 := by core033_kernel_decide
def op876 : List WordIR.Op := [.band 971 562]
def bytes876 : Bytes := ("    let r000003cc: u32 = r000003cb & r00000232;\n" : String).toByteArray.data.toList
theorem checked876 : bytes876=statementBytes 972 (op876.map lower) ∧ bytes876.length=48 := by core033_kernel_decide
def op877 : List WordIR.Op := [.bnot 605]
def bytes877 : Bytes := ("    let r000003cd: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked877 : bytes877=statementBytes 973 (op877.map lower) ∧ bytes877.length=37 := by core033_kernel_decide
def op878 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes878 : Bytes := ("    let r000003ce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked878 : bytes878=statementBytes 974 (op878.map lower) ∧ bytes878.length=41 := by core033_kernel_decide
def op879 : List WordIR.Op := [.badd 973 974]
def bytes879 : Bytes := ("    let r000003cf: u32 = r000003cd.wrapping_add(r000003ce);\n" : String).toByteArray.data.toList
theorem checked879 : bytes879=statementBytes 975 (op879.map lower) ∧ bytes879.length=60 := by core033_kernel_decide
def op880 : List WordIR.Op := [.bnot 975]
def bytes880 : Bytes := ("    let r000003d0: u32 = !r000003cf;\n" : String).toByteArray.data.toList
theorem checked880 : bytes880=statementBytes 976 (op880.map lower) ∧ bytes880.length=37 := by core033_kernel_decide
def op881 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes881 : Bytes := ("    let r000003d1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked881 : bytes881=statementBytes 977 (op881.map lower) ∧ bytes881.length=41 := by core033_kernel_decide
def op882 : List WordIR.Op := [.band 976 977]
def bytes882 : Bytes := ("    let r000003d2: u32 = r000003d0 & r000003d1;\n" : String).toByteArray.data.toList
theorem checked882 : bytes882=statementBytes 978 (op882.map lower) ∧ bytes882.length=48 := by core033_kernel_decide
def op883 : List WordIR.Op := [.bxor 972 978]
def bytes883 : Bytes := ("    let r000003d3: u32 = r000003cc ^ r000003d2;\n" : String).toByteArray.data.toList
theorem checked883 : bytes883=statementBytes 979 (op883.map lower) ∧ bytes883.length=48 := by core033_kernel_decide
def op884 : List WordIR.Op := [.bnot 605]
def bytes884 : Bytes := ("    let r000003d4: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked884 : bytes884=statementBytes 980 (op884.map lower) ∧ bytes884.length=37 := by core033_kernel_decide
def op885 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes885 : Bytes := ("    let r000003d5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked885 : bytes885=statementBytes 981 (op885.map lower) ∧ bytes885.length=41 := by core033_kernel_decide
def op886 : List WordIR.Op := [.badd 980 981]
def bytes886 : Bytes := ("    let r000003d6: u32 = r000003d4.wrapping_add(r000003d5);\n" : String).toByteArray.data.toList
theorem checked886 : bytes886=statementBytes 982 (op886.map lower) ∧ bytes886.length=60 := by core033_kernel_decide
def op887 : List WordIR.Op := [.band 982 46]
def bytes887 : Bytes := ("    let r000003d7: u32 = r000003d6 & r0000002e;\n" : String).toByteArray.data.toList
theorem checked887 : bytes887=statementBytes 983 (op887.map lower) ∧ bytes887.length=48 := by core033_kernel_decide
def op888 : List WordIR.Op := [.bnot 605]
def bytes888 : Bytes := ("    let r000003d8: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked888 : bytes888=statementBytes 984 (op888.map lower) ∧ bytes888.length=37 := by core033_kernel_decide
def op889 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes889 : Bytes := ("    let r000003d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked889 : bytes889=statementBytes 985 (op889.map lower) ∧ bytes889.length=41 := by core033_kernel_decide
def op890 : List WordIR.Op := [.badd 984 985]
def bytes890 : Bytes := ("    let r000003da: u32 = r000003d8.wrapping_add(r000003d9);\n" : String).toByteArray.data.toList
theorem checked890 : bytes890=statementBytes 986 (op890.map lower) ∧ bytes890.length=60 := by core033_kernel_decide
def op891 : List WordIR.Op := [.bnot 986]
def bytes891 : Bytes := ("    let r000003db: u32 = !r000003da;\n" : String).toByteArray.data.toList
theorem checked891 : bytes891=statementBytes 987 (op891.map lower) ∧ bytes891.length=37 := by core033_kernel_decide
def op892 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes892 : Bytes := ("    let r000003dc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked892 : bytes892=statementBytes 988 (op892.map lower) ∧ bytes892.length=41 := by core033_kernel_decide
def op893 : List WordIR.Op := [.band 987 988]
def bytes893 : Bytes := ("    let r000003dd: u32 = r000003db & r000003dc;\n" : String).toByteArray.data.toList
theorem checked893 : bytes893=statementBytes 989 (op893.map lower) ∧ bytes893.length=48 := by core033_kernel_decide
def op894 : List WordIR.Op := [.bxor 983 989]
def bytes894 : Bytes := ("    let r000003de: u32 = r000003d7 ^ r000003dd;\n" : String).toByteArray.data.toList
theorem checked894 : bytes894=statementBytes 990 (op894.map lower) ∧ bytes894.length=48 := by core033_kernel_decide
def op895 : List WordIR.Op := [.bnot 605]
def bytes895 : Bytes := ("    let r000003df: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked895 : bytes895=statementBytes 991 (op895.map lower) ∧ bytes895.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op832,op833,op834,op835,op836,op837,op838,op839,op840,op841,op842,op843,op844,op845,op846,op847,op848,op849,op850,op851,op852,op853,op854,op855,op856,op857,op858,op859,op860,op861,op862,op863,op864,op865,op866,op867,op868,op869,op870,op871,op872,op873,op874,op875,op876,op877,op878,op879,op880,op881,op882,op883,op884,op885,op886,op887,op888,op889,op890,op891,op892,op893,op894,op895]
def chunks : List Bytes := [bytes832,bytes833,bytes834,bytes835,bytes836,bytes837,bytes838,bytes839,bytes840,bytes841,bytes842,bytes843,bytes844,bytes845,bytes846,bytes847,bytes848,bytes849,bytes850,bytes851,bytes852,bytes853,bytes854,bytes855,bytes856,bytes857,bytes858,bytes859,bytes860,bytes861,bytes862,bytes863,bytes864,bytes865,bytes866,bytes867,bytes868,bytes869,bytes870,bytes871,bytes872,bytes873,bytes874,bytes875,bytes876,bytes877,bytes878,bytes879,bytes880,bytes881,bytes882,bytes883,bytes884,bytes885,bytes886,bytes887,bytes888,bytes889,bytes890,bytes891,bytes892,bytes893,bytes894,bytes895]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 928 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked832.1 (.cons _ _ _ _ _ checked833.1 (.cons _ _ _ _ _ checked834.1 (.cons _ _ _ _ _ checked835.1 (.cons _ _ _ _ _ checked836.1 (.cons _ _ _ _ _ checked837.1 (.cons _ _ _ _ _ checked838.1 (.cons _ _ _ _ _ checked839.1 (.cons _ _ _ _ _ checked840.1 (.cons _ _ _ _ _ checked841.1 (.cons _ _ _ _ _ checked842.1 (.cons _ _ _ _ _ checked843.1 (.cons _ _ _ _ _ checked844.1 (.cons _ _ _ _ _ checked845.1 (.cons _ _ _ _ _ checked846.1 (.cons _ _ _ _ _ checked847.1 (.cons _ _ _ _ _ checked848.1 (.cons _ _ _ _ _ checked849.1 (.cons _ _ _ _ _ checked850.1 (.cons _ _ _ _ _ checked851.1 (.cons _ _ _ _ _ checked852.1 (.cons _ _ _ _ _ checked853.1 (.cons _ _ _ _ _ checked854.1 (.cons _ _ _ _ _ checked855.1 (.cons _ _ _ _ _ checked856.1 (.cons _ _ _ _ _ checked857.1 (.cons _ _ _ _ _ checked858.1 (.cons _ _ _ _ _ checked859.1 (.cons _ _ _ _ _ checked860.1 (.cons _ _ _ _ _ checked861.1 (.cons _ _ _ _ _ checked862.1 (.cons _ _ _ _ _ checked863.1 (.cons _ _ _ _ _ checked864.1 (.cons _ _ _ _ _ checked865.1 (.cons _ _ _ _ _ checked866.1 (.cons _ _ _ _ _ checked867.1 (.cons _ _ _ _ _ checked868.1 (.cons _ _ _ _ _ checked869.1 (.cons _ _ _ _ _ checked870.1 (.cons _ _ _ _ _ checked871.1 (.cons _ _ _ _ _ checked872.1 (.cons _ _ _ _ _ checked873.1 (.cons _ _ _ _ _ checked874.1 (.cons _ _ _ _ _ checked875.1 (.cons _ _ _ _ _ checked876.1 (.cons _ _ _ _ _ checked877.1 (.cons _ _ _ _ _ checked878.1 (.cons _ _ _ _ _ checked879.1 (.cons _ _ _ _ _ checked880.1 (.cons _ _ _ _ _ checked881.1 (.cons _ _ _ _ _ checked882.1 (.cons _ _ _ _ _ checked883.1 (.cons _ _ _ _ _ checked884.1 (.cons _ _ _ _ _ checked885.1 (.cons _ _ _ _ _ checked886.1 (.cons _ _ _ _ _ checked887.1 (.cons _ _ _ _ _ checked888.1 (.cons _ _ _ _ _ checked889.1 (.cons _ _ _ _ _ checked890.1 (.cons _ _ _ _ _ checked891.1 (.cons _ _ _ _ _ checked892.1 (.cons _ _ _ _ _ checked893.1 (.cons _ _ _ _ _ checked894.1 (.cons _ _ _ _ _ checked895.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 928 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2887 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked832.2,checked833.2,checked834.2,checked835.2,checked836.2,checked837.2,checked838.2,checked839.2,checked840.2,checked841.2,checked842.2,checked843.2,checked844.2,checked845.2,checked846.2,checked847.2,checked848.2,checked849.2,checked850.2,checked851.2,checked852.2,checked853.2,checked854.2,checked855.2,checked856.2,checked857.2,checked858.2,checked859.2,checked860.2,checked861.2,checked862.2,checked863.2,checked864.2,checked865.2,checked866.2,checked867.2,checked868.2,checked869.2,checked870.2,checked871.2,checked872.2,checked873.2,checked874.2,checked875.2,checked876.2,checked877.2,checked878.2,checked879.2,checked880.2,checked881.2,checked882.2,checked883.2,checked884.2,checked885.2,checked886.2,checked887.2,checked888.2,checked889.2,checked890.2,checked891.2,checked892.2,checked893.2,checked894.2,checked895.2]
  decide
end ArtifactPairedPathRoundGroup13
