import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup123
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7872 : List WordIR.Op := [.badd 7967 7760]
def bytes7872 : Bytes := ("    let r00001f20: u32 = r00001f1f.wrapping_add(r00001e50);\n" : String).toByteArray.data.toList
theorem checked7872 : bytes7872=statementBytes 7968 (op7872.map lower) ∧ bytes7872.length=60 := by core033_kernel_decide
def op7873 : List WordIR.Op := [.rotr 7955 17]
def bytes7873 : Bytes := ("    let r00001f21: u32 = r00001f13.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7873 : bytes7873=statementBytes 7969 (op7873.map lower) ∧ bytes7873.length=65 := by core033_kernel_decide
def op7874 : List WordIR.Op := [.rotr 7955 19]
def bytes7874 : Bytes := ("    let r00001f22: u32 = r00001f13.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7874 : bytes7874=statementBytes 7970 (op7874.map lower) ∧ bytes7874.length=65 := by core033_kernel_decide
def op7875 : List WordIR.Op := [.bxor 7969 7970]
def bytes7875 : Bytes := ("    let r00001f23: u32 = r00001f21 ^ r00001f22;\n" : String).toByteArray.data.toList
theorem checked7875 : bytes7875=statementBytes 7971 (op7875.map lower) ∧ bytes7875.length=48 := by core033_kernel_decide
def op7876 : List WordIR.Op := [.shr 7955 10]
def bytes7876 : Bytes := ("    let r00001f24: u32 = r00001f13 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7876 : bytes7876=statementBytes 7972 (op7876.map lower) ∧ bytes7876.length=54 := by core033_kernel_decide
def op7877 : List WordIR.Op := [.bxor 7971 7972]
def bytes7877 : Bytes := ("    let r00001f25: u32 = r00001f23 ^ r00001f24;\n" : String).toByteArray.data.toList
theorem checked7877 : bytes7877=statementBytes 7973 (op7877.map lower) ∧ bytes7877.length=48 := by core033_kernel_decide
def op7878 : List WordIR.Op := [.badd 7973 7890]
def bytes7878 : Bytes := ("    let r00001f26: u32 = r00001f25.wrapping_add(r00001ed2);\n" : String).toByteArray.data.toList
theorem checked7878 : bytes7878=statementBytes 7974 (op7878.map lower) ∧ bytes7878.length=60 := by core033_kernel_decide
def op7879 : List WordIR.Op := [.rotr 7786 7]
def bytes7879 : Bytes := ("    let r00001f27: u32 = r00001e6a.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7879 : bytes7879=statementBytes 7975 (op7879.map lower) ∧ bytes7879.length=65 := by core033_kernel_decide
def op7880 : List WordIR.Op := [.rotr 7786 18]
def bytes7880 : Bytes := ("    let r00001f28: u32 = r00001e6a.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7880 : bytes7880=statementBytes 7976 (op7880.map lower) ∧ bytes7880.length=65 := by core033_kernel_decide
def op7881 : List WordIR.Op := [.bxor 7975 7976]
def bytes7881 : Bytes := ("    let r00001f29: u32 = r00001f27 ^ r00001f28;\n" : String).toByteArray.data.toList
theorem checked7881 : bytes7881=statementBytes 7977 (op7881.map lower) ∧ bytes7881.length=48 := by core033_kernel_decide
def op7882 : List WordIR.Op := [.shr 7786 3]
def bytes7882 : Bytes := ("    let r00001f2a: u32 = r00001e6a >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7882 : bytes7882=statementBytes 7978 (op7882.map lower) ∧ bytes7882.length=54 := by core033_kernel_decide
def op7883 : List WordIR.Op := [.bxor 7977 7978]
def bytes7883 : Bytes := ("    let r00001f2b: u32 = r00001f29 ^ r00001f2a;\n" : String).toByteArray.data.toList
theorem checked7883 : bytes7883=statementBytes 7979 (op7883.map lower) ∧ bytes7883.length=48 := by core033_kernel_decide
def op7884 : List WordIR.Op := [.badd 7974 7979]
def bytes7884 : Bytes := ("    let r00001f2c: u32 = r00001f26.wrapping_add(r00001f2b);\n" : String).toByteArray.data.toList
theorem checked7884 : bytes7884=statementBytes 7980 (op7884.map lower) ∧ bytes7884.length=60 := by core033_kernel_decide
def op7885 : List WordIR.Op := [.badd 7980 7773]
def bytes7885 : Bytes := ("    let r00001f2d: u32 = r00001f2c.wrapping_add(r00001e5d);\n" : String).toByteArray.data.toList
theorem checked7885 : bytes7885=statementBytes 7981 (op7885.map lower) ∧ bytes7885.length=60 := by core033_kernel_decide
def op7886 : List WordIR.Op := [.rotr 7968 17]
def bytes7886 : Bytes := ("    let r00001f2e: u32 = r00001f20.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7886 : bytes7886=statementBytes 7982 (op7886.map lower) ∧ bytes7886.length=65 := by core033_kernel_decide
def op7887 : List WordIR.Op := [.rotr 7968 19]
def bytes7887 : Bytes := ("    let r00001f2f: u32 = r00001f20.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7887 : bytes7887=statementBytes 7983 (op7887.map lower) ∧ bytes7887.length=65 := by core033_kernel_decide
def op7888 : List WordIR.Op := [.bxor 7982 7983]
def bytes7888 : Bytes := ("    let r00001f30: u32 = r00001f2e ^ r00001f2f;\n" : String).toByteArray.data.toList
theorem checked7888 : bytes7888=statementBytes 7984 (op7888.map lower) ∧ bytes7888.length=48 := by core033_kernel_decide
def op7889 : List WordIR.Op := [.shr 7968 10]
def bytes7889 : Bytes := ("    let r00001f31: u32 = r00001f20 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7889 : bytes7889=statementBytes 7985 (op7889.map lower) ∧ bytes7889.length=54 := by core033_kernel_decide
def op7890 : List WordIR.Op := [.bxor 7984 7985]
def bytes7890 : Bytes := ("    let r00001f32: u32 = r00001f30 ^ r00001f31;\n" : String).toByteArray.data.toList
theorem checked7890 : bytes7890=statementBytes 7986 (op7890.map lower) ∧ bytes7890.length=48 := by core033_kernel_decide
def op7891 : List WordIR.Op := [.badd 7986 7903]
def bytes7891 : Bytes := ("    let r00001f33: u32 = r00001f32.wrapping_add(r00001edf);\n" : String).toByteArray.data.toList
theorem checked7891 : bytes7891=statementBytes 7987 (op7891.map lower) ∧ bytes7891.length=60 := by core033_kernel_decide
def op7892 : List WordIR.Op := [.rotr 7799 7]
def bytes7892 : Bytes := ("    let r00001f34: u32 = r00001e77.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7892 : bytes7892=statementBytes 7988 (op7892.map lower) ∧ bytes7892.length=65 := by core033_kernel_decide
def op7893 : List WordIR.Op := [.rotr 7799 18]
def bytes7893 : Bytes := ("    let r00001f35: u32 = r00001e77.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7893 : bytes7893=statementBytes 7989 (op7893.map lower) ∧ bytes7893.length=65 := by core033_kernel_decide
def op7894 : List WordIR.Op := [.bxor 7988 7989]
def bytes7894 : Bytes := ("    let r00001f36: u32 = r00001f34 ^ r00001f35;\n" : String).toByteArray.data.toList
theorem checked7894 : bytes7894=statementBytes 7990 (op7894.map lower) ∧ bytes7894.length=48 := by core033_kernel_decide
def op7895 : List WordIR.Op := [.shr 7799 3]
def bytes7895 : Bytes := ("    let r00001f37: u32 = r00001e77 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7895 : bytes7895=statementBytes 7991 (op7895.map lower) ∧ bytes7895.length=54 := by core033_kernel_decide
def op7896 : List WordIR.Op := [.bxor 7990 7991]
def bytes7896 : Bytes := ("    let r00001f38: u32 = r00001f36 ^ r00001f37;\n" : String).toByteArray.data.toList
theorem checked7896 : bytes7896=statementBytes 7992 (op7896.map lower) ∧ bytes7896.length=48 := by core033_kernel_decide
def op7897 : List WordIR.Op := [.badd 7987 7992]
def bytes7897 : Bytes := ("    let r00001f39: u32 = r00001f33.wrapping_add(r00001f38);\n" : String).toByteArray.data.toList
theorem checked7897 : bytes7897=statementBytes 7993 (op7897.map lower) ∧ bytes7897.length=60 := by core033_kernel_decide
def op7898 : List WordIR.Op := [.badd 7993 7786]
def bytes7898 : Bytes := ("    let r00001f3a: u32 = r00001f39.wrapping_add(r00001e6a);\n" : String).toByteArray.data.toList
theorem checked7898 : bytes7898=statementBytes 7994 (op7898.map lower) ∧ bytes7898.length=60 := by core033_kernel_decide
def op7899 : List WordIR.Op := [.rotr 7981 17]
def bytes7899 : Bytes := ("    let r00001f3b: u32 = r00001f2d.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7899 : bytes7899=statementBytes 7995 (op7899.map lower) ∧ bytes7899.length=65 := by core033_kernel_decide
def op7900 : List WordIR.Op := [.rotr 7981 19]
def bytes7900 : Bytes := ("    let r00001f3c: u32 = r00001f2d.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7900 : bytes7900=statementBytes 7996 (op7900.map lower) ∧ bytes7900.length=65 := by core033_kernel_decide
def op7901 : List WordIR.Op := [.bxor 7995 7996]
def bytes7901 : Bytes := ("    let r00001f3d: u32 = r00001f3b ^ r00001f3c;\n" : String).toByteArray.data.toList
theorem checked7901 : bytes7901=statementBytes 7997 (op7901.map lower) ∧ bytes7901.length=48 := by core033_kernel_decide
def op7902 : List WordIR.Op := [.shr 7981 10]
def bytes7902 : Bytes := ("    let r00001f3e: u32 = r00001f2d >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7902 : bytes7902=statementBytes 7998 (op7902.map lower) ∧ bytes7902.length=54 := by core033_kernel_decide
def op7903 : List WordIR.Op := [.bxor 7997 7998]
def bytes7903 : Bytes := ("    let r00001f3f: u32 = r00001f3d ^ r00001f3e;\n" : String).toByteArray.data.toList
theorem checked7903 : bytes7903=statementBytes 7999 (op7903.map lower) ∧ bytes7903.length=48 := by core033_kernel_decide
def op7904 : List WordIR.Op := [.badd 7999 7916]
def bytes7904 : Bytes := ("    let r00001f40: u32 = r00001f3f.wrapping_add(r00001eec);\n" : String).toByteArray.data.toList
theorem checked7904 : bytes7904=statementBytes 8000 (op7904.map lower) ∧ bytes7904.length=60 := by core033_kernel_decide
def op7905 : List WordIR.Op := [.rotr 7812 7]
def bytes7905 : Bytes := ("    let r00001f41: u32 = r00001e84.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7905 : bytes7905=statementBytes 8001 (op7905.map lower) ∧ bytes7905.length=65 := by core033_kernel_decide
def op7906 : List WordIR.Op := [.rotr 7812 18]
def bytes7906 : Bytes := ("    let r00001f42: u32 = r00001e84.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7906 : bytes7906=statementBytes 8002 (op7906.map lower) ∧ bytes7906.length=65 := by core033_kernel_decide
def op7907 : List WordIR.Op := [.bxor 8001 8002]
def bytes7907 : Bytes := ("    let r00001f43: u32 = r00001f41 ^ r00001f42;\n" : String).toByteArray.data.toList
theorem checked7907 : bytes7907=statementBytes 8003 (op7907.map lower) ∧ bytes7907.length=48 := by core033_kernel_decide
def op7908 : List WordIR.Op := [.shr 7812 3]
def bytes7908 : Bytes := ("    let r00001f44: u32 = r00001e84 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7908 : bytes7908=statementBytes 8004 (op7908.map lower) ∧ bytes7908.length=54 := by core033_kernel_decide
def op7909 : List WordIR.Op := [.bxor 8003 8004]
def bytes7909 : Bytes := ("    let r00001f45: u32 = r00001f43 ^ r00001f44;\n" : String).toByteArray.data.toList
theorem checked7909 : bytes7909=statementBytes 8005 (op7909.map lower) ∧ bytes7909.length=48 := by core033_kernel_decide
def op7910 : List WordIR.Op := [.badd 8000 8005]
def bytes7910 : Bytes := ("    let r00001f46: u32 = r00001f40.wrapping_add(r00001f45);\n" : String).toByteArray.data.toList
theorem checked7910 : bytes7910=statementBytes 8006 (op7910.map lower) ∧ bytes7910.length=60 := by core033_kernel_decide
def op7911 : List WordIR.Op := [.badd 8006 7799]
def bytes7911 : Bytes := ("    let r00001f47: u32 = r00001f46.wrapping_add(r00001e77);\n" : String).toByteArray.data.toList
theorem checked7911 : bytes7911=statementBytes 8007 (op7911.map lower) ∧ bytes7911.length=60 := by core033_kernel_decide
def op7912 : List WordIR.Op := [.rotr 7994 17]
def bytes7912 : Bytes := ("    let r00001f48: u32 = r00001f3a.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7912 : bytes7912=statementBytes 8008 (op7912.map lower) ∧ bytes7912.length=65 := by core033_kernel_decide
def op7913 : List WordIR.Op := [.rotr 7994 19]
def bytes7913 : Bytes := ("    let r00001f49: u32 = r00001f3a.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7913 : bytes7913=statementBytes 8009 (op7913.map lower) ∧ bytes7913.length=65 := by core033_kernel_decide
def op7914 : List WordIR.Op := [.bxor 8008 8009]
def bytes7914 : Bytes := ("    let r00001f4a: u32 = r00001f48 ^ r00001f49;\n" : String).toByteArray.data.toList
theorem checked7914 : bytes7914=statementBytes 8010 (op7914.map lower) ∧ bytes7914.length=48 := by core033_kernel_decide
def op7915 : List WordIR.Op := [.shr 7994 10]
def bytes7915 : Bytes := ("    let r00001f4b: u32 = r00001f3a >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7915 : bytes7915=statementBytes 8011 (op7915.map lower) ∧ bytes7915.length=54 := by core033_kernel_decide
def op7916 : List WordIR.Op := [.bxor 8010 8011]
def bytes7916 : Bytes := ("    let r00001f4c: u32 = r00001f4a ^ r00001f4b;\n" : String).toByteArray.data.toList
theorem checked7916 : bytes7916=statementBytes 8012 (op7916.map lower) ∧ bytes7916.length=48 := by core033_kernel_decide
def op7917 : List WordIR.Op := [.badd 8012 7929]
def bytes7917 : Bytes := ("    let r00001f4d: u32 = r00001f4c.wrapping_add(r00001ef9);\n" : String).toByteArray.data.toList
theorem checked7917 : bytes7917=statementBytes 8013 (op7917.map lower) ∧ bytes7917.length=60 := by core033_kernel_decide
def op7918 : List WordIR.Op := [.rotr 7825 7]
def bytes7918 : Bytes := ("    let r00001f4e: u32 = r00001e91.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7918 : bytes7918=statementBytes 8014 (op7918.map lower) ∧ bytes7918.length=65 := by core033_kernel_decide
def op7919 : List WordIR.Op := [.rotr 7825 18]
def bytes7919 : Bytes := ("    let r00001f4f: u32 = r00001e91.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7919 : bytes7919=statementBytes 8015 (op7919.map lower) ∧ bytes7919.length=65 := by core033_kernel_decide
def op7920 : List WordIR.Op := [.bxor 8014 8015]
def bytes7920 : Bytes := ("    let r00001f50: u32 = r00001f4e ^ r00001f4f;\n" : String).toByteArray.data.toList
theorem checked7920 : bytes7920=statementBytes 8016 (op7920.map lower) ∧ bytes7920.length=48 := by core033_kernel_decide
def op7921 : List WordIR.Op := [.shr 7825 3]
def bytes7921 : Bytes := ("    let r00001f51: u32 = r00001e91 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7921 : bytes7921=statementBytes 8017 (op7921.map lower) ∧ bytes7921.length=54 := by core033_kernel_decide
def op7922 : List WordIR.Op := [.bxor 8016 8017]
def bytes7922 : Bytes := ("    let r00001f52: u32 = r00001f50 ^ r00001f51;\n" : String).toByteArray.data.toList
theorem checked7922 : bytes7922=statementBytes 8018 (op7922.map lower) ∧ bytes7922.length=48 := by core033_kernel_decide
def op7923 : List WordIR.Op := [.badd 8013 8018]
def bytes7923 : Bytes := ("    let r00001f53: u32 = r00001f4d.wrapping_add(r00001f52);\n" : String).toByteArray.data.toList
theorem checked7923 : bytes7923=statementBytes 8019 (op7923.map lower) ∧ bytes7923.length=60 := by core033_kernel_decide
def op7924 : List WordIR.Op := [.badd 8019 7812]
def bytes7924 : Bytes := ("    let r00001f54: u32 = r00001f53.wrapping_add(r00001e84);\n" : String).toByteArray.data.toList
theorem checked7924 : bytes7924=statementBytes 8020 (op7924.map lower) ∧ bytes7924.length=60 := by core033_kernel_decide
def op7925 : List WordIR.Op := [.rotr 8007 17]
def bytes7925 : Bytes := ("    let r00001f55: u32 = r00001f47.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7925 : bytes7925=statementBytes 8021 (op7925.map lower) ∧ bytes7925.length=65 := by core033_kernel_decide
def op7926 : List WordIR.Op := [.rotr 8007 19]
def bytes7926 : Bytes := ("    let r00001f56: u32 = r00001f47.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7926 : bytes7926=statementBytes 8022 (op7926.map lower) ∧ bytes7926.length=65 := by core033_kernel_decide
def op7927 : List WordIR.Op := [.bxor 8021 8022]
def bytes7927 : Bytes := ("    let r00001f57: u32 = r00001f55 ^ r00001f56;\n" : String).toByteArray.data.toList
theorem checked7927 : bytes7927=statementBytes 8023 (op7927.map lower) ∧ bytes7927.length=48 := by core033_kernel_decide
def op7928 : List WordIR.Op := [.shr 8007 10]
def bytes7928 : Bytes := ("    let r00001f58: u32 = r00001f47 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7928 : bytes7928=statementBytes 8024 (op7928.map lower) ∧ bytes7928.length=54 := by core033_kernel_decide
def op7929 : List WordIR.Op := [.bxor 8023 8024]
def bytes7929 : Bytes := ("    let r00001f59: u32 = r00001f57 ^ r00001f58;\n" : String).toByteArray.data.toList
theorem checked7929 : bytes7929=statementBytes 8025 (op7929.map lower) ∧ bytes7929.length=48 := by core033_kernel_decide
def op7930 : List WordIR.Op := [.badd 8025 7942]
def bytes7930 : Bytes := ("    let r00001f5a: u32 = r00001f59.wrapping_add(r00001f06);\n" : String).toByteArray.data.toList
theorem checked7930 : bytes7930=statementBytes 8026 (op7930.map lower) ∧ bytes7930.length=60 := by core033_kernel_decide
def op7931 : List WordIR.Op := [.rotr 7838 7]
def bytes7931 : Bytes := ("    let r00001f5b: u32 = r00001e9e.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7931 : bytes7931=statementBytes 8027 (op7931.map lower) ∧ bytes7931.length=65 := by core033_kernel_decide
def op7932 : List WordIR.Op := [.rotr 7838 18]
def bytes7932 : Bytes := ("    let r00001f5c: u32 = r00001e9e.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7932 : bytes7932=statementBytes 8028 (op7932.map lower) ∧ bytes7932.length=65 := by core033_kernel_decide
def op7933 : List WordIR.Op := [.bxor 8027 8028]
def bytes7933 : Bytes := ("    let r00001f5d: u32 = r00001f5b ^ r00001f5c;\n" : String).toByteArray.data.toList
theorem checked7933 : bytes7933=statementBytes 8029 (op7933.map lower) ∧ bytes7933.length=48 := by core033_kernel_decide
def op7934 : List WordIR.Op := [.shr 7838 3]
def bytes7934 : Bytes := ("    let r00001f5e: u32 = r00001e9e >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7934 : bytes7934=statementBytes 8030 (op7934.map lower) ∧ bytes7934.length=54 := by core033_kernel_decide
def op7935 : List WordIR.Op := [.bxor 8029 8030]
def bytes7935 : Bytes := ("    let r00001f5f: u32 = r00001f5d ^ r00001f5e;\n" : String).toByteArray.data.toList
theorem checked7935 : bytes7935=statementBytes 8031 (op7935.map lower) ∧ bytes7935.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7872,op7873,op7874,op7875,op7876,op7877,op7878,op7879,op7880,op7881,op7882,op7883,op7884,op7885,op7886,op7887,op7888,op7889,op7890,op7891,op7892,op7893,op7894,op7895,op7896,op7897,op7898,op7899,op7900,op7901,op7902,op7903,op7904,op7905,op7906,op7907,op7908,op7909,op7910,op7911,op7912,op7913,op7914,op7915,op7916,op7917,op7918,op7919,op7920,op7921,op7922,op7923,op7924,op7925,op7926,op7927,op7928,op7929,op7930,op7931,op7932,op7933,op7934,op7935]
def chunks : List Bytes := [bytes7872,bytes7873,bytes7874,bytes7875,bytes7876,bytes7877,bytes7878,bytes7879,bytes7880,bytes7881,bytes7882,bytes7883,bytes7884,bytes7885,bytes7886,bytes7887,bytes7888,bytes7889,bytes7890,bytes7891,bytes7892,bytes7893,bytes7894,bytes7895,bytes7896,bytes7897,bytes7898,bytes7899,bytes7900,bytes7901,bytes7902,bytes7903,bytes7904,bytes7905,bytes7906,bytes7907,bytes7908,bytes7909,bytes7910,bytes7911,bytes7912,bytes7913,bytes7914,bytes7915,bytes7916,bytes7917,bytes7918,bytes7919,bytes7920,bytes7921,bytes7922,bytes7923,bytes7924,bytes7925,bytes7926,bytes7927,bytes7928,bytes7929,bytes7930,bytes7931,bytes7932,bytes7933,bytes7934,bytes7935]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7968 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7872.1 (.cons _ _ _ _ _ checked7873.1 (.cons _ _ _ _ _ checked7874.1 (.cons _ _ _ _ _ checked7875.1 (.cons _ _ _ _ _ checked7876.1 (.cons _ _ _ _ _ checked7877.1 (.cons _ _ _ _ _ checked7878.1 (.cons _ _ _ _ _ checked7879.1 (.cons _ _ _ _ _ checked7880.1 (.cons _ _ _ _ _ checked7881.1 (.cons _ _ _ _ _ checked7882.1 (.cons _ _ _ _ _ checked7883.1 (.cons _ _ _ _ _ checked7884.1 (.cons _ _ _ _ _ checked7885.1 (.cons _ _ _ _ _ checked7886.1 (.cons _ _ _ _ _ checked7887.1 (.cons _ _ _ _ _ checked7888.1 (.cons _ _ _ _ _ checked7889.1 (.cons _ _ _ _ _ checked7890.1 (.cons _ _ _ _ _ checked7891.1 (.cons _ _ _ _ _ checked7892.1 (.cons _ _ _ _ _ checked7893.1 (.cons _ _ _ _ _ checked7894.1 (.cons _ _ _ _ _ checked7895.1 (.cons _ _ _ _ _ checked7896.1 (.cons _ _ _ _ _ checked7897.1 (.cons _ _ _ _ _ checked7898.1 (.cons _ _ _ _ _ checked7899.1 (.cons _ _ _ _ _ checked7900.1 (.cons _ _ _ _ _ checked7901.1 (.cons _ _ _ _ _ checked7902.1 (.cons _ _ _ _ _ checked7903.1 (.cons _ _ _ _ _ checked7904.1 (.cons _ _ _ _ _ checked7905.1 (.cons _ _ _ _ _ checked7906.1 (.cons _ _ _ _ _ checked7907.1 (.cons _ _ _ _ _ checked7908.1 (.cons _ _ _ _ _ checked7909.1 (.cons _ _ _ _ _ checked7910.1 (.cons _ _ _ _ _ checked7911.1 (.cons _ _ _ _ _ checked7912.1 (.cons _ _ _ _ _ checked7913.1 (.cons _ _ _ _ _ checked7914.1 (.cons _ _ _ _ _ checked7915.1 (.cons _ _ _ _ _ checked7916.1 (.cons _ _ _ _ _ checked7917.1 (.cons _ _ _ _ _ checked7918.1 (.cons _ _ _ _ _ checked7919.1 (.cons _ _ _ _ _ checked7920.1 (.cons _ _ _ _ _ checked7921.1 (.cons _ _ _ _ _ checked7922.1 (.cons _ _ _ _ _ checked7923.1 (.cons _ _ _ _ _ checked7924.1 (.cons _ _ _ _ _ checked7925.1 (.cons _ _ _ _ _ checked7926.1 (.cons _ _ _ _ _ checked7927.1 (.cons _ _ _ _ _ checked7928.1 (.cons _ _ _ _ _ checked7929.1 (.cons _ _ _ _ _ checked7930.1 (.cons _ _ _ _ _ checked7931.1 (.cons _ _ _ _ _ checked7932.1 (.cons _ _ _ _ _ checked7933.1 (.cons _ _ _ _ _ checked7934.1 (.cons _ _ _ _ _ checked7935.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7968 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3640 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7872.2,checked7873.2,checked7874.2,checked7875.2,checked7876.2,checked7877.2,checked7878.2,checked7879.2,checked7880.2,checked7881.2,checked7882.2,checked7883.2,checked7884.2,checked7885.2,checked7886.2,checked7887.2,checked7888.2,checked7889.2,checked7890.2,checked7891.2,checked7892.2,checked7893.2,checked7894.2,checked7895.2,checked7896.2,checked7897.2,checked7898.2,checked7899.2,checked7900.2,checked7901.2,checked7902.2,checked7903.2,checked7904.2,checked7905.2,checked7906.2,checked7907.2,checked7908.2,checked7909.2,checked7910.2,checked7911.2,checked7912.2,checked7913.2,checked7914.2,checked7915.2,checked7916.2,checked7917.2,checked7918.2,checked7919.2,checked7920.2,checked7921.2,checked7922.2,checked7923.2,checked7924.2,checked7925.2,checked7926.2,checked7927.2,checked7928.2,checked7929.2,checked7930.2,checked7931.2,checked7932.2,checked7933.2,checked7934.2,checked7935.2]
  decide
end ArtifactPairedPathRoundGroup123
