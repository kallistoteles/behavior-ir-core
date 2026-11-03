import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup13
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op832 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes832 : Bytes := ("    let r00000388: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked832 : bytes832=statementBytes 904 (op832.map lower) ∧ bytes832.length=41 := by core033_kernel_decide
def op833 : List WordIR.Op := [.bxor 903 904]
def bytes833 : Bytes := ("    let r00000389: u32 = r00000387 ^ r00000388;\n" : String).toByteArray.data.toList
theorem checked833 : bytes833=statementBytes 905 (op833.map lower) ∧ bytes833.length=48 := by core033_kernel_decide
def op834 : List WordIR.Op := [.shr 49 8]
def bytes834 : Bytes := ("    let r0000038a: u32 = r00000031 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked834 : bytes834=statementBytes 906 (op834.map lower) ∧ bytes834.length=54 := by core033_kernel_decide
def op835 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes835 : Bytes := ("    let r0000038b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked835 : bytes835=statementBytes 907 (op835.map lower) ∧ bytes835.length=41 := by core033_kernel_decide
def op836 : List WordIR.Op := [.bnot 907]
def bytes836 : Bytes := ("    let r0000038c: u32 = !r0000038b;\n" : String).toByteArray.data.toList
theorem checked836 : bytes836=statementBytes 908 (op836.map lower) ∧ bytes836.length=37 := by core033_kernel_decide
def op837 : List WordIR.Op := [.band 906 908]
def bytes837 : Bytes := ("    let r0000038d: u32 = r0000038a & r0000038c;\n" : String).toByteArray.data.toList
theorem checked837 : bytes837=statementBytes 909 (op837.map lower) ∧ bytes837.length=48 := by core033_kernel_decide
def op838 : List WordIR.Op := [.shr 49 8]
def bytes838 : Bytes := ("    let r0000038e: u32 = r00000031 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked838 : bytes838=statementBytes 910 (op838.map lower) ∧ bytes838.length=54 := by core033_kernel_decide
def op839 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes839 : Bytes := ("    let r0000038f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked839 : bytes839=statementBytes 911 (op839.map lower) ∧ bytes839.length=41 := by core033_kernel_decide
def op840 : List WordIR.Op := [.bnot 911]
def bytes840 : Bytes := ("    let r00000390: u32 = !r0000038f;\n" : String).toByteArray.data.toList
theorem checked840 : bytes840=statementBytes 912 (op840.map lower) ∧ bytes840.length=37 := by core033_kernel_decide
def op841 : List WordIR.Op := [.bxor 910 912]
def bytes841 : Bytes := ("    let r00000391: u32 = r0000038e ^ r00000390;\n" : String).toByteArray.data.toList
theorem checked841 : bytes841=statementBytes 913 (op841.map lower) ∧ bytes841.length=48 := by core033_kernel_decide
def op842 : List WordIR.Op := [.shr 49 8]
def bytes842 : Bytes := ("    let r00000392: u32 = r00000031 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked842 : bytes842=statementBytes 914 (op842.map lower) ∧ bytes842.length=54 := by core033_kernel_decide
def op843 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes843 : Bytes := ("    let r00000393: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked843 : bytes843=statementBytes 915 (op843.map lower) ∧ bytes843.length=41 := by core033_kernel_decide
def op844 : List WordIR.Op := [.bnot 915]
def bytes844 : Bytes := ("    let r00000394: u32 = !r00000393;\n" : String).toByteArray.data.toList
theorem checked844 : bytes844=statementBytes 916 (op844.map lower) ∧ bytes844.length=37 := by core033_kernel_decide
def op845 : List WordIR.Op := [.badd 914 916]
def bytes845 : Bytes := ("    let r00000395: u32 = r00000392.wrapping_add(r00000394);\n" : String).toByteArray.data.toList
theorem checked845 : bytes845=statementBytes 917 (op845.map lower) ∧ bytes845.length=60 := by core033_kernel_decide
def op846 : List WordIR.Op := [.bnot 917]
def bytes846 : Bytes := ("    let r00000396: u32 = !r00000395;\n" : String).toByteArray.data.toList
theorem checked846 : bytes846=statementBytes 918 (op846.map lower) ∧ bytes846.length=37 := by core033_kernel_decide
def op847 : List WordIR.Op := [.band 913 918]
def bytes847 : Bytes := ("    let r00000397: u32 = r00000391 & r00000396;\n" : String).toByteArray.data.toList
theorem checked847 : bytes847=statementBytes 919 (op847.map lower) ∧ bytes847.length=48 := by core033_kernel_decide
def op848 : List WordIR.Op := [.bxor 909 919]
def bytes848 : Bytes := ("    let r00000398: u32 = r0000038d ^ r00000397;\n" : String).toByteArray.data.toList
theorem checked848 : bytes848=statementBytes 920 (op848.map lower) ∧ bytes848.length=48 := by core033_kernel_decide
def op849 : List WordIR.Op := [.shr 920 31]
def bytes849 : Bytes := ("    let r00000399: u32 = r00000398 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked849 : bytes849=statementBytes 921 (op849.map lower) ∧ bytes849.length=54 := by core033_kernel_decide
def op850 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes850 : Bytes := ("    let r0000039a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked850 : bytes850=statementBytes 922 (op850.map lower) ∧ bytes850.length=41 := by core033_kernel_decide
def op851 : List WordIR.Op := [.bxor 921 922]
def bytes851 : Bytes := ("    let r0000039b: u32 = r00000399 ^ r0000039a;\n" : String).toByteArray.data.toList
theorem checked851 : bytes851=statementBytes 923 (op851.map lower) ∧ bytes851.length=48 := by core033_kernel_decide
def op852 : List WordIR.Op := [.shr 50 8]
def bytes852 : Bytes := ("    let r0000039c: u32 = r00000032 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked852 : bytes852=statementBytes 924 (op852.map lower) ∧ bytes852.length=54 := by core033_kernel_decide
def op853 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes853 : Bytes := ("    let r0000039d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked853 : bytes853=statementBytes 925 (op853.map lower) ∧ bytes853.length=41 := by core033_kernel_decide
def op854 : List WordIR.Op := [.bnot 925]
def bytes854 : Bytes := ("    let r0000039e: u32 = !r0000039d;\n" : String).toByteArray.data.toList
theorem checked854 : bytes854=statementBytes 926 (op854.map lower) ∧ bytes854.length=37 := by core033_kernel_decide
def op855 : List WordIR.Op := [.band 924 926]
def bytes855 : Bytes := ("    let r0000039f: u32 = r0000039c & r0000039e;\n" : String).toByteArray.data.toList
theorem checked855 : bytes855=statementBytes 927 (op855.map lower) ∧ bytes855.length=48 := by core033_kernel_decide
def op856 : List WordIR.Op := [.shr 50 8]
def bytes856 : Bytes := ("    let r000003a0: u32 = r00000032 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked856 : bytes856=statementBytes 928 (op856.map lower) ∧ bytes856.length=54 := by core033_kernel_decide
def op857 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes857 : Bytes := ("    let r000003a1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked857 : bytes857=statementBytes 929 (op857.map lower) ∧ bytes857.length=41 := by core033_kernel_decide
def op858 : List WordIR.Op := [.bnot 929]
def bytes858 : Bytes := ("    let r000003a2: u32 = !r000003a1;\n" : String).toByteArray.data.toList
theorem checked858 : bytes858=statementBytes 930 (op858.map lower) ∧ bytes858.length=37 := by core033_kernel_decide
def op859 : List WordIR.Op := [.bxor 928 930]
def bytes859 : Bytes := ("    let r000003a3: u32 = r000003a0 ^ r000003a2;\n" : String).toByteArray.data.toList
theorem checked859 : bytes859=statementBytes 931 (op859.map lower) ∧ bytes859.length=48 := by core033_kernel_decide
def op860 : List WordIR.Op := [.shr 50 8]
def bytes860 : Bytes := ("    let r000003a4: u32 = r00000032 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked860 : bytes860=statementBytes 932 (op860.map lower) ∧ bytes860.length=54 := by core033_kernel_decide
def op861 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes861 : Bytes := ("    let r000003a5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked861 : bytes861=statementBytes 933 (op861.map lower) ∧ bytes861.length=41 := by core033_kernel_decide
def op862 : List WordIR.Op := [.bnot 933]
def bytes862 : Bytes := ("    let r000003a6: u32 = !r000003a5;\n" : String).toByteArray.data.toList
theorem checked862 : bytes862=statementBytes 934 (op862.map lower) ∧ bytes862.length=37 := by core033_kernel_decide
def op863 : List WordIR.Op := [.badd 932 934]
def bytes863 : Bytes := ("    let r000003a7: u32 = r000003a4.wrapping_add(r000003a6);\n" : String).toByteArray.data.toList
theorem checked863 : bytes863=statementBytes 935 (op863.map lower) ∧ bytes863.length=60 := by core033_kernel_decide
def op864 : List WordIR.Op := [.bnot 935]
def bytes864 : Bytes := ("    let r000003a8: u32 = !r000003a7;\n" : String).toByteArray.data.toList
theorem checked864 : bytes864=statementBytes 936 (op864.map lower) ∧ bytes864.length=37 := by core033_kernel_decide
def op865 : List WordIR.Op := [.band 931 936]
def bytes865 : Bytes := ("    let r000003a9: u32 = r000003a3 & r000003a8;\n" : String).toByteArray.data.toList
theorem checked865 : bytes865=statementBytes 937 (op865.map lower) ∧ bytes865.length=48 := by core033_kernel_decide
def op866 : List WordIR.Op := [.bxor 927 937]
def bytes866 : Bytes := ("    let r000003aa: u32 = r0000039f ^ r000003a9;\n" : String).toByteArray.data.toList
theorem checked866 : bytes866=statementBytes 938 (op866.map lower) ∧ bytes866.length=48 := by core033_kernel_decide
def op867 : List WordIR.Op := [.shr 938 31]
def bytes867 : Bytes := ("    let r000003ab: u32 = r000003aa >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked867 : bytes867=statementBytes 939 (op867.map lower) ∧ bytes867.length=54 := by core033_kernel_decide
def op868 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes868 : Bytes := ("    let r000003ac: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked868 : bytes868=statementBytes 940 (op868.map lower) ∧ bytes868.length=41 := by core033_kernel_decide
def op869 : List WordIR.Op := [.bxor 939 940]
def bytes869 : Bytes := ("    let r000003ad: u32 = r000003ab ^ r000003ac;\n" : String).toByteArray.data.toList
theorem checked869 : bytes869=statementBytes 941 (op869.map lower) ∧ bytes869.length=48 := by core033_kernel_decide
def op870 : List WordIR.Op := [.shr 51 8]
def bytes870 : Bytes := ("    let r000003ae: u32 = r00000033 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked870 : bytes870=statementBytes 942 (op870.map lower) ∧ bytes870.length=54 := by core033_kernel_decide
def op871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes871 : Bytes := ("    let r000003af: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked871 : bytes871=statementBytes 943 (op871.map lower) ∧ bytes871.length=41 := by core033_kernel_decide
def op872 : List WordIR.Op := [.bnot 943]
def bytes872 : Bytes := ("    let r000003b0: u32 = !r000003af;\n" : String).toByteArray.data.toList
theorem checked872 : bytes872=statementBytes 944 (op872.map lower) ∧ bytes872.length=37 := by core033_kernel_decide
def op873 : List WordIR.Op := [.band 942 944]
def bytes873 : Bytes := ("    let r000003b1: u32 = r000003ae & r000003b0;\n" : String).toByteArray.data.toList
theorem checked873 : bytes873=statementBytes 945 (op873.map lower) ∧ bytes873.length=48 := by core033_kernel_decide
def op874 : List WordIR.Op := [.shr 51 8]
def bytes874 : Bytes := ("    let r000003b2: u32 = r00000033 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked874 : bytes874=statementBytes 946 (op874.map lower) ∧ bytes874.length=54 := by core033_kernel_decide
def op875 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes875 : Bytes := ("    let r000003b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked875 : bytes875=statementBytes 947 (op875.map lower) ∧ bytes875.length=41 := by core033_kernel_decide
def op876 : List WordIR.Op := [.bnot 947]
def bytes876 : Bytes := ("    let r000003b4: u32 = !r000003b3;\n" : String).toByteArray.data.toList
theorem checked876 : bytes876=statementBytes 948 (op876.map lower) ∧ bytes876.length=37 := by core033_kernel_decide
def op877 : List WordIR.Op := [.bxor 946 948]
def bytes877 : Bytes := ("    let r000003b5: u32 = r000003b2 ^ r000003b4;\n" : String).toByteArray.data.toList
theorem checked877 : bytes877=statementBytes 949 (op877.map lower) ∧ bytes877.length=48 := by core033_kernel_decide
def op878 : List WordIR.Op := [.shr 51 8]
def bytes878 : Bytes := ("    let r000003b6: u32 = r00000033 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked878 : bytes878=statementBytes 950 (op878.map lower) ∧ bytes878.length=54 := by core033_kernel_decide
def op879 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes879 : Bytes := ("    let r000003b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked879 : bytes879=statementBytes 951 (op879.map lower) ∧ bytes879.length=41 := by core033_kernel_decide
def op880 : List WordIR.Op := [.bnot 951]
def bytes880 : Bytes := ("    let r000003b8: u32 = !r000003b7;\n" : String).toByteArray.data.toList
theorem checked880 : bytes880=statementBytes 952 (op880.map lower) ∧ bytes880.length=37 := by core033_kernel_decide
def op881 : List WordIR.Op := [.badd 950 952]
def bytes881 : Bytes := ("    let r000003b9: u32 = r000003b6.wrapping_add(r000003b8);\n" : String).toByteArray.data.toList
theorem checked881 : bytes881=statementBytes 953 (op881.map lower) ∧ bytes881.length=60 := by core033_kernel_decide
def op882 : List WordIR.Op := [.bnot 953]
def bytes882 : Bytes := ("    let r000003ba: u32 = !r000003b9;\n" : String).toByteArray.data.toList
theorem checked882 : bytes882=statementBytes 954 (op882.map lower) ∧ bytes882.length=37 := by core033_kernel_decide
def op883 : List WordIR.Op := [.band 949 954]
def bytes883 : Bytes := ("    let r000003bb: u32 = r000003b5 & r000003ba;\n" : String).toByteArray.data.toList
theorem checked883 : bytes883=statementBytes 955 (op883.map lower) ∧ bytes883.length=48 := by core033_kernel_decide
def op884 : List WordIR.Op := [.bxor 945 955]
def bytes884 : Bytes := ("    let r000003bc: u32 = r000003b1 ^ r000003bb;\n" : String).toByteArray.data.toList
theorem checked884 : bytes884=statementBytes 956 (op884.map lower) ∧ bytes884.length=48 := by core033_kernel_decide
def op885 : List WordIR.Op := [.shr 956 31]
def bytes885 : Bytes := ("    let r000003bd: u32 = r000003bc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked885 : bytes885=statementBytes 957 (op885.map lower) ∧ bytes885.length=54 := by core033_kernel_decide
def op886 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes886 : Bytes := ("    let r000003be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked886 : bytes886=statementBytes 958 (op886.map lower) ∧ bytes886.length=41 := by core033_kernel_decide
def op887 : List WordIR.Op := [.bxor 957 958]
def bytes887 : Bytes := ("    let r000003bf: u32 = r000003bd ^ r000003be;\n" : String).toByteArray.data.toList
theorem checked887 : bytes887=statementBytes 959 (op887.map lower) ∧ bytes887.length=48 := by core033_kernel_decide
def op888 : List WordIR.Op := [.shr 52 8]
def bytes888 : Bytes := ("    let r000003c0: u32 = r00000034 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked888 : bytes888=statementBytes 960 (op888.map lower) ∧ bytes888.length=54 := by core033_kernel_decide
def op889 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes889 : Bytes := ("    let r000003c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked889 : bytes889=statementBytes 961 (op889.map lower) ∧ bytes889.length=41 := by core033_kernel_decide
def op890 : List WordIR.Op := [.bnot 961]
def bytes890 : Bytes := ("    let r000003c2: u32 = !r000003c1;\n" : String).toByteArray.data.toList
theorem checked890 : bytes890=statementBytes 962 (op890.map lower) ∧ bytes890.length=37 := by core033_kernel_decide
def op891 : List WordIR.Op := [.band 960 962]
def bytes891 : Bytes := ("    let r000003c3: u32 = r000003c0 & r000003c2;\n" : String).toByteArray.data.toList
theorem checked891 : bytes891=statementBytes 963 (op891.map lower) ∧ bytes891.length=48 := by core033_kernel_decide
def op892 : List WordIR.Op := [.shr 52 8]
def bytes892 : Bytes := ("    let r000003c4: u32 = r00000034 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked892 : bytes892=statementBytes 964 (op892.map lower) ∧ bytes892.length=54 := by core033_kernel_decide
def op893 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes893 : Bytes := ("    let r000003c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked893 : bytes893=statementBytes 965 (op893.map lower) ∧ bytes893.length=41 := by core033_kernel_decide
def op894 : List WordIR.Op := [.bnot 965]
def bytes894 : Bytes := ("    let r000003c6: u32 = !r000003c5;\n" : String).toByteArray.data.toList
theorem checked894 : bytes894=statementBytes 966 (op894.map lower) ∧ bytes894.length=37 := by core033_kernel_decide
def op895 : List WordIR.Op := [.bxor 964 966]
def bytes895 : Bytes := ("    let r000003c7: u32 = r000003c4 ^ r000003c6;\n" : String).toByteArray.data.toList
theorem checked895 : bytes895=statementBytes 967 (op895.map lower) ∧ bytes895.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op832,op833,op834,op835,op836,op837,op838,op839,op840,op841,op842,op843,op844,op845,op846,op847,op848,op849,op850,op851,op852,op853,op854,op855,op856,op857,op858,op859,op860,op861,op862,op863,op864,op865,op866,op867,op868,op869,op870,op871,op872,op873,op874,op875,op876,op877,op878,op879,op880,op881,op882,op883,op884,op885,op886,op887,op888,op889,op890,op891,op892,op893,op894,op895]
def chunks : List Bytes := [bytes832,bytes833,bytes834,bytes835,bytes836,bytes837,bytes838,bytes839,bytes840,bytes841,bytes842,bytes843,bytes844,bytes845,bytes846,bytes847,bytes848,bytes849,bytes850,bytes851,bytes852,bytes853,bytes854,bytes855,bytes856,bytes857,bytes858,bytes859,bytes860,bytes861,bytes862,bytes863,bytes864,bytes865,bytes866,bytes867,bytes868,bytes869,bytes870,bytes871,bytes872,bytes873,bytes874,bytes875,bytes876,bytes877,bytes878,bytes879,bytes880,bytes881,bytes882,bytes883,bytes884,bytes885,bytes886,bytes887,bytes888,bytes889,bytes890,bytes891,bytes892,bytes893,bytes894,bytes895]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 904 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked832.1 (.cons _ _ _ _ _ checked833.1 (.cons _ _ _ _ _ checked834.1 (.cons _ _ _ _ _ checked835.1 (.cons _ _ _ _ _ checked836.1 (.cons _ _ _ _ _ checked837.1 (.cons _ _ _ _ _ checked838.1 (.cons _ _ _ _ _ checked839.1 (.cons _ _ _ _ _ checked840.1 (.cons _ _ _ _ _ checked841.1 (.cons _ _ _ _ _ checked842.1 (.cons _ _ _ _ _ checked843.1 (.cons _ _ _ _ _ checked844.1 (.cons _ _ _ _ _ checked845.1 (.cons _ _ _ _ _ checked846.1 (.cons _ _ _ _ _ checked847.1 (.cons _ _ _ _ _ checked848.1 (.cons _ _ _ _ _ checked849.1 (.cons _ _ _ _ _ checked850.1 (.cons _ _ _ _ _ checked851.1 (.cons _ _ _ _ _ checked852.1 (.cons _ _ _ _ _ checked853.1 (.cons _ _ _ _ _ checked854.1 (.cons _ _ _ _ _ checked855.1 (.cons _ _ _ _ _ checked856.1 (.cons _ _ _ _ _ checked857.1 (.cons _ _ _ _ _ checked858.1 (.cons _ _ _ _ _ checked859.1 (.cons _ _ _ _ _ checked860.1 (.cons _ _ _ _ _ checked861.1 (.cons _ _ _ _ _ checked862.1 (.cons _ _ _ _ _ checked863.1 (.cons _ _ _ _ _ checked864.1 (.cons _ _ _ _ _ checked865.1 (.cons _ _ _ _ _ checked866.1 (.cons _ _ _ _ _ checked867.1 (.cons _ _ _ _ _ checked868.1 (.cons _ _ _ _ _ checked869.1 (.cons _ _ _ _ _ checked870.1 (.cons _ _ _ _ _ checked871.1 (.cons _ _ _ _ _ checked872.1 (.cons _ _ _ _ _ checked873.1 (.cons _ _ _ _ _ checked874.1 (.cons _ _ _ _ _ checked875.1 (.cons _ _ _ _ _ checked876.1 (.cons _ _ _ _ _ checked877.1 (.cons _ _ _ _ _ checked878.1 (.cons _ _ _ _ _ checked879.1 (.cons _ _ _ _ _ checked880.1 (.cons _ _ _ _ _ checked881.1 (.cons _ _ _ _ _ checked882.1 (.cons _ _ _ _ _ checked883.1 (.cons _ _ _ _ _ checked884.1 (.cons _ _ _ _ _ checked885.1 (.cons _ _ _ _ _ checked886.1 (.cons _ _ _ _ _ checked887.1 (.cons _ _ _ _ _ checked888.1 (.cons _ _ _ _ _ checked889.1 (.cons _ _ _ _ _ checked890.1 (.cons _ _ _ _ _ checked891.1 (.cons _ _ _ _ _ checked892.1 (.cons _ _ _ _ _ checked893.1 (.cons _ _ _ _ _ checked894.1 (.cons _ _ _ _ _ checked895.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 904 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2933 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked832.2,checked833.2,checked834.2,checked835.2,checked836.2,checked837.2,checked838.2,checked839.2,checked840.2,checked841.2,checked842.2,checked843.2,checked844.2,checked845.2,checked846.2,checked847.2,checked848.2,checked849.2,checked850.2,checked851.2,checked852.2,checked853.2,checked854.2,checked855.2,checked856.2,checked857.2,checked858.2,checked859.2,checked860.2,checked861.2,checked862.2,checked863.2,checked864.2,checked865.2,checked866.2,checked867.2,checked868.2,checked869.2,checked870.2,checked871.2,checked872.2,checked873.2,checked874.2,checked875.2,checked876.2,checked877.2,checked878.2,checked879.2,checked880.2,checked881.2,checked882.2,checked883.2,checked884.2,checked885.2,checked886.2,checked887.2,checked888.2,checked889.2,checked890.2,checked891.2,checked892.2,checked893.2,checked894.2,checked895.2]
  decide
end ArtifactHashBlockGroup13
