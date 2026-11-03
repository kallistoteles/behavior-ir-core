import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup217
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13888 : List WordIR.Op := [.bnot 440]
def bytes13888 : Bytes := ("    let r000036b6: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13888 : bytes13888=statementBytes 14006 (op13888.map lower) ∧ bytes13888.length=37 := by core033_kernel_decide
def op13889 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13889 : Bytes := ("    let r000036b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13889 : bytes13889=statementBytes 14007 (op13889.map lower) ∧ bytes13889.length=41 := by core033_kernel_decide
def op13890 : List WordIR.Op := [.badd 14006 14007]
def bytes13890 : Bytes := ("    let r000036b8: u32 = r000036b6.wrapping_add(r000036b7);\n" : String).toByteArray.data.toList
theorem checked13890 : bytes13890=statementBytes 14008 (op13890.map lower) ∧ bytes13890.length=60 := by core033_kernel_decide
def op13891 : List WordIR.Op := [.bnot 14008]
def bytes13891 : Bytes := ("    let r000036b9: u32 = !r000036b8;\n" : String).toByteArray.data.toList
theorem checked13891 : bytes13891=statementBytes 14009 (op13891.map lower) ∧ bytes13891.length=37 := by core033_kernel_decide
def op13892 : List WordIR.Op := [.band 14009 69]
def bytes13892 : Bytes := ("    let r000036ba: u32 = r000036b9 & r00000045;\n" : String).toByteArray.data.toList
theorem checked13892 : bytes13892=statementBytes 14010 (op13892.map lower) ∧ bytes13892.length=48 := by core033_kernel_decide
def op13893 : List WordIR.Op := [.bxor 14005 14010]
def bytes13893 : Bytes := ("    let r000036bb: u32 = r000036b5 ^ r000036ba;\n" : String).toByteArray.data.toList
theorem checked13893 : bytes13893=statementBytes 14011 (op13893.map lower) ∧ bytes13893.length=48 := by core033_kernel_decide
def op13894 : List WordIR.Op := [.bnot 440]
def bytes13894 : Bytes := ("    let r000036bc: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13894 : bytes13894=statementBytes 14012 (op13894.map lower) ∧ bytes13894.length=37 := by core033_kernel_decide
def op13895 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13895 : Bytes := ("    let r000036bd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13895 : bytes13895=statementBytes 14013 (op13895.map lower) ∧ bytes13895.length=41 := by core033_kernel_decide
def op13896 : List WordIR.Op := [.badd 14012 14013]
def bytes13896 : Bytes := ("    let r000036be: u32 = r000036bc.wrapping_add(r000036bd);\n" : String).toByteArray.data.toList
theorem checked13896 : bytes13896=statementBytes 14014 (op13896.map lower) ∧ bytes13896.length=60 := by core033_kernel_decide
def op13897 : List WordIR.Op := [.band 14014 12208]
def bytes13897 : Bytes := ("    let r000036bf: u32 = r000036be & r00002fb0;\n" : String).toByteArray.data.toList
theorem checked13897 : bytes13897=statementBytes 14015 (op13897.map lower) ∧ bytes13897.length=48 := by core033_kernel_decide
def op13898 : List WordIR.Op := [.bnot 440]
def bytes13898 : Bytes := ("    let r000036c0: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13898 : bytes13898=statementBytes 14016 (op13898.map lower) ∧ bytes13898.length=37 := by core033_kernel_decide
def op13899 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13899 : Bytes := ("    let r000036c1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13899 : bytes13899=statementBytes 14017 (op13899.map lower) ∧ bytes13899.length=41 := by core033_kernel_decide
def op13900 : List WordIR.Op := [.badd 14016 14017]
def bytes13900 : Bytes := ("    let r000036c2: u32 = r000036c0.wrapping_add(r000036c1);\n" : String).toByteArray.data.toList
theorem checked13900 : bytes13900=statementBytes 14018 (op13900.map lower) ∧ bytes13900.length=60 := by core033_kernel_decide
def op13901 : List WordIR.Op := [.bnot 14018]
def bytes13901 : Bytes := ("    let r000036c3: u32 = !r000036c2;\n" : String).toByteArray.data.toList
theorem checked13901 : bytes13901=statementBytes 14019 (op13901.map lower) ∧ bytes13901.length=37 := by core033_kernel_decide
def op13902 : List WordIR.Op := [.band 14019 70]
def bytes13902 : Bytes := ("    let r000036c4: u32 = r000036c3 & r00000046;\n" : String).toByteArray.data.toList
theorem checked13902 : bytes13902=statementBytes 14020 (op13902.map lower) ∧ bytes13902.length=48 := by core033_kernel_decide
def op13903 : List WordIR.Op := [.bxor 14015 14020]
def bytes13903 : Bytes := ("    let r000036c5: u32 = r000036bf ^ r000036c4;\n" : String).toByteArray.data.toList
theorem checked13903 : bytes13903=statementBytes 14021 (op13903.map lower) ∧ bytes13903.length=48 := by core033_kernel_decide
def op13904 : List WordIR.Op := [.bnot 440]
def bytes13904 : Bytes := ("    let r000036c6: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13904 : bytes13904=statementBytes 14022 (op13904.map lower) ∧ bytes13904.length=37 := by core033_kernel_decide
def op13905 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13905 : Bytes := ("    let r000036c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13905 : bytes13905=statementBytes 14023 (op13905.map lower) ∧ bytes13905.length=41 := by core033_kernel_decide
def op13906 : List WordIR.Op := [.badd 14022 14023]
def bytes13906 : Bytes := ("    let r000036c8: u32 = r000036c6.wrapping_add(r000036c7);\n" : String).toByteArray.data.toList
theorem checked13906 : bytes13906=statementBytes 14024 (op13906.map lower) ∧ bytes13906.length=60 := by core033_kernel_decide
def op13907 : List WordIR.Op := [.band 14024 12260]
def bytes13907 : Bytes := ("    let r000036c9: u32 = r000036c8 & r00002fe4;\n" : String).toByteArray.data.toList
theorem checked13907 : bytes13907=statementBytes 14025 (op13907.map lower) ∧ bytes13907.length=48 := by core033_kernel_decide
def op13908 : List WordIR.Op := [.bnot 440]
def bytes13908 : Bytes := ("    let r000036ca: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13908 : bytes13908=statementBytes 14026 (op13908.map lower) ∧ bytes13908.length=37 := by core033_kernel_decide
def op13909 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13909 : Bytes := ("    let r000036cb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13909 : bytes13909=statementBytes 14027 (op13909.map lower) ∧ bytes13909.length=41 := by core033_kernel_decide
def op13910 : List WordIR.Op := [.badd 14026 14027]
def bytes13910 : Bytes := ("    let r000036cc: u32 = r000036ca.wrapping_add(r000036cb);\n" : String).toByteArray.data.toList
theorem checked13910 : bytes13910=statementBytes 14028 (op13910.map lower) ∧ bytes13910.length=60 := by core033_kernel_decide
def op13911 : List WordIR.Op := [.bnot 14028]
def bytes13911 : Bytes := ("    let r000036cd: u32 = !r000036cc;\n" : String).toByteArray.data.toList
theorem checked13911 : bytes13911=statementBytes 14029 (op13911.map lower) ∧ bytes13911.length=37 := by core033_kernel_decide
def op13912 : List WordIR.Op := [.band 14029 71]
def bytes13912 : Bytes := ("    let r000036ce: u32 = r000036cd & r00000047;\n" : String).toByteArray.data.toList
theorem checked13912 : bytes13912=statementBytes 14030 (op13912.map lower) ∧ bytes13912.length=48 := by core033_kernel_decide
def op13913 : List WordIR.Op := [.bxor 14025 14030]
def bytes13913 : Bytes := ("    let r000036cf: u32 = r000036c9 ^ r000036ce;\n" : String).toByteArray.data.toList
theorem checked13913 : bytes13913=statementBytes 14031 (op13913.map lower) ∧ bytes13913.length=48 := by core033_kernel_decide
def op13914 : List WordIR.Op := [.bnot 440]
def bytes13914 : Bytes := ("    let r000036d0: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13914 : bytes13914=statementBytes 14032 (op13914.map lower) ∧ bytes13914.length=37 := by core033_kernel_decide
def op13915 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13915 : Bytes := ("    let r000036d1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13915 : bytes13915=statementBytes 14033 (op13915.map lower) ∧ bytes13915.length=41 := by core033_kernel_decide
def op13916 : List WordIR.Op := [.badd 14032 14033]
def bytes13916 : Bytes := ("    let r000036d2: u32 = r000036d0.wrapping_add(r000036d1);\n" : String).toByteArray.data.toList
theorem checked13916 : bytes13916=statementBytes 14034 (op13916.map lower) ∧ bytes13916.length=60 := by core033_kernel_decide
def op13917 : List WordIR.Op := [.band 14034 12312]
def bytes13917 : Bytes := ("    let r000036d3: u32 = r000036d2 & r00003018;\n" : String).toByteArray.data.toList
theorem checked13917 : bytes13917=statementBytes 14035 (op13917.map lower) ∧ bytes13917.length=48 := by core033_kernel_decide
def op13918 : List WordIR.Op := [.bnot 440]
def bytes13918 : Bytes := ("    let r000036d4: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13918 : bytes13918=statementBytes 14036 (op13918.map lower) ∧ bytes13918.length=37 := by core033_kernel_decide
def op13919 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13919 : Bytes := ("    let r000036d5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13919 : bytes13919=statementBytes 14037 (op13919.map lower) ∧ bytes13919.length=41 := by core033_kernel_decide
def op13920 : List WordIR.Op := [.badd 14036 14037]
def bytes13920 : Bytes := ("    let r000036d6: u32 = r000036d4.wrapping_add(r000036d5);\n" : String).toByteArray.data.toList
theorem checked13920 : bytes13920=statementBytes 14038 (op13920.map lower) ∧ bytes13920.length=60 := by core033_kernel_decide
def op13921 : List WordIR.Op := [.bnot 14038]
def bytes13921 : Bytes := ("    let r000036d7: u32 = !r000036d6;\n" : String).toByteArray.data.toList
theorem checked13921 : bytes13921=statementBytes 14039 (op13921.map lower) ∧ bytes13921.length=37 := by core033_kernel_decide
def op13922 : List WordIR.Op := [.band 14039 72]
def bytes13922 : Bytes := ("    let r000036d8: u32 = r000036d7 & r00000048;\n" : String).toByteArray.data.toList
theorem checked13922 : bytes13922=statementBytes 14040 (op13922.map lower) ∧ bytes13922.length=48 := by core033_kernel_decide
def op13923 : List WordIR.Op := [.bxor 14035 14040]
def bytes13923 : Bytes := ("    let r000036d9: u32 = r000036d3 ^ r000036d8;\n" : String).toByteArray.data.toList
theorem checked13923 : bytes13923=statementBytes 14041 (op13923.map lower) ∧ bytes13923.length=48 := by core033_kernel_decide
def op13924 : List WordIR.Op := [.bnot 440]
def bytes13924 : Bytes := ("    let r000036da: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13924 : bytes13924=statementBytes 14042 (op13924.map lower) ∧ bytes13924.length=37 := by core033_kernel_decide
def op13925 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13925 : Bytes := ("    let r000036db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13925 : bytes13925=statementBytes 14043 (op13925.map lower) ∧ bytes13925.length=41 := by core033_kernel_decide
def op13926 : List WordIR.Op := [.badd 14042 14043]
def bytes13926 : Bytes := ("    let r000036dc: u32 = r000036da.wrapping_add(r000036db);\n" : String).toByteArray.data.toList
theorem checked13926 : bytes13926=statementBytes 14044 (op13926.map lower) ∧ bytes13926.length=60 := by core033_kernel_decide
def op13927 : List WordIR.Op := [.band 14044 12364]
def bytes13927 : Bytes := ("    let r000036dd: u32 = r000036dc & r0000304c;\n" : String).toByteArray.data.toList
theorem checked13927 : bytes13927=statementBytes 14045 (op13927.map lower) ∧ bytes13927.length=48 := by core033_kernel_decide
def op13928 : List WordIR.Op := [.bnot 440]
def bytes13928 : Bytes := ("    let r000036de: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13928 : bytes13928=statementBytes 14046 (op13928.map lower) ∧ bytes13928.length=37 := by core033_kernel_decide
def op13929 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13929 : Bytes := ("    let r000036df: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13929 : bytes13929=statementBytes 14047 (op13929.map lower) ∧ bytes13929.length=41 := by core033_kernel_decide
def op13930 : List WordIR.Op := [.badd 14046 14047]
def bytes13930 : Bytes := ("    let r000036e0: u32 = r000036de.wrapping_add(r000036df);\n" : String).toByteArray.data.toList
theorem checked13930 : bytes13930=statementBytes 14048 (op13930.map lower) ∧ bytes13930.length=60 := by core033_kernel_decide
def op13931 : List WordIR.Op := [.bnot 14048]
def bytes13931 : Bytes := ("    let r000036e1: u32 = !r000036e0;\n" : String).toByteArray.data.toList
theorem checked13931 : bytes13931=statementBytes 14049 (op13931.map lower) ∧ bytes13931.length=37 := by core033_kernel_decide
def op13932 : List WordIR.Op := [.band 14049 73]
def bytes13932 : Bytes := ("    let r000036e2: u32 = r000036e1 & r00000049;\n" : String).toByteArray.data.toList
theorem checked13932 : bytes13932=statementBytes 14050 (op13932.map lower) ∧ bytes13932.length=48 := by core033_kernel_decide
def op13933 : List WordIR.Op := [.bxor 14045 14050]
def bytes13933 : Bytes := ("    let r000036e3: u32 = r000036dd ^ r000036e2;\n" : String).toByteArray.data.toList
theorem checked13933 : bytes13933=statementBytes 14051 (op13933.map lower) ∧ bytes13933.length=48 := by core033_kernel_decide
def op13934 : List WordIR.Op := [.bnot 440]
def bytes13934 : Bytes := ("    let r000036e4: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13934 : bytes13934=statementBytes 14052 (op13934.map lower) ∧ bytes13934.length=37 := by core033_kernel_decide
def op13935 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13935 : Bytes := ("    let r000036e5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13935 : bytes13935=statementBytes 14053 (op13935.map lower) ∧ bytes13935.length=41 := by core033_kernel_decide
def op13936 : List WordIR.Op := [.badd 14052 14053]
def bytes13936 : Bytes := ("    let r000036e6: u32 = r000036e4.wrapping_add(r000036e5);\n" : String).toByteArray.data.toList
theorem checked13936 : bytes13936=statementBytes 14054 (op13936.map lower) ∧ bytes13936.length=60 := by core033_kernel_decide
def op13937 : List WordIR.Op := [.band 14054 12416]
def bytes13937 : Bytes := ("    let r000036e7: u32 = r000036e6 & r00003080;\n" : String).toByteArray.data.toList
theorem checked13937 : bytes13937=statementBytes 14055 (op13937.map lower) ∧ bytes13937.length=48 := by core033_kernel_decide
def op13938 : List WordIR.Op := [.bnot 440]
def bytes13938 : Bytes := ("    let r000036e8: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13938 : bytes13938=statementBytes 14056 (op13938.map lower) ∧ bytes13938.length=37 := by core033_kernel_decide
def op13939 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13939 : Bytes := ("    let r000036e9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13939 : bytes13939=statementBytes 14057 (op13939.map lower) ∧ bytes13939.length=41 := by core033_kernel_decide
def op13940 : List WordIR.Op := [.badd 14056 14057]
def bytes13940 : Bytes := ("    let r000036ea: u32 = r000036e8.wrapping_add(r000036e9);\n" : String).toByteArray.data.toList
theorem checked13940 : bytes13940=statementBytes 14058 (op13940.map lower) ∧ bytes13940.length=60 := by core033_kernel_decide
def op13941 : List WordIR.Op := [.bnot 14058]
def bytes13941 : Bytes := ("    let r000036eb: u32 = !r000036ea;\n" : String).toByteArray.data.toList
theorem checked13941 : bytes13941=statementBytes 14059 (op13941.map lower) ∧ bytes13941.length=37 := by core033_kernel_decide
def op13942 : List WordIR.Op := [.band 14059 74]
def bytes13942 : Bytes := ("    let r000036ec: u32 = r000036eb & r0000004a;\n" : String).toByteArray.data.toList
theorem checked13942 : bytes13942=statementBytes 14060 (op13942.map lower) ∧ bytes13942.length=48 := by core033_kernel_decide
def op13943 : List WordIR.Op := [.bxor 14055 14060]
def bytes13943 : Bytes := ("    let r000036ed: u32 = r000036e7 ^ r000036ec;\n" : String).toByteArray.data.toList
theorem checked13943 : bytes13943=statementBytes 14061 (op13943.map lower) ∧ bytes13943.length=48 := by core033_kernel_decide
def op13944 : List WordIR.Op := [.bnot 440]
def bytes13944 : Bytes := ("    let r000036ee: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13944 : bytes13944=statementBytes 14062 (op13944.map lower) ∧ bytes13944.length=37 := by core033_kernel_decide
def op13945 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13945 : Bytes := ("    let r000036ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13945 : bytes13945=statementBytes 14063 (op13945.map lower) ∧ bytes13945.length=41 := by core033_kernel_decide
def op13946 : List WordIR.Op := [.badd 14062 14063]
def bytes13946 : Bytes := ("    let r000036f0: u32 = r000036ee.wrapping_add(r000036ef);\n" : String).toByteArray.data.toList
theorem checked13946 : bytes13946=statementBytes 14064 (op13946.map lower) ∧ bytes13946.length=60 := by core033_kernel_decide
def op13947 : List WordIR.Op := [.band 14064 12884]
def bytes13947 : Bytes := ("    let r000036f1: u32 = r000036f0 & r00003254;\n" : String).toByteArray.data.toList
theorem checked13947 : bytes13947=statementBytes 14065 (op13947.map lower) ∧ bytes13947.length=48 := by core033_kernel_decide
def op13948 : List WordIR.Op := [.bnot 440]
def bytes13948 : Bytes := ("    let r000036f2: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13948 : bytes13948=statementBytes 14066 (op13948.map lower) ∧ bytes13948.length=37 := by core033_kernel_decide
def op13949 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13949 : Bytes := ("    let r000036f3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13949 : bytes13949=statementBytes 14067 (op13949.map lower) ∧ bytes13949.length=41 := by core033_kernel_decide
def op13950 : List WordIR.Op := [.badd 14066 14067]
def bytes13950 : Bytes := ("    let r000036f4: u32 = r000036f2.wrapping_add(r000036f3);\n" : String).toByteArray.data.toList
theorem checked13950 : bytes13950=statementBytes 14068 (op13950.map lower) ∧ bytes13950.length=60 := by core033_kernel_decide
def op13951 : List WordIR.Op := [.bnot 14068]
def bytes13951 : Bytes := ("    let r000036f5: u32 = !r000036f4;\n" : String).toByteArray.data.toList
theorem checked13951 : bytes13951=statementBytes 14069 (op13951.map lower) ∧ bytes13951.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13888,op13889,op13890,op13891,op13892,op13893,op13894,op13895,op13896,op13897,op13898,op13899,op13900,op13901,op13902,op13903,op13904,op13905,op13906,op13907,op13908,op13909,op13910,op13911,op13912,op13913,op13914,op13915,op13916,op13917,op13918,op13919,op13920,op13921,op13922,op13923,op13924,op13925,op13926,op13927,op13928,op13929,op13930,op13931,op13932,op13933,op13934,op13935,op13936,op13937,op13938,op13939,op13940,op13941,op13942,op13943,op13944,op13945,op13946,op13947,op13948,op13949,op13950,op13951]
def chunks : List Bytes := [bytes13888,bytes13889,bytes13890,bytes13891,bytes13892,bytes13893,bytes13894,bytes13895,bytes13896,bytes13897,bytes13898,bytes13899,bytes13900,bytes13901,bytes13902,bytes13903,bytes13904,bytes13905,bytes13906,bytes13907,bytes13908,bytes13909,bytes13910,bytes13911,bytes13912,bytes13913,bytes13914,bytes13915,bytes13916,bytes13917,bytes13918,bytes13919,bytes13920,bytes13921,bytes13922,bytes13923,bytes13924,bytes13925,bytes13926,bytes13927,bytes13928,bytes13929,bytes13930,bytes13931,bytes13932,bytes13933,bytes13934,bytes13935,bytes13936,bytes13937,bytes13938,bytes13939,bytes13940,bytes13941,bytes13942,bytes13943,bytes13944,bytes13945,bytes13946,bytes13947,bytes13948,bytes13949,bytes13950,bytes13951]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 14006 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13888.1 (.cons _ _ _ _ _ checked13889.1 (.cons _ _ _ _ _ checked13890.1 (.cons _ _ _ _ _ checked13891.1 (.cons _ _ _ _ _ checked13892.1 (.cons _ _ _ _ _ checked13893.1 (.cons _ _ _ _ _ checked13894.1 (.cons _ _ _ _ _ checked13895.1 (.cons _ _ _ _ _ checked13896.1 (.cons _ _ _ _ _ checked13897.1 (.cons _ _ _ _ _ checked13898.1 (.cons _ _ _ _ _ checked13899.1 (.cons _ _ _ _ _ checked13900.1 (.cons _ _ _ _ _ checked13901.1 (.cons _ _ _ _ _ checked13902.1 (.cons _ _ _ _ _ checked13903.1 (.cons _ _ _ _ _ checked13904.1 (.cons _ _ _ _ _ checked13905.1 (.cons _ _ _ _ _ checked13906.1 (.cons _ _ _ _ _ checked13907.1 (.cons _ _ _ _ _ checked13908.1 (.cons _ _ _ _ _ checked13909.1 (.cons _ _ _ _ _ checked13910.1 (.cons _ _ _ _ _ checked13911.1 (.cons _ _ _ _ _ checked13912.1 (.cons _ _ _ _ _ checked13913.1 (.cons _ _ _ _ _ checked13914.1 (.cons _ _ _ _ _ checked13915.1 (.cons _ _ _ _ _ checked13916.1 (.cons _ _ _ _ _ checked13917.1 (.cons _ _ _ _ _ checked13918.1 (.cons _ _ _ _ _ checked13919.1 (.cons _ _ _ _ _ checked13920.1 (.cons _ _ _ _ _ checked13921.1 (.cons _ _ _ _ _ checked13922.1 (.cons _ _ _ _ _ checked13923.1 (.cons _ _ _ _ _ checked13924.1 (.cons _ _ _ _ _ checked13925.1 (.cons _ _ _ _ _ checked13926.1 (.cons _ _ _ _ _ checked13927.1 (.cons _ _ _ _ _ checked13928.1 (.cons _ _ _ _ _ checked13929.1 (.cons _ _ _ _ _ checked13930.1 (.cons _ _ _ _ _ checked13931.1 (.cons _ _ _ _ _ checked13932.1 (.cons _ _ _ _ _ checked13933.1 (.cons _ _ _ _ _ checked13934.1 (.cons _ _ _ _ _ checked13935.1 (.cons _ _ _ _ _ checked13936.1 (.cons _ _ _ _ _ checked13937.1 (.cons _ _ _ _ _ checked13938.1 (.cons _ _ _ _ _ checked13939.1 (.cons _ _ _ _ _ checked13940.1 (.cons _ _ _ _ _ checked13941.1 (.cons _ _ _ _ _ checked13942.1 (.cons _ _ _ _ _ checked13943.1 (.cons _ _ _ _ _ checked13944.1 (.cons _ _ _ _ _ checked13945.1 (.cons _ _ _ _ _ checked13946.1 (.cons _ _ _ _ _ checked13947.1 (.cons _ _ _ _ _ checked13948.1 (.cons _ _ _ _ _ checked13949.1 (.cons _ _ _ _ _ checked13950.1 (.cons _ _ _ _ _ checked13951.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 14006 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2917 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13888.2,checked13889.2,checked13890.2,checked13891.2,checked13892.2,checked13893.2,checked13894.2,checked13895.2,checked13896.2,checked13897.2,checked13898.2,checked13899.2,checked13900.2,checked13901.2,checked13902.2,checked13903.2,checked13904.2,checked13905.2,checked13906.2,checked13907.2,checked13908.2,checked13909.2,checked13910.2,checked13911.2,checked13912.2,checked13913.2,checked13914.2,checked13915.2,checked13916.2,checked13917.2,checked13918.2,checked13919.2,checked13920.2,checked13921.2,checked13922.2,checked13923.2,checked13924.2,checked13925.2,checked13926.2,checked13927.2,checked13928.2,checked13929.2,checked13930.2,checked13931.2,checked13932.2,checked13933.2,checked13934.2,checked13935.2,checked13936.2,checked13937.2,checked13938.2,checked13939.2,checked13940.2,checked13941.2,checked13942.2,checked13943.2,checked13944.2,checked13945.2,checked13946.2,checked13947.2,checked13948.2,checked13949.2,checked13950.2,checked13951.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup217
