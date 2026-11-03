import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup108
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6912 : List WordIR.Op := [.shr 6763 3]
def bytes6912 : Bytes := ("    let r00001b2b: u32 = r00001a6b >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6912 : bytes6912=statementBytes 6955 (op6912.map lower) ∧ bytes6912.length=54 := by core033_kernel_decide
def op6913 : List WordIR.Op := [.bxor 6954 6955]
def bytes6913 : Bytes := ("    let r00001b2c: u32 = r00001b2a ^ r00001b2b;\n" : String).toByteArray.data.toList
theorem checked6913 : bytes6913=statementBytes 6956 (op6913.map lower) ∧ bytes6913.length=48 := by core033_kernel_decide
def op6914 : List WordIR.Op := [.badd 6951 6956]
def bytes6914 : Bytes := ("    let r00001b2d: u32 = r00001b27.wrapping_add(r00001b2c);\n" : String).toByteArray.data.toList
theorem checked6914 : bytes6914=statementBytes 6957 (op6914.map lower) ∧ bytes6914.length=60 := by core033_kernel_decide
def op6915 : List WordIR.Op := [.badd 6957 6750]
def bytes6915 : Bytes := ("    let r00001b2e: u32 = r00001b2d.wrapping_add(r00001a5e);\n" : String).toByteArray.data.toList
theorem checked6915 : bytes6915=statementBytes 6958 (op6915.map lower) ∧ bytes6915.length=60 := by core033_kernel_decide
def op6916 : List WordIR.Op := [.rotr 6945 17]
def bytes6916 : Bytes := ("    let r00001b2f: u32 = r00001b21.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6916 : bytes6916=statementBytes 6959 (op6916.map lower) ∧ bytes6916.length=65 := by core033_kernel_decide
def op6917 : List WordIR.Op := [.rotr 6945 19]
def bytes6917 : Bytes := ("    let r00001b30: u32 = r00001b21.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6917 : bytes6917=statementBytes 6960 (op6917.map lower) ∧ bytes6917.length=65 := by core033_kernel_decide
def op6918 : List WordIR.Op := [.bxor 6959 6960]
def bytes6918 : Bytes := ("    let r00001b31: u32 = r00001b2f ^ r00001b30;\n" : String).toByteArray.data.toList
theorem checked6918 : bytes6918=statementBytes 6961 (op6918.map lower) ∧ bytes6918.length=48 := by core033_kernel_decide
def op6919 : List WordIR.Op := [.shr 6945 10]
def bytes6919 : Bytes := ("    let r00001b32: u32 = r00001b21 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6919 : bytes6919=statementBytes 6962 (op6919.map lower) ∧ bytes6919.length=54 := by core033_kernel_decide
def op6920 : List WordIR.Op := [.bxor 6961 6962]
def bytes6920 : Bytes := ("    let r00001b33: u32 = r00001b31 ^ r00001b32;\n" : String).toByteArray.data.toList
theorem checked6920 : bytes6920=statementBytes 6963 (op6920.map lower) ∧ bytes6920.length=48 := by core033_kernel_decide
def op6921 : List WordIR.Op := [.badd 6963 6880]
def bytes6921 : Bytes := ("    let r00001b34: u32 = r00001b33.wrapping_add(r00001ae0);\n" : String).toByteArray.data.toList
theorem checked6921 : bytes6921=statementBytes 6964 (op6921.map lower) ∧ bytes6921.length=60 := by core033_kernel_decide
def op6922 : List WordIR.Op := [.rotr 6776 7]
def bytes6922 : Bytes := ("    let r00001b35: u32 = r00001a78.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6922 : bytes6922=statementBytes 6965 (op6922.map lower) ∧ bytes6922.length=65 := by core033_kernel_decide
def op6923 : List WordIR.Op := [.rotr 6776 18]
def bytes6923 : Bytes := ("    let r00001b36: u32 = r00001a78.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6923 : bytes6923=statementBytes 6966 (op6923.map lower) ∧ bytes6923.length=65 := by core033_kernel_decide
def op6924 : List WordIR.Op := [.bxor 6965 6966]
def bytes6924 : Bytes := ("    let r00001b37: u32 = r00001b35 ^ r00001b36;\n" : String).toByteArray.data.toList
theorem checked6924 : bytes6924=statementBytes 6967 (op6924.map lower) ∧ bytes6924.length=48 := by core033_kernel_decide
def op6925 : List WordIR.Op := [.shr 6776 3]
def bytes6925 : Bytes := ("    let r00001b38: u32 = r00001a78 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6925 : bytes6925=statementBytes 6968 (op6925.map lower) ∧ bytes6925.length=54 := by core033_kernel_decide
def op6926 : List WordIR.Op := [.bxor 6967 6968]
def bytes6926 : Bytes := ("    let r00001b39: u32 = r00001b37 ^ r00001b38;\n" : String).toByteArray.data.toList
theorem checked6926 : bytes6926=statementBytes 6969 (op6926.map lower) ∧ bytes6926.length=48 := by core033_kernel_decide
def op6927 : List WordIR.Op := [.badd 6964 6969]
def bytes6927 : Bytes := ("    let r00001b3a: u32 = r00001b34.wrapping_add(r00001b39);\n" : String).toByteArray.data.toList
theorem checked6927 : bytes6927=statementBytes 6970 (op6927.map lower) ∧ bytes6927.length=60 := by core033_kernel_decide
def op6928 : List WordIR.Op := [.badd 6970 6763]
def bytes6928 : Bytes := ("    let r00001b3b: u32 = r00001b3a.wrapping_add(r00001a6b);\n" : String).toByteArray.data.toList
theorem checked6928 : bytes6928=statementBytes 6971 (op6928.map lower) ∧ bytes6928.length=60 := by core033_kernel_decide
def op6929 : List WordIR.Op := [.rotr 6958 17]
def bytes6929 : Bytes := ("    let r00001b3c: u32 = r00001b2e.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6929 : bytes6929=statementBytes 6972 (op6929.map lower) ∧ bytes6929.length=65 := by core033_kernel_decide
def op6930 : List WordIR.Op := [.rotr 6958 19]
def bytes6930 : Bytes := ("    let r00001b3d: u32 = r00001b2e.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6930 : bytes6930=statementBytes 6973 (op6930.map lower) ∧ bytes6930.length=65 := by core033_kernel_decide
def op6931 : List WordIR.Op := [.bxor 6972 6973]
def bytes6931 : Bytes := ("    let r00001b3e: u32 = r00001b3c ^ r00001b3d;\n" : String).toByteArray.data.toList
theorem checked6931 : bytes6931=statementBytes 6974 (op6931.map lower) ∧ bytes6931.length=48 := by core033_kernel_decide
def op6932 : List WordIR.Op := [.shr 6958 10]
def bytes6932 : Bytes := ("    let r00001b3f: u32 = r00001b2e >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6932 : bytes6932=statementBytes 6975 (op6932.map lower) ∧ bytes6932.length=54 := by core033_kernel_decide
def op6933 : List WordIR.Op := [.bxor 6974 6975]
def bytes6933 : Bytes := ("    let r00001b40: u32 = r00001b3e ^ r00001b3f;\n" : String).toByteArray.data.toList
theorem checked6933 : bytes6933=statementBytes 6976 (op6933.map lower) ∧ bytes6933.length=48 := by core033_kernel_decide
def op6934 : List WordIR.Op := [.badd 6976 6893]
def bytes6934 : Bytes := ("    let r00001b41: u32 = r00001b40.wrapping_add(r00001aed);\n" : String).toByteArray.data.toList
theorem checked6934 : bytes6934=statementBytes 6977 (op6934.map lower) ∧ bytes6934.length=60 := by core033_kernel_decide
def op6935 : List WordIR.Op := [.rotr 6789 7]
def bytes6935 : Bytes := ("    let r00001b42: u32 = r00001a85.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6935 : bytes6935=statementBytes 6978 (op6935.map lower) ∧ bytes6935.length=65 := by core033_kernel_decide
def op6936 : List WordIR.Op := [.rotr 6789 18]
def bytes6936 : Bytes := ("    let r00001b43: u32 = r00001a85.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6936 : bytes6936=statementBytes 6979 (op6936.map lower) ∧ bytes6936.length=65 := by core033_kernel_decide
def op6937 : List WordIR.Op := [.bxor 6978 6979]
def bytes6937 : Bytes := ("    let r00001b44: u32 = r00001b42 ^ r00001b43;\n" : String).toByteArray.data.toList
theorem checked6937 : bytes6937=statementBytes 6980 (op6937.map lower) ∧ bytes6937.length=48 := by core033_kernel_decide
def op6938 : List WordIR.Op := [.shr 6789 3]
def bytes6938 : Bytes := ("    let r00001b45: u32 = r00001a85 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6938 : bytes6938=statementBytes 6981 (op6938.map lower) ∧ bytes6938.length=54 := by core033_kernel_decide
def op6939 : List WordIR.Op := [.bxor 6980 6981]
def bytes6939 : Bytes := ("    let r00001b46: u32 = r00001b44 ^ r00001b45;\n" : String).toByteArray.data.toList
theorem checked6939 : bytes6939=statementBytes 6982 (op6939.map lower) ∧ bytes6939.length=48 := by core033_kernel_decide
def op6940 : List WordIR.Op := [.badd 6977 6982]
def bytes6940 : Bytes := ("    let r00001b47: u32 = r00001b41.wrapping_add(r00001b46);\n" : String).toByteArray.data.toList
theorem checked6940 : bytes6940=statementBytes 6983 (op6940.map lower) ∧ bytes6940.length=60 := by core033_kernel_decide
def op6941 : List WordIR.Op := [.badd 6983 6776]
def bytes6941 : Bytes := ("    let r00001b48: u32 = r00001b47.wrapping_add(r00001a78);\n" : String).toByteArray.data.toList
theorem checked6941 : bytes6941=statementBytes 6984 (op6941.map lower) ∧ bytes6941.length=60 := by core033_kernel_decide
def op6942 : List WordIR.Op := [.rotr 6971 17]
def bytes6942 : Bytes := ("    let r00001b49: u32 = r00001b3b.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6942 : bytes6942=statementBytes 6985 (op6942.map lower) ∧ bytes6942.length=65 := by core033_kernel_decide
def op6943 : List WordIR.Op := [.rotr 6971 19]
def bytes6943 : Bytes := ("    let r00001b4a: u32 = r00001b3b.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6943 : bytes6943=statementBytes 6986 (op6943.map lower) ∧ bytes6943.length=65 := by core033_kernel_decide
def op6944 : List WordIR.Op := [.bxor 6985 6986]
def bytes6944 : Bytes := ("    let r00001b4b: u32 = r00001b49 ^ r00001b4a;\n" : String).toByteArray.data.toList
theorem checked6944 : bytes6944=statementBytes 6987 (op6944.map lower) ∧ bytes6944.length=48 := by core033_kernel_decide
def op6945 : List WordIR.Op := [.shr 6971 10]
def bytes6945 : Bytes := ("    let r00001b4c: u32 = r00001b3b >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6945 : bytes6945=statementBytes 6988 (op6945.map lower) ∧ bytes6945.length=54 := by core033_kernel_decide
def op6946 : List WordIR.Op := [.bxor 6987 6988]
def bytes6946 : Bytes := ("    let r00001b4d: u32 = r00001b4b ^ r00001b4c;\n" : String).toByteArray.data.toList
theorem checked6946 : bytes6946=statementBytes 6989 (op6946.map lower) ∧ bytes6946.length=48 := by core033_kernel_decide
def op6947 : List WordIR.Op := [.badd 6989 6906]
def bytes6947 : Bytes := ("    let r00001b4e: u32 = r00001b4d.wrapping_add(r00001afa);\n" : String).toByteArray.data.toList
theorem checked6947 : bytes6947=statementBytes 6990 (op6947.map lower) ∧ bytes6947.length=60 := by core033_kernel_decide
def op6948 : List WordIR.Op := [.rotr 6802 7]
def bytes6948 : Bytes := ("    let r00001b4f: u32 = r00001a92.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6948 : bytes6948=statementBytes 6991 (op6948.map lower) ∧ bytes6948.length=65 := by core033_kernel_decide
def op6949 : List WordIR.Op := [.rotr 6802 18]
def bytes6949 : Bytes := ("    let r00001b50: u32 = r00001a92.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6949 : bytes6949=statementBytes 6992 (op6949.map lower) ∧ bytes6949.length=65 := by core033_kernel_decide
def op6950 : List WordIR.Op := [.bxor 6991 6992]
def bytes6950 : Bytes := ("    let r00001b51: u32 = r00001b4f ^ r00001b50;\n" : String).toByteArray.data.toList
theorem checked6950 : bytes6950=statementBytes 6993 (op6950.map lower) ∧ bytes6950.length=48 := by core033_kernel_decide
def op6951 : List WordIR.Op := [.shr 6802 3]
def bytes6951 : Bytes := ("    let r00001b52: u32 = r00001a92 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6951 : bytes6951=statementBytes 6994 (op6951.map lower) ∧ bytes6951.length=54 := by core033_kernel_decide
def op6952 : List WordIR.Op := [.bxor 6993 6994]
def bytes6952 : Bytes := ("    let r00001b53: u32 = r00001b51 ^ r00001b52;\n" : String).toByteArray.data.toList
theorem checked6952 : bytes6952=statementBytes 6995 (op6952.map lower) ∧ bytes6952.length=48 := by core033_kernel_decide
def op6953 : List WordIR.Op := [.badd 6990 6995]
def bytes6953 : Bytes := ("    let r00001b54: u32 = r00001b4e.wrapping_add(r00001b53);\n" : String).toByteArray.data.toList
theorem checked6953 : bytes6953=statementBytes 6996 (op6953.map lower) ∧ bytes6953.length=60 := by core033_kernel_decide
def op6954 : List WordIR.Op := [.badd 6996 6789]
def bytes6954 : Bytes := ("    let r00001b55: u32 = r00001b54.wrapping_add(r00001a85);\n" : String).toByteArray.data.toList
theorem checked6954 : bytes6954=statementBytes 6997 (op6954.map lower) ∧ bytes6954.length=60 := by core033_kernel_decide
def op6955 : List WordIR.Op := [.rotr 6984 17]
def bytes6955 : Bytes := ("    let r00001b56: u32 = r00001b48.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6955 : bytes6955=statementBytes 6998 (op6955.map lower) ∧ bytes6955.length=65 := by core033_kernel_decide
def op6956 : List WordIR.Op := [.rotr 6984 19]
def bytes6956 : Bytes := ("    let r00001b57: u32 = r00001b48.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6956 : bytes6956=statementBytes 6999 (op6956.map lower) ∧ bytes6956.length=65 := by core033_kernel_decide
def op6957 : List WordIR.Op := [.bxor 6998 6999]
def bytes6957 : Bytes := ("    let r00001b58: u32 = r00001b56 ^ r00001b57;\n" : String).toByteArray.data.toList
theorem checked6957 : bytes6957=statementBytes 7000 (op6957.map lower) ∧ bytes6957.length=48 := by core033_kernel_decide
def op6958 : List WordIR.Op := [.shr 6984 10]
def bytes6958 : Bytes := ("    let r00001b59: u32 = r00001b48 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6958 : bytes6958=statementBytes 7001 (op6958.map lower) ∧ bytes6958.length=54 := by core033_kernel_decide
def op6959 : List WordIR.Op := [.bxor 7000 7001]
def bytes6959 : Bytes := ("    let r00001b5a: u32 = r00001b58 ^ r00001b59;\n" : String).toByteArray.data.toList
theorem checked6959 : bytes6959=statementBytes 7002 (op6959.map lower) ∧ bytes6959.length=48 := by core033_kernel_decide
def op6960 : List WordIR.Op := [.badd 7002 6919]
def bytes6960 : Bytes := ("    let r00001b5b: u32 = r00001b5a.wrapping_add(r00001b07);\n" : String).toByteArray.data.toList
theorem checked6960 : bytes6960=statementBytes 7003 (op6960.map lower) ∧ bytes6960.length=60 := by core033_kernel_decide
def op6961 : List WordIR.Op := [.rotr 6815 7]
def bytes6961 : Bytes := ("    let r00001b5c: u32 = r00001a9f.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6961 : bytes6961=statementBytes 7004 (op6961.map lower) ∧ bytes6961.length=65 := by core033_kernel_decide
def op6962 : List WordIR.Op := [.rotr 6815 18]
def bytes6962 : Bytes := ("    let r00001b5d: u32 = r00001a9f.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6962 : bytes6962=statementBytes 7005 (op6962.map lower) ∧ bytes6962.length=65 := by core033_kernel_decide
def op6963 : List WordIR.Op := [.bxor 7004 7005]
def bytes6963 : Bytes := ("    let r00001b5e: u32 = r00001b5c ^ r00001b5d;\n" : String).toByteArray.data.toList
theorem checked6963 : bytes6963=statementBytes 7006 (op6963.map lower) ∧ bytes6963.length=48 := by core033_kernel_decide
def op6964 : List WordIR.Op := [.shr 6815 3]
def bytes6964 : Bytes := ("    let r00001b5f: u32 = r00001a9f >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6964 : bytes6964=statementBytes 7007 (op6964.map lower) ∧ bytes6964.length=54 := by core033_kernel_decide
def op6965 : List WordIR.Op := [.bxor 7006 7007]
def bytes6965 : Bytes := ("    let r00001b60: u32 = r00001b5e ^ r00001b5f;\n" : String).toByteArray.data.toList
theorem checked6965 : bytes6965=statementBytes 7008 (op6965.map lower) ∧ bytes6965.length=48 := by core033_kernel_decide
def op6966 : List WordIR.Op := [.badd 7003 7008]
def bytes6966 : Bytes := ("    let r00001b61: u32 = r00001b5b.wrapping_add(r00001b60);\n" : String).toByteArray.data.toList
theorem checked6966 : bytes6966=statementBytes 7009 (op6966.map lower) ∧ bytes6966.length=60 := by core033_kernel_decide
def op6967 : List WordIR.Op := [.badd 7009 6802]
def bytes6967 : Bytes := ("    let r00001b62: u32 = r00001b61.wrapping_add(r00001a92);\n" : String).toByteArray.data.toList
theorem checked6967 : bytes6967=statementBytes 7010 (op6967.map lower) ∧ bytes6967.length=60 := by core033_kernel_decide
def op6968 : List WordIR.Op := [.rotr 6997 17]
def bytes6968 : Bytes := ("    let r00001b63: u32 = r00001b55.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6968 : bytes6968=statementBytes 7011 (op6968.map lower) ∧ bytes6968.length=65 := by core033_kernel_decide
def op6969 : List WordIR.Op := [.rotr 6997 19]
def bytes6969 : Bytes := ("    let r00001b64: u32 = r00001b55.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6969 : bytes6969=statementBytes 7012 (op6969.map lower) ∧ bytes6969.length=65 := by core033_kernel_decide
def op6970 : List WordIR.Op := [.bxor 7011 7012]
def bytes6970 : Bytes := ("    let r00001b65: u32 = r00001b63 ^ r00001b64;\n" : String).toByteArray.data.toList
theorem checked6970 : bytes6970=statementBytes 7013 (op6970.map lower) ∧ bytes6970.length=48 := by core033_kernel_decide
def op6971 : List WordIR.Op := [.shr 6997 10]
def bytes6971 : Bytes := ("    let r00001b66: u32 = r00001b55 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6971 : bytes6971=statementBytes 7014 (op6971.map lower) ∧ bytes6971.length=54 := by core033_kernel_decide
def op6972 : List WordIR.Op := [.bxor 7013 7014]
def bytes6972 : Bytes := ("    let r00001b67: u32 = r00001b65 ^ r00001b66;\n" : String).toByteArray.data.toList
theorem checked6972 : bytes6972=statementBytes 7015 (op6972.map lower) ∧ bytes6972.length=48 := by core033_kernel_decide
def op6973 : List WordIR.Op := [.badd 7015 6932]
def bytes6973 : Bytes := ("    let r00001b68: u32 = r00001b67.wrapping_add(r00001b14);\n" : String).toByteArray.data.toList
theorem checked6973 : bytes6973=statementBytes 7016 (op6973.map lower) ∧ bytes6973.length=60 := by core033_kernel_decide
def op6974 : List WordIR.Op := [.rotr 6828 7]
def bytes6974 : Bytes := ("    let r00001b69: u32 = r00001aac.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6974 : bytes6974=statementBytes 7017 (op6974.map lower) ∧ bytes6974.length=65 := by core033_kernel_decide
def op6975 : List WordIR.Op := [.rotr 6828 18]
def bytes6975 : Bytes := ("    let r00001b6a: u32 = r00001aac.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6975 : bytes6975=statementBytes 7018 (op6975.map lower) ∧ bytes6975.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6912,op6913,op6914,op6915,op6916,op6917,op6918,op6919,op6920,op6921,op6922,op6923,op6924,op6925,op6926,op6927,op6928,op6929,op6930,op6931,op6932,op6933,op6934,op6935,op6936,op6937,op6938,op6939,op6940,op6941,op6942,op6943,op6944,op6945,op6946,op6947,op6948,op6949,op6950,op6951,op6952,op6953,op6954,op6955,op6956,op6957,op6958,op6959,op6960,op6961,op6962,op6963,op6964,op6965,op6966,op6967,op6968,op6969,op6970,op6971,op6972,op6973,op6974,op6975]
def chunks : List Bytes := [bytes6912,bytes6913,bytes6914,bytes6915,bytes6916,bytes6917,bytes6918,bytes6919,bytes6920,bytes6921,bytes6922,bytes6923,bytes6924,bytes6925,bytes6926,bytes6927,bytes6928,bytes6929,bytes6930,bytes6931,bytes6932,bytes6933,bytes6934,bytes6935,bytes6936,bytes6937,bytes6938,bytes6939,bytes6940,bytes6941,bytes6942,bytes6943,bytes6944,bytes6945,bytes6946,bytes6947,bytes6948,bytes6949,bytes6950,bytes6951,bytes6952,bytes6953,bytes6954,bytes6955,bytes6956,bytes6957,bytes6958,bytes6959,bytes6960,bytes6961,bytes6962,bytes6963,bytes6964,bytes6965,bytes6966,bytes6967,bytes6968,bytes6969,bytes6970,bytes6971,bytes6972,bytes6973,bytes6974,bytes6975]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6955 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6912.1 (.cons _ _ _ _ _ checked6913.1 (.cons _ _ _ _ _ checked6914.1 (.cons _ _ _ _ _ checked6915.1 (.cons _ _ _ _ _ checked6916.1 (.cons _ _ _ _ _ checked6917.1 (.cons _ _ _ _ _ checked6918.1 (.cons _ _ _ _ _ checked6919.1 (.cons _ _ _ _ _ checked6920.1 (.cons _ _ _ _ _ checked6921.1 (.cons _ _ _ _ _ checked6922.1 (.cons _ _ _ _ _ checked6923.1 (.cons _ _ _ _ _ checked6924.1 (.cons _ _ _ _ _ checked6925.1 (.cons _ _ _ _ _ checked6926.1 (.cons _ _ _ _ _ checked6927.1 (.cons _ _ _ _ _ checked6928.1 (.cons _ _ _ _ _ checked6929.1 (.cons _ _ _ _ _ checked6930.1 (.cons _ _ _ _ _ checked6931.1 (.cons _ _ _ _ _ checked6932.1 (.cons _ _ _ _ _ checked6933.1 (.cons _ _ _ _ _ checked6934.1 (.cons _ _ _ _ _ checked6935.1 (.cons _ _ _ _ _ checked6936.1 (.cons _ _ _ _ _ checked6937.1 (.cons _ _ _ _ _ checked6938.1 (.cons _ _ _ _ _ checked6939.1 (.cons _ _ _ _ _ checked6940.1 (.cons _ _ _ _ _ checked6941.1 (.cons _ _ _ _ _ checked6942.1 (.cons _ _ _ _ _ checked6943.1 (.cons _ _ _ _ _ checked6944.1 (.cons _ _ _ _ _ checked6945.1 (.cons _ _ _ _ _ checked6946.1 (.cons _ _ _ _ _ checked6947.1 (.cons _ _ _ _ _ checked6948.1 (.cons _ _ _ _ _ checked6949.1 (.cons _ _ _ _ _ checked6950.1 (.cons _ _ _ _ _ checked6951.1 (.cons _ _ _ _ _ checked6952.1 (.cons _ _ _ _ _ checked6953.1 (.cons _ _ _ _ _ checked6954.1 (.cons _ _ _ _ _ checked6955.1 (.cons _ _ _ _ _ checked6956.1 (.cons _ _ _ _ _ checked6957.1 (.cons _ _ _ _ _ checked6958.1 (.cons _ _ _ _ _ checked6959.1 (.cons _ _ _ _ _ checked6960.1 (.cons _ _ _ _ _ checked6961.1 (.cons _ _ _ _ _ checked6962.1 (.cons _ _ _ _ _ checked6963.1 (.cons _ _ _ _ _ checked6964.1 (.cons _ _ _ _ _ checked6965.1 (.cons _ _ _ _ _ checked6966.1 (.cons _ _ _ _ _ checked6967.1 (.cons _ _ _ _ _ checked6968.1 (.cons _ _ _ _ _ checked6969.1 (.cons _ _ _ _ _ checked6970.1 (.cons _ _ _ _ _ checked6971.1 (.cons _ _ _ _ _ checked6972.1 (.cons _ _ _ _ _ checked6973.1 (.cons _ _ _ _ _ checked6974.1 (.cons _ _ _ _ _ checked6975.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6955 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3652 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6912.2,checked6913.2,checked6914.2,checked6915.2,checked6916.2,checked6917.2,checked6918.2,checked6919.2,checked6920.2,checked6921.2,checked6922.2,checked6923.2,checked6924.2,checked6925.2,checked6926.2,checked6927.2,checked6928.2,checked6929.2,checked6930.2,checked6931.2,checked6932.2,checked6933.2,checked6934.2,checked6935.2,checked6936.2,checked6937.2,checked6938.2,checked6939.2,checked6940.2,checked6941.2,checked6942.2,checked6943.2,checked6944.2,checked6945.2,checked6946.2,checked6947.2,checked6948.2,checked6949.2,checked6950.2,checked6951.2,checked6952.2,checked6953.2,checked6954.2,checked6955.2,checked6956.2,checked6957.2,checked6958.2,checked6959.2,checked6960.2,checked6961.2,checked6962.2,checked6963.2,checked6964.2,checked6965.2,checked6966.2,checked6967.2,checked6968.2,checked6969.2,checked6970.2,checked6971.2,checked6972.2,checked6973.2,checked6974.2,checked6975.2]
  decide
end ArtifactFrameHashControllerGroup108
