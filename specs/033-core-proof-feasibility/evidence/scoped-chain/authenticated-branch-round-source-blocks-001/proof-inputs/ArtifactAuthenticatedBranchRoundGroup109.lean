import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup109
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6976 : List WordIR.Op := [.bnot 7093]
def bytes6976 : Bytes := ("    let r00001bb6: u32 = !r00001bb5;\n" : String).toByteArray.data.toList
theorem checked6976 : bytes6976=statementBytes 7094 (op6976.map lower) ∧ bytes6976.length=37 := by core033_kernel_decide
def op6977 : List WordIR.Op := [.bxor 7092 7094]
def bytes6977 : Bytes := ("    let r00001bb7: u32 = r00001bb4 ^ r00001bb6;\n" : String).toByteArray.data.toList
theorem checked6977 : bytes6977=statementBytes 7095 (op6977.map lower) ∧ bytes6977.length=48 := by core033_kernel_decide
def op6978 : List WordIR.Op := [.shr 3906 8]
def bytes6978 : Bytes := ("    let r00001bb8: u32 = r00000f42 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6978 : bytes6978=statementBytes 7096 (op6978.map lower) ∧ bytes6978.length=54 := by core033_kernel_decide
def op6979 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6979 : Bytes := ("    let r00001bb9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6979 : bytes6979=statementBytes 7097 (op6979.map lower) ∧ bytes6979.length=41 := by core033_kernel_decide
def op6980 : List WordIR.Op := [.bnot 7097]
def bytes6980 : Bytes := ("    let r00001bba: u32 = !r00001bb9;\n" : String).toByteArray.data.toList
theorem checked6980 : bytes6980=statementBytes 7098 (op6980.map lower) ∧ bytes6980.length=37 := by core033_kernel_decide
def op6981 : List WordIR.Op := [.badd 7096 7098]
def bytes6981 : Bytes := ("    let r00001bbb: u32 = r00001bb8.wrapping_add(r00001bba);\n" : String).toByteArray.data.toList
theorem checked6981 : bytes6981=statementBytes 7099 (op6981.map lower) ∧ bytes6981.length=60 := by core033_kernel_decide
def op6982 : List WordIR.Op := [.bnot 7099]
def bytes6982 : Bytes := ("    let r00001bbc: u32 = !r00001bbb;\n" : String).toByteArray.data.toList
theorem checked6982 : bytes6982=statementBytes 7100 (op6982.map lower) ∧ bytes6982.length=37 := by core033_kernel_decide
def op6983 : List WordIR.Op := [.band 7095 7100]
def bytes6983 : Bytes := ("    let r00001bbd: u32 = r00001bb7 & r00001bbc;\n" : String).toByteArray.data.toList
theorem checked6983 : bytes6983=statementBytes 7101 (op6983.map lower) ∧ bytes6983.length=48 := by core033_kernel_decide
def op6984 : List WordIR.Op := [.bxor 7091 7101]
def bytes6984 : Bytes := ("    let r00001bbe: u32 = r00001bb3 ^ r00001bbd;\n" : String).toByteArray.data.toList
theorem checked6984 : bytes6984=statementBytes 7102 (op6984.map lower) ∧ bytes6984.length=48 := by core033_kernel_decide
def op6985 : List WordIR.Op := [.shr 7102 31]
def bytes6985 : Bytes := ("    let r00001bbf: u32 = r00001bbe >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6985 : bytes6985=statementBytes 7103 (op6985.map lower) ∧ bytes6985.length=54 := by core033_kernel_decide
def op6986 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6986 : Bytes := ("    let r00001bc0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6986 : bytes6986=statementBytes 7104 (op6986.map lower) ∧ bytes6986.length=41 := by core033_kernel_decide
def op6987 : List WordIR.Op := [.bxor 7103 7104]
def bytes6987 : Bytes := ("    let r00001bc1: u32 = r00001bbf ^ r00001bc0;\n" : String).toByteArray.data.toList
theorem checked6987 : bytes6987=statementBytes 7105 (op6987.map lower) ∧ bytes6987.length=48 := by core033_kernel_decide
def op6988 : List WordIR.Op := [.shr 3958 8]
def bytes6988 : Bytes := ("    let r00001bc2: u32 = r00000f76 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6988 : bytes6988=statementBytes 7106 (op6988.map lower) ∧ bytes6988.length=54 := by core033_kernel_decide
def op6989 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6989 : Bytes := ("    let r00001bc3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6989 : bytes6989=statementBytes 7107 (op6989.map lower) ∧ bytes6989.length=41 := by core033_kernel_decide
def op6990 : List WordIR.Op := [.bnot 7107]
def bytes6990 : Bytes := ("    let r00001bc4: u32 = !r00001bc3;\n" : String).toByteArray.data.toList
theorem checked6990 : bytes6990=statementBytes 7108 (op6990.map lower) ∧ bytes6990.length=37 := by core033_kernel_decide
def op6991 : List WordIR.Op := [.band 7106 7108]
def bytes6991 : Bytes := ("    let r00001bc5: u32 = r00001bc2 & r00001bc4;\n" : String).toByteArray.data.toList
theorem checked6991 : bytes6991=statementBytes 7109 (op6991.map lower) ∧ bytes6991.length=48 := by core033_kernel_decide
def op6992 : List WordIR.Op := [.shr 3958 8]
def bytes6992 : Bytes := ("    let r00001bc6: u32 = r00000f76 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6992 : bytes6992=statementBytes 7110 (op6992.map lower) ∧ bytes6992.length=54 := by core033_kernel_decide
def op6993 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6993 : Bytes := ("    let r00001bc7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6993 : bytes6993=statementBytes 7111 (op6993.map lower) ∧ bytes6993.length=41 := by core033_kernel_decide
def op6994 : List WordIR.Op := [.bnot 7111]
def bytes6994 : Bytes := ("    let r00001bc8: u32 = !r00001bc7;\n" : String).toByteArray.data.toList
theorem checked6994 : bytes6994=statementBytes 7112 (op6994.map lower) ∧ bytes6994.length=37 := by core033_kernel_decide
def op6995 : List WordIR.Op := [.bxor 7110 7112]
def bytes6995 : Bytes := ("    let r00001bc9: u32 = r00001bc6 ^ r00001bc8;\n" : String).toByteArray.data.toList
theorem checked6995 : bytes6995=statementBytes 7113 (op6995.map lower) ∧ bytes6995.length=48 := by core033_kernel_decide
def op6996 : List WordIR.Op := [.shr 3958 8]
def bytes6996 : Bytes := ("    let r00001bca: u32 = r00000f76 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6996 : bytes6996=statementBytes 7114 (op6996.map lower) ∧ bytes6996.length=54 := by core033_kernel_decide
def op6997 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6997 : Bytes := ("    let r00001bcb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6997 : bytes6997=statementBytes 7115 (op6997.map lower) ∧ bytes6997.length=41 := by core033_kernel_decide
def op6998 : List WordIR.Op := [.bnot 7115]
def bytes6998 : Bytes := ("    let r00001bcc: u32 = !r00001bcb;\n" : String).toByteArray.data.toList
theorem checked6998 : bytes6998=statementBytes 7116 (op6998.map lower) ∧ bytes6998.length=37 := by core033_kernel_decide
def op6999 : List WordIR.Op := [.badd 7114 7116]
def bytes6999 : Bytes := ("    let r00001bcd: u32 = r00001bca.wrapping_add(r00001bcc);\n" : String).toByteArray.data.toList
theorem checked6999 : bytes6999=statementBytes 7117 (op6999.map lower) ∧ bytes6999.length=60 := by core033_kernel_decide
def op7000 : List WordIR.Op := [.bnot 7117]
def bytes7000 : Bytes := ("    let r00001bce: u32 = !r00001bcd;\n" : String).toByteArray.data.toList
theorem checked7000 : bytes7000=statementBytes 7118 (op7000.map lower) ∧ bytes7000.length=37 := by core033_kernel_decide
def op7001 : List WordIR.Op := [.band 7113 7118]
def bytes7001 : Bytes := ("    let r00001bcf: u32 = r00001bc9 & r00001bce;\n" : String).toByteArray.data.toList
theorem checked7001 : bytes7001=statementBytes 7119 (op7001.map lower) ∧ bytes7001.length=48 := by core033_kernel_decide
def op7002 : List WordIR.Op := [.bxor 7109 7119]
def bytes7002 : Bytes := ("    let r00001bd0: u32 = r00001bc5 ^ r00001bcf;\n" : String).toByteArray.data.toList
theorem checked7002 : bytes7002=statementBytes 7120 (op7002.map lower) ∧ bytes7002.length=48 := by core033_kernel_decide
def op7003 : List WordIR.Op := [.shr 7120 31]
def bytes7003 : Bytes := ("    let r00001bd1: u32 = r00001bd0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7003 : bytes7003=statementBytes 7121 (op7003.map lower) ∧ bytes7003.length=54 := by core033_kernel_decide
def op7004 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7004 : Bytes := ("    let r00001bd2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7004 : bytes7004=statementBytes 7122 (op7004.map lower) ∧ bytes7004.length=41 := by core033_kernel_decide
def op7005 : List WordIR.Op := [.bxor 7121 7122]
def bytes7005 : Bytes := ("    let r00001bd3: u32 = r00001bd1 ^ r00001bd2;\n" : String).toByteArray.data.toList
theorem checked7005 : bytes7005=statementBytes 7123 (op7005.map lower) ∧ bytes7005.length=48 := by core033_kernel_decide
def op7006 : List WordIR.Op := [.shr 4010 8]
def bytes7006 : Bytes := ("    let r00001bd4: u32 = r00000faa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7006 : bytes7006=statementBytes 7124 (op7006.map lower) ∧ bytes7006.length=54 := by core033_kernel_decide
def op7007 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7007 : Bytes := ("    let r00001bd5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7007 : bytes7007=statementBytes 7125 (op7007.map lower) ∧ bytes7007.length=41 := by core033_kernel_decide
def op7008 : List WordIR.Op := [.bnot 7125]
def bytes7008 : Bytes := ("    let r00001bd6: u32 = !r00001bd5;\n" : String).toByteArray.data.toList
theorem checked7008 : bytes7008=statementBytes 7126 (op7008.map lower) ∧ bytes7008.length=37 := by core033_kernel_decide
def op7009 : List WordIR.Op := [.band 7124 7126]
def bytes7009 : Bytes := ("    let r00001bd7: u32 = r00001bd4 & r00001bd6;\n" : String).toByteArray.data.toList
theorem checked7009 : bytes7009=statementBytes 7127 (op7009.map lower) ∧ bytes7009.length=48 := by core033_kernel_decide
def op7010 : List WordIR.Op := [.shr 4010 8]
def bytes7010 : Bytes := ("    let r00001bd8: u32 = r00000faa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7010 : bytes7010=statementBytes 7128 (op7010.map lower) ∧ bytes7010.length=54 := by core033_kernel_decide
def op7011 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7011 : Bytes := ("    let r00001bd9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7011 : bytes7011=statementBytes 7129 (op7011.map lower) ∧ bytes7011.length=41 := by core033_kernel_decide
def op7012 : List WordIR.Op := [.bnot 7129]
def bytes7012 : Bytes := ("    let r00001bda: u32 = !r00001bd9;\n" : String).toByteArray.data.toList
theorem checked7012 : bytes7012=statementBytes 7130 (op7012.map lower) ∧ bytes7012.length=37 := by core033_kernel_decide
def op7013 : List WordIR.Op := [.bxor 7128 7130]
def bytes7013 : Bytes := ("    let r00001bdb: u32 = r00001bd8 ^ r00001bda;\n" : String).toByteArray.data.toList
theorem checked7013 : bytes7013=statementBytes 7131 (op7013.map lower) ∧ bytes7013.length=48 := by core033_kernel_decide
def op7014 : List WordIR.Op := [.shr 4010 8]
def bytes7014 : Bytes := ("    let r00001bdc: u32 = r00000faa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7014 : bytes7014=statementBytes 7132 (op7014.map lower) ∧ bytes7014.length=54 := by core033_kernel_decide
def op7015 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7015 : Bytes := ("    let r00001bdd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7015 : bytes7015=statementBytes 7133 (op7015.map lower) ∧ bytes7015.length=41 := by core033_kernel_decide
def op7016 : List WordIR.Op := [.bnot 7133]
def bytes7016 : Bytes := ("    let r00001bde: u32 = !r00001bdd;\n" : String).toByteArray.data.toList
theorem checked7016 : bytes7016=statementBytes 7134 (op7016.map lower) ∧ bytes7016.length=37 := by core033_kernel_decide
def op7017 : List WordIR.Op := [.badd 7132 7134]
def bytes7017 : Bytes := ("    let r00001bdf: u32 = r00001bdc.wrapping_add(r00001bde);\n" : String).toByteArray.data.toList
theorem checked7017 : bytes7017=statementBytes 7135 (op7017.map lower) ∧ bytes7017.length=60 := by core033_kernel_decide
def op7018 : List WordIR.Op := [.bnot 7135]
def bytes7018 : Bytes := ("    let r00001be0: u32 = !r00001bdf;\n" : String).toByteArray.data.toList
theorem checked7018 : bytes7018=statementBytes 7136 (op7018.map lower) ∧ bytes7018.length=37 := by core033_kernel_decide
def op7019 : List WordIR.Op := [.band 7131 7136]
def bytes7019 : Bytes := ("    let r00001be1: u32 = r00001bdb & r00001be0;\n" : String).toByteArray.data.toList
theorem checked7019 : bytes7019=statementBytes 7137 (op7019.map lower) ∧ bytes7019.length=48 := by core033_kernel_decide
def op7020 : List WordIR.Op := [.bxor 7127 7137]
def bytes7020 : Bytes := ("    let r00001be2: u32 = r00001bd7 ^ r00001be1;\n" : String).toByteArray.data.toList
theorem checked7020 : bytes7020=statementBytes 7138 (op7020.map lower) ∧ bytes7020.length=48 := by core033_kernel_decide
def op7021 : List WordIR.Op := [.shr 7138 31]
def bytes7021 : Bytes := ("    let r00001be3: u32 = r00001be2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7021 : bytes7021=statementBytes 7139 (op7021.map lower) ∧ bytes7021.length=54 := by core033_kernel_decide
def op7022 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7022 : Bytes := ("    let r00001be4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7022 : bytes7022=statementBytes 7140 (op7022.map lower) ∧ bytes7022.length=41 := by core033_kernel_decide
def op7023 : List WordIR.Op := [.bxor 7139 7140]
def bytes7023 : Bytes := ("    let r00001be5: u32 = r00001be3 ^ r00001be4;\n" : String).toByteArray.data.toList
theorem checked7023 : bytes7023=statementBytes 7141 (op7023.map lower) ∧ bytes7023.length=48 := by core033_kernel_decide
def op7024 : List WordIR.Op := [.shr 4062 8]
def bytes7024 : Bytes := ("    let r00001be6: u32 = r00000fde >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7024 : bytes7024=statementBytes 7142 (op7024.map lower) ∧ bytes7024.length=54 := by core033_kernel_decide
def op7025 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7025 : Bytes := ("    let r00001be7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7025 : bytes7025=statementBytes 7143 (op7025.map lower) ∧ bytes7025.length=41 := by core033_kernel_decide
def op7026 : List WordIR.Op := [.bnot 7143]
def bytes7026 : Bytes := ("    let r00001be8: u32 = !r00001be7;\n" : String).toByteArray.data.toList
theorem checked7026 : bytes7026=statementBytes 7144 (op7026.map lower) ∧ bytes7026.length=37 := by core033_kernel_decide
def op7027 : List WordIR.Op := [.band 7142 7144]
def bytes7027 : Bytes := ("    let r00001be9: u32 = r00001be6 & r00001be8;\n" : String).toByteArray.data.toList
theorem checked7027 : bytes7027=statementBytes 7145 (op7027.map lower) ∧ bytes7027.length=48 := by core033_kernel_decide
def op7028 : List WordIR.Op := [.shr 4062 8]
def bytes7028 : Bytes := ("    let r00001bea: u32 = r00000fde >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7028 : bytes7028=statementBytes 7146 (op7028.map lower) ∧ bytes7028.length=54 := by core033_kernel_decide
def op7029 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7029 : Bytes := ("    let r00001beb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7029 : bytes7029=statementBytes 7147 (op7029.map lower) ∧ bytes7029.length=41 := by core033_kernel_decide
def op7030 : List WordIR.Op := [.bnot 7147]
def bytes7030 : Bytes := ("    let r00001bec: u32 = !r00001beb;\n" : String).toByteArray.data.toList
theorem checked7030 : bytes7030=statementBytes 7148 (op7030.map lower) ∧ bytes7030.length=37 := by core033_kernel_decide
def op7031 : List WordIR.Op := [.bxor 7146 7148]
def bytes7031 : Bytes := ("    let r00001bed: u32 = r00001bea ^ r00001bec;\n" : String).toByteArray.data.toList
theorem checked7031 : bytes7031=statementBytes 7149 (op7031.map lower) ∧ bytes7031.length=48 := by core033_kernel_decide
def op7032 : List WordIR.Op := [.shr 4062 8]
def bytes7032 : Bytes := ("    let r00001bee: u32 = r00000fde >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7032 : bytes7032=statementBytes 7150 (op7032.map lower) ∧ bytes7032.length=54 := by core033_kernel_decide
def op7033 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7033 : Bytes := ("    let r00001bef: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7033 : bytes7033=statementBytes 7151 (op7033.map lower) ∧ bytes7033.length=41 := by core033_kernel_decide
def op7034 : List WordIR.Op := [.bnot 7151]
def bytes7034 : Bytes := ("    let r00001bf0: u32 = !r00001bef;\n" : String).toByteArray.data.toList
theorem checked7034 : bytes7034=statementBytes 7152 (op7034.map lower) ∧ bytes7034.length=37 := by core033_kernel_decide
def op7035 : List WordIR.Op := [.badd 7150 7152]
def bytes7035 : Bytes := ("    let r00001bf1: u32 = r00001bee.wrapping_add(r00001bf0);\n" : String).toByteArray.data.toList
theorem checked7035 : bytes7035=statementBytes 7153 (op7035.map lower) ∧ bytes7035.length=60 := by core033_kernel_decide
def op7036 : List WordIR.Op := [.bnot 7153]
def bytes7036 : Bytes := ("    let r00001bf2: u32 = !r00001bf1;\n" : String).toByteArray.data.toList
theorem checked7036 : bytes7036=statementBytes 7154 (op7036.map lower) ∧ bytes7036.length=37 := by core033_kernel_decide
def op7037 : List WordIR.Op := [.band 7149 7154]
def bytes7037 : Bytes := ("    let r00001bf3: u32 = r00001bed & r00001bf2;\n" : String).toByteArray.data.toList
theorem checked7037 : bytes7037=statementBytes 7155 (op7037.map lower) ∧ bytes7037.length=48 := by core033_kernel_decide
def op7038 : List WordIR.Op := [.bxor 7145 7155]
def bytes7038 : Bytes := ("    let r00001bf4: u32 = r00001be9 ^ r00001bf3;\n" : String).toByteArray.data.toList
theorem checked7038 : bytes7038=statementBytes 7156 (op7038.map lower) ∧ bytes7038.length=48 := by core033_kernel_decide
def op7039 : List WordIR.Op := [.shr 7156 31]
def bytes7039 : Bytes := ("    let r00001bf5: u32 = r00001bf4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7039 : bytes7039=statementBytes 7157 (op7039.map lower) ∧ bytes7039.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6976,op6977,op6978,op6979,op6980,op6981,op6982,op6983,op6984,op6985,op6986,op6987,op6988,op6989,op6990,op6991,op6992,op6993,op6994,op6995,op6996,op6997,op6998,op6999,op7000,op7001,op7002,op7003,op7004,op7005,op7006,op7007,op7008,op7009,op7010,op7011,op7012,op7013,op7014,op7015,op7016,op7017,op7018,op7019,op7020,op7021,op7022,op7023,op7024,op7025,op7026,op7027,op7028,op7029,op7030,op7031,op7032,op7033,op7034,op7035,op7036,op7037,op7038,op7039]
def chunks : List Bytes := [bytes6976,bytes6977,bytes6978,bytes6979,bytes6980,bytes6981,bytes6982,bytes6983,bytes6984,bytes6985,bytes6986,bytes6987,bytes6988,bytes6989,bytes6990,bytes6991,bytes6992,bytes6993,bytes6994,bytes6995,bytes6996,bytes6997,bytes6998,bytes6999,bytes7000,bytes7001,bytes7002,bytes7003,bytes7004,bytes7005,bytes7006,bytes7007,bytes7008,bytes7009,bytes7010,bytes7011,bytes7012,bytes7013,bytes7014,bytes7015,bytes7016,bytes7017,bytes7018,bytes7019,bytes7020,bytes7021,bytes7022,bytes7023,bytes7024,bytes7025,bytes7026,bytes7027,bytes7028,bytes7029,bytes7030,bytes7031,bytes7032,bytes7033,bytes7034,bytes7035,bytes7036,bytes7037,bytes7038,bytes7039]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7094 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6976.1 (.cons _ _ _ _ _ checked6977.1 (.cons _ _ _ _ _ checked6978.1 (.cons _ _ _ _ _ checked6979.1 (.cons _ _ _ _ _ checked6980.1 (.cons _ _ _ _ _ checked6981.1 (.cons _ _ _ _ _ checked6982.1 (.cons _ _ _ _ _ checked6983.1 (.cons _ _ _ _ _ checked6984.1 (.cons _ _ _ _ _ checked6985.1 (.cons _ _ _ _ _ checked6986.1 (.cons _ _ _ _ _ checked6987.1 (.cons _ _ _ _ _ checked6988.1 (.cons _ _ _ _ _ checked6989.1 (.cons _ _ _ _ _ checked6990.1 (.cons _ _ _ _ _ checked6991.1 (.cons _ _ _ _ _ checked6992.1 (.cons _ _ _ _ _ checked6993.1 (.cons _ _ _ _ _ checked6994.1 (.cons _ _ _ _ _ checked6995.1 (.cons _ _ _ _ _ checked6996.1 (.cons _ _ _ _ _ checked6997.1 (.cons _ _ _ _ _ checked6998.1 (.cons _ _ _ _ _ checked6999.1 (.cons _ _ _ _ _ checked7000.1 (.cons _ _ _ _ _ checked7001.1 (.cons _ _ _ _ _ checked7002.1 (.cons _ _ _ _ _ checked7003.1 (.cons _ _ _ _ _ checked7004.1 (.cons _ _ _ _ _ checked7005.1 (.cons _ _ _ _ _ checked7006.1 (.cons _ _ _ _ _ checked7007.1 (.cons _ _ _ _ _ checked7008.1 (.cons _ _ _ _ _ checked7009.1 (.cons _ _ _ _ _ checked7010.1 (.cons _ _ _ _ _ checked7011.1 (.cons _ _ _ _ _ checked7012.1 (.cons _ _ _ _ _ checked7013.1 (.cons _ _ _ _ _ checked7014.1 (.cons _ _ _ _ _ checked7015.1 (.cons _ _ _ _ _ checked7016.1 (.cons _ _ _ _ _ checked7017.1 (.cons _ _ _ _ _ checked7018.1 (.cons _ _ _ _ _ checked7019.1 (.cons _ _ _ _ _ checked7020.1 (.cons _ _ _ _ _ checked7021.1 (.cons _ _ _ _ _ checked7022.1 (.cons _ _ _ _ _ checked7023.1 (.cons _ _ _ _ _ checked7024.1 (.cons _ _ _ _ _ checked7025.1 (.cons _ _ _ _ _ checked7026.1 (.cons _ _ _ _ _ checked7027.1 (.cons _ _ _ _ _ checked7028.1 (.cons _ _ _ _ _ checked7029.1 (.cons _ _ _ _ _ checked7030.1 (.cons _ _ _ _ _ checked7031.1 (.cons _ _ _ _ _ checked7032.1 (.cons _ _ _ _ _ checked7033.1 (.cons _ _ _ _ _ checked7034.1 (.cons _ _ _ _ _ checked7035.1 (.cons _ _ _ _ _ checked7036.1 (.cons _ _ _ _ _ checked7037.1 (.cons _ _ _ _ _ checked7038.1 (.cons _ _ _ _ _ checked7039.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7094 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2948 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6976.2,checked6977.2,checked6978.2,checked6979.2,checked6980.2,checked6981.2,checked6982.2,checked6983.2,checked6984.2,checked6985.2,checked6986.2,checked6987.2,checked6988.2,checked6989.2,checked6990.2,checked6991.2,checked6992.2,checked6993.2,checked6994.2,checked6995.2,checked6996.2,checked6997.2,checked6998.2,checked6999.2,checked7000.2,checked7001.2,checked7002.2,checked7003.2,checked7004.2,checked7005.2,checked7006.2,checked7007.2,checked7008.2,checked7009.2,checked7010.2,checked7011.2,checked7012.2,checked7013.2,checked7014.2,checked7015.2,checked7016.2,checked7017.2,checked7018.2,checked7019.2,checked7020.2,checked7021.2,checked7022.2,checked7023.2,checked7024.2,checked7025.2,checked7026.2,checked7027.2,checked7028.2,checked7029.2,checked7030.2,checked7031.2,checked7032.2,checked7033.2,checked7034.2,checked7035.2,checked7036.2,checked7037.2,checked7038.2,checked7039.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup109
