import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup124
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7936 : List WordIR.Op := [.badd 7973 7978]
def bytes7936 : Bytes := ("    let r00001f2b: u32 = r00001f25.wrapping_add(r00001f2a);\n" : String).toByteArray.data.toList
theorem checked7936 : bytes7936=statementBytes 7979 (op7936.map lower) ∧ bytes7936.length=60 := by core033_kernel_decide
def op7937 : List WordIR.Op := [.badd 7968 7979]
def bytes7937 : Bytes := ("    let r00001f2c: u32 = r00001f20.wrapping_add(r00001f2b);\n" : String).toByteArray.data.toList
theorem checked7937 : bytes7937=statementBytes 7980 (op7937.map lower) ∧ bytes7937.length=60 := by core033_kernel_decide
def op7938 : List WordIR.Op := [.badd 7872 7968]
def bytes7938 : Bytes := ("    let r00001f2d: u32 = r00001ec0.wrapping_add(r00001f20);\n" : String).toByteArray.data.toList
theorem checked7938 : bytes7938=statementBytes 7981 (op7938.map lower) ∧ bytes7938.length=60 := by core033_kernel_decide
def op7939 : List WordIR.Op := [.rotr 7981 6]
def bytes7939 : Bytes := ("    let r00001f2e: u32 = r00001f2d.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7939 : bytes7939=statementBytes 7982 (op7939.map lower) ∧ bytes7939.length=65 := by core033_kernel_decide
def op7940 : List WordIR.Op := [.rotr 7981 11]
def bytes7940 : Bytes := ("    let r00001f2f: u32 = r00001f2d.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7940 : bytes7940=statementBytes 7983 (op7940.map lower) ∧ bytes7940.length=65 := by core033_kernel_decide
def op7941 : List WordIR.Op := [.bxor 7982 7983]
def bytes7941 : Bytes := ("    let r00001f30: u32 = r00001f2e ^ r00001f2f;\n" : String).toByteArray.data.toList
theorem checked7941 : bytes7941=statementBytes 7984 (op7941.map lower) ∧ bytes7941.length=48 := by core033_kernel_decide
def op7942 : List WordIR.Op := [.rotr 7981 25]
def bytes7942 : Bytes := ("    let r00001f31: u32 = r00001f2d.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7942 : bytes7942=statementBytes 7985 (op7942.map lower) ∧ bytes7942.length=65 := by core033_kernel_decide
def op7943 : List WordIR.Op := [.bxor 7984 7985]
def bytes7943 : Bytes := ("    let r00001f32: u32 = r00001f30 ^ r00001f31;\n" : String).toByteArray.data.toList
theorem checked7943 : bytes7943=statementBytes 7986 (op7943.map lower) ∧ bytes7943.length=48 := by core033_kernel_decide
def op7944 : List WordIR.Op := [.badd 7900 7986]
def bytes7944 : Bytes := ("    let r00001f33: u32 = r00001edc.wrapping_add(r00001f32);\n" : String).toByteArray.data.toList
theorem checked7944 : bytes7944=statementBytes 7987 (op7944.map lower) ∧ bytes7944.length=60 := by core033_kernel_decide
def op7945 : List WordIR.Op := [.band 7981 7954]
def bytes7945 : Bytes := ("    let r00001f34: u32 = r00001f2d & r00001f12;\n" : String).toByteArray.data.toList
theorem checked7945 : bytes7945=statementBytes 7988 (op7945.map lower) ∧ bytes7945.length=48 := by core033_kernel_decide
def op7946 : List WordIR.Op := [.bnot 7981]
def bytes7946 : Bytes := ("    let r00001f35: u32 = !r00001f2d;\n" : String).toByteArray.data.toList
theorem checked7946 : bytes7946=statementBytes 7989 (op7946.map lower) ∧ bytes7946.length=37 := by core033_kernel_decide
def op7947 : List WordIR.Op := [.band 7989 7927]
def bytes7947 : Bytes := ("    let r00001f36: u32 = r00001f35 & r00001ef7;\n" : String).toByteArray.data.toList
theorem checked7947 : bytes7947=statementBytes 7990 (op7947.map lower) ∧ bytes7947.length=48 := by core033_kernel_decide
def op7948 : List WordIR.Op := [.bxor 7988 7990]
def bytes7948 : Bytes := ("    let r00001f37: u32 = r00001f34 ^ r00001f36;\n" : String).toByteArray.data.toList
theorem checked7948 : bytes7948=statementBytes 7991 (op7948.map lower) ∧ bytes7948.length=48 := by core033_kernel_decide
def op7949 : List WordIR.Op := [.badd 7987 7991]
def bytes7949 : Bytes := ("    let r00001f38: u32 = r00001f33.wrapping_add(r00001f37);\n" : String).toByteArray.data.toList
theorem checked7949 : bytes7949=statementBytes 7992 (op7949.map lower) ∧ bytes7949.length=60 := by core033_kernel_decide
def op7950 : List WordIR.Op := [.literal (BitVec.ofNat 32 1396182291)]
def bytes7950 : Bytes := ("    let r00001f39: u32 = 0x53380d13_u32;\n" : String).toByteArray.data.toList
theorem checked7950 : bytes7950=statementBytes 7993 (op7950.map lower) ∧ bytes7950.length=41 := by core033_kernel_decide
def op7951 : List WordIR.Op := [.badd 7992 7993]
def bytes7951 : Bytes := ("    let r00001f3a: u32 = r00001f38.wrapping_add(r00001f39);\n" : String).toByteArray.data.toList
theorem checked7951 : bytes7951=statementBytes 7994 (op7951.map lower) ∧ bytes7951.length=60 := by core033_kernel_decide
def op7952 : List WordIR.Op := [.badd 7994 6672]
def bytes7952 : Bytes := ("    let r00001f3b: u32 = r00001f3a.wrapping_add(r00001a10);\n" : String).toByteArray.data.toList
theorem checked7952 : bytes7952=statementBytes 7995 (op7952.map lower) ∧ bytes7952.length=60 := by core033_kernel_decide
def op7953 : List WordIR.Op := [.rotr 7980 2]
def bytes7953 : Bytes := ("    let r00001f3c: u32 = r00001f2c.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7953 : bytes7953=statementBytes 7996 (op7953.map lower) ∧ bytes7953.length=65 := by core033_kernel_decide
def op7954 : List WordIR.Op := [.rotr 7980 13]
def bytes7954 : Bytes := ("    let r00001f3d: u32 = r00001f2c.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7954 : bytes7954=statementBytes 7997 (op7954.map lower) ∧ bytes7954.length=65 := by core033_kernel_decide
def op7955 : List WordIR.Op := [.bxor 7996 7997]
def bytes7955 : Bytes := ("    let r00001f3e: u32 = r00001f3c ^ r00001f3d;\n" : String).toByteArray.data.toList
theorem checked7955 : bytes7955=statementBytes 7998 (op7955.map lower) ∧ bytes7955.length=48 := by core033_kernel_decide
def op7956 : List WordIR.Op := [.rotr 7980 22]
def bytes7956 : Bytes := ("    let r00001f3f: u32 = r00001f2c.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7956 : bytes7956=statementBytes 7999 (op7956.map lower) ∧ bytes7956.length=65 := by core033_kernel_decide
def op7957 : List WordIR.Op := [.bxor 7998 7999]
def bytes7957 : Bytes := ("    let r00001f40: u32 = r00001f3e ^ r00001f3f;\n" : String).toByteArray.data.toList
theorem checked7957 : bytes7957=statementBytes 8000 (op7957.map lower) ∧ bytes7957.length=48 := by core033_kernel_decide
def op7958 : List WordIR.Op := [.band 7980 7953]
def bytes7958 : Bytes := ("    let r00001f41: u32 = r00001f2c & r00001f11;\n" : String).toByteArray.data.toList
theorem checked7958 : bytes7958=statementBytes 8001 (op7958.map lower) ∧ bytes7958.length=48 := by core033_kernel_decide
def op7959 : List WordIR.Op := [.band 7980 7926]
def bytes7959 : Bytes := ("    let r00001f42: u32 = r00001f2c & r00001ef6;\n" : String).toByteArray.data.toList
theorem checked7959 : bytes7959=statementBytes 8002 (op7959.map lower) ∧ bytes7959.length=48 := by core033_kernel_decide
def op7960 : List WordIR.Op := [.bxor 8001 8002]
def bytes7960 : Bytes := ("    let r00001f43: u32 = r00001f41 ^ r00001f42;\n" : String).toByteArray.data.toList
theorem checked7960 : bytes7960=statementBytes 8003 (op7960.map lower) ∧ bytes7960.length=48 := by core033_kernel_decide
def op7961 : List WordIR.Op := [.band 7953 7926]
def bytes7961 : Bytes := ("    let r00001f44: u32 = r00001f11 & r00001ef6;\n" : String).toByteArray.data.toList
theorem checked7961 : bytes7961=statementBytes 8004 (op7961.map lower) ∧ bytes7961.length=48 := by core033_kernel_decide
def op7962 : List WordIR.Op := [.bxor 8003 8004]
def bytes7962 : Bytes := ("    let r00001f45: u32 = r00001f43 ^ r00001f44;\n" : String).toByteArray.data.toList
theorem checked7962 : bytes7962=statementBytes 8005 (op7962.map lower) ∧ bytes7962.length=48 := by core033_kernel_decide
def op7963 : List WordIR.Op := [.badd 8000 8005]
def bytes7963 : Bytes := ("    let r00001f46: u32 = r00001f40.wrapping_add(r00001f45);\n" : String).toByteArray.data.toList
theorem checked7963 : bytes7963=statementBytes 8006 (op7963.map lower) ∧ bytes7963.length=60 := by core033_kernel_decide
def op7964 : List WordIR.Op := [.badd 7995 8006]
def bytes7964 : Bytes := ("    let r00001f47: u32 = r00001f3b.wrapping_add(r00001f46);\n" : String).toByteArray.data.toList
theorem checked7964 : bytes7964=statementBytes 8007 (op7964.map lower) ∧ bytes7964.length=60 := by core033_kernel_decide
def op7965 : List WordIR.Op := [.badd 7899 7995]
def bytes7965 : Bytes := ("    let r00001f48: u32 = r00001edb.wrapping_add(r00001f3b);\n" : String).toByteArray.data.toList
theorem checked7965 : bytes7965=statementBytes 8008 (op7965.map lower) ∧ bytes7965.length=60 := by core033_kernel_decide
def op7966 : List WordIR.Op := [.rotr 8008 6]
def bytes7966 : Bytes := ("    let r00001f49: u32 = r00001f48.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7966 : bytes7966=statementBytes 8009 (op7966.map lower) ∧ bytes7966.length=65 := by core033_kernel_decide
def op7967 : List WordIR.Op := [.rotr 8008 11]
def bytes7967 : Bytes := ("    let r00001f4a: u32 = r00001f48.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7967 : bytes7967=statementBytes 8010 (op7967.map lower) ∧ bytes7967.length=65 := by core033_kernel_decide
def op7968 : List WordIR.Op := [.bxor 8009 8010]
def bytes7968 : Bytes := ("    let r00001f4b: u32 = r00001f49 ^ r00001f4a;\n" : String).toByteArray.data.toList
theorem checked7968 : bytes7968=statementBytes 8011 (op7968.map lower) ∧ bytes7968.length=48 := by core033_kernel_decide
def op7969 : List WordIR.Op := [.rotr 8008 25]
def bytes7969 : Bytes := ("    let r00001f4c: u32 = r00001f48.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7969 : bytes7969=statementBytes 8012 (op7969.map lower) ∧ bytes7969.length=65 := by core033_kernel_decide
def op7970 : List WordIR.Op := [.bxor 8011 8012]
def bytes7970 : Bytes := ("    let r00001f4d: u32 = r00001f4b ^ r00001f4c;\n" : String).toByteArray.data.toList
theorem checked7970 : bytes7970=statementBytes 8013 (op7970.map lower) ∧ bytes7970.length=48 := by core033_kernel_decide
def op7971 : List WordIR.Op := [.badd 7927 8013]
def bytes7971 : Bytes := ("    let r00001f4e: u32 = r00001ef7.wrapping_add(r00001f4d);\n" : String).toByteArray.data.toList
theorem checked7971 : bytes7971=statementBytes 8014 (op7971.map lower) ∧ bytes7971.length=60 := by core033_kernel_decide
def op7972 : List WordIR.Op := [.band 8008 7981]
def bytes7972 : Bytes := ("    let r00001f4f: u32 = r00001f48 & r00001f2d;\n" : String).toByteArray.data.toList
theorem checked7972 : bytes7972=statementBytes 8015 (op7972.map lower) ∧ bytes7972.length=48 := by core033_kernel_decide
def op7973 : List WordIR.Op := [.bnot 8008]
def bytes7973 : Bytes := ("    let r00001f50: u32 = !r00001f48;\n" : String).toByteArray.data.toList
theorem checked7973 : bytes7973=statementBytes 8016 (op7973.map lower) ∧ bytes7973.length=37 := by core033_kernel_decide
def op7974 : List WordIR.Op := [.band 8016 7954]
def bytes7974 : Bytes := ("    let r00001f51: u32 = r00001f50 & r00001f12;\n" : String).toByteArray.data.toList
theorem checked7974 : bytes7974=statementBytes 8017 (op7974.map lower) ∧ bytes7974.length=48 := by core033_kernel_decide
def op7975 : List WordIR.Op := [.bxor 8015 8017]
def bytes7975 : Bytes := ("    let r00001f52: u32 = r00001f4f ^ r00001f51;\n" : String).toByteArray.data.toList
theorem checked7975 : bytes7975=statementBytes 8018 (op7975.map lower) ∧ bytes7975.length=48 := by core033_kernel_decide
def op7976 : List WordIR.Op := [.badd 8014 8018]
def bytes7976 : Bytes := ("    let r00001f53: u32 = r00001f4e.wrapping_add(r00001f52);\n" : String).toByteArray.data.toList
theorem checked7976 : bytes7976=statementBytes 8019 (op7976.map lower) ∧ bytes7976.length=60 := by core033_kernel_decide
def op7977 : List WordIR.Op := [.literal (BitVec.ofNat 32 1695183700)]
def bytes7977 : Bytes := ("    let r00001f54: u32 = 0x650a7354_u32;\n" : String).toByteArray.data.toList
theorem checked7977 : bytes7977=statementBytes 8020 (op7977.map lower) ∧ bytes7977.length=41 := by core033_kernel_decide
def op7978 : List WordIR.Op := [.badd 8019 8020]
def bytes7978 : Bytes := ("    let r00001f55: u32 = r00001f53.wrapping_add(r00001f54);\n" : String).toByteArray.data.toList
theorem checked7978 : bytes7978=statementBytes 8021 (op7978.map lower) ∧ bytes7978.length=60 := by core033_kernel_decide
def op7979 : List WordIR.Op := [.badd 8021 6685]
def bytes7979 : Bytes := ("    let r00001f56: u32 = r00001f55.wrapping_add(r00001a1d);\n" : String).toByteArray.data.toList
theorem checked7979 : bytes7979=statementBytes 8022 (op7979.map lower) ∧ bytes7979.length=60 := by core033_kernel_decide
def op7980 : List WordIR.Op := [.rotr 8007 2]
def bytes7980 : Bytes := ("    let r00001f57: u32 = r00001f47.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7980 : bytes7980=statementBytes 8023 (op7980.map lower) ∧ bytes7980.length=65 := by core033_kernel_decide
def op7981 : List WordIR.Op := [.rotr 8007 13]
def bytes7981 : Bytes := ("    let r00001f58: u32 = r00001f47.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7981 : bytes7981=statementBytes 8024 (op7981.map lower) ∧ bytes7981.length=65 := by core033_kernel_decide
def op7982 : List WordIR.Op := [.bxor 8023 8024]
def bytes7982 : Bytes := ("    let r00001f59: u32 = r00001f57 ^ r00001f58;\n" : String).toByteArray.data.toList
theorem checked7982 : bytes7982=statementBytes 8025 (op7982.map lower) ∧ bytes7982.length=48 := by core033_kernel_decide
def op7983 : List WordIR.Op := [.rotr 8007 22]
def bytes7983 : Bytes := ("    let r00001f5a: u32 = r00001f47.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7983 : bytes7983=statementBytes 8026 (op7983.map lower) ∧ bytes7983.length=65 := by core033_kernel_decide
def op7984 : List WordIR.Op := [.bxor 8025 8026]
def bytes7984 : Bytes := ("    let r00001f5b: u32 = r00001f59 ^ r00001f5a;\n" : String).toByteArray.data.toList
theorem checked7984 : bytes7984=statementBytes 8027 (op7984.map lower) ∧ bytes7984.length=48 := by core033_kernel_decide
def op7985 : List WordIR.Op := [.band 8007 7980]
def bytes7985 : Bytes := ("    let r00001f5c: u32 = r00001f47 & r00001f2c;\n" : String).toByteArray.data.toList
theorem checked7985 : bytes7985=statementBytes 8028 (op7985.map lower) ∧ bytes7985.length=48 := by core033_kernel_decide
def op7986 : List WordIR.Op := [.band 8007 7953]
def bytes7986 : Bytes := ("    let r00001f5d: u32 = r00001f47 & r00001f11;\n" : String).toByteArray.data.toList
theorem checked7986 : bytes7986=statementBytes 8029 (op7986.map lower) ∧ bytes7986.length=48 := by core033_kernel_decide
def op7987 : List WordIR.Op := [.bxor 8028 8029]
def bytes7987 : Bytes := ("    let r00001f5e: u32 = r00001f5c ^ r00001f5d;\n" : String).toByteArray.data.toList
theorem checked7987 : bytes7987=statementBytes 8030 (op7987.map lower) ∧ bytes7987.length=48 := by core033_kernel_decide
def op7988 : List WordIR.Op := [.band 7980 7953]
def bytes7988 : Bytes := ("    let r00001f5f: u32 = r00001f2c & r00001f11;\n" : String).toByteArray.data.toList
theorem checked7988 : bytes7988=statementBytes 8031 (op7988.map lower) ∧ bytes7988.length=48 := by core033_kernel_decide
def op7989 : List WordIR.Op := [.bxor 8030 8031]
def bytes7989 : Bytes := ("    let r00001f60: u32 = r00001f5e ^ r00001f5f;\n" : String).toByteArray.data.toList
theorem checked7989 : bytes7989=statementBytes 8032 (op7989.map lower) ∧ bytes7989.length=48 := by core033_kernel_decide
def op7990 : List WordIR.Op := [.badd 8027 8032]
def bytes7990 : Bytes := ("    let r00001f61: u32 = r00001f5b.wrapping_add(r00001f60);\n" : String).toByteArray.data.toList
theorem checked7990 : bytes7990=statementBytes 8033 (op7990.map lower) ∧ bytes7990.length=60 := by core033_kernel_decide
def op7991 : List WordIR.Op := [.badd 8022 8033]
def bytes7991 : Bytes := ("    let r00001f62: u32 = r00001f56.wrapping_add(r00001f61);\n" : String).toByteArray.data.toList
theorem checked7991 : bytes7991=statementBytes 8034 (op7991.map lower) ∧ bytes7991.length=60 := by core033_kernel_decide
def op7992 : List WordIR.Op := [.badd 7926 8022]
def bytes7992 : Bytes := ("    let r00001f63: u32 = r00001ef6.wrapping_add(r00001f56);\n" : String).toByteArray.data.toList
theorem checked7992 : bytes7992=statementBytes 8035 (op7992.map lower) ∧ bytes7992.length=60 := by core033_kernel_decide
def op7993 : List WordIR.Op := [.rotr 8035 6]
def bytes7993 : Bytes := ("    let r00001f64: u32 = r00001f63.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7993 : bytes7993=statementBytes 8036 (op7993.map lower) ∧ bytes7993.length=65 := by core033_kernel_decide
def op7994 : List WordIR.Op := [.rotr 8035 11]
def bytes7994 : Bytes := ("    let r00001f65: u32 = r00001f63.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7994 : bytes7994=statementBytes 8037 (op7994.map lower) ∧ bytes7994.length=65 := by core033_kernel_decide
def op7995 : List WordIR.Op := [.bxor 8036 8037]
def bytes7995 : Bytes := ("    let r00001f66: u32 = r00001f64 ^ r00001f65;\n" : String).toByteArray.data.toList
theorem checked7995 : bytes7995=statementBytes 8038 (op7995.map lower) ∧ bytes7995.length=48 := by core033_kernel_decide
def op7996 : List WordIR.Op := [.rotr 8035 25]
def bytes7996 : Bytes := ("    let r00001f67: u32 = r00001f63.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7996 : bytes7996=statementBytes 8039 (op7996.map lower) ∧ bytes7996.length=65 := by core033_kernel_decide
def op7997 : List WordIR.Op := [.bxor 8038 8039]
def bytes7997 : Bytes := ("    let r00001f68: u32 = r00001f66 ^ r00001f67;\n" : String).toByteArray.data.toList
theorem checked7997 : bytes7997=statementBytes 8040 (op7997.map lower) ∧ bytes7997.length=48 := by core033_kernel_decide
def op7998 : List WordIR.Op := [.badd 7954 8040]
def bytes7998 : Bytes := ("    let r00001f69: u32 = r00001f12.wrapping_add(r00001f68);\n" : String).toByteArray.data.toList
theorem checked7998 : bytes7998=statementBytes 8041 (op7998.map lower) ∧ bytes7998.length=60 := by core033_kernel_decide
def op7999 : List WordIR.Op := [.band 8035 8008]
def bytes7999 : Bytes := ("    let r00001f6a: u32 = r00001f63 & r00001f48;\n" : String).toByteArray.data.toList
theorem checked7999 : bytes7999=statementBytes 8042 (op7999.map lower) ∧ bytes7999.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7936,op7937,op7938,op7939,op7940,op7941,op7942,op7943,op7944,op7945,op7946,op7947,op7948,op7949,op7950,op7951,op7952,op7953,op7954,op7955,op7956,op7957,op7958,op7959,op7960,op7961,op7962,op7963,op7964,op7965,op7966,op7967,op7968,op7969,op7970,op7971,op7972,op7973,op7974,op7975,op7976,op7977,op7978,op7979,op7980,op7981,op7982,op7983,op7984,op7985,op7986,op7987,op7988,op7989,op7990,op7991,op7992,op7993,op7994,op7995,op7996,op7997,op7998,op7999]
def chunks : List Bytes := [bytes7936,bytes7937,bytes7938,bytes7939,bytes7940,bytes7941,bytes7942,bytes7943,bytes7944,bytes7945,bytes7946,bytes7947,bytes7948,bytes7949,bytes7950,bytes7951,bytes7952,bytes7953,bytes7954,bytes7955,bytes7956,bytes7957,bytes7958,bytes7959,bytes7960,bytes7961,bytes7962,bytes7963,bytes7964,bytes7965,bytes7966,bytes7967,bytes7968,bytes7969,bytes7970,bytes7971,bytes7972,bytes7973,bytes7974,bytes7975,bytes7976,bytes7977,bytes7978,bytes7979,bytes7980,bytes7981,bytes7982,bytes7983,bytes7984,bytes7985,bytes7986,bytes7987,bytes7988,bytes7989,bytes7990,bytes7991,bytes7992,bytes7993,bytes7994,bytes7995,bytes7996,bytes7997,bytes7998,bytes7999]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7979 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7936.1 (.cons _ _ _ _ _ checked7937.1 (.cons _ _ _ _ _ checked7938.1 (.cons _ _ _ _ _ checked7939.1 (.cons _ _ _ _ _ checked7940.1 (.cons _ _ _ _ _ checked7941.1 (.cons _ _ _ _ _ checked7942.1 (.cons _ _ _ _ _ checked7943.1 (.cons _ _ _ _ _ checked7944.1 (.cons _ _ _ _ _ checked7945.1 (.cons _ _ _ _ _ checked7946.1 (.cons _ _ _ _ _ checked7947.1 (.cons _ _ _ _ _ checked7948.1 (.cons _ _ _ _ _ checked7949.1 (.cons _ _ _ _ _ checked7950.1 (.cons _ _ _ _ _ checked7951.1 (.cons _ _ _ _ _ checked7952.1 (.cons _ _ _ _ _ checked7953.1 (.cons _ _ _ _ _ checked7954.1 (.cons _ _ _ _ _ checked7955.1 (.cons _ _ _ _ _ checked7956.1 (.cons _ _ _ _ _ checked7957.1 (.cons _ _ _ _ _ checked7958.1 (.cons _ _ _ _ _ checked7959.1 (.cons _ _ _ _ _ checked7960.1 (.cons _ _ _ _ _ checked7961.1 (.cons _ _ _ _ _ checked7962.1 (.cons _ _ _ _ _ checked7963.1 (.cons _ _ _ _ _ checked7964.1 (.cons _ _ _ _ _ checked7965.1 (.cons _ _ _ _ _ checked7966.1 (.cons _ _ _ _ _ checked7967.1 (.cons _ _ _ _ _ checked7968.1 (.cons _ _ _ _ _ checked7969.1 (.cons _ _ _ _ _ checked7970.1 (.cons _ _ _ _ _ checked7971.1 (.cons _ _ _ _ _ checked7972.1 (.cons _ _ _ _ _ checked7973.1 (.cons _ _ _ _ _ checked7974.1 (.cons _ _ _ _ _ checked7975.1 (.cons _ _ _ _ _ checked7976.1 (.cons _ _ _ _ _ checked7977.1 (.cons _ _ _ _ _ checked7978.1 (.cons _ _ _ _ _ checked7979.1 (.cons _ _ _ _ _ checked7980.1 (.cons _ _ _ _ _ checked7981.1 (.cons _ _ _ _ _ checked7982.1 (.cons _ _ _ _ _ checked7983.1 (.cons _ _ _ _ _ checked7984.1 (.cons _ _ _ _ _ checked7985.1 (.cons _ _ _ _ _ checked7986.1 (.cons _ _ _ _ _ checked7987.1 (.cons _ _ _ _ _ checked7988.1 (.cons _ _ _ _ _ checked7989.1 (.cons _ _ _ _ _ checked7990.1 (.cons _ _ _ _ _ checked7991.1 (.cons _ _ _ _ _ checked7992.1 (.cons _ _ _ _ _ checked7993.1 (.cons _ _ _ _ _ checked7994.1 (.cons _ _ _ _ _ checked7995.1 (.cons _ _ _ _ _ checked7996.1 (.cons _ _ _ _ _ checked7997.1 (.cons _ _ _ _ _ checked7998.1 (.cons _ _ _ _ _ checked7999.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7979 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3507 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7936.2,checked7937.2,checked7938.2,checked7939.2,checked7940.2,checked7941.2,checked7942.2,checked7943.2,checked7944.2,checked7945.2,checked7946.2,checked7947.2,checked7948.2,checked7949.2,checked7950.2,checked7951.2,checked7952.2,checked7953.2,checked7954.2,checked7955.2,checked7956.2,checked7957.2,checked7958.2,checked7959.2,checked7960.2,checked7961.2,checked7962.2,checked7963.2,checked7964.2,checked7965.2,checked7966.2,checked7967.2,checked7968.2,checked7969.2,checked7970.2,checked7971.2,checked7972.2,checked7973.2,checked7974.2,checked7975.2,checked7976.2,checked7977.2,checked7978.2,checked7979.2,checked7980.2,checked7981.2,checked7982.2,checked7983.2,checked7984.2,checked7985.2,checked7986.2,checked7987.2,checked7988.2,checked7989.2,checked7990.2,checked7991.2,checked7992.2,checked7993.2,checked7994.2,checked7995.2,checked7996.2,checked7997.2,checked7998.2,checked7999.2]
  decide
end ArtifactFrameHashControllerGroup124
