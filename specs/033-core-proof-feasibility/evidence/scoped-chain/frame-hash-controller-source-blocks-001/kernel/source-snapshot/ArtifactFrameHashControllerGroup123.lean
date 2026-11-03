import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup123
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7872 : List WordIR.Op := [.rotr 7899 2]
def bytes7872 : Bytes := ("    let r00001eeb: u32 = r00001edb.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7872 : bytes7872=statementBytes 7915 (op7872.map lower) ∧ bytes7872.length=65 := by core033_kernel_decide
def op7873 : List WordIR.Op := [.rotr 7899 13]
def bytes7873 : Bytes := ("    let r00001eec: u32 = r00001edb.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7873 : bytes7873=statementBytes 7916 (op7873.map lower) ∧ bytes7873.length=65 := by core033_kernel_decide
def op7874 : List WordIR.Op := [.bxor 7915 7916]
def bytes7874 : Bytes := ("    let r00001eed: u32 = r00001eeb ^ r00001eec;\n" : String).toByteArray.data.toList
theorem checked7874 : bytes7874=statementBytes 7917 (op7874.map lower) ∧ bytes7874.length=48 := by core033_kernel_decide
def op7875 : List WordIR.Op := [.rotr 7899 22]
def bytes7875 : Bytes := ("    let r00001eee: u32 = r00001edb.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7875 : bytes7875=statementBytes 7918 (op7875.map lower) ∧ bytes7875.length=65 := by core033_kernel_decide
def op7876 : List WordIR.Op := [.bxor 7917 7918]
def bytes7876 : Bytes := ("    let r00001eef: u32 = r00001eed ^ r00001eee;\n" : String).toByteArray.data.toList
theorem checked7876 : bytes7876=statementBytes 7919 (op7876.map lower) ∧ bytes7876.length=48 := by core033_kernel_decide
def op7877 : List WordIR.Op := [.band 7899 7872]
def bytes7877 : Bytes := ("    let r00001ef0: u32 = r00001edb & r00001ec0;\n" : String).toByteArray.data.toList
theorem checked7877 : bytes7877=statementBytes 7920 (op7877.map lower) ∧ bytes7877.length=48 := by core033_kernel_decide
def op7878 : List WordIR.Op := [.band 7899 7845]
def bytes7878 : Bytes := ("    let r00001ef1: u32 = r00001edb & r00001ea5;\n" : String).toByteArray.data.toList
theorem checked7878 : bytes7878=statementBytes 7921 (op7878.map lower) ∧ bytes7878.length=48 := by core033_kernel_decide
def op7879 : List WordIR.Op := [.bxor 7920 7921]
def bytes7879 : Bytes := ("    let r00001ef2: u32 = r00001ef0 ^ r00001ef1;\n" : String).toByteArray.data.toList
theorem checked7879 : bytes7879=statementBytes 7922 (op7879.map lower) ∧ bytes7879.length=48 := by core033_kernel_decide
def op7880 : List WordIR.Op := [.band 7872 7845]
def bytes7880 : Bytes := ("    let r00001ef3: u32 = r00001ec0 & r00001ea5;\n" : String).toByteArray.data.toList
theorem checked7880 : bytes7880=statementBytes 7923 (op7880.map lower) ∧ bytes7880.length=48 := by core033_kernel_decide
def op7881 : List WordIR.Op := [.bxor 7922 7923]
def bytes7881 : Bytes := ("    let r00001ef4: u32 = r00001ef2 ^ r00001ef3;\n" : String).toByteArray.data.toList
theorem checked7881 : bytes7881=statementBytes 7924 (op7881.map lower) ∧ bytes7881.length=48 := by core033_kernel_decide
def op7882 : List WordIR.Op := [.badd 7919 7924]
def bytes7882 : Bytes := ("    let r00001ef5: u32 = r00001eef.wrapping_add(r00001ef4);\n" : String).toByteArray.data.toList
theorem checked7882 : bytes7882=statementBytes 7925 (op7882.map lower) ∧ bytes7882.length=60 := by core033_kernel_decide
def op7883 : List WordIR.Op := [.badd 7914 7925]
def bytes7883 : Bytes := ("    let r00001ef6: u32 = r00001eea.wrapping_add(r00001ef5);\n" : String).toByteArray.data.toList
theorem checked7883 : bytes7883=statementBytes 7926 (op7883.map lower) ∧ bytes7883.length=60 := by core033_kernel_decide
def op7884 : List WordIR.Op := [.badd 7818 7914]
def bytes7884 : Bytes := ("    let r00001ef7: u32 = r00001e8a.wrapping_add(r00001eea);\n" : String).toByteArray.data.toList
theorem checked7884 : bytes7884=statementBytes 7927 (op7884.map lower) ∧ bytes7884.length=60 := by core033_kernel_decide
def op7885 : List WordIR.Op := [.rotr 7927 6]
def bytes7885 : Bytes := ("    let r00001ef8: u32 = r00001ef7.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7885 : bytes7885=statementBytes 7928 (op7885.map lower) ∧ bytes7885.length=65 := by core033_kernel_decide
def op7886 : List WordIR.Op := [.rotr 7927 11]
def bytes7886 : Bytes := ("    let r00001ef9: u32 = r00001ef7.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7886 : bytes7886=statementBytes 7929 (op7886.map lower) ∧ bytes7886.length=65 := by core033_kernel_decide
def op7887 : List WordIR.Op := [.bxor 7928 7929]
def bytes7887 : Bytes := ("    let r00001efa: u32 = r00001ef8 ^ r00001ef9;\n" : String).toByteArray.data.toList
theorem checked7887 : bytes7887=statementBytes 7930 (op7887.map lower) ∧ bytes7887.length=48 := by core033_kernel_decide
def op7888 : List WordIR.Op := [.rotr 7927 25]
def bytes7888 : Bytes := ("    let r00001efb: u32 = r00001ef7.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7888 : bytes7888=statementBytes 7931 (op7888.map lower) ∧ bytes7888.length=65 := by core033_kernel_decide
def op7889 : List WordIR.Op := [.bxor 7930 7931]
def bytes7889 : Bytes := ("    let r00001efc: u32 = r00001efa ^ r00001efb;\n" : String).toByteArray.data.toList
theorem checked7889 : bytes7889=statementBytes 7932 (op7889.map lower) ∧ bytes7889.length=48 := by core033_kernel_decide
def op7890 : List WordIR.Op := [.badd 7846 7932]
def bytes7890 : Bytes := ("    let r00001efd: u32 = r00001ea6.wrapping_add(r00001efc);\n" : String).toByteArray.data.toList
theorem checked7890 : bytes7890=statementBytes 7933 (op7890.map lower) ∧ bytes7890.length=60 := by core033_kernel_decide
def op7891 : List WordIR.Op := [.band 7927 7900]
def bytes7891 : Bytes := ("    let r00001efe: u32 = r00001ef7 & r00001edc;\n" : String).toByteArray.data.toList
theorem checked7891 : bytes7891=statementBytes 7934 (op7891.map lower) ∧ bytes7891.length=48 := by core033_kernel_decide
def op7892 : List WordIR.Op := [.bnot 7927]
def bytes7892 : Bytes := ("    let r00001eff: u32 = !r00001ef7;\n" : String).toByteArray.data.toList
theorem checked7892 : bytes7892=statementBytes 7935 (op7892.map lower) ∧ bytes7892.length=37 := by core033_kernel_decide
def op7893 : List WordIR.Op := [.band 7935 7873]
def bytes7893 : Bytes := ("    let r00001f00: u32 = r00001eff & r00001ec1;\n" : String).toByteArray.data.toList
theorem checked7893 : bytes7893=statementBytes 7936 (op7893.map lower) ∧ bytes7893.length=48 := by core033_kernel_decide
def op7894 : List WordIR.Op := [.bxor 7934 7936]
def bytes7894 : Bytes := ("    let r00001f01: u32 = r00001efe ^ r00001f00;\n" : String).toByteArray.data.toList
theorem checked7894 : bytes7894=statementBytes 7937 (op7894.map lower) ∧ bytes7894.length=48 := by core033_kernel_decide
def op7895 : List WordIR.Op := [.badd 7933 7937]
def bytes7895 : Bytes := ("    let r00001f02: u32 = r00001efd.wrapping_add(r00001f01);\n" : String).toByteArray.data.toList
theorem checked7895 : bytes7895=statementBytes 7938 (op7895.map lower) ∧ bytes7895.length=60 := by core033_kernel_decide
def op7896 : List WordIR.Op := [.literal (BitVec.ofNat 32 773529912)]
def bytes7896 : Bytes := ("    let r00001f03: u32 = 0x2e1b2138_u32;\n" : String).toByteArray.data.toList
theorem checked7896 : bytes7896=statementBytes 7939 (op7896.map lower) ∧ bytes7896.length=41 := by core033_kernel_decide
def op7897 : List WordIR.Op := [.badd 7938 7939]
def bytes7897 : Bytes := ("    let r00001f04: u32 = r00001f02.wrapping_add(r00001f03);\n" : String).toByteArray.data.toList
theorem checked7897 : bytes7897=statementBytes 7940 (op7897.map lower) ∧ bytes7897.length=60 := by core033_kernel_decide
def op7898 : List WordIR.Op := [.badd 7940 6646]
def bytes7898 : Bytes := ("    let r00001f05: u32 = r00001f04.wrapping_add(r000019f6);\n" : String).toByteArray.data.toList
theorem checked7898 : bytes7898=statementBytes 7941 (op7898.map lower) ∧ bytes7898.length=60 := by core033_kernel_decide
def op7899 : List WordIR.Op := [.rotr 7926 2]
def bytes7899 : Bytes := ("    let r00001f06: u32 = r00001ef6.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7899 : bytes7899=statementBytes 7942 (op7899.map lower) ∧ bytes7899.length=65 := by core033_kernel_decide
def op7900 : List WordIR.Op := [.rotr 7926 13]
def bytes7900 : Bytes := ("    let r00001f07: u32 = r00001ef6.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7900 : bytes7900=statementBytes 7943 (op7900.map lower) ∧ bytes7900.length=65 := by core033_kernel_decide
def op7901 : List WordIR.Op := [.bxor 7942 7943]
def bytes7901 : Bytes := ("    let r00001f08: u32 = r00001f06 ^ r00001f07;\n" : String).toByteArray.data.toList
theorem checked7901 : bytes7901=statementBytes 7944 (op7901.map lower) ∧ bytes7901.length=48 := by core033_kernel_decide
def op7902 : List WordIR.Op := [.rotr 7926 22]
def bytes7902 : Bytes := ("    let r00001f09: u32 = r00001ef6.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7902 : bytes7902=statementBytes 7945 (op7902.map lower) ∧ bytes7902.length=65 := by core033_kernel_decide
def op7903 : List WordIR.Op := [.bxor 7944 7945]
def bytes7903 : Bytes := ("    let r00001f0a: u32 = r00001f08 ^ r00001f09;\n" : String).toByteArray.data.toList
theorem checked7903 : bytes7903=statementBytes 7946 (op7903.map lower) ∧ bytes7903.length=48 := by core033_kernel_decide
def op7904 : List WordIR.Op := [.band 7926 7899]
def bytes7904 : Bytes := ("    let r00001f0b: u32 = r00001ef6 & r00001edb;\n" : String).toByteArray.data.toList
theorem checked7904 : bytes7904=statementBytes 7947 (op7904.map lower) ∧ bytes7904.length=48 := by core033_kernel_decide
def op7905 : List WordIR.Op := [.band 7926 7872]
def bytes7905 : Bytes := ("    let r00001f0c: u32 = r00001ef6 & r00001ec0;\n" : String).toByteArray.data.toList
theorem checked7905 : bytes7905=statementBytes 7948 (op7905.map lower) ∧ bytes7905.length=48 := by core033_kernel_decide
def op7906 : List WordIR.Op := [.bxor 7947 7948]
def bytes7906 : Bytes := ("    let r00001f0d: u32 = r00001f0b ^ r00001f0c;\n" : String).toByteArray.data.toList
theorem checked7906 : bytes7906=statementBytes 7949 (op7906.map lower) ∧ bytes7906.length=48 := by core033_kernel_decide
def op7907 : List WordIR.Op := [.band 7899 7872]
def bytes7907 : Bytes := ("    let r00001f0e: u32 = r00001edb & r00001ec0;\n" : String).toByteArray.data.toList
theorem checked7907 : bytes7907=statementBytes 7950 (op7907.map lower) ∧ bytes7907.length=48 := by core033_kernel_decide
def op7908 : List WordIR.Op := [.bxor 7949 7950]
def bytes7908 : Bytes := ("    let r00001f0f: u32 = r00001f0d ^ r00001f0e;\n" : String).toByteArray.data.toList
theorem checked7908 : bytes7908=statementBytes 7951 (op7908.map lower) ∧ bytes7908.length=48 := by core033_kernel_decide
def op7909 : List WordIR.Op := [.badd 7946 7951]
def bytes7909 : Bytes := ("    let r00001f10: u32 = r00001f0a.wrapping_add(r00001f0f);\n" : String).toByteArray.data.toList
theorem checked7909 : bytes7909=statementBytes 7952 (op7909.map lower) ∧ bytes7909.length=60 := by core033_kernel_decide
def op7910 : List WordIR.Op := [.badd 7941 7952]
def bytes7910 : Bytes := ("    let r00001f11: u32 = r00001f05.wrapping_add(r00001f10);\n" : String).toByteArray.data.toList
theorem checked7910 : bytes7910=statementBytes 7953 (op7910.map lower) ∧ bytes7910.length=60 := by core033_kernel_decide
def op7911 : List WordIR.Op := [.badd 7845 7941]
def bytes7911 : Bytes := ("    let r00001f12: u32 = r00001ea5.wrapping_add(r00001f05);\n" : String).toByteArray.data.toList
theorem checked7911 : bytes7911=statementBytes 7954 (op7911.map lower) ∧ bytes7911.length=60 := by core033_kernel_decide
def op7912 : List WordIR.Op := [.rotr 7954 6]
def bytes7912 : Bytes := ("    let r00001f13: u32 = r00001f12.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7912 : bytes7912=statementBytes 7955 (op7912.map lower) ∧ bytes7912.length=65 := by core033_kernel_decide
def op7913 : List WordIR.Op := [.rotr 7954 11]
def bytes7913 : Bytes := ("    let r00001f14: u32 = r00001f12.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7913 : bytes7913=statementBytes 7956 (op7913.map lower) ∧ bytes7913.length=65 := by core033_kernel_decide
def op7914 : List WordIR.Op := [.bxor 7955 7956]
def bytes7914 : Bytes := ("    let r00001f15: u32 = r00001f13 ^ r00001f14;\n" : String).toByteArray.data.toList
theorem checked7914 : bytes7914=statementBytes 7957 (op7914.map lower) ∧ bytes7914.length=48 := by core033_kernel_decide
def op7915 : List WordIR.Op := [.rotr 7954 25]
def bytes7915 : Bytes := ("    let r00001f16: u32 = r00001f12.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7915 : bytes7915=statementBytes 7958 (op7915.map lower) ∧ bytes7915.length=65 := by core033_kernel_decide
def op7916 : List WordIR.Op := [.bxor 7957 7958]
def bytes7916 : Bytes := ("    let r00001f17: u32 = r00001f15 ^ r00001f16;\n" : String).toByteArray.data.toList
theorem checked7916 : bytes7916=statementBytes 7959 (op7916.map lower) ∧ bytes7916.length=48 := by core033_kernel_decide
def op7917 : List WordIR.Op := [.badd 7873 7959]
def bytes7917 : Bytes := ("    let r00001f18: u32 = r00001ec1.wrapping_add(r00001f17);\n" : String).toByteArray.data.toList
theorem checked7917 : bytes7917=statementBytes 7960 (op7917.map lower) ∧ bytes7917.length=60 := by core033_kernel_decide
def op7918 : List WordIR.Op := [.band 7954 7927]
def bytes7918 : Bytes := ("    let r00001f19: u32 = r00001f12 & r00001ef7;\n" : String).toByteArray.data.toList
theorem checked7918 : bytes7918=statementBytes 7961 (op7918.map lower) ∧ bytes7918.length=48 := by core033_kernel_decide
def op7919 : List WordIR.Op := [.bnot 7954]
def bytes7919 : Bytes := ("    let r00001f1a: u32 = !r00001f12;\n" : String).toByteArray.data.toList
theorem checked7919 : bytes7919=statementBytes 7962 (op7919.map lower) ∧ bytes7919.length=37 := by core033_kernel_decide
def op7920 : List WordIR.Op := [.band 7962 7900]
def bytes7920 : Bytes := ("    let r00001f1b: u32 = r00001f1a & r00001edc;\n" : String).toByteArray.data.toList
theorem checked7920 : bytes7920=statementBytes 7963 (op7920.map lower) ∧ bytes7920.length=48 := by core033_kernel_decide
def op7921 : List WordIR.Op := [.bxor 7961 7963]
def bytes7921 : Bytes := ("    let r00001f1c: u32 = r00001f19 ^ r00001f1b;\n" : String).toByteArray.data.toList
theorem checked7921 : bytes7921=statementBytes 7964 (op7921.map lower) ∧ bytes7921.length=48 := by core033_kernel_decide
def op7922 : List WordIR.Op := [.badd 7960 7964]
def bytes7922 : Bytes := ("    let r00001f1d: u32 = r00001f18.wrapping_add(r00001f1c);\n" : String).toByteArray.data.toList
theorem checked7922 : bytes7922=statementBytes 7965 (op7922.map lower) ∧ bytes7922.length=60 := by core033_kernel_decide
def op7923 : List WordIR.Op := [.literal (BitVec.ofNat 32 1294757372)]
def bytes7923 : Bytes := ("    let r00001f1e: u32 = 0x4d2c6dfc_u32;\n" : String).toByteArray.data.toList
theorem checked7923 : bytes7923=statementBytes 7966 (op7923.map lower) ∧ bytes7923.length=41 := by core033_kernel_decide
def op7924 : List WordIR.Op := [.badd 7965 7966]
def bytes7924 : Bytes := ("    let r00001f1f: u32 = r00001f1d.wrapping_add(r00001f1e);\n" : String).toByteArray.data.toList
theorem checked7924 : bytes7924=statementBytes 7967 (op7924.map lower) ∧ bytes7924.length=60 := by core033_kernel_decide
def op7925 : List WordIR.Op := [.badd 7967 6659]
def bytes7925 : Bytes := ("    let r00001f20: u32 = r00001f1f.wrapping_add(r00001a03);\n" : String).toByteArray.data.toList
theorem checked7925 : bytes7925=statementBytes 7968 (op7925.map lower) ∧ bytes7925.length=60 := by core033_kernel_decide
def op7926 : List WordIR.Op := [.rotr 7953 2]
def bytes7926 : Bytes := ("    let r00001f21: u32 = r00001f11.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7926 : bytes7926=statementBytes 7969 (op7926.map lower) ∧ bytes7926.length=65 := by core033_kernel_decide
def op7927 : List WordIR.Op := [.rotr 7953 13]
def bytes7927 : Bytes := ("    let r00001f22: u32 = r00001f11.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7927 : bytes7927=statementBytes 7970 (op7927.map lower) ∧ bytes7927.length=65 := by core033_kernel_decide
def op7928 : List WordIR.Op := [.bxor 7969 7970]
def bytes7928 : Bytes := ("    let r00001f23: u32 = r00001f21 ^ r00001f22;\n" : String).toByteArray.data.toList
theorem checked7928 : bytes7928=statementBytes 7971 (op7928.map lower) ∧ bytes7928.length=48 := by core033_kernel_decide
def op7929 : List WordIR.Op := [.rotr 7953 22]
def bytes7929 : Bytes := ("    let r00001f24: u32 = r00001f11.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7929 : bytes7929=statementBytes 7972 (op7929.map lower) ∧ bytes7929.length=65 := by core033_kernel_decide
def op7930 : List WordIR.Op := [.bxor 7971 7972]
def bytes7930 : Bytes := ("    let r00001f25: u32 = r00001f23 ^ r00001f24;\n" : String).toByteArray.data.toList
theorem checked7930 : bytes7930=statementBytes 7973 (op7930.map lower) ∧ bytes7930.length=48 := by core033_kernel_decide
def op7931 : List WordIR.Op := [.band 7953 7926]
def bytes7931 : Bytes := ("    let r00001f26: u32 = r00001f11 & r00001ef6;\n" : String).toByteArray.data.toList
theorem checked7931 : bytes7931=statementBytes 7974 (op7931.map lower) ∧ bytes7931.length=48 := by core033_kernel_decide
def op7932 : List WordIR.Op := [.band 7953 7899]
def bytes7932 : Bytes := ("    let r00001f27: u32 = r00001f11 & r00001edb;\n" : String).toByteArray.data.toList
theorem checked7932 : bytes7932=statementBytes 7975 (op7932.map lower) ∧ bytes7932.length=48 := by core033_kernel_decide
def op7933 : List WordIR.Op := [.bxor 7974 7975]
def bytes7933 : Bytes := ("    let r00001f28: u32 = r00001f26 ^ r00001f27;\n" : String).toByteArray.data.toList
theorem checked7933 : bytes7933=statementBytes 7976 (op7933.map lower) ∧ bytes7933.length=48 := by core033_kernel_decide
def op7934 : List WordIR.Op := [.band 7926 7899]
def bytes7934 : Bytes := ("    let r00001f29: u32 = r00001ef6 & r00001edb;\n" : String).toByteArray.data.toList
theorem checked7934 : bytes7934=statementBytes 7977 (op7934.map lower) ∧ bytes7934.length=48 := by core033_kernel_decide
def op7935 : List WordIR.Op := [.bxor 7976 7977]
def bytes7935 : Bytes := ("    let r00001f2a: u32 = r00001f28 ^ r00001f29;\n" : String).toByteArray.data.toList
theorem checked7935 : bytes7935=statementBytes 7978 (op7935.map lower) ∧ bytes7935.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7872,op7873,op7874,op7875,op7876,op7877,op7878,op7879,op7880,op7881,op7882,op7883,op7884,op7885,op7886,op7887,op7888,op7889,op7890,op7891,op7892,op7893,op7894,op7895,op7896,op7897,op7898,op7899,op7900,op7901,op7902,op7903,op7904,op7905,op7906,op7907,op7908,op7909,op7910,op7911,op7912,op7913,op7914,op7915,op7916,op7917,op7918,op7919,op7920,op7921,op7922,op7923,op7924,op7925,op7926,op7927,op7928,op7929,op7930,op7931,op7932,op7933,op7934,op7935]
def chunks : List Bytes := [bytes7872,bytes7873,bytes7874,bytes7875,bytes7876,bytes7877,bytes7878,bytes7879,bytes7880,bytes7881,bytes7882,bytes7883,bytes7884,bytes7885,bytes7886,bytes7887,bytes7888,bytes7889,bytes7890,bytes7891,bytes7892,bytes7893,bytes7894,bytes7895,bytes7896,bytes7897,bytes7898,bytes7899,bytes7900,bytes7901,bytes7902,bytes7903,bytes7904,bytes7905,bytes7906,bytes7907,bytes7908,bytes7909,bytes7910,bytes7911,bytes7912,bytes7913,bytes7914,bytes7915,bytes7916,bytes7917,bytes7918,bytes7919,bytes7920,bytes7921,bytes7922,bytes7923,bytes7924,bytes7925,bytes7926,bytes7927,bytes7928,bytes7929,bytes7930,bytes7931,bytes7932,bytes7933,bytes7934,bytes7935]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7915 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7872.1 (.cons _ _ _ _ _ checked7873.1 (.cons _ _ _ _ _ checked7874.1 (.cons _ _ _ _ _ checked7875.1 (.cons _ _ _ _ _ checked7876.1 (.cons _ _ _ _ _ checked7877.1 (.cons _ _ _ _ _ checked7878.1 (.cons _ _ _ _ _ checked7879.1 (.cons _ _ _ _ _ checked7880.1 (.cons _ _ _ _ _ checked7881.1 (.cons _ _ _ _ _ checked7882.1 (.cons _ _ _ _ _ checked7883.1 (.cons _ _ _ _ _ checked7884.1 (.cons _ _ _ _ _ checked7885.1 (.cons _ _ _ _ _ checked7886.1 (.cons _ _ _ _ _ checked7887.1 (.cons _ _ _ _ _ checked7888.1 (.cons _ _ _ _ _ checked7889.1 (.cons _ _ _ _ _ checked7890.1 (.cons _ _ _ _ _ checked7891.1 (.cons _ _ _ _ _ checked7892.1 (.cons _ _ _ _ _ checked7893.1 (.cons _ _ _ _ _ checked7894.1 (.cons _ _ _ _ _ checked7895.1 (.cons _ _ _ _ _ checked7896.1 (.cons _ _ _ _ _ checked7897.1 (.cons _ _ _ _ _ checked7898.1 (.cons _ _ _ _ _ checked7899.1 (.cons _ _ _ _ _ checked7900.1 (.cons _ _ _ _ _ checked7901.1 (.cons _ _ _ _ _ checked7902.1 (.cons _ _ _ _ _ checked7903.1 (.cons _ _ _ _ _ checked7904.1 (.cons _ _ _ _ _ checked7905.1 (.cons _ _ _ _ _ checked7906.1 (.cons _ _ _ _ _ checked7907.1 (.cons _ _ _ _ _ checked7908.1 (.cons _ _ _ _ _ checked7909.1 (.cons _ _ _ _ _ checked7910.1 (.cons _ _ _ _ _ checked7911.1 (.cons _ _ _ _ _ checked7912.1 (.cons _ _ _ _ _ checked7913.1 (.cons _ _ _ _ _ checked7914.1 (.cons _ _ _ _ _ checked7915.1 (.cons _ _ _ _ _ checked7916.1 (.cons _ _ _ _ _ checked7917.1 (.cons _ _ _ _ _ checked7918.1 (.cons _ _ _ _ _ checked7919.1 (.cons _ _ _ _ _ checked7920.1 (.cons _ _ _ _ _ checked7921.1 (.cons _ _ _ _ _ checked7922.1 (.cons _ _ _ _ _ checked7923.1 (.cons _ _ _ _ _ checked7924.1 (.cons _ _ _ _ _ checked7925.1 (.cons _ _ _ _ _ checked7926.1 (.cons _ _ _ _ _ checked7927.1 (.cons _ _ _ _ _ checked7928.1 (.cons _ _ _ _ _ checked7929.1 (.cons _ _ _ _ _ checked7930.1 (.cons _ _ _ _ _ checked7931.1 (.cons _ _ _ _ _ checked7932.1 (.cons _ _ _ _ _ checked7933.1 (.cons _ _ _ _ _ checked7934.1 (.cons _ _ _ _ _ checked7935.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7915 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3459 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7872.2,checked7873.2,checked7874.2,checked7875.2,checked7876.2,checked7877.2,checked7878.2,checked7879.2,checked7880.2,checked7881.2,checked7882.2,checked7883.2,checked7884.2,checked7885.2,checked7886.2,checked7887.2,checked7888.2,checked7889.2,checked7890.2,checked7891.2,checked7892.2,checked7893.2,checked7894.2,checked7895.2,checked7896.2,checked7897.2,checked7898.2,checked7899.2,checked7900.2,checked7901.2,checked7902.2,checked7903.2,checked7904.2,checked7905.2,checked7906.2,checked7907.2,checked7908.2,checked7909.2,checked7910.2,checked7911.2,checked7912.2,checked7913.2,checked7914.2,checked7915.2,checked7916.2,checked7917.2,checked7918.2,checked7919.2,checked7920.2,checked7921.2,checked7922.2,checked7923.2,checked7924.2,checked7925.2,checked7926.2,checked7927.2,checked7928.2,checked7929.2,checked7930.2,checked7931.2,checked7932.2,checked7933.2,checked7934.2,checked7935.2]
  decide
end ArtifactFrameHashControllerGroup123
