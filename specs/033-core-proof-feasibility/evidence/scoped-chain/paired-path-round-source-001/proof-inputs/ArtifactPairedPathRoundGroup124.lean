import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup124
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7936 : List WordIR.Op := [.badd 8026 8031]
def bytes7936 : Bytes := ("    let r00001f60: u32 = r00001f5a.wrapping_add(r00001f5f);\n" : String).toByteArray.data.toList
theorem checked7936 : bytes7936=statementBytes 8032 (op7936.map lower) ∧ bytes7936.length=60 := by core033_kernel_decide
def op7937 : List WordIR.Op := [.badd 8032 7825]
def bytes7937 : Bytes := ("    let r00001f61: u32 = r00001f60.wrapping_add(r00001e91);\n" : String).toByteArray.data.toList
theorem checked7937 : bytes7937=statementBytes 8033 (op7937.map lower) ∧ bytes7937.length=60 := by core033_kernel_decide
def op7938 : List WordIR.Op := [.rotr 8020 17]
def bytes7938 : Bytes := ("    let r00001f62: u32 = r00001f54.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7938 : bytes7938=statementBytes 8034 (op7938.map lower) ∧ bytes7938.length=65 := by core033_kernel_decide
def op7939 : List WordIR.Op := [.rotr 8020 19]
def bytes7939 : Bytes := ("    let r00001f63: u32 = r00001f54.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7939 : bytes7939=statementBytes 8035 (op7939.map lower) ∧ bytes7939.length=65 := by core033_kernel_decide
def op7940 : List WordIR.Op := [.bxor 8034 8035]
def bytes7940 : Bytes := ("    let r00001f64: u32 = r00001f62 ^ r00001f63;\n" : String).toByteArray.data.toList
theorem checked7940 : bytes7940=statementBytes 8036 (op7940.map lower) ∧ bytes7940.length=48 := by core033_kernel_decide
def op7941 : List WordIR.Op := [.shr 8020 10]
def bytes7941 : Bytes := ("    let r00001f65: u32 = r00001f54 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7941 : bytes7941=statementBytes 8037 (op7941.map lower) ∧ bytes7941.length=54 := by core033_kernel_decide
def op7942 : List WordIR.Op := [.bxor 8036 8037]
def bytes7942 : Bytes := ("    let r00001f66: u32 = r00001f64 ^ r00001f65;\n" : String).toByteArray.data.toList
theorem checked7942 : bytes7942=statementBytes 8038 (op7942.map lower) ∧ bytes7942.length=48 := by core033_kernel_decide
def op7943 : List WordIR.Op := [.badd 8038 7955]
def bytes7943 : Bytes := ("    let r00001f67: u32 = r00001f66.wrapping_add(r00001f13);\n" : String).toByteArray.data.toList
theorem checked7943 : bytes7943=statementBytes 8039 (op7943.map lower) ∧ bytes7943.length=60 := by core033_kernel_decide
def op7944 : List WordIR.Op := [.rotr 7851 7]
def bytes7944 : Bytes := ("    let r00001f68: u32 = r00001eab.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7944 : bytes7944=statementBytes 8040 (op7944.map lower) ∧ bytes7944.length=65 := by core033_kernel_decide
def op7945 : List WordIR.Op := [.rotr 7851 18]
def bytes7945 : Bytes := ("    let r00001f69: u32 = r00001eab.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7945 : bytes7945=statementBytes 8041 (op7945.map lower) ∧ bytes7945.length=65 := by core033_kernel_decide
def op7946 : List WordIR.Op := [.bxor 8040 8041]
def bytes7946 : Bytes := ("    let r00001f6a: u32 = r00001f68 ^ r00001f69;\n" : String).toByteArray.data.toList
theorem checked7946 : bytes7946=statementBytes 8042 (op7946.map lower) ∧ bytes7946.length=48 := by core033_kernel_decide
def op7947 : List WordIR.Op := [.shr 7851 3]
def bytes7947 : Bytes := ("    let r00001f6b: u32 = r00001eab >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7947 : bytes7947=statementBytes 8043 (op7947.map lower) ∧ bytes7947.length=54 := by core033_kernel_decide
def op7948 : List WordIR.Op := [.bxor 8042 8043]
def bytes7948 : Bytes := ("    let r00001f6c: u32 = r00001f6a ^ r00001f6b;\n" : String).toByteArray.data.toList
theorem checked7948 : bytes7948=statementBytes 8044 (op7948.map lower) ∧ bytes7948.length=48 := by core033_kernel_decide
def op7949 : List WordIR.Op := [.badd 8039 8044]
def bytes7949 : Bytes := ("    let r00001f6d: u32 = r00001f67.wrapping_add(r00001f6c);\n" : String).toByteArray.data.toList
theorem checked7949 : bytes7949=statementBytes 8045 (op7949.map lower) ∧ bytes7949.length=60 := by core033_kernel_decide
def op7950 : List WordIR.Op := [.badd 8045 7838]
def bytes7950 : Bytes := ("    let r00001f6e: u32 = r00001f6d.wrapping_add(r00001e9e);\n" : String).toByteArray.data.toList
theorem checked7950 : bytes7950=statementBytes 8046 (op7950.map lower) ∧ bytes7950.length=60 := by core033_kernel_decide
def op7951 : List WordIR.Op := [.rotr 8033 17]
def bytes7951 : Bytes := ("    let r00001f6f: u32 = r00001f61.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7951 : bytes7951=statementBytes 8047 (op7951.map lower) ∧ bytes7951.length=65 := by core033_kernel_decide
def op7952 : List WordIR.Op := [.rotr 8033 19]
def bytes7952 : Bytes := ("    let r00001f70: u32 = r00001f61.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7952 : bytes7952=statementBytes 8048 (op7952.map lower) ∧ bytes7952.length=65 := by core033_kernel_decide
def op7953 : List WordIR.Op := [.bxor 8047 8048]
def bytes7953 : Bytes := ("    let r00001f71: u32 = r00001f6f ^ r00001f70;\n" : String).toByteArray.data.toList
theorem checked7953 : bytes7953=statementBytes 8049 (op7953.map lower) ∧ bytes7953.length=48 := by core033_kernel_decide
def op7954 : List WordIR.Op := [.shr 8033 10]
def bytes7954 : Bytes := ("    let r00001f72: u32 = r00001f61 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7954 : bytes7954=statementBytes 8050 (op7954.map lower) ∧ bytes7954.length=54 := by core033_kernel_decide
def op7955 : List WordIR.Op := [.bxor 8049 8050]
def bytes7955 : Bytes := ("    let r00001f73: u32 = r00001f71 ^ r00001f72;\n" : String).toByteArray.data.toList
theorem checked7955 : bytes7955=statementBytes 8051 (op7955.map lower) ∧ bytes7955.length=48 := by core033_kernel_decide
def op7956 : List WordIR.Op := [.badd 8051 7968]
def bytes7956 : Bytes := ("    let r00001f74: u32 = r00001f73.wrapping_add(r00001f20);\n" : String).toByteArray.data.toList
theorem checked7956 : bytes7956=statementBytes 8052 (op7956.map lower) ∧ bytes7956.length=60 := by core033_kernel_decide
def op7957 : List WordIR.Op := [.rotr 7864 7]
def bytes7957 : Bytes := ("    let r00001f75: u32 = r00001eb8.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7957 : bytes7957=statementBytes 8053 (op7957.map lower) ∧ bytes7957.length=65 := by core033_kernel_decide
def op7958 : List WordIR.Op := [.rotr 7864 18]
def bytes7958 : Bytes := ("    let r00001f76: u32 = r00001eb8.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7958 : bytes7958=statementBytes 8054 (op7958.map lower) ∧ bytes7958.length=65 := by core033_kernel_decide
def op7959 : List WordIR.Op := [.bxor 8053 8054]
def bytes7959 : Bytes := ("    let r00001f77: u32 = r00001f75 ^ r00001f76;\n" : String).toByteArray.data.toList
theorem checked7959 : bytes7959=statementBytes 8055 (op7959.map lower) ∧ bytes7959.length=48 := by core033_kernel_decide
def op7960 : List WordIR.Op := [.shr 7864 3]
def bytes7960 : Bytes := ("    let r00001f78: u32 = r00001eb8 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7960 : bytes7960=statementBytes 8056 (op7960.map lower) ∧ bytes7960.length=54 := by core033_kernel_decide
def op7961 : List WordIR.Op := [.bxor 8055 8056]
def bytes7961 : Bytes := ("    let r00001f79: u32 = r00001f77 ^ r00001f78;\n" : String).toByteArray.data.toList
theorem checked7961 : bytes7961=statementBytes 8057 (op7961.map lower) ∧ bytes7961.length=48 := by core033_kernel_decide
def op7962 : List WordIR.Op := [.badd 8052 8057]
def bytes7962 : Bytes := ("    let r00001f7a: u32 = r00001f74.wrapping_add(r00001f79);\n" : String).toByteArray.data.toList
theorem checked7962 : bytes7962=statementBytes 8058 (op7962.map lower) ∧ bytes7962.length=60 := by core033_kernel_decide
def op7963 : List WordIR.Op := [.badd 8058 7851]
def bytes7963 : Bytes := ("    let r00001f7b: u32 = r00001f7a.wrapping_add(r00001eab);\n" : String).toByteArray.data.toList
theorem checked7963 : bytes7963=statementBytes 8059 (op7963.map lower) ∧ bytes7963.length=60 := by core033_kernel_decide
def op7964 : List WordIR.Op := [.rotr 8046 17]
def bytes7964 : Bytes := ("    let r00001f7c: u32 = r00001f6e.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7964 : bytes7964=statementBytes 8060 (op7964.map lower) ∧ bytes7964.length=65 := by core033_kernel_decide
def op7965 : List WordIR.Op := [.rotr 8046 19]
def bytes7965 : Bytes := ("    let r00001f7d: u32 = r00001f6e.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7965 : bytes7965=statementBytes 8061 (op7965.map lower) ∧ bytes7965.length=65 := by core033_kernel_decide
def op7966 : List WordIR.Op := [.bxor 8060 8061]
def bytes7966 : Bytes := ("    let r00001f7e: u32 = r00001f7c ^ r00001f7d;\n" : String).toByteArray.data.toList
theorem checked7966 : bytes7966=statementBytes 8062 (op7966.map lower) ∧ bytes7966.length=48 := by core033_kernel_decide
def op7967 : List WordIR.Op := [.shr 8046 10]
def bytes7967 : Bytes := ("    let r00001f7f: u32 = r00001f6e >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7967 : bytes7967=statementBytes 8063 (op7967.map lower) ∧ bytes7967.length=54 := by core033_kernel_decide
def op7968 : List WordIR.Op := [.bxor 8062 8063]
def bytes7968 : Bytes := ("    let r00001f80: u32 = r00001f7e ^ r00001f7f;\n" : String).toByteArray.data.toList
theorem checked7968 : bytes7968=statementBytes 8064 (op7968.map lower) ∧ bytes7968.length=48 := by core033_kernel_decide
def op7969 : List WordIR.Op := [.badd 8064 7981]
def bytes7969 : Bytes := ("    let r00001f81: u32 = r00001f80.wrapping_add(r00001f2d);\n" : String).toByteArray.data.toList
theorem checked7969 : bytes7969=statementBytes 8065 (op7969.map lower) ∧ bytes7969.length=60 := by core033_kernel_decide
def op7970 : List WordIR.Op := [.rotr 7877 7]
def bytes7970 : Bytes := ("    let r00001f82: u32 = r00001ec5.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7970 : bytes7970=statementBytes 8066 (op7970.map lower) ∧ bytes7970.length=65 := by core033_kernel_decide
def op7971 : List WordIR.Op := [.rotr 7877 18]
def bytes7971 : Bytes := ("    let r00001f83: u32 = r00001ec5.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7971 : bytes7971=statementBytes 8067 (op7971.map lower) ∧ bytes7971.length=65 := by core033_kernel_decide
def op7972 : List WordIR.Op := [.bxor 8066 8067]
def bytes7972 : Bytes := ("    let r00001f84: u32 = r00001f82 ^ r00001f83;\n" : String).toByteArray.data.toList
theorem checked7972 : bytes7972=statementBytes 8068 (op7972.map lower) ∧ bytes7972.length=48 := by core033_kernel_decide
def op7973 : List WordIR.Op := [.shr 7877 3]
def bytes7973 : Bytes := ("    let r00001f85: u32 = r00001ec5 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7973 : bytes7973=statementBytes 8069 (op7973.map lower) ∧ bytes7973.length=54 := by core033_kernel_decide
def op7974 : List WordIR.Op := [.bxor 8068 8069]
def bytes7974 : Bytes := ("    let r00001f86: u32 = r00001f84 ^ r00001f85;\n" : String).toByteArray.data.toList
theorem checked7974 : bytes7974=statementBytes 8070 (op7974.map lower) ∧ bytes7974.length=48 := by core033_kernel_decide
def op7975 : List WordIR.Op := [.badd 8065 8070]
def bytes7975 : Bytes := ("    let r00001f87: u32 = r00001f81.wrapping_add(r00001f86);\n" : String).toByteArray.data.toList
theorem checked7975 : bytes7975=statementBytes 8071 (op7975.map lower) ∧ bytes7975.length=60 := by core033_kernel_decide
def op7976 : List WordIR.Op := [.badd 8071 7864]
def bytes7976 : Bytes := ("    let r00001f88: u32 = r00001f87.wrapping_add(r00001eb8);\n" : String).toByteArray.data.toList
theorem checked7976 : bytes7976=statementBytes 8072 (op7976.map lower) ∧ bytes7976.length=60 := by core033_kernel_decide
def op7977 : List WordIR.Op := [.rotr 2700 6]
def bytes7977 : Bytes := ("    let r00001f89: u32 = r00000a8c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7977 : bytes7977=statementBytes 8073 (op7977.map lower) ∧ bytes7977.length=65 := by core033_kernel_decide
def op7978 : List WordIR.Op := [.rotr 2700 11]
def bytes7978 : Bytes := ("    let r00001f8a: u32 = r00000a8c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7978 : bytes7978=statementBytes 8074 (op7978.map lower) ∧ bytes7978.length=65 := by core033_kernel_decide
def op7979 : List WordIR.Op := [.bxor 8073 8074]
def bytes7979 : Bytes := ("    let r00001f8b: u32 = r00001f89 ^ r00001f8a;\n" : String).toByteArray.data.toList
theorem checked7979 : bytes7979=statementBytes 8075 (op7979.map lower) ∧ bytes7979.length=48 := by core033_kernel_decide
def op7980 : List WordIR.Op := [.rotr 2700 25]
def bytes7980 : Bytes := ("    let r00001f8c: u32 = r00000a8c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7980 : bytes7980=statementBytes 8076 (op7980.map lower) ∧ bytes7980.length=65 := by core033_kernel_decide
def op7981 : List WordIR.Op := [.bxor 8075 8076]
def bytes7981 : Bytes := ("    let r00001f8d: u32 = r00001f8b ^ r00001f8c;\n" : String).toByteArray.data.toList
theorem checked7981 : bytes7981=statementBytes 8077 (op7981.map lower) ∧ bytes7981.length=48 := by core033_kernel_decide
def op7982 : List WordIR.Op := [.badd 2859 8077]
def bytes7982 : Bytes := ("    let r00001f8e: u32 = r00000b2b.wrapping_add(r00001f8d);\n" : String).toByteArray.data.toList
theorem checked7982 : bytes7982=statementBytes 8078 (op7982.map lower) ∧ bytes7982.length=60 := by core033_kernel_decide
def op7983 : List WordIR.Op := [.band 2700 2753]
def bytes7983 : Bytes := ("    let r00001f8f: u32 = r00000a8c & r00000ac1;\n" : String).toByteArray.data.toList
theorem checked7983 : bytes7983=statementBytes 8079 (op7983.map lower) ∧ bytes7983.length=48 := by core033_kernel_decide
def op7984 : List WordIR.Op := [.bnot 2700]
def bytes7984 : Bytes := ("    let r00001f90: u32 = !r00000a8c;\n" : String).toByteArray.data.toList
theorem checked7984 : bytes7984=statementBytes 8080 (op7984.map lower) ∧ bytes7984.length=37 := by core033_kernel_decide
def op7985 : List WordIR.Op := [.band 8080 2806]
def bytes7985 : Bytes := ("    let r00001f91: u32 = r00001f90 & r00000af6;\n" : String).toByteArray.data.toList
theorem checked7985 : bytes7985=statementBytes 8081 (op7985.map lower) ∧ bytes7985.length=48 := by core033_kernel_decide
def op7986 : List WordIR.Op := [.bxor 8079 8081]
def bytes7986 : Bytes := ("    let r00001f92: u32 = r00001f8f ^ r00001f91;\n" : String).toByteArray.data.toList
theorem checked7986 : bytes7986=statementBytes 8082 (op7986.map lower) ∧ bytes7986.length=48 := by core033_kernel_decide
def op7987 : List WordIR.Op := [.badd 8078 8082]
def bytes7987 : Bytes := ("    let r00001f93: u32 = r00001f8e.wrapping_add(r00001f92);\n" : String).toByteArray.data.toList
theorem checked7987 : bytes7987=statementBytes 8083 (op7987.map lower) ∧ bytes7987.length=60 := by core033_kernel_decide
def op7988 : List WordIR.Op := [.literal (BitVec.ofNat 32 1116352408)]
def bytes7988 : Bytes := ("    let r00001f94: u32 = 0x428a2f98_u32;\n" : String).toByteArray.data.toList
theorem checked7988 : bytes7988=statementBytes 8084 (op7988.map lower) ∧ bytes7988.length=41 := by core033_kernel_decide
def op7989 : List WordIR.Op := [.badd 8083 8084]
def bytes7989 : Bytes := ("    let r00001f95: u32 = r00001f93.wrapping_add(r00001f94);\n" : String).toByteArray.data.toList
theorem checked7989 : bytes7989=statementBytes 8085 (op7989.map lower) ∧ bytes7989.length=60 := by core033_kernel_decide
def op7990 : List WordIR.Op := [.badd 8085 6206]
def bytes7990 : Bytes := ("    let r00001f96: u32 = r00001f95.wrapping_add(r0000183e);\n" : String).toByteArray.data.toList
theorem checked7990 : bytes7990=statementBytes 8086 (op7990.map lower) ∧ bytes7990.length=60 := by core033_kernel_decide
def op7991 : List WordIR.Op := [.rotr 2488 2]
def bytes7991 : Bytes := ("    let r00001f97: u32 = r000009b8.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7991 : bytes7991=statementBytes 8087 (op7991.map lower) ∧ bytes7991.length=65 := by core033_kernel_decide
def op7992 : List WordIR.Op := [.rotr 2488 13]
def bytes7992 : Bytes := ("    let r00001f98: u32 = r000009b8.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7992 : bytes7992=statementBytes 8088 (op7992.map lower) ∧ bytes7992.length=65 := by core033_kernel_decide
def op7993 : List WordIR.Op := [.bxor 8087 8088]
def bytes7993 : Bytes := ("    let r00001f99: u32 = r00001f97 ^ r00001f98;\n" : String).toByteArray.data.toList
theorem checked7993 : bytes7993=statementBytes 8089 (op7993.map lower) ∧ bytes7993.length=48 := by core033_kernel_decide
def op7994 : List WordIR.Op := [.rotr 2488 22]
def bytes7994 : Bytes := ("    let r00001f9a: u32 = r000009b8.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7994 : bytes7994=statementBytes 8090 (op7994.map lower) ∧ bytes7994.length=65 := by core033_kernel_decide
def op7995 : List WordIR.Op := [.bxor 8089 8090]
def bytes7995 : Bytes := ("    let r00001f9b: u32 = r00001f99 ^ r00001f9a;\n" : String).toByteArray.data.toList
theorem checked7995 : bytes7995=statementBytes 8091 (op7995.map lower) ∧ bytes7995.length=48 := by core033_kernel_decide
def op7996 : List WordIR.Op := [.band 2488 2541]
def bytes7996 : Bytes := ("    let r00001f9c: u32 = r000009b8 & r000009ed;\n" : String).toByteArray.data.toList
theorem checked7996 : bytes7996=statementBytes 8092 (op7996.map lower) ∧ bytes7996.length=48 := by core033_kernel_decide
def op7997 : List WordIR.Op := [.band 2488 2594]
def bytes7997 : Bytes := ("    let r00001f9d: u32 = r000009b8 & r00000a22;\n" : String).toByteArray.data.toList
theorem checked7997 : bytes7997=statementBytes 8093 (op7997.map lower) ∧ bytes7997.length=48 := by core033_kernel_decide
def op7998 : List WordIR.Op := [.bxor 8092 8093]
def bytes7998 : Bytes := ("    let r00001f9e: u32 = r00001f9c ^ r00001f9d;\n" : String).toByteArray.data.toList
theorem checked7998 : bytes7998=statementBytes 8094 (op7998.map lower) ∧ bytes7998.length=48 := by core033_kernel_decide
def op7999 : List WordIR.Op := [.band 2541 2594]
def bytes7999 : Bytes := ("    let r00001f9f: u32 = r000009ed & r00000a22;\n" : String).toByteArray.data.toList
theorem checked7999 : bytes7999=statementBytes 8095 (op7999.map lower) ∧ bytes7999.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7936,op7937,op7938,op7939,op7940,op7941,op7942,op7943,op7944,op7945,op7946,op7947,op7948,op7949,op7950,op7951,op7952,op7953,op7954,op7955,op7956,op7957,op7958,op7959,op7960,op7961,op7962,op7963,op7964,op7965,op7966,op7967,op7968,op7969,op7970,op7971,op7972,op7973,op7974,op7975,op7976,op7977,op7978,op7979,op7980,op7981,op7982,op7983,op7984,op7985,op7986,op7987,op7988,op7989,op7990,op7991,op7992,op7993,op7994,op7995,op7996,op7997,op7998,op7999]
def chunks : List Bytes := [bytes7936,bytes7937,bytes7938,bytes7939,bytes7940,bytes7941,bytes7942,bytes7943,bytes7944,bytes7945,bytes7946,bytes7947,bytes7948,bytes7949,bytes7950,bytes7951,bytes7952,bytes7953,bytes7954,bytes7955,bytes7956,bytes7957,bytes7958,bytes7959,bytes7960,bytes7961,bytes7962,bytes7963,bytes7964,bytes7965,bytes7966,bytes7967,bytes7968,bytes7969,bytes7970,bytes7971,bytes7972,bytes7973,bytes7974,bytes7975,bytes7976,bytes7977,bytes7978,bytes7979,bytes7980,bytes7981,bytes7982,bytes7983,bytes7984,bytes7985,bytes7986,bytes7987,bytes7988,bytes7989,bytes7990,bytes7991,bytes7992,bytes7993,bytes7994,bytes7995,bytes7996,bytes7997,bytes7998,bytes7999]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8032 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7936.1 (.cons _ _ _ _ _ checked7937.1 (.cons _ _ _ _ _ checked7938.1 (.cons _ _ _ _ _ checked7939.1 (.cons _ _ _ _ _ checked7940.1 (.cons _ _ _ _ _ checked7941.1 (.cons _ _ _ _ _ checked7942.1 (.cons _ _ _ _ _ checked7943.1 (.cons _ _ _ _ _ checked7944.1 (.cons _ _ _ _ _ checked7945.1 (.cons _ _ _ _ _ checked7946.1 (.cons _ _ _ _ _ checked7947.1 (.cons _ _ _ _ _ checked7948.1 (.cons _ _ _ _ _ checked7949.1 (.cons _ _ _ _ _ checked7950.1 (.cons _ _ _ _ _ checked7951.1 (.cons _ _ _ _ _ checked7952.1 (.cons _ _ _ _ _ checked7953.1 (.cons _ _ _ _ _ checked7954.1 (.cons _ _ _ _ _ checked7955.1 (.cons _ _ _ _ _ checked7956.1 (.cons _ _ _ _ _ checked7957.1 (.cons _ _ _ _ _ checked7958.1 (.cons _ _ _ _ _ checked7959.1 (.cons _ _ _ _ _ checked7960.1 (.cons _ _ _ _ _ checked7961.1 (.cons _ _ _ _ _ checked7962.1 (.cons _ _ _ _ _ checked7963.1 (.cons _ _ _ _ _ checked7964.1 (.cons _ _ _ _ _ checked7965.1 (.cons _ _ _ _ _ checked7966.1 (.cons _ _ _ _ _ checked7967.1 (.cons _ _ _ _ _ checked7968.1 (.cons _ _ _ _ _ checked7969.1 (.cons _ _ _ _ _ checked7970.1 (.cons _ _ _ _ _ checked7971.1 (.cons _ _ _ _ _ checked7972.1 (.cons _ _ _ _ _ checked7973.1 (.cons _ _ _ _ _ checked7974.1 (.cons _ _ _ _ _ checked7975.1 (.cons _ _ _ _ _ checked7976.1 (.cons _ _ _ _ _ checked7977.1 (.cons _ _ _ _ _ checked7978.1 (.cons _ _ _ _ _ checked7979.1 (.cons _ _ _ _ _ checked7980.1 (.cons _ _ _ _ _ checked7981.1 (.cons _ _ _ _ _ checked7982.1 (.cons _ _ _ _ _ checked7983.1 (.cons _ _ _ _ _ checked7984.1 (.cons _ _ _ _ _ checked7985.1 (.cons _ _ _ _ _ checked7986.1 (.cons _ _ _ _ _ checked7987.1 (.cons _ _ _ _ _ checked7988.1 (.cons _ _ _ _ _ checked7989.1 (.cons _ _ _ _ _ checked7990.1 (.cons _ _ _ _ _ checked7991.1 (.cons _ _ _ _ _ checked7992.1 (.cons _ _ _ _ _ checked7993.1 (.cons _ _ _ _ _ checked7994.1 (.cons _ _ _ _ _ checked7995.1 (.cons _ _ _ _ _ checked7996.1 (.cons _ _ _ _ _ checked7997.1 (.cons _ _ _ _ _ checked7998.1 (.cons _ _ _ _ _ checked7999.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8032 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3576 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7936.2,checked7937.2,checked7938.2,checked7939.2,checked7940.2,checked7941.2,checked7942.2,checked7943.2,checked7944.2,checked7945.2,checked7946.2,checked7947.2,checked7948.2,checked7949.2,checked7950.2,checked7951.2,checked7952.2,checked7953.2,checked7954.2,checked7955.2,checked7956.2,checked7957.2,checked7958.2,checked7959.2,checked7960.2,checked7961.2,checked7962.2,checked7963.2,checked7964.2,checked7965.2,checked7966.2,checked7967.2,checked7968.2,checked7969.2,checked7970.2,checked7971.2,checked7972.2,checked7973.2,checked7974.2,checked7975.2,checked7976.2,checked7977.2,checked7978.2,checked7979.2,checked7980.2,checked7981.2,checked7982.2,checked7983.2,checked7984.2,checked7985.2,checked7986.2,checked7987.2,checked7988.2,checked7989.2,checked7990.2,checked7991.2,checked7992.2,checked7993.2,checked7994.2,checked7995.2,checked7996.2,checked7997.2,checked7998.2,checked7999.2]
  decide
end ArtifactPairedPathRoundGroup124
