import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup112
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7168 : List WordIR.Op := [.shr 4478 8]
def bytes7168 : Bytes := ("    let r00001c76: u32 = r0000117e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7168 : bytes7168=statementBytes 7286 (op7168.map lower) ∧ bytes7168.length=54 := by core033_kernel_decide
def op7169 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7169 : Bytes := ("    let r00001c77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7169 : bytes7169=statementBytes 7287 (op7169.map lower) ∧ bytes7169.length=41 := by core033_kernel_decide
def op7170 : List WordIR.Op := [.bnot 7287]
def bytes7170 : Bytes := ("    let r00001c78: u32 = !r00001c77;\n" : String).toByteArray.data.toList
theorem checked7170 : bytes7170=statementBytes 7288 (op7170.map lower) ∧ bytes7170.length=37 := by core033_kernel_decide
def op7171 : List WordIR.Op := [.band 7286 7288]
def bytes7171 : Bytes := ("    let r00001c79: u32 = r00001c76 & r00001c78;\n" : String).toByteArray.data.toList
theorem checked7171 : bytes7171=statementBytes 7289 (op7171.map lower) ∧ bytes7171.length=48 := by core033_kernel_decide
def op7172 : List WordIR.Op := [.shr 4478 8]
def bytes7172 : Bytes := ("    let r00001c7a: u32 = r0000117e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7172 : bytes7172=statementBytes 7290 (op7172.map lower) ∧ bytes7172.length=54 := by core033_kernel_decide
def op7173 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7173 : Bytes := ("    let r00001c7b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7173 : bytes7173=statementBytes 7291 (op7173.map lower) ∧ bytes7173.length=41 := by core033_kernel_decide
def op7174 : List WordIR.Op := [.bnot 7291]
def bytes7174 : Bytes := ("    let r00001c7c: u32 = !r00001c7b;\n" : String).toByteArray.data.toList
theorem checked7174 : bytes7174=statementBytes 7292 (op7174.map lower) ∧ bytes7174.length=37 := by core033_kernel_decide
def op7175 : List WordIR.Op := [.bxor 7290 7292]
def bytes7175 : Bytes := ("    let r00001c7d: u32 = r00001c7a ^ r00001c7c;\n" : String).toByteArray.data.toList
theorem checked7175 : bytes7175=statementBytes 7293 (op7175.map lower) ∧ bytes7175.length=48 := by core033_kernel_decide
def op7176 : List WordIR.Op := [.shr 4478 8]
def bytes7176 : Bytes := ("    let r00001c7e: u32 = r0000117e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7176 : bytes7176=statementBytes 7294 (op7176.map lower) ∧ bytes7176.length=54 := by core033_kernel_decide
def op7177 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7177 : Bytes := ("    let r00001c7f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7177 : bytes7177=statementBytes 7295 (op7177.map lower) ∧ bytes7177.length=41 := by core033_kernel_decide
def op7178 : List WordIR.Op := [.bnot 7295]
def bytes7178 : Bytes := ("    let r00001c80: u32 = !r00001c7f;\n" : String).toByteArray.data.toList
theorem checked7178 : bytes7178=statementBytes 7296 (op7178.map lower) ∧ bytes7178.length=37 := by core033_kernel_decide
def op7179 : List WordIR.Op := [.badd 7294 7296]
def bytes7179 : Bytes := ("    let r00001c81: u32 = r00001c7e.wrapping_add(r00001c80);\n" : String).toByteArray.data.toList
theorem checked7179 : bytes7179=statementBytes 7297 (op7179.map lower) ∧ bytes7179.length=60 := by core033_kernel_decide
def op7180 : List WordIR.Op := [.bnot 7297]
def bytes7180 : Bytes := ("    let r00001c82: u32 = !r00001c81;\n" : String).toByteArray.data.toList
theorem checked7180 : bytes7180=statementBytes 7298 (op7180.map lower) ∧ bytes7180.length=37 := by core033_kernel_decide
def op7181 : List WordIR.Op := [.band 7293 7298]
def bytes7181 : Bytes := ("    let r00001c83: u32 = r00001c7d & r00001c82;\n" : String).toByteArray.data.toList
theorem checked7181 : bytes7181=statementBytes 7299 (op7181.map lower) ∧ bytes7181.length=48 := by core033_kernel_decide
def op7182 : List WordIR.Op := [.bxor 7289 7299]
def bytes7182 : Bytes := ("    let r00001c84: u32 = r00001c79 ^ r00001c83;\n" : String).toByteArray.data.toList
theorem checked7182 : bytes7182=statementBytes 7300 (op7182.map lower) ∧ bytes7182.length=48 := by core033_kernel_decide
def op7183 : List WordIR.Op := [.shr 7300 31]
def bytes7183 : Bytes := ("    let r00001c85: u32 = r00001c84 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7183 : bytes7183=statementBytes 7301 (op7183.map lower) ∧ bytes7183.length=54 := by core033_kernel_decide
def op7184 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7184 : Bytes := ("    let r00001c86: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7184 : bytes7184=statementBytes 7302 (op7184.map lower) ∧ bytes7184.length=41 := by core033_kernel_decide
def op7185 : List WordIR.Op := [.bxor 7301 7302]
def bytes7185 : Bytes := ("    let r00001c87: u32 = r00001c85 ^ r00001c86;\n" : String).toByteArray.data.toList
theorem checked7185 : bytes7185=statementBytes 7303 (op7185.map lower) ∧ bytes7185.length=48 := by core033_kernel_decide
def op7186 : List WordIR.Op := [.shr 4530 8]
def bytes7186 : Bytes := ("    let r00001c88: u32 = r000011b2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7186 : bytes7186=statementBytes 7304 (op7186.map lower) ∧ bytes7186.length=54 := by core033_kernel_decide
def op7187 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7187 : Bytes := ("    let r00001c89: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7187 : bytes7187=statementBytes 7305 (op7187.map lower) ∧ bytes7187.length=41 := by core033_kernel_decide
def op7188 : List WordIR.Op := [.bnot 7305]
def bytes7188 : Bytes := ("    let r00001c8a: u32 = !r00001c89;\n" : String).toByteArray.data.toList
theorem checked7188 : bytes7188=statementBytes 7306 (op7188.map lower) ∧ bytes7188.length=37 := by core033_kernel_decide
def op7189 : List WordIR.Op := [.band 7304 7306]
def bytes7189 : Bytes := ("    let r00001c8b: u32 = r00001c88 & r00001c8a;\n" : String).toByteArray.data.toList
theorem checked7189 : bytes7189=statementBytes 7307 (op7189.map lower) ∧ bytes7189.length=48 := by core033_kernel_decide
def op7190 : List WordIR.Op := [.shr 4530 8]
def bytes7190 : Bytes := ("    let r00001c8c: u32 = r000011b2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7190 : bytes7190=statementBytes 7308 (op7190.map lower) ∧ bytes7190.length=54 := by core033_kernel_decide
def op7191 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7191 : Bytes := ("    let r00001c8d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7191 : bytes7191=statementBytes 7309 (op7191.map lower) ∧ bytes7191.length=41 := by core033_kernel_decide
def op7192 : List WordIR.Op := [.bnot 7309]
def bytes7192 : Bytes := ("    let r00001c8e: u32 = !r00001c8d;\n" : String).toByteArray.data.toList
theorem checked7192 : bytes7192=statementBytes 7310 (op7192.map lower) ∧ bytes7192.length=37 := by core033_kernel_decide
def op7193 : List WordIR.Op := [.bxor 7308 7310]
def bytes7193 : Bytes := ("    let r00001c8f: u32 = r00001c8c ^ r00001c8e;\n" : String).toByteArray.data.toList
theorem checked7193 : bytes7193=statementBytes 7311 (op7193.map lower) ∧ bytes7193.length=48 := by core033_kernel_decide
def op7194 : List WordIR.Op := [.shr 4530 8]
def bytes7194 : Bytes := ("    let r00001c90: u32 = r000011b2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7194 : bytes7194=statementBytes 7312 (op7194.map lower) ∧ bytes7194.length=54 := by core033_kernel_decide
def op7195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7195 : Bytes := ("    let r00001c91: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7195 : bytes7195=statementBytes 7313 (op7195.map lower) ∧ bytes7195.length=41 := by core033_kernel_decide
def op7196 : List WordIR.Op := [.bnot 7313]
def bytes7196 : Bytes := ("    let r00001c92: u32 = !r00001c91;\n" : String).toByteArray.data.toList
theorem checked7196 : bytes7196=statementBytes 7314 (op7196.map lower) ∧ bytes7196.length=37 := by core033_kernel_decide
def op7197 : List WordIR.Op := [.badd 7312 7314]
def bytes7197 : Bytes := ("    let r00001c93: u32 = r00001c90.wrapping_add(r00001c92);\n" : String).toByteArray.data.toList
theorem checked7197 : bytes7197=statementBytes 7315 (op7197.map lower) ∧ bytes7197.length=60 := by core033_kernel_decide
def op7198 : List WordIR.Op := [.bnot 7315]
def bytes7198 : Bytes := ("    let r00001c94: u32 = !r00001c93;\n" : String).toByteArray.data.toList
theorem checked7198 : bytes7198=statementBytes 7316 (op7198.map lower) ∧ bytes7198.length=37 := by core033_kernel_decide
def op7199 : List WordIR.Op := [.band 7311 7316]
def bytes7199 : Bytes := ("    let r00001c95: u32 = r00001c8f & r00001c94;\n" : String).toByteArray.data.toList
theorem checked7199 : bytes7199=statementBytes 7317 (op7199.map lower) ∧ bytes7199.length=48 := by core033_kernel_decide
def op7200 : List WordIR.Op := [.bxor 7307 7317]
def bytes7200 : Bytes := ("    let r00001c96: u32 = r00001c8b ^ r00001c95;\n" : String).toByteArray.data.toList
theorem checked7200 : bytes7200=statementBytes 7318 (op7200.map lower) ∧ bytes7200.length=48 := by core033_kernel_decide
def op7201 : List WordIR.Op := [.shr 7318 31]
def bytes7201 : Bytes := ("    let r00001c97: u32 = r00001c96 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7201 : bytes7201=statementBytes 7319 (op7201.map lower) ∧ bytes7201.length=54 := by core033_kernel_decide
def op7202 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7202 : Bytes := ("    let r00001c98: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7202 : bytes7202=statementBytes 7320 (op7202.map lower) ∧ bytes7202.length=41 := by core033_kernel_decide
def op7203 : List WordIR.Op := [.bxor 7319 7320]
def bytes7203 : Bytes := ("    let r00001c99: u32 = r00001c97 ^ r00001c98;\n" : String).toByteArray.data.toList
theorem checked7203 : bytes7203=statementBytes 7321 (op7203.map lower) ∧ bytes7203.length=48 := by core033_kernel_decide
def op7204 : List WordIR.Op := [.shr 4582 8]
def bytes7204 : Bytes := ("    let r00001c9a: u32 = r000011e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7204 : bytes7204=statementBytes 7322 (op7204.map lower) ∧ bytes7204.length=54 := by core033_kernel_decide
def op7205 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7205 : Bytes := ("    let r00001c9b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7205 : bytes7205=statementBytes 7323 (op7205.map lower) ∧ bytes7205.length=41 := by core033_kernel_decide
def op7206 : List WordIR.Op := [.bnot 7323]
def bytes7206 : Bytes := ("    let r00001c9c: u32 = !r00001c9b;\n" : String).toByteArray.data.toList
theorem checked7206 : bytes7206=statementBytes 7324 (op7206.map lower) ∧ bytes7206.length=37 := by core033_kernel_decide
def op7207 : List WordIR.Op := [.band 7322 7324]
def bytes7207 : Bytes := ("    let r00001c9d: u32 = r00001c9a & r00001c9c;\n" : String).toByteArray.data.toList
theorem checked7207 : bytes7207=statementBytes 7325 (op7207.map lower) ∧ bytes7207.length=48 := by core033_kernel_decide
def op7208 : List WordIR.Op := [.shr 4582 8]
def bytes7208 : Bytes := ("    let r00001c9e: u32 = r000011e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7208 : bytes7208=statementBytes 7326 (op7208.map lower) ∧ bytes7208.length=54 := by core033_kernel_decide
def op7209 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7209 : Bytes := ("    let r00001c9f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7209 : bytes7209=statementBytes 7327 (op7209.map lower) ∧ bytes7209.length=41 := by core033_kernel_decide
def op7210 : List WordIR.Op := [.bnot 7327]
def bytes7210 : Bytes := ("    let r00001ca0: u32 = !r00001c9f;\n" : String).toByteArray.data.toList
theorem checked7210 : bytes7210=statementBytes 7328 (op7210.map lower) ∧ bytes7210.length=37 := by core033_kernel_decide
def op7211 : List WordIR.Op := [.bxor 7326 7328]
def bytes7211 : Bytes := ("    let r00001ca1: u32 = r00001c9e ^ r00001ca0;\n" : String).toByteArray.data.toList
theorem checked7211 : bytes7211=statementBytes 7329 (op7211.map lower) ∧ bytes7211.length=48 := by core033_kernel_decide
def op7212 : List WordIR.Op := [.shr 4582 8]
def bytes7212 : Bytes := ("    let r00001ca2: u32 = r000011e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7212 : bytes7212=statementBytes 7330 (op7212.map lower) ∧ bytes7212.length=54 := by core033_kernel_decide
def op7213 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7213 : Bytes := ("    let r00001ca3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7213 : bytes7213=statementBytes 7331 (op7213.map lower) ∧ bytes7213.length=41 := by core033_kernel_decide
def op7214 : List WordIR.Op := [.bnot 7331]
def bytes7214 : Bytes := ("    let r00001ca4: u32 = !r00001ca3;\n" : String).toByteArray.data.toList
theorem checked7214 : bytes7214=statementBytes 7332 (op7214.map lower) ∧ bytes7214.length=37 := by core033_kernel_decide
def op7215 : List WordIR.Op := [.badd 7330 7332]
def bytes7215 : Bytes := ("    let r00001ca5: u32 = r00001ca2.wrapping_add(r00001ca4);\n" : String).toByteArray.data.toList
theorem checked7215 : bytes7215=statementBytes 7333 (op7215.map lower) ∧ bytes7215.length=60 := by core033_kernel_decide
def op7216 : List WordIR.Op := [.bnot 7333]
def bytes7216 : Bytes := ("    let r00001ca6: u32 = !r00001ca5;\n" : String).toByteArray.data.toList
theorem checked7216 : bytes7216=statementBytes 7334 (op7216.map lower) ∧ bytes7216.length=37 := by core033_kernel_decide
def op7217 : List WordIR.Op := [.band 7329 7334]
def bytes7217 : Bytes := ("    let r00001ca7: u32 = r00001ca1 & r00001ca6;\n" : String).toByteArray.data.toList
theorem checked7217 : bytes7217=statementBytes 7335 (op7217.map lower) ∧ bytes7217.length=48 := by core033_kernel_decide
def op7218 : List WordIR.Op := [.bxor 7325 7335]
def bytes7218 : Bytes := ("    let r00001ca8: u32 = r00001c9d ^ r00001ca7;\n" : String).toByteArray.data.toList
theorem checked7218 : bytes7218=statementBytes 7336 (op7218.map lower) ∧ bytes7218.length=48 := by core033_kernel_decide
def op7219 : List WordIR.Op := [.shr 7336 31]
def bytes7219 : Bytes := ("    let r00001ca9: u32 = r00001ca8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7219 : bytes7219=statementBytes 7337 (op7219.map lower) ∧ bytes7219.length=54 := by core033_kernel_decide
def op7220 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7220 : Bytes := ("    let r00001caa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7220 : bytes7220=statementBytes 7338 (op7220.map lower) ∧ bytes7220.length=41 := by core033_kernel_decide
def op7221 : List WordIR.Op := [.bxor 7337 7338]
def bytes7221 : Bytes := ("    let r00001cab: u32 = r00001ca9 ^ r00001caa;\n" : String).toByteArray.data.toList
theorem checked7221 : bytes7221=statementBytes 7339 (op7221.map lower) ∧ bytes7221.length=48 := by core033_kernel_decide
def op7222 : List WordIR.Op := [.shr 4634 8]
def bytes7222 : Bytes := ("    let r00001cac: u32 = r0000121a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7222 : bytes7222=statementBytes 7340 (op7222.map lower) ∧ bytes7222.length=54 := by core033_kernel_decide
def op7223 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7223 : Bytes := ("    let r00001cad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7223 : bytes7223=statementBytes 7341 (op7223.map lower) ∧ bytes7223.length=41 := by core033_kernel_decide
def op7224 : List WordIR.Op := [.bnot 7341]
def bytes7224 : Bytes := ("    let r00001cae: u32 = !r00001cad;\n" : String).toByteArray.data.toList
theorem checked7224 : bytes7224=statementBytes 7342 (op7224.map lower) ∧ bytes7224.length=37 := by core033_kernel_decide
def op7225 : List WordIR.Op := [.band 7340 7342]
def bytes7225 : Bytes := ("    let r00001caf: u32 = r00001cac & r00001cae;\n" : String).toByteArray.data.toList
theorem checked7225 : bytes7225=statementBytes 7343 (op7225.map lower) ∧ bytes7225.length=48 := by core033_kernel_decide
def op7226 : List WordIR.Op := [.shr 4634 8]
def bytes7226 : Bytes := ("    let r00001cb0: u32 = r0000121a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7226 : bytes7226=statementBytes 7344 (op7226.map lower) ∧ bytes7226.length=54 := by core033_kernel_decide
def op7227 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7227 : Bytes := ("    let r00001cb1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7227 : bytes7227=statementBytes 7345 (op7227.map lower) ∧ bytes7227.length=41 := by core033_kernel_decide
def op7228 : List WordIR.Op := [.bnot 7345]
def bytes7228 : Bytes := ("    let r00001cb2: u32 = !r00001cb1;\n" : String).toByteArray.data.toList
theorem checked7228 : bytes7228=statementBytes 7346 (op7228.map lower) ∧ bytes7228.length=37 := by core033_kernel_decide
def op7229 : List WordIR.Op := [.bxor 7344 7346]
def bytes7229 : Bytes := ("    let r00001cb3: u32 = r00001cb0 ^ r00001cb2;\n" : String).toByteArray.data.toList
theorem checked7229 : bytes7229=statementBytes 7347 (op7229.map lower) ∧ bytes7229.length=48 := by core033_kernel_decide
def op7230 : List WordIR.Op := [.shr 4634 8]
def bytes7230 : Bytes := ("    let r00001cb4: u32 = r0000121a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7230 : bytes7230=statementBytes 7348 (op7230.map lower) ∧ bytes7230.length=54 := by core033_kernel_decide
def op7231 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7231 : Bytes := ("    let r00001cb5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7231 : bytes7231=statementBytes 7349 (op7231.map lower) ∧ bytes7231.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7168,op7169,op7170,op7171,op7172,op7173,op7174,op7175,op7176,op7177,op7178,op7179,op7180,op7181,op7182,op7183,op7184,op7185,op7186,op7187,op7188,op7189,op7190,op7191,op7192,op7193,op7194,op7195,op7196,op7197,op7198,op7199,op7200,op7201,op7202,op7203,op7204,op7205,op7206,op7207,op7208,op7209,op7210,op7211,op7212,op7213,op7214,op7215,op7216,op7217,op7218,op7219,op7220,op7221,op7222,op7223,op7224,op7225,op7226,op7227,op7228,op7229,op7230,op7231]
def chunks : List Bytes := [bytes7168,bytes7169,bytes7170,bytes7171,bytes7172,bytes7173,bytes7174,bytes7175,bytes7176,bytes7177,bytes7178,bytes7179,bytes7180,bytes7181,bytes7182,bytes7183,bytes7184,bytes7185,bytes7186,bytes7187,bytes7188,bytes7189,bytes7190,bytes7191,bytes7192,bytes7193,bytes7194,bytes7195,bytes7196,bytes7197,bytes7198,bytes7199,bytes7200,bytes7201,bytes7202,bytes7203,bytes7204,bytes7205,bytes7206,bytes7207,bytes7208,bytes7209,bytes7210,bytes7211,bytes7212,bytes7213,bytes7214,bytes7215,bytes7216,bytes7217,bytes7218,bytes7219,bytes7220,bytes7221,bytes7222,bytes7223,bytes7224,bytes7225,bytes7226,bytes7227,bytes7228,bytes7229,bytes7230,bytes7231]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7286 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7168.1 (.cons _ _ _ _ _ checked7169.1 (.cons _ _ _ _ _ checked7170.1 (.cons _ _ _ _ _ checked7171.1 (.cons _ _ _ _ _ checked7172.1 (.cons _ _ _ _ _ checked7173.1 (.cons _ _ _ _ _ checked7174.1 (.cons _ _ _ _ _ checked7175.1 (.cons _ _ _ _ _ checked7176.1 (.cons _ _ _ _ _ checked7177.1 (.cons _ _ _ _ _ checked7178.1 (.cons _ _ _ _ _ checked7179.1 (.cons _ _ _ _ _ checked7180.1 (.cons _ _ _ _ _ checked7181.1 (.cons _ _ _ _ _ checked7182.1 (.cons _ _ _ _ _ checked7183.1 (.cons _ _ _ _ _ checked7184.1 (.cons _ _ _ _ _ checked7185.1 (.cons _ _ _ _ _ checked7186.1 (.cons _ _ _ _ _ checked7187.1 (.cons _ _ _ _ _ checked7188.1 (.cons _ _ _ _ _ checked7189.1 (.cons _ _ _ _ _ checked7190.1 (.cons _ _ _ _ _ checked7191.1 (.cons _ _ _ _ _ checked7192.1 (.cons _ _ _ _ _ checked7193.1 (.cons _ _ _ _ _ checked7194.1 (.cons _ _ _ _ _ checked7195.1 (.cons _ _ _ _ _ checked7196.1 (.cons _ _ _ _ _ checked7197.1 (.cons _ _ _ _ _ checked7198.1 (.cons _ _ _ _ _ checked7199.1 (.cons _ _ _ _ _ checked7200.1 (.cons _ _ _ _ _ checked7201.1 (.cons _ _ _ _ _ checked7202.1 (.cons _ _ _ _ _ checked7203.1 (.cons _ _ _ _ _ checked7204.1 (.cons _ _ _ _ _ checked7205.1 (.cons _ _ _ _ _ checked7206.1 (.cons _ _ _ _ _ checked7207.1 (.cons _ _ _ _ _ checked7208.1 (.cons _ _ _ _ _ checked7209.1 (.cons _ _ _ _ _ checked7210.1 (.cons _ _ _ _ _ checked7211.1 (.cons _ _ _ _ _ checked7212.1 (.cons _ _ _ _ _ checked7213.1 (.cons _ _ _ _ _ checked7214.1 (.cons _ _ _ _ _ checked7215.1 (.cons _ _ _ _ _ checked7216.1 (.cons _ _ _ _ _ checked7217.1 (.cons _ _ _ _ _ checked7218.1 (.cons _ _ _ _ _ checked7219.1 (.cons _ _ _ _ _ checked7220.1 (.cons _ _ _ _ _ checked7221.1 (.cons _ _ _ _ _ checked7222.1 (.cons _ _ _ _ _ checked7223.1 (.cons _ _ _ _ _ checked7224.1 (.cons _ _ _ _ _ checked7225.1 (.cons _ _ _ _ _ checked7226.1 (.cons _ _ _ _ _ checked7227.1 (.cons _ _ _ _ _ checked7228.1 (.cons _ _ _ _ _ checked7229.1 (.cons _ _ _ _ _ checked7230.1 (.cons _ _ _ _ _ checked7231.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7286 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7168.2,checked7169.2,checked7170.2,checked7171.2,checked7172.2,checked7173.2,checked7174.2,checked7175.2,checked7176.2,checked7177.2,checked7178.2,checked7179.2,checked7180.2,checked7181.2,checked7182.2,checked7183.2,checked7184.2,checked7185.2,checked7186.2,checked7187.2,checked7188.2,checked7189.2,checked7190.2,checked7191.2,checked7192.2,checked7193.2,checked7194.2,checked7195.2,checked7196.2,checked7197.2,checked7198.2,checked7199.2,checked7200.2,checked7201.2,checked7202.2,checked7203.2,checked7204.2,checked7205.2,checked7206.2,checked7207.2,checked7208.2,checked7209.2,checked7210.2,checked7211.2,checked7212.2,checked7213.2,checked7214.2,checked7215.2,checked7216.2,checked7217.2,checked7218.2,checked7219.2,checked7220.2,checked7221.2,checked7222.2,checked7223.2,checked7224.2,checked7225.2,checked7226.2,checked7227.2,checked7228.2,checked7229.2,checked7230.2,checked7231.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup112
