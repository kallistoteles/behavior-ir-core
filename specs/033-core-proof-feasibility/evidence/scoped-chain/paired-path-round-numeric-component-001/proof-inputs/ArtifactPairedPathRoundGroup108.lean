import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup108
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6912 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6912 : Bytes := ("    let r00001b60: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6912 : bytes6912=statementBytes 7008 (op6912.map lower) ∧ bytes6912.length=41 := by core033_kernel_decide
def op6913 : List WordIR.Op := [.bnot 7008]
def bytes6913 : Bytes := ("    let r00001b61: u32 = !r00001b60;\n" : String).toByteArray.data.toList
theorem checked6913 : bytes6913=statementBytes 7009 (op6913.map lower) ∧ bytes6913.length=37 := by core033_kernel_decide
def op6914 : List WordIR.Op := [.badd 7007 7009]
def bytes6914 : Bytes := ("    let r00001b62: u32 = r00001b5f.wrapping_add(r00001b61);\n" : String).toByteArray.data.toList
theorem checked6914 : bytes6914=statementBytes 7010 (op6914.map lower) ∧ bytes6914.length=60 := by core033_kernel_decide
def op6915 : List WordIR.Op := [.bnot 7010]
def bytes6915 : Bytes := ("    let r00001b63: u32 = !r00001b62;\n" : String).toByteArray.data.toList
theorem checked6915 : bytes6915=statementBytes 7011 (op6915.map lower) ∧ bytes6915.length=37 := by core033_kernel_decide
def op6916 : List WordIR.Op := [.band 7006 7011]
def bytes6916 : Bytes := ("    let r00001b64: u32 = r00001b5e & r00001b63;\n" : String).toByteArray.data.toList
theorem checked6916 : bytes6916=statementBytes 7012 (op6916.map lower) ∧ bytes6916.length=48 := by core033_kernel_decide
def op6917 : List WordIR.Op := [.bxor 7002 7012]
def bytes6917 : Bytes := ("    let r00001b65: u32 = r00001b5a ^ r00001b64;\n" : String).toByteArray.data.toList
theorem checked6917 : bytes6917=statementBytes 7013 (op6917.map lower) ∧ bytes6917.length=48 := by core033_kernel_decide
def op6918 : List WordIR.Op := [.shr 7013 31]
def bytes6918 : Bytes := ("    let r00001b66: u32 = r00001b65 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6918 : bytes6918=statementBytes 7014 (op6918.map lower) ∧ bytes6918.length=54 := by core033_kernel_decide
def op6919 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6919 : Bytes := ("    let r00001b67: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6919 : bytes6919=statementBytes 7015 (op6919.map lower) ∧ bytes6919.length=41 := by core033_kernel_decide
def op6920 : List WordIR.Op := [.bxor 7014 7015]
def bytes6920 : Bytes := ("    let r00001b68: u32 = r00001b66 ^ r00001b67;\n" : String).toByteArray.data.toList
theorem checked6920 : bytes6920=statementBytes 7016 (op6920.map lower) ∧ bytes6920.length=48 := by core033_kernel_decide
def op6921 : List WordIR.Op := [.shr 4991 8]
def bytes6921 : Bytes := ("    let r00001b69: u32 = r0000137f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6921 : bytes6921=statementBytes 7017 (op6921.map lower) ∧ bytes6921.length=54 := by core033_kernel_decide
def op6922 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6922 : Bytes := ("    let r00001b6a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6922 : bytes6922=statementBytes 7018 (op6922.map lower) ∧ bytes6922.length=41 := by core033_kernel_decide
def op6923 : List WordIR.Op := [.bnot 7018]
def bytes6923 : Bytes := ("    let r00001b6b: u32 = !r00001b6a;\n" : String).toByteArray.data.toList
theorem checked6923 : bytes6923=statementBytes 7019 (op6923.map lower) ∧ bytes6923.length=37 := by core033_kernel_decide
def op6924 : List WordIR.Op := [.band 7017 7019]
def bytes6924 : Bytes := ("    let r00001b6c: u32 = r00001b69 & r00001b6b;\n" : String).toByteArray.data.toList
theorem checked6924 : bytes6924=statementBytes 7020 (op6924.map lower) ∧ bytes6924.length=48 := by core033_kernel_decide
def op6925 : List WordIR.Op := [.shr 4991 8]
def bytes6925 : Bytes := ("    let r00001b6d: u32 = r0000137f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6925 : bytes6925=statementBytes 7021 (op6925.map lower) ∧ bytes6925.length=54 := by core033_kernel_decide
def op6926 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6926 : Bytes := ("    let r00001b6e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6926 : bytes6926=statementBytes 7022 (op6926.map lower) ∧ bytes6926.length=41 := by core033_kernel_decide
def op6927 : List WordIR.Op := [.bnot 7022]
def bytes6927 : Bytes := ("    let r00001b6f: u32 = !r00001b6e;\n" : String).toByteArray.data.toList
theorem checked6927 : bytes6927=statementBytes 7023 (op6927.map lower) ∧ bytes6927.length=37 := by core033_kernel_decide
def op6928 : List WordIR.Op := [.bxor 7021 7023]
def bytes6928 : Bytes := ("    let r00001b70: u32 = r00001b6d ^ r00001b6f;\n" : String).toByteArray.data.toList
theorem checked6928 : bytes6928=statementBytes 7024 (op6928.map lower) ∧ bytes6928.length=48 := by core033_kernel_decide
def op6929 : List WordIR.Op := [.shr 4991 8]
def bytes6929 : Bytes := ("    let r00001b71: u32 = r0000137f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6929 : bytes6929=statementBytes 7025 (op6929.map lower) ∧ bytes6929.length=54 := by core033_kernel_decide
def op6930 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6930 : Bytes := ("    let r00001b72: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6930 : bytes6930=statementBytes 7026 (op6930.map lower) ∧ bytes6930.length=41 := by core033_kernel_decide
def op6931 : List WordIR.Op := [.bnot 7026]
def bytes6931 : Bytes := ("    let r00001b73: u32 = !r00001b72;\n" : String).toByteArray.data.toList
theorem checked6931 : bytes6931=statementBytes 7027 (op6931.map lower) ∧ bytes6931.length=37 := by core033_kernel_decide
def op6932 : List WordIR.Op := [.badd 7025 7027]
def bytes6932 : Bytes := ("    let r00001b74: u32 = r00001b71.wrapping_add(r00001b73);\n" : String).toByteArray.data.toList
theorem checked6932 : bytes6932=statementBytes 7028 (op6932.map lower) ∧ bytes6932.length=60 := by core033_kernel_decide
def op6933 : List WordIR.Op := [.bnot 7028]
def bytes6933 : Bytes := ("    let r00001b75: u32 = !r00001b74;\n" : String).toByteArray.data.toList
theorem checked6933 : bytes6933=statementBytes 7029 (op6933.map lower) ∧ bytes6933.length=37 := by core033_kernel_decide
def op6934 : List WordIR.Op := [.band 7024 7029]
def bytes6934 : Bytes := ("    let r00001b76: u32 = r00001b70 & r00001b75;\n" : String).toByteArray.data.toList
theorem checked6934 : bytes6934=statementBytes 7030 (op6934.map lower) ∧ bytes6934.length=48 := by core033_kernel_decide
def op6935 : List WordIR.Op := [.bxor 7020 7030]
def bytes6935 : Bytes := ("    let r00001b77: u32 = r00001b6c ^ r00001b76;\n" : String).toByteArray.data.toList
theorem checked6935 : bytes6935=statementBytes 7031 (op6935.map lower) ∧ bytes6935.length=48 := by core033_kernel_decide
def op6936 : List WordIR.Op := [.shr 7031 31]
def bytes6936 : Bytes := ("    let r00001b78: u32 = r00001b77 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6936 : bytes6936=statementBytes 7032 (op6936.map lower) ∧ bytes6936.length=54 := by core033_kernel_decide
def op6937 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6937 : Bytes := ("    let r00001b79: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6937 : bytes6937=statementBytes 7033 (op6937.map lower) ∧ bytes6937.length=41 := by core033_kernel_decide
def op6938 : List WordIR.Op := [.bxor 7032 7033]
def bytes6938 : Bytes := ("    let r00001b7a: u32 = r00001b78 ^ r00001b79;\n" : String).toByteArray.data.toList
theorem checked6938 : bytes6938=statementBytes 7034 (op6938.map lower) ∧ bytes6938.length=48 := by core033_kernel_decide
def op6939 : List WordIR.Op := [.shr 5043 8]
def bytes6939 : Bytes := ("    let r00001b7b: u32 = r000013b3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6939 : bytes6939=statementBytes 7035 (op6939.map lower) ∧ bytes6939.length=54 := by core033_kernel_decide
def op6940 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6940 : Bytes := ("    let r00001b7c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6940 : bytes6940=statementBytes 7036 (op6940.map lower) ∧ bytes6940.length=41 := by core033_kernel_decide
def op6941 : List WordIR.Op := [.bnot 7036]
def bytes6941 : Bytes := ("    let r00001b7d: u32 = !r00001b7c;\n" : String).toByteArray.data.toList
theorem checked6941 : bytes6941=statementBytes 7037 (op6941.map lower) ∧ bytes6941.length=37 := by core033_kernel_decide
def op6942 : List WordIR.Op := [.band 7035 7037]
def bytes6942 : Bytes := ("    let r00001b7e: u32 = r00001b7b & r00001b7d;\n" : String).toByteArray.data.toList
theorem checked6942 : bytes6942=statementBytes 7038 (op6942.map lower) ∧ bytes6942.length=48 := by core033_kernel_decide
def op6943 : List WordIR.Op := [.shr 5043 8]
def bytes6943 : Bytes := ("    let r00001b7f: u32 = r000013b3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6943 : bytes6943=statementBytes 7039 (op6943.map lower) ∧ bytes6943.length=54 := by core033_kernel_decide
def op6944 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6944 : Bytes := ("    let r00001b80: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6944 : bytes6944=statementBytes 7040 (op6944.map lower) ∧ bytes6944.length=41 := by core033_kernel_decide
def op6945 : List WordIR.Op := [.bnot 7040]
def bytes6945 : Bytes := ("    let r00001b81: u32 = !r00001b80;\n" : String).toByteArray.data.toList
theorem checked6945 : bytes6945=statementBytes 7041 (op6945.map lower) ∧ bytes6945.length=37 := by core033_kernel_decide
def op6946 : List WordIR.Op := [.bxor 7039 7041]
def bytes6946 : Bytes := ("    let r00001b82: u32 = r00001b7f ^ r00001b81;\n" : String).toByteArray.data.toList
theorem checked6946 : bytes6946=statementBytes 7042 (op6946.map lower) ∧ bytes6946.length=48 := by core033_kernel_decide
def op6947 : List WordIR.Op := [.shr 5043 8]
def bytes6947 : Bytes := ("    let r00001b83: u32 = r000013b3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6947 : bytes6947=statementBytes 7043 (op6947.map lower) ∧ bytes6947.length=54 := by core033_kernel_decide
def op6948 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6948 : Bytes := ("    let r00001b84: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6948 : bytes6948=statementBytes 7044 (op6948.map lower) ∧ bytes6948.length=41 := by core033_kernel_decide
def op6949 : List WordIR.Op := [.bnot 7044]
def bytes6949 : Bytes := ("    let r00001b85: u32 = !r00001b84;\n" : String).toByteArray.data.toList
theorem checked6949 : bytes6949=statementBytes 7045 (op6949.map lower) ∧ bytes6949.length=37 := by core033_kernel_decide
def op6950 : List WordIR.Op := [.badd 7043 7045]
def bytes6950 : Bytes := ("    let r00001b86: u32 = r00001b83.wrapping_add(r00001b85);\n" : String).toByteArray.data.toList
theorem checked6950 : bytes6950=statementBytes 7046 (op6950.map lower) ∧ bytes6950.length=60 := by core033_kernel_decide
def op6951 : List WordIR.Op := [.bnot 7046]
def bytes6951 : Bytes := ("    let r00001b87: u32 = !r00001b86;\n" : String).toByteArray.data.toList
theorem checked6951 : bytes6951=statementBytes 7047 (op6951.map lower) ∧ bytes6951.length=37 := by core033_kernel_decide
def op6952 : List WordIR.Op := [.band 7042 7047]
def bytes6952 : Bytes := ("    let r00001b88: u32 = r00001b82 & r00001b87;\n" : String).toByteArray.data.toList
theorem checked6952 : bytes6952=statementBytes 7048 (op6952.map lower) ∧ bytes6952.length=48 := by core033_kernel_decide
def op6953 : List WordIR.Op := [.bxor 7038 7048]
def bytes6953 : Bytes := ("    let r00001b89: u32 = r00001b7e ^ r00001b88;\n" : String).toByteArray.data.toList
theorem checked6953 : bytes6953=statementBytes 7049 (op6953.map lower) ∧ bytes6953.length=48 := by core033_kernel_decide
def op6954 : List WordIR.Op := [.shr 7049 31]
def bytes6954 : Bytes := ("    let r00001b8a: u32 = r00001b89 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6954 : bytes6954=statementBytes 7050 (op6954.map lower) ∧ bytes6954.length=54 := by core033_kernel_decide
def op6955 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6955 : Bytes := ("    let r00001b8b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6955 : bytes6955=statementBytes 7051 (op6955.map lower) ∧ bytes6955.length=41 := by core033_kernel_decide
def op6956 : List WordIR.Op := [.bxor 7050 7051]
def bytes6956 : Bytes := ("    let r00001b8c: u32 = r00001b8a ^ r00001b8b;\n" : String).toByteArray.data.toList
theorem checked6956 : bytes6956=statementBytes 7052 (op6956.map lower) ∧ bytes6956.length=48 := by core033_kernel_decide
def op6957 : List WordIR.Op := [.shr 5095 8]
def bytes6957 : Bytes := ("    let r00001b8d: u32 = r000013e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6957 : bytes6957=statementBytes 7053 (op6957.map lower) ∧ bytes6957.length=54 := by core033_kernel_decide
def op6958 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6958 : Bytes := ("    let r00001b8e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6958 : bytes6958=statementBytes 7054 (op6958.map lower) ∧ bytes6958.length=41 := by core033_kernel_decide
def op6959 : List WordIR.Op := [.bnot 7054]
def bytes6959 : Bytes := ("    let r00001b8f: u32 = !r00001b8e;\n" : String).toByteArray.data.toList
theorem checked6959 : bytes6959=statementBytes 7055 (op6959.map lower) ∧ bytes6959.length=37 := by core033_kernel_decide
def op6960 : List WordIR.Op := [.band 7053 7055]
def bytes6960 : Bytes := ("    let r00001b90: u32 = r00001b8d & r00001b8f;\n" : String).toByteArray.data.toList
theorem checked6960 : bytes6960=statementBytes 7056 (op6960.map lower) ∧ bytes6960.length=48 := by core033_kernel_decide
def op6961 : List WordIR.Op := [.shr 5095 8]
def bytes6961 : Bytes := ("    let r00001b91: u32 = r000013e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6961 : bytes6961=statementBytes 7057 (op6961.map lower) ∧ bytes6961.length=54 := by core033_kernel_decide
def op6962 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6962 : Bytes := ("    let r00001b92: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6962 : bytes6962=statementBytes 7058 (op6962.map lower) ∧ bytes6962.length=41 := by core033_kernel_decide
def op6963 : List WordIR.Op := [.bnot 7058]
def bytes6963 : Bytes := ("    let r00001b93: u32 = !r00001b92;\n" : String).toByteArray.data.toList
theorem checked6963 : bytes6963=statementBytes 7059 (op6963.map lower) ∧ bytes6963.length=37 := by core033_kernel_decide
def op6964 : List WordIR.Op := [.bxor 7057 7059]
def bytes6964 : Bytes := ("    let r00001b94: u32 = r00001b91 ^ r00001b93;\n" : String).toByteArray.data.toList
theorem checked6964 : bytes6964=statementBytes 7060 (op6964.map lower) ∧ bytes6964.length=48 := by core033_kernel_decide
def op6965 : List WordIR.Op := [.shr 5095 8]
def bytes6965 : Bytes := ("    let r00001b95: u32 = r000013e7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6965 : bytes6965=statementBytes 7061 (op6965.map lower) ∧ bytes6965.length=54 := by core033_kernel_decide
def op6966 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6966 : Bytes := ("    let r00001b96: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6966 : bytes6966=statementBytes 7062 (op6966.map lower) ∧ bytes6966.length=41 := by core033_kernel_decide
def op6967 : List WordIR.Op := [.bnot 7062]
def bytes6967 : Bytes := ("    let r00001b97: u32 = !r00001b96;\n" : String).toByteArray.data.toList
theorem checked6967 : bytes6967=statementBytes 7063 (op6967.map lower) ∧ bytes6967.length=37 := by core033_kernel_decide
def op6968 : List WordIR.Op := [.badd 7061 7063]
def bytes6968 : Bytes := ("    let r00001b98: u32 = r00001b95.wrapping_add(r00001b97);\n" : String).toByteArray.data.toList
theorem checked6968 : bytes6968=statementBytes 7064 (op6968.map lower) ∧ bytes6968.length=60 := by core033_kernel_decide
def op6969 : List WordIR.Op := [.bnot 7064]
def bytes6969 : Bytes := ("    let r00001b99: u32 = !r00001b98;\n" : String).toByteArray.data.toList
theorem checked6969 : bytes6969=statementBytes 7065 (op6969.map lower) ∧ bytes6969.length=37 := by core033_kernel_decide
def op6970 : List WordIR.Op := [.band 7060 7065]
def bytes6970 : Bytes := ("    let r00001b9a: u32 = r00001b94 & r00001b99;\n" : String).toByteArray.data.toList
theorem checked6970 : bytes6970=statementBytes 7066 (op6970.map lower) ∧ bytes6970.length=48 := by core033_kernel_decide
def op6971 : List WordIR.Op := [.bxor 7056 7066]
def bytes6971 : Bytes := ("    let r00001b9b: u32 = r00001b90 ^ r00001b9a;\n" : String).toByteArray.data.toList
theorem checked6971 : bytes6971=statementBytes 7067 (op6971.map lower) ∧ bytes6971.length=48 := by core033_kernel_decide
def op6972 : List WordIR.Op := [.shr 7067 31]
def bytes6972 : Bytes := ("    let r00001b9c: u32 = r00001b9b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6972 : bytes6972=statementBytes 7068 (op6972.map lower) ∧ bytes6972.length=54 := by core033_kernel_decide
def op6973 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6973 : Bytes := ("    let r00001b9d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6973 : bytes6973=statementBytes 7069 (op6973.map lower) ∧ bytes6973.length=41 := by core033_kernel_decide
def op6974 : List WordIR.Op := [.bxor 7068 7069]
def bytes6974 : Bytes := ("    let r00001b9e: u32 = r00001b9c ^ r00001b9d;\n" : String).toByteArray.data.toList
theorem checked6974 : bytes6974=statementBytes 7070 (op6974.map lower) ∧ bytes6974.length=48 := by core033_kernel_decide
def op6975 : List WordIR.Op := [.shr 5147 8]
def bytes6975 : Bytes := ("    let r00001b9f: u32 = r0000141b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6975 : bytes6975=statementBytes 7071 (op6975.map lower) ∧ bytes6975.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6912,op6913,op6914,op6915,op6916,op6917,op6918,op6919,op6920,op6921,op6922,op6923,op6924,op6925,op6926,op6927,op6928,op6929,op6930,op6931,op6932,op6933,op6934,op6935,op6936,op6937,op6938,op6939,op6940,op6941,op6942,op6943,op6944,op6945,op6946,op6947,op6948,op6949,op6950,op6951,op6952,op6953,op6954,op6955,op6956,op6957,op6958,op6959,op6960,op6961,op6962,op6963,op6964,op6965,op6966,op6967,op6968,op6969,op6970,op6971,op6972,op6973,op6974,op6975]
def chunks : List Bytes := [bytes6912,bytes6913,bytes6914,bytes6915,bytes6916,bytes6917,bytes6918,bytes6919,bytes6920,bytes6921,bytes6922,bytes6923,bytes6924,bytes6925,bytes6926,bytes6927,bytes6928,bytes6929,bytes6930,bytes6931,bytes6932,bytes6933,bytes6934,bytes6935,bytes6936,bytes6937,bytes6938,bytes6939,bytes6940,bytes6941,bytes6942,bytes6943,bytes6944,bytes6945,bytes6946,bytes6947,bytes6948,bytes6949,bytes6950,bytes6951,bytes6952,bytes6953,bytes6954,bytes6955,bytes6956,bytes6957,bytes6958,bytes6959,bytes6960,bytes6961,bytes6962,bytes6963,bytes6964,bytes6965,bytes6966,bytes6967,bytes6968,bytes6969,bytes6970,bytes6971,bytes6972,bytes6973,bytes6974,bytes6975]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7008 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6912.1 (.cons _ _ _ _ _ checked6913.1 (.cons _ _ _ _ _ checked6914.1 (.cons _ _ _ _ _ checked6915.1 (.cons _ _ _ _ _ checked6916.1 (.cons _ _ _ _ _ checked6917.1 (.cons _ _ _ _ _ checked6918.1 (.cons _ _ _ _ _ checked6919.1 (.cons _ _ _ _ _ checked6920.1 (.cons _ _ _ _ _ checked6921.1 (.cons _ _ _ _ _ checked6922.1 (.cons _ _ _ _ _ checked6923.1 (.cons _ _ _ _ _ checked6924.1 (.cons _ _ _ _ _ checked6925.1 (.cons _ _ _ _ _ checked6926.1 (.cons _ _ _ _ _ checked6927.1 (.cons _ _ _ _ _ checked6928.1 (.cons _ _ _ _ _ checked6929.1 (.cons _ _ _ _ _ checked6930.1 (.cons _ _ _ _ _ checked6931.1 (.cons _ _ _ _ _ checked6932.1 (.cons _ _ _ _ _ checked6933.1 (.cons _ _ _ _ _ checked6934.1 (.cons _ _ _ _ _ checked6935.1 (.cons _ _ _ _ _ checked6936.1 (.cons _ _ _ _ _ checked6937.1 (.cons _ _ _ _ _ checked6938.1 (.cons _ _ _ _ _ checked6939.1 (.cons _ _ _ _ _ checked6940.1 (.cons _ _ _ _ _ checked6941.1 (.cons _ _ _ _ _ checked6942.1 (.cons _ _ _ _ _ checked6943.1 (.cons _ _ _ _ _ checked6944.1 (.cons _ _ _ _ _ checked6945.1 (.cons _ _ _ _ _ checked6946.1 (.cons _ _ _ _ _ checked6947.1 (.cons _ _ _ _ _ checked6948.1 (.cons _ _ _ _ _ checked6949.1 (.cons _ _ _ _ _ checked6950.1 (.cons _ _ _ _ _ checked6951.1 (.cons _ _ _ _ _ checked6952.1 (.cons _ _ _ _ _ checked6953.1 (.cons _ _ _ _ _ checked6954.1 (.cons _ _ _ _ _ checked6955.1 (.cons _ _ _ _ _ checked6956.1 (.cons _ _ _ _ _ checked6957.1 (.cons _ _ _ _ _ checked6958.1 (.cons _ _ _ _ _ checked6959.1 (.cons _ _ _ _ _ checked6960.1 (.cons _ _ _ _ _ checked6961.1 (.cons _ _ _ _ _ checked6962.1 (.cons _ _ _ _ _ checked6963.1 (.cons _ _ _ _ _ checked6964.1 (.cons _ _ _ _ _ checked6965.1 (.cons _ _ _ _ _ checked6966.1 (.cons _ _ _ _ _ checked6967.1 (.cons _ _ _ _ _ checked6968.1 (.cons _ _ _ _ _ checked6969.1 (.cons _ _ _ _ _ checked6970.1 (.cons _ _ _ _ _ checked6971.1 (.cons _ _ _ _ _ checked6972.1 (.cons _ _ _ _ _ checked6973.1 (.cons _ _ _ _ _ checked6974.1 (.cons _ _ _ _ _ checked6975.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7008 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6912.2,checked6913.2,checked6914.2,checked6915.2,checked6916.2,checked6917.2,checked6918.2,checked6919.2,checked6920.2,checked6921.2,checked6922.2,checked6923.2,checked6924.2,checked6925.2,checked6926.2,checked6927.2,checked6928.2,checked6929.2,checked6930.2,checked6931.2,checked6932.2,checked6933.2,checked6934.2,checked6935.2,checked6936.2,checked6937.2,checked6938.2,checked6939.2,checked6940.2,checked6941.2,checked6942.2,checked6943.2,checked6944.2,checked6945.2,checked6946.2,checked6947.2,checked6948.2,checked6949.2,checked6950.2,checked6951.2,checked6952.2,checked6953.2,checked6954.2,checked6955.2,checked6956.2,checked6957.2,checked6958.2,checked6959.2,checked6960.2,checked6961.2,checked6962.2,checked6963.2,checked6964.2,checked6965.2,checked6966.2,checked6967.2,checked6968.2,checked6969.2,checked6970.2,checked6971.2,checked6972.2,checked6973.2,checked6974.2,checked6975.2]
  decide
end ArtifactPairedPathRoundGroup108
