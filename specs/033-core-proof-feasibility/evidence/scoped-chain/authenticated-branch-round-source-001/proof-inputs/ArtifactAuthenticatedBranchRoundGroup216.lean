import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup216
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13824 : List WordIR.Op := [.bnot 419]
def bytes13824 : Bytes := ("    let r00003676: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13824 : bytes13824=statementBytes 13942 (op13824.map lower) ∧ bytes13824.length=37 := by core033_kernel_decide
def op13825 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13825 : Bytes := ("    let r00003677: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13825 : bytes13825=statementBytes 13943 (op13825.map lower) ∧ bytes13825.length=41 := by core033_kernel_decide
def op13826 : List WordIR.Op := [.badd 13942 13943]
def bytes13826 : Bytes := ("    let r00003678: u32 = r00003676.wrapping_add(r00003677);\n" : String).toByteArray.data.toList
theorem checked13826 : bytes13826=statementBytes 13944 (op13826.map lower) ∧ bytes13826.length=60 := by core033_kernel_decide
def op13827 : List WordIR.Op := [.band 13944 12884]
def bytes13827 : Bytes := ("    let r00003679: u32 = r00003678 & r00003254;\n" : String).toByteArray.data.toList
theorem checked13827 : bytes13827=statementBytes 13945 (op13827.map lower) ∧ bytes13827.length=48 := by core033_kernel_decide
def op13828 : List WordIR.Op := [.bnot 419]
def bytes13828 : Bytes := ("    let r0000367a: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13828 : bytes13828=statementBytes 13946 (op13828.map lower) ∧ bytes13828.length=37 := by core033_kernel_decide
def op13829 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13829 : Bytes := ("    let r0000367b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13829 : bytes13829=statementBytes 13947 (op13829.map lower) ∧ bytes13829.length=41 := by core033_kernel_decide
def op13830 : List WordIR.Op := [.badd 13946 13947]
def bytes13830 : Bytes := ("    let r0000367c: u32 = r0000367a.wrapping_add(r0000367b);\n" : String).toByteArray.data.toList
theorem checked13830 : bytes13830=statementBytes 13948 (op13830.map lower) ∧ bytes13830.length=60 := by core033_kernel_decide
def op13831 : List WordIR.Op := [.bnot 13948]
def bytes13831 : Bytes := ("    let r0000367d: u32 = !r0000367c;\n" : String).toByteArray.data.toList
theorem checked13831 : bytes13831=statementBytes 13949 (op13831.map lower) ∧ bytes13831.length=37 := by core033_kernel_decide
def op13832 : List WordIR.Op := [.band 13949 63]
def bytes13832 : Bytes := ("    let r0000367e: u32 = r0000367d & r0000003f;\n" : String).toByteArray.data.toList
theorem checked13832 : bytes13832=statementBytes 13950 (op13832.map lower) ∧ bytes13832.length=48 := by core033_kernel_decide
def op13833 : List WordIR.Op := [.bxor 13945 13950]
def bytes13833 : Bytes := ("    let r0000367f: u32 = r00003679 ^ r0000367e;\n" : String).toByteArray.data.toList
theorem checked13833 : bytes13833=statementBytes 13951 (op13833.map lower) ∧ bytes13833.length=48 := by core033_kernel_decide
def op13834 : List WordIR.Op := [.bnot 419]
def bytes13834 : Bytes := ("    let r00003680: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13834 : bytes13834=statementBytes 13952 (op13834.map lower) ∧ bytes13834.length=37 := by core033_kernel_decide
def op13835 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13835 : Bytes := ("    let r00003681: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13835 : bytes13835=statementBytes 13953 (op13835.map lower) ∧ bytes13835.length=41 := by core033_kernel_decide
def op13836 : List WordIR.Op := [.badd 13952 13953]
def bytes13836 : Bytes := ("    let r00003682: u32 = r00003680.wrapping_add(r00003681);\n" : String).toByteArray.data.toList
theorem checked13836 : bytes13836=statementBytes 13954 (op13836.map lower) ∧ bytes13836.length=60 := by core033_kernel_decide
def op13837 : List WordIR.Op := [.band 13954 12936]
def bytes13837 : Bytes := ("    let r00003683: u32 = r00003682 & r00003288;\n" : String).toByteArray.data.toList
theorem checked13837 : bytes13837=statementBytes 13955 (op13837.map lower) ∧ bytes13837.length=48 := by core033_kernel_decide
def op13838 : List WordIR.Op := [.bnot 419]
def bytes13838 : Bytes := ("    let r00003684: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13838 : bytes13838=statementBytes 13956 (op13838.map lower) ∧ bytes13838.length=37 := by core033_kernel_decide
def op13839 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13839 : Bytes := ("    let r00003685: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13839 : bytes13839=statementBytes 13957 (op13839.map lower) ∧ bytes13839.length=41 := by core033_kernel_decide
def op13840 : List WordIR.Op := [.badd 13956 13957]
def bytes13840 : Bytes := ("    let r00003686: u32 = r00003684.wrapping_add(r00003685);\n" : String).toByteArray.data.toList
theorem checked13840 : bytes13840=statementBytes 13958 (op13840.map lower) ∧ bytes13840.length=60 := by core033_kernel_decide
def op13841 : List WordIR.Op := [.bnot 13958]
def bytes13841 : Bytes := ("    let r00003687: u32 = !r00003686;\n" : String).toByteArray.data.toList
theorem checked13841 : bytes13841=statementBytes 13959 (op13841.map lower) ∧ bytes13841.length=37 := by core033_kernel_decide
def op13842 : List WordIR.Op := [.band 13959 64]
def bytes13842 : Bytes := ("    let r00003688: u32 = r00003687 & r00000040;\n" : String).toByteArray.data.toList
theorem checked13842 : bytes13842=statementBytes 13960 (op13842.map lower) ∧ bytes13842.length=48 := by core033_kernel_decide
def op13843 : List WordIR.Op := [.bxor 13955 13960]
def bytes13843 : Bytes := ("    let r00003689: u32 = r00003683 ^ r00003688;\n" : String).toByteArray.data.toList
theorem checked13843 : bytes13843=statementBytes 13961 (op13843.map lower) ∧ bytes13843.length=48 := by core033_kernel_decide
def op13844 : List WordIR.Op := [.bnot 419]
def bytes13844 : Bytes := ("    let r0000368a: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13844 : bytes13844=statementBytes 13962 (op13844.map lower) ∧ bytes13844.length=37 := by core033_kernel_decide
def op13845 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13845 : Bytes := ("    let r0000368b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13845 : bytes13845=statementBytes 13963 (op13845.map lower) ∧ bytes13845.length=41 := by core033_kernel_decide
def op13846 : List WordIR.Op := [.badd 13962 13963]
def bytes13846 : Bytes := ("    let r0000368c: u32 = r0000368a.wrapping_add(r0000368b);\n" : String).toByteArray.data.toList
theorem checked13846 : bytes13846=statementBytes 13964 (op13846.map lower) ∧ bytes13846.length=60 := by core033_kernel_decide
def op13847 : List WordIR.Op := [.band 13964 13092]
def bytes13847 : Bytes := ("    let r0000368d: u32 = r0000368c & r00003324;\n" : String).toByteArray.data.toList
theorem checked13847 : bytes13847=statementBytes 13965 (op13847.map lower) ∧ bytes13847.length=48 := by core033_kernel_decide
def op13848 : List WordIR.Op := [.bnot 419]
def bytes13848 : Bytes := ("    let r0000368e: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13848 : bytes13848=statementBytes 13966 (op13848.map lower) ∧ bytes13848.length=37 := by core033_kernel_decide
def op13849 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13849 : Bytes := ("    let r0000368f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13849 : bytes13849=statementBytes 13967 (op13849.map lower) ∧ bytes13849.length=41 := by core033_kernel_decide
def op13850 : List WordIR.Op := [.badd 13966 13967]
def bytes13850 : Bytes := ("    let r00003690: u32 = r0000368e.wrapping_add(r0000368f);\n" : String).toByteArray.data.toList
theorem checked13850 : bytes13850=statementBytes 13968 (op13850.map lower) ∧ bytes13850.length=60 := by core033_kernel_decide
def op13851 : List WordIR.Op := [.bnot 13968]
def bytes13851 : Bytes := ("    let r00003691: u32 = !r00003690;\n" : String).toByteArray.data.toList
theorem checked13851 : bytes13851=statementBytes 13969 (op13851.map lower) ∧ bytes13851.length=37 := by core033_kernel_decide
def op13852 : List WordIR.Op := [.band 13969 65]
def bytes13852 : Bytes := ("    let r00003692: u32 = r00003691 & r00000041;\n" : String).toByteArray.data.toList
theorem checked13852 : bytes13852=statementBytes 13970 (op13852.map lower) ∧ bytes13852.length=48 := by core033_kernel_decide
def op13853 : List WordIR.Op := [.bxor 13965 13970]
def bytes13853 : Bytes := ("    let r00003693: u32 = r0000368d ^ r00003692;\n" : String).toByteArray.data.toList
theorem checked13853 : bytes13853=statementBytes 13971 (op13853.map lower) ∧ bytes13853.length=48 := by core033_kernel_decide
def op13854 : List WordIR.Op := [.bnot 419]
def bytes13854 : Bytes := ("    let r00003694: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13854 : bytes13854=statementBytes 13972 (op13854.map lower) ∧ bytes13854.length=37 := by core033_kernel_decide
def op13855 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13855 : Bytes := ("    let r00003695: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13855 : bytes13855=statementBytes 13973 (op13855.map lower) ∧ bytes13855.length=41 := by core033_kernel_decide
def op13856 : List WordIR.Op := [.badd 13972 13973]
def bytes13856 : Bytes := ("    let r00003696: u32 = r00003694.wrapping_add(r00003695);\n" : String).toByteArray.data.toList
theorem checked13856 : bytes13856=statementBytes 13974 (op13856.map lower) ∧ bytes13856.length=60 := by core033_kernel_decide
def op13857 : List WordIR.Op := [.band 13974 13196]
def bytes13857 : Bytes := ("    let r00003697: u32 = r00003696 & r0000338c;\n" : String).toByteArray.data.toList
theorem checked13857 : bytes13857=statementBytes 13975 (op13857.map lower) ∧ bytes13857.length=48 := by core033_kernel_decide
def op13858 : List WordIR.Op := [.bnot 419]
def bytes13858 : Bytes := ("    let r00003698: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13858 : bytes13858=statementBytes 13976 (op13858.map lower) ∧ bytes13858.length=37 := by core033_kernel_decide
def op13859 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13859 : Bytes := ("    let r00003699: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13859 : bytes13859=statementBytes 13977 (op13859.map lower) ∧ bytes13859.length=41 := by core033_kernel_decide
def op13860 : List WordIR.Op := [.badd 13976 13977]
def bytes13860 : Bytes := ("    let r0000369a: u32 = r00003698.wrapping_add(r00003699);\n" : String).toByteArray.data.toList
theorem checked13860 : bytes13860=statementBytes 13978 (op13860.map lower) ∧ bytes13860.length=60 := by core033_kernel_decide
def op13861 : List WordIR.Op := [.bnot 13978]
def bytes13861 : Bytes := ("    let r0000369b: u32 = !r0000369a;\n" : String).toByteArray.data.toList
theorem checked13861 : bytes13861=statementBytes 13979 (op13861.map lower) ∧ bytes13861.length=37 := by core033_kernel_decide
def op13862 : List WordIR.Op := [.band 13979 66]
def bytes13862 : Bytes := ("    let r0000369c: u32 = r0000369b & r00000042;\n" : String).toByteArray.data.toList
theorem checked13862 : bytes13862=statementBytes 13980 (op13862.map lower) ∧ bytes13862.length=48 := by core033_kernel_decide
def op13863 : List WordIR.Op := [.bxor 13975 13980]
def bytes13863 : Bytes := ("    let r0000369d: u32 = r00003697 ^ r0000369c;\n" : String).toByteArray.data.toList
theorem checked13863 : bytes13863=statementBytes 13981 (op13863.map lower) ∧ bytes13863.length=48 := by core033_kernel_decide
def op13864 : List WordIR.Op := [.bnot 440]
def bytes13864 : Bytes := ("    let r0000369e: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13864 : bytes13864=statementBytes 13982 (op13864.map lower) ∧ bytes13864.length=37 := by core033_kernel_decide
def op13865 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13865 : Bytes := ("    let r0000369f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13865 : bytes13865=statementBytes 13983 (op13865.map lower) ∧ bytes13865.length=41 := by core033_kernel_decide
def op13866 : List WordIR.Op := [.badd 13982 13983]
def bytes13866 : Bytes := ("    let r000036a0: u32 = r0000369e.wrapping_add(r0000369f);\n" : String).toByteArray.data.toList
theorem checked13866 : bytes13866=statementBytes 13984 (op13866.map lower) ∧ bytes13866.length=60 := by core033_kernel_decide
def op13867 : List WordIR.Op := [.band 13984 12052]
def bytes13867 : Bytes := ("    let r000036a1: u32 = r000036a0 & r00002f14;\n" : String).toByteArray.data.toList
theorem checked13867 : bytes13867=statementBytes 13985 (op13867.map lower) ∧ bytes13867.length=48 := by core033_kernel_decide
def op13868 : List WordIR.Op := [.bnot 440]
def bytes13868 : Bytes := ("    let r000036a2: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13868 : bytes13868=statementBytes 13986 (op13868.map lower) ∧ bytes13868.length=37 := by core033_kernel_decide
def op13869 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13869 : Bytes := ("    let r000036a3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13869 : bytes13869=statementBytes 13987 (op13869.map lower) ∧ bytes13869.length=41 := by core033_kernel_decide
def op13870 : List WordIR.Op := [.badd 13986 13987]
def bytes13870 : Bytes := ("    let r000036a4: u32 = r000036a2.wrapping_add(r000036a3);\n" : String).toByteArray.data.toList
theorem checked13870 : bytes13870=statementBytes 13988 (op13870.map lower) ∧ bytes13870.length=60 := by core033_kernel_decide
def op13871 : List WordIR.Op := [.bnot 13988]
def bytes13871 : Bytes := ("    let r000036a5: u32 = !r000036a4;\n" : String).toByteArray.data.toList
theorem checked13871 : bytes13871=statementBytes 13989 (op13871.map lower) ∧ bytes13871.length=37 := by core033_kernel_decide
def op13872 : List WordIR.Op := [.band 13989 67]
def bytes13872 : Bytes := ("    let r000036a6: u32 = r000036a5 & r00000043;\n" : String).toByteArray.data.toList
theorem checked13872 : bytes13872=statementBytes 13990 (op13872.map lower) ∧ bytes13872.length=48 := by core033_kernel_decide
def op13873 : List WordIR.Op := [.bxor 13985 13990]
def bytes13873 : Bytes := ("    let r000036a7: u32 = r000036a1 ^ r000036a6;\n" : String).toByteArray.data.toList
theorem checked13873 : bytes13873=statementBytes 13991 (op13873.map lower) ∧ bytes13873.length=48 := by core033_kernel_decide
def op13874 : List WordIR.Op := [.bnot 440]
def bytes13874 : Bytes := ("    let r000036a8: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13874 : bytes13874=statementBytes 13992 (op13874.map lower) ∧ bytes13874.length=37 := by core033_kernel_decide
def op13875 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13875 : Bytes := ("    let r000036a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13875 : bytes13875=statementBytes 13993 (op13875.map lower) ∧ bytes13875.length=41 := by core033_kernel_decide
def op13876 : List WordIR.Op := [.badd 13992 13993]
def bytes13876 : Bytes := ("    let r000036aa: u32 = r000036a8.wrapping_add(r000036a9);\n" : String).toByteArray.data.toList
theorem checked13876 : bytes13876=statementBytes 13994 (op13876.map lower) ∧ bytes13876.length=60 := by core033_kernel_decide
def op13877 : List WordIR.Op := [.band 13994 12104]
def bytes13877 : Bytes := ("    let r000036ab: u32 = r000036aa & r00002f48;\n" : String).toByteArray.data.toList
theorem checked13877 : bytes13877=statementBytes 13995 (op13877.map lower) ∧ bytes13877.length=48 := by core033_kernel_decide
def op13878 : List WordIR.Op := [.bnot 440]
def bytes13878 : Bytes := ("    let r000036ac: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13878 : bytes13878=statementBytes 13996 (op13878.map lower) ∧ bytes13878.length=37 := by core033_kernel_decide
def op13879 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13879 : Bytes := ("    let r000036ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13879 : bytes13879=statementBytes 13997 (op13879.map lower) ∧ bytes13879.length=41 := by core033_kernel_decide
def op13880 : List WordIR.Op := [.badd 13996 13997]
def bytes13880 : Bytes := ("    let r000036ae: u32 = r000036ac.wrapping_add(r000036ad);\n" : String).toByteArray.data.toList
theorem checked13880 : bytes13880=statementBytes 13998 (op13880.map lower) ∧ bytes13880.length=60 := by core033_kernel_decide
def op13881 : List WordIR.Op := [.bnot 13998]
def bytes13881 : Bytes := ("    let r000036af: u32 = !r000036ae;\n" : String).toByteArray.data.toList
theorem checked13881 : bytes13881=statementBytes 13999 (op13881.map lower) ∧ bytes13881.length=37 := by core033_kernel_decide
def op13882 : List WordIR.Op := [.band 13999 68]
def bytes13882 : Bytes := ("    let r000036b0: u32 = r000036af & r00000044;\n" : String).toByteArray.data.toList
theorem checked13882 : bytes13882=statementBytes 14000 (op13882.map lower) ∧ bytes13882.length=48 := by core033_kernel_decide
def op13883 : List WordIR.Op := [.bxor 13995 14000]
def bytes13883 : Bytes := ("    let r000036b1: u32 = r000036ab ^ r000036b0;\n" : String).toByteArray.data.toList
theorem checked13883 : bytes13883=statementBytes 14001 (op13883.map lower) ∧ bytes13883.length=48 := by core033_kernel_decide
def op13884 : List WordIR.Op := [.bnot 440]
def bytes13884 : Bytes := ("    let r000036b2: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13884 : bytes13884=statementBytes 14002 (op13884.map lower) ∧ bytes13884.length=37 := by core033_kernel_decide
def op13885 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13885 : Bytes := ("    let r000036b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13885 : bytes13885=statementBytes 14003 (op13885.map lower) ∧ bytes13885.length=41 := by core033_kernel_decide
def op13886 : List WordIR.Op := [.badd 14002 14003]
def bytes13886 : Bytes := ("    let r000036b4: u32 = r000036b2.wrapping_add(r000036b3);\n" : String).toByteArray.data.toList
theorem checked13886 : bytes13886=statementBytes 14004 (op13886.map lower) ∧ bytes13886.length=60 := by core033_kernel_decide
def op13887 : List WordIR.Op := [.band 14004 12156]
def bytes13887 : Bytes := ("    let r000036b5: u32 = r000036b4 & r00002f7c;\n" : String).toByteArray.data.toList
theorem checked13887 : bytes13887=statementBytes 14005 (op13887.map lower) ∧ bytes13887.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13824,op13825,op13826,op13827,op13828,op13829,op13830,op13831,op13832,op13833,op13834,op13835,op13836,op13837,op13838,op13839,op13840,op13841,op13842,op13843,op13844,op13845,op13846,op13847,op13848,op13849,op13850,op13851,op13852,op13853,op13854,op13855,op13856,op13857,op13858,op13859,op13860,op13861,op13862,op13863,op13864,op13865,op13866,op13867,op13868,op13869,op13870,op13871,op13872,op13873,op13874,op13875,op13876,op13877,op13878,op13879,op13880,op13881,op13882,op13883,op13884,op13885,op13886,op13887]
def chunks : List Bytes := [bytes13824,bytes13825,bytes13826,bytes13827,bytes13828,bytes13829,bytes13830,bytes13831,bytes13832,bytes13833,bytes13834,bytes13835,bytes13836,bytes13837,bytes13838,bytes13839,bytes13840,bytes13841,bytes13842,bytes13843,bytes13844,bytes13845,bytes13846,bytes13847,bytes13848,bytes13849,bytes13850,bytes13851,bytes13852,bytes13853,bytes13854,bytes13855,bytes13856,bytes13857,bytes13858,bytes13859,bytes13860,bytes13861,bytes13862,bytes13863,bytes13864,bytes13865,bytes13866,bytes13867,bytes13868,bytes13869,bytes13870,bytes13871,bytes13872,bytes13873,bytes13874,bytes13875,bytes13876,bytes13877,bytes13878,bytes13879,bytes13880,bytes13881,bytes13882,bytes13883,bytes13884,bytes13885,bytes13886,bytes13887]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13942 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13824.1 (.cons _ _ _ _ _ checked13825.1 (.cons _ _ _ _ _ checked13826.1 (.cons _ _ _ _ _ checked13827.1 (.cons _ _ _ _ _ checked13828.1 (.cons _ _ _ _ _ checked13829.1 (.cons _ _ _ _ _ checked13830.1 (.cons _ _ _ _ _ checked13831.1 (.cons _ _ _ _ _ checked13832.1 (.cons _ _ _ _ _ checked13833.1 (.cons _ _ _ _ _ checked13834.1 (.cons _ _ _ _ _ checked13835.1 (.cons _ _ _ _ _ checked13836.1 (.cons _ _ _ _ _ checked13837.1 (.cons _ _ _ _ _ checked13838.1 (.cons _ _ _ _ _ checked13839.1 (.cons _ _ _ _ _ checked13840.1 (.cons _ _ _ _ _ checked13841.1 (.cons _ _ _ _ _ checked13842.1 (.cons _ _ _ _ _ checked13843.1 (.cons _ _ _ _ _ checked13844.1 (.cons _ _ _ _ _ checked13845.1 (.cons _ _ _ _ _ checked13846.1 (.cons _ _ _ _ _ checked13847.1 (.cons _ _ _ _ _ checked13848.1 (.cons _ _ _ _ _ checked13849.1 (.cons _ _ _ _ _ checked13850.1 (.cons _ _ _ _ _ checked13851.1 (.cons _ _ _ _ _ checked13852.1 (.cons _ _ _ _ _ checked13853.1 (.cons _ _ _ _ _ checked13854.1 (.cons _ _ _ _ _ checked13855.1 (.cons _ _ _ _ _ checked13856.1 (.cons _ _ _ _ _ checked13857.1 (.cons _ _ _ _ _ checked13858.1 (.cons _ _ _ _ _ checked13859.1 (.cons _ _ _ _ _ checked13860.1 (.cons _ _ _ _ _ checked13861.1 (.cons _ _ _ _ _ checked13862.1 (.cons _ _ _ _ _ checked13863.1 (.cons _ _ _ _ _ checked13864.1 (.cons _ _ _ _ _ checked13865.1 (.cons _ _ _ _ _ checked13866.1 (.cons _ _ _ _ _ checked13867.1 (.cons _ _ _ _ _ checked13868.1 (.cons _ _ _ _ _ checked13869.1 (.cons _ _ _ _ _ checked13870.1 (.cons _ _ _ _ _ checked13871.1 (.cons _ _ _ _ _ checked13872.1 (.cons _ _ _ _ _ checked13873.1 (.cons _ _ _ _ _ checked13874.1 (.cons _ _ _ _ _ checked13875.1 (.cons _ _ _ _ _ checked13876.1 (.cons _ _ _ _ _ checked13877.1 (.cons _ _ _ _ _ checked13878.1 (.cons _ _ _ _ _ checked13879.1 (.cons _ _ _ _ _ checked13880.1 (.cons _ _ _ _ _ checked13881.1 (.cons _ _ _ _ _ checked13882.1 (.cons _ _ _ _ _ checked13883.1 (.cons _ _ _ _ _ checked13884.1 (.cons _ _ _ _ _ checked13885.1 (.cons _ _ _ _ _ checked13886.1 (.cons _ _ _ _ _ checked13887.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13942 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2928 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13824.2,checked13825.2,checked13826.2,checked13827.2,checked13828.2,checked13829.2,checked13830.2,checked13831.2,checked13832.2,checked13833.2,checked13834.2,checked13835.2,checked13836.2,checked13837.2,checked13838.2,checked13839.2,checked13840.2,checked13841.2,checked13842.2,checked13843.2,checked13844.2,checked13845.2,checked13846.2,checked13847.2,checked13848.2,checked13849.2,checked13850.2,checked13851.2,checked13852.2,checked13853.2,checked13854.2,checked13855.2,checked13856.2,checked13857.2,checked13858.2,checked13859.2,checked13860.2,checked13861.2,checked13862.2,checked13863.2,checked13864.2,checked13865.2,checked13866.2,checked13867.2,checked13868.2,checked13869.2,checked13870.2,checked13871.2,checked13872.2,checked13873.2,checked13874.2,checked13875.2,checked13876.2,checked13877.2,checked13878.2,checked13879.2,checked13880.2,checked13881.2,checked13882.2,checked13883.2,checked13884.2,checked13885.2,checked13886.2,checked13887.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup216
