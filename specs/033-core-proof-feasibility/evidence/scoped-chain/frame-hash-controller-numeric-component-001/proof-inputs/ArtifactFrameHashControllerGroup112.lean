import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup112
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7168 : List WordIR.Op := [.badd 7209 7210]
def bytes7168 : Bytes := ("    let r00001c2b: u32 = r00001c29.wrapping_add(r00001c2a);\n" : String).toByteArray.data.toList
theorem checked7168 : bytes7168=statementBytes 7211 (op7168.map lower) ∧ bytes7168.length=60 := by core033_kernel_decide
def op7169 : List WordIR.Op := [.badd 7211 5206]
def bytes7169 : Bytes := ("    let r00001c2c: u32 = r00001c2b.wrapping_add(r00001456);\n" : String).toByteArray.data.toList
theorem checked7169 : bytes7169=statementBytes 7212 (op7169.map lower) ∧ bytes7169.length=60 := by core033_kernel_decide
def op7170 : List WordIR.Op := [.rotr 7197 2]
def bytes7170 : Bytes := ("    let r00001c2d: u32 = r00001c1d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7170 : bytes7170=statementBytes 7213 (op7170.map lower) ∧ bytes7170.length=65 := by core033_kernel_decide
def op7171 : List WordIR.Op := [.rotr 7197 13]
def bytes7171 : Bytes := ("    let r00001c2e: u32 = r00001c1d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7171 : bytes7171=statementBytes 7214 (op7171.map lower) ∧ bytes7171.length=65 := by core033_kernel_decide
def op7172 : List WordIR.Op := [.bxor 7213 7214]
def bytes7172 : Bytes := ("    let r00001c2f: u32 = r00001c2d ^ r00001c2e;\n" : String).toByteArray.data.toList
theorem checked7172 : bytes7172=statementBytes 7215 (op7172.map lower) ∧ bytes7172.length=48 := by core033_kernel_decide
def op7173 : List WordIR.Op := [.rotr 7197 22]
def bytes7173 : Bytes := ("    let r00001c30: u32 = r00001c1d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7173 : bytes7173=statementBytes 7216 (op7173.map lower) ∧ bytes7173.length=65 := by core033_kernel_decide
def op7174 : List WordIR.Op := [.bxor 7215 7216]
def bytes7174 : Bytes := ("    let r00001c31: u32 = r00001c2f ^ r00001c30;\n" : String).toByteArray.data.toList
theorem checked7174 : bytes7174=statementBytes 7217 (op7174.map lower) ∧ bytes7174.length=48 := by core033_kernel_decide
def op7175 : List WordIR.Op := [.band 7197 7170]
def bytes7175 : Bytes := ("    let r00001c32: u32 = r00001c1d & r00001c02;\n" : String).toByteArray.data.toList
theorem checked7175 : bytes7175=statementBytes 7218 (op7175.map lower) ∧ bytes7175.length=48 := by core033_kernel_decide
def op7176 : List WordIR.Op := [.band 7197 7143]
def bytes7176 : Bytes := ("    let r00001c33: u32 = r00001c1d & r00001be7;\n" : String).toByteArray.data.toList
theorem checked7176 : bytes7176=statementBytes 7219 (op7176.map lower) ∧ bytes7176.length=48 := by core033_kernel_decide
def op7177 : List WordIR.Op := [.bxor 7218 7219]
def bytes7177 : Bytes := ("    let r00001c34: u32 = r00001c32 ^ r00001c33;\n" : String).toByteArray.data.toList
theorem checked7177 : bytes7177=statementBytes 7220 (op7177.map lower) ∧ bytes7177.length=48 := by core033_kernel_decide
def op7178 : List WordIR.Op := [.band 7170 7143]
def bytes7178 : Bytes := ("    let r00001c35: u32 = r00001c02 & r00001be7;\n" : String).toByteArray.data.toList
theorem checked7178 : bytes7178=statementBytes 7221 (op7178.map lower) ∧ bytes7178.length=48 := by core033_kernel_decide
def op7179 : List WordIR.Op := [.bxor 7220 7221]
def bytes7179 : Bytes := ("    let r00001c36: u32 = r00001c34 ^ r00001c35;\n" : String).toByteArray.data.toList
theorem checked7179 : bytes7179=statementBytes 7222 (op7179.map lower) ∧ bytes7179.length=48 := by core033_kernel_decide
def op7180 : List WordIR.Op := [.badd 7217 7222]
def bytes7180 : Bytes := ("    let r00001c37: u32 = r00001c31.wrapping_add(r00001c36);\n" : String).toByteArray.data.toList
theorem checked7180 : bytes7180=statementBytes 7223 (op7180.map lower) ∧ bytes7180.length=60 := by core033_kernel_decide
def op7181 : List WordIR.Op := [.badd 7212 7223]
def bytes7181 : Bytes := ("    let r00001c38: u32 = r00001c2c.wrapping_add(r00001c37);\n" : String).toByteArray.data.toList
theorem checked7181 : bytes7181=statementBytes 7224 (op7181.map lower) ∧ bytes7181.length=60 := by core033_kernel_decide
def op7182 : List WordIR.Op := [.badd 7116 7212]
def bytes7182 : Bytes := ("    let r00001c39: u32 = r00001bcc.wrapping_add(r00001c2c);\n" : String).toByteArray.data.toList
theorem checked7182 : bytes7182=statementBytes 7225 (op7182.map lower) ∧ bytes7182.length=60 := by core033_kernel_decide
def op7183 : List WordIR.Op := [.rotr 7225 6]
def bytes7183 : Bytes := ("    let r00001c3a: u32 = r00001c39.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7183 : bytes7183=statementBytes 7226 (op7183.map lower) ∧ bytes7183.length=65 := by core033_kernel_decide
def op7184 : List WordIR.Op := [.rotr 7225 11]
def bytes7184 : Bytes := ("    let r00001c3b: u32 = r00001c39.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7184 : bytes7184=statementBytes 7227 (op7184.map lower) ∧ bytes7184.length=65 := by core033_kernel_decide
def op7185 : List WordIR.Op := [.bxor 7226 7227]
def bytes7185 : Bytes := ("    let r00001c3c: u32 = r00001c3a ^ r00001c3b;\n" : String).toByteArray.data.toList
theorem checked7185 : bytes7185=statementBytes 7228 (op7185.map lower) ∧ bytes7185.length=48 := by core033_kernel_decide
def op7186 : List WordIR.Op := [.rotr 7225 25]
def bytes7186 : Bytes := ("    let r00001c3d: u32 = r00001c39.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7186 : bytes7186=statementBytes 7229 (op7186.map lower) ∧ bytes7186.length=65 := by core033_kernel_decide
def op7187 : List WordIR.Op := [.bxor 7228 7229]
def bytes7187 : Bytes := ("    let r00001c3e: u32 = r00001c3c ^ r00001c3d;\n" : String).toByteArray.data.toList
theorem checked7187 : bytes7187=statementBytes 7230 (op7187.map lower) ∧ bytes7187.length=48 := by core033_kernel_decide
def op7188 : List WordIR.Op := [.badd 7144 7230]
def bytes7188 : Bytes := ("    let r00001c3f: u32 = r00001be8.wrapping_add(r00001c3e);\n" : String).toByteArray.data.toList
theorem checked7188 : bytes7188=statementBytes 7231 (op7188.map lower) ∧ bytes7188.length=60 := by core033_kernel_decide
def op7189 : List WordIR.Op := [.band 7225 7198]
def bytes7189 : Bytes := ("    let r00001c40: u32 = r00001c39 & r00001c1e;\n" : String).toByteArray.data.toList
theorem checked7189 : bytes7189=statementBytes 7232 (op7189.map lower) ∧ bytes7189.length=48 := by core033_kernel_decide
def op7190 : List WordIR.Op := [.bnot 7225]
def bytes7190 : Bytes := ("    let r00001c41: u32 = !r00001c39;\n" : String).toByteArray.data.toList
theorem checked7190 : bytes7190=statementBytes 7233 (op7190.map lower) ∧ bytes7190.length=37 := by core033_kernel_decide
def op7191 : List WordIR.Op := [.band 7233 7171]
def bytes7191 : Bytes := ("    let r00001c42: u32 = r00001c41 & r00001c03;\n" : String).toByteArray.data.toList
theorem checked7191 : bytes7191=statementBytes 7234 (op7191.map lower) ∧ bytes7191.length=48 := by core033_kernel_decide
def op7192 : List WordIR.Op := [.bxor 7232 7234]
def bytes7192 : Bytes := ("    let r00001c43: u32 = r00001c40 ^ r00001c42;\n" : String).toByteArray.data.toList
theorem checked7192 : bytes7192=statementBytes 7235 (op7192.map lower) ∧ bytes7192.length=48 := by core033_kernel_decide
def op7193 : List WordIR.Op := [.badd 7231 7235]
def bytes7193 : Bytes := ("    let r00001c44: u32 = r00001c3f.wrapping_add(r00001c43);\n" : String).toByteArray.data.toList
theorem checked7193 : bytes7193=statementBytes 7236 (op7193.map lower) ∧ bytes7193.length=60 := by core033_kernel_decide
def op7194 : List WordIR.Op := [.literal (BitVec.ofNat 32 2870763221)]
def bytes7194 : Bytes := ("    let r00001c45: u32 = 0xab1c5ed5_u32;\n" : String).toByteArray.data.toList
theorem checked7194 : bytes7194=statementBytes 7237 (op7194.map lower) ∧ bytes7194.length=41 := by core033_kernel_decide
def op7195 : List WordIR.Op := [.badd 7236 7237]
def bytes7195 : Bytes := ("    let r00001c46: u32 = r00001c44.wrapping_add(r00001c45);\n" : String).toByteArray.data.toList
theorem checked7195 : bytes7195=statementBytes 7238 (op7195.map lower) ∧ bytes7195.length=60 := by core033_kernel_decide
def op7196 : List WordIR.Op := [.badd 7238 5212]
def bytes7196 : Bytes := ("    let r00001c47: u32 = r00001c46.wrapping_add(r0000145c);\n" : String).toByteArray.data.toList
theorem checked7196 : bytes7196=statementBytes 7239 (op7196.map lower) ∧ bytes7196.length=60 := by core033_kernel_decide
def op7197 : List WordIR.Op := [.rotr 7224 2]
def bytes7197 : Bytes := ("    let r00001c48: u32 = r00001c38.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7197 : bytes7197=statementBytes 7240 (op7197.map lower) ∧ bytes7197.length=65 := by core033_kernel_decide
def op7198 : List WordIR.Op := [.rotr 7224 13]
def bytes7198 : Bytes := ("    let r00001c49: u32 = r00001c38.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7198 : bytes7198=statementBytes 7241 (op7198.map lower) ∧ bytes7198.length=65 := by core033_kernel_decide
def op7199 : List WordIR.Op := [.bxor 7240 7241]
def bytes7199 : Bytes := ("    let r00001c4a: u32 = r00001c48 ^ r00001c49;\n" : String).toByteArray.data.toList
theorem checked7199 : bytes7199=statementBytes 7242 (op7199.map lower) ∧ bytes7199.length=48 := by core033_kernel_decide
def op7200 : List WordIR.Op := [.rotr 7224 22]
def bytes7200 : Bytes := ("    let r00001c4b: u32 = r00001c38.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7200 : bytes7200=statementBytes 7243 (op7200.map lower) ∧ bytes7200.length=65 := by core033_kernel_decide
def op7201 : List WordIR.Op := [.bxor 7242 7243]
def bytes7201 : Bytes := ("    let r00001c4c: u32 = r00001c4a ^ r00001c4b;\n" : String).toByteArray.data.toList
theorem checked7201 : bytes7201=statementBytes 7244 (op7201.map lower) ∧ bytes7201.length=48 := by core033_kernel_decide
def op7202 : List WordIR.Op := [.band 7224 7197]
def bytes7202 : Bytes := ("    let r00001c4d: u32 = r00001c38 & r00001c1d;\n" : String).toByteArray.data.toList
theorem checked7202 : bytes7202=statementBytes 7245 (op7202.map lower) ∧ bytes7202.length=48 := by core033_kernel_decide
def op7203 : List WordIR.Op := [.band 7224 7170]
def bytes7203 : Bytes := ("    let r00001c4e: u32 = r00001c38 & r00001c02;\n" : String).toByteArray.data.toList
theorem checked7203 : bytes7203=statementBytes 7246 (op7203.map lower) ∧ bytes7203.length=48 := by core033_kernel_decide
def op7204 : List WordIR.Op := [.bxor 7245 7246]
def bytes7204 : Bytes := ("    let r00001c4f: u32 = r00001c4d ^ r00001c4e;\n" : String).toByteArray.data.toList
theorem checked7204 : bytes7204=statementBytes 7247 (op7204.map lower) ∧ bytes7204.length=48 := by core033_kernel_decide
def op7205 : List WordIR.Op := [.band 7197 7170]
def bytes7205 : Bytes := ("    let r00001c50: u32 = r00001c1d & r00001c02;\n" : String).toByteArray.data.toList
theorem checked7205 : bytes7205=statementBytes 7248 (op7205.map lower) ∧ bytes7205.length=48 := by core033_kernel_decide
def op7206 : List WordIR.Op := [.bxor 7247 7248]
def bytes7206 : Bytes := ("    let r00001c51: u32 = r00001c4f ^ r00001c50;\n" : String).toByteArray.data.toList
theorem checked7206 : bytes7206=statementBytes 7249 (op7206.map lower) ∧ bytes7206.length=48 := by core033_kernel_decide
def op7207 : List WordIR.Op := [.badd 7244 7249]
def bytes7207 : Bytes := ("    let r00001c52: u32 = r00001c4c.wrapping_add(r00001c51);\n" : String).toByteArray.data.toList
theorem checked7207 : bytes7207=statementBytes 7250 (op7207.map lower) ∧ bytes7207.length=60 := by core033_kernel_decide
def op7208 : List WordIR.Op := [.badd 7239 7250]
def bytes7208 : Bytes := ("    let r00001c53: u32 = r00001c47.wrapping_add(r00001c52);\n" : String).toByteArray.data.toList
theorem checked7208 : bytes7208=statementBytes 7251 (op7208.map lower) ∧ bytes7208.length=60 := by core033_kernel_decide
def op7209 : List WordIR.Op := [.badd 7143 7239]
def bytes7209 : Bytes := ("    let r00001c54: u32 = r00001be7.wrapping_add(r00001c47);\n" : String).toByteArray.data.toList
theorem checked7209 : bytes7209=statementBytes 7252 (op7209.map lower) ∧ bytes7209.length=60 := by core033_kernel_decide
def op7210 : List WordIR.Op := [.rotr 7252 6]
def bytes7210 : Bytes := ("    let r00001c55: u32 = r00001c54.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7210 : bytes7210=statementBytes 7253 (op7210.map lower) ∧ bytes7210.length=65 := by core033_kernel_decide
def op7211 : List WordIR.Op := [.rotr 7252 11]
def bytes7211 : Bytes := ("    let r00001c56: u32 = r00001c54.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7211 : bytes7211=statementBytes 7254 (op7211.map lower) ∧ bytes7211.length=65 := by core033_kernel_decide
def op7212 : List WordIR.Op := [.bxor 7253 7254]
def bytes7212 : Bytes := ("    let r00001c57: u32 = r00001c55 ^ r00001c56;\n" : String).toByteArray.data.toList
theorem checked7212 : bytes7212=statementBytes 7255 (op7212.map lower) ∧ bytes7212.length=48 := by core033_kernel_decide
def op7213 : List WordIR.Op := [.rotr 7252 25]
def bytes7213 : Bytes := ("    let r00001c58: u32 = r00001c54.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7213 : bytes7213=statementBytes 7256 (op7213.map lower) ∧ bytes7213.length=65 := by core033_kernel_decide
def op7214 : List WordIR.Op := [.bxor 7255 7256]
def bytes7214 : Bytes := ("    let r00001c59: u32 = r00001c57 ^ r00001c58;\n" : String).toByteArray.data.toList
theorem checked7214 : bytes7214=statementBytes 7257 (op7214.map lower) ∧ bytes7214.length=48 := by core033_kernel_decide
def op7215 : List WordIR.Op := [.badd 7171 7257]
def bytes7215 : Bytes := ("    let r00001c5a: u32 = r00001c03.wrapping_add(r00001c59);\n" : String).toByteArray.data.toList
theorem checked7215 : bytes7215=statementBytes 7258 (op7215.map lower) ∧ bytes7215.length=60 := by core033_kernel_decide
def op7216 : List WordIR.Op := [.band 7252 7225]
def bytes7216 : Bytes := ("    let r00001c5b: u32 = r00001c54 & r00001c39;\n" : String).toByteArray.data.toList
theorem checked7216 : bytes7216=statementBytes 7259 (op7216.map lower) ∧ bytes7216.length=48 := by core033_kernel_decide
def op7217 : List WordIR.Op := [.bnot 7252]
def bytes7217 : Bytes := ("    let r00001c5c: u32 = !r00001c54;\n" : String).toByteArray.data.toList
theorem checked7217 : bytes7217=statementBytes 7260 (op7217.map lower) ∧ bytes7217.length=37 := by core033_kernel_decide
def op7218 : List WordIR.Op := [.band 7260 7198]
def bytes7218 : Bytes := ("    let r00001c5d: u32 = r00001c5c & r00001c1e;\n" : String).toByteArray.data.toList
theorem checked7218 : bytes7218=statementBytes 7261 (op7218.map lower) ∧ bytes7218.length=48 := by core033_kernel_decide
def op7219 : List WordIR.Op := [.bxor 7259 7261]
def bytes7219 : Bytes := ("    let r00001c5e: u32 = r00001c5b ^ r00001c5d;\n" : String).toByteArray.data.toList
theorem checked7219 : bytes7219=statementBytes 7262 (op7219.map lower) ∧ bytes7219.length=48 := by core033_kernel_decide
def op7220 : List WordIR.Op := [.badd 7258 7262]
def bytes7220 : Bytes := ("    let r00001c5f: u32 = r00001c5a.wrapping_add(r00001c5e);\n" : String).toByteArray.data.toList
theorem checked7220 : bytes7220=statementBytes 7263 (op7220.map lower) ∧ bytes7220.length=60 := by core033_kernel_decide
def op7221 : List WordIR.Op := [.literal (BitVec.ofNat 32 3624381080)]
def bytes7221 : Bytes := ("    let r00001c60: u32 = 0xd807aa98_u32;\n" : String).toByteArray.data.toList
theorem checked7221 : bytes7221=statementBytes 7264 (op7221.map lower) ∧ bytes7221.length=41 := by core033_kernel_decide
def op7222 : List WordIR.Op := [.badd 7263 7264]
def bytes7222 : Bytes := ("    let r00001c61: u32 = r00001c5f.wrapping_add(r00001c60);\n" : String).toByteArray.data.toList
theorem checked7222 : bytes7222=statementBytes 7265 (op7222.map lower) ∧ bytes7222.length=60 := by core033_kernel_decide
def op7223 : List WordIR.Op := [.badd 7265 5218]
def bytes7223 : Bytes := ("    let r00001c62: u32 = r00001c61.wrapping_add(r00001462);\n" : String).toByteArray.data.toList
theorem checked7223 : bytes7223=statementBytes 7266 (op7223.map lower) ∧ bytes7223.length=60 := by core033_kernel_decide
def op7224 : List WordIR.Op := [.rotr 7251 2]
def bytes7224 : Bytes := ("    let r00001c63: u32 = r00001c53.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7224 : bytes7224=statementBytes 7267 (op7224.map lower) ∧ bytes7224.length=65 := by core033_kernel_decide
def op7225 : List WordIR.Op := [.rotr 7251 13]
def bytes7225 : Bytes := ("    let r00001c64: u32 = r00001c53.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7225 : bytes7225=statementBytes 7268 (op7225.map lower) ∧ bytes7225.length=65 := by core033_kernel_decide
def op7226 : List WordIR.Op := [.bxor 7267 7268]
def bytes7226 : Bytes := ("    let r00001c65: u32 = r00001c63 ^ r00001c64;\n" : String).toByteArray.data.toList
theorem checked7226 : bytes7226=statementBytes 7269 (op7226.map lower) ∧ bytes7226.length=48 := by core033_kernel_decide
def op7227 : List WordIR.Op := [.rotr 7251 22]
def bytes7227 : Bytes := ("    let r00001c66: u32 = r00001c53.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7227 : bytes7227=statementBytes 7270 (op7227.map lower) ∧ bytes7227.length=65 := by core033_kernel_decide
def op7228 : List WordIR.Op := [.bxor 7269 7270]
def bytes7228 : Bytes := ("    let r00001c67: u32 = r00001c65 ^ r00001c66;\n" : String).toByteArray.data.toList
theorem checked7228 : bytes7228=statementBytes 7271 (op7228.map lower) ∧ bytes7228.length=48 := by core033_kernel_decide
def op7229 : List WordIR.Op := [.band 7251 7224]
def bytes7229 : Bytes := ("    let r00001c68: u32 = r00001c53 & r00001c38;\n" : String).toByteArray.data.toList
theorem checked7229 : bytes7229=statementBytes 7272 (op7229.map lower) ∧ bytes7229.length=48 := by core033_kernel_decide
def op7230 : List WordIR.Op := [.band 7251 7197]
def bytes7230 : Bytes := ("    let r00001c69: u32 = r00001c53 & r00001c1d;\n" : String).toByteArray.data.toList
theorem checked7230 : bytes7230=statementBytes 7273 (op7230.map lower) ∧ bytes7230.length=48 := by core033_kernel_decide
def op7231 : List WordIR.Op := [.bxor 7272 7273]
def bytes7231 : Bytes := ("    let r00001c6a: u32 = r00001c68 ^ r00001c69;\n" : String).toByteArray.data.toList
theorem checked7231 : bytes7231=statementBytes 7274 (op7231.map lower) ∧ bytes7231.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7168,op7169,op7170,op7171,op7172,op7173,op7174,op7175,op7176,op7177,op7178,op7179,op7180,op7181,op7182,op7183,op7184,op7185,op7186,op7187,op7188,op7189,op7190,op7191,op7192,op7193,op7194,op7195,op7196,op7197,op7198,op7199,op7200,op7201,op7202,op7203,op7204,op7205,op7206,op7207,op7208,op7209,op7210,op7211,op7212,op7213,op7214,op7215,op7216,op7217,op7218,op7219,op7220,op7221,op7222,op7223,op7224,op7225,op7226,op7227,op7228,op7229,op7230,op7231]
def chunks : List Bytes := [bytes7168,bytes7169,bytes7170,bytes7171,bytes7172,bytes7173,bytes7174,bytes7175,bytes7176,bytes7177,bytes7178,bytes7179,bytes7180,bytes7181,bytes7182,bytes7183,bytes7184,bytes7185,bytes7186,bytes7187,bytes7188,bytes7189,bytes7190,bytes7191,bytes7192,bytes7193,bytes7194,bytes7195,bytes7196,bytes7197,bytes7198,bytes7199,bytes7200,bytes7201,bytes7202,bytes7203,bytes7204,bytes7205,bytes7206,bytes7207,bytes7208,bytes7209,bytes7210,bytes7211,bytes7212,bytes7213,bytes7214,bytes7215,bytes7216,bytes7217,bytes7218,bytes7219,bytes7220,bytes7221,bytes7222,bytes7223,bytes7224,bytes7225,bytes7226,bytes7227,bytes7228,bytes7229,bytes7230,bytes7231]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7211 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7168.1 (.cons _ _ _ _ _ checked7169.1 (.cons _ _ _ _ _ checked7170.1 (.cons _ _ _ _ _ checked7171.1 (.cons _ _ _ _ _ checked7172.1 (.cons _ _ _ _ _ checked7173.1 (.cons _ _ _ _ _ checked7174.1 (.cons _ _ _ _ _ checked7175.1 (.cons _ _ _ _ _ checked7176.1 (.cons _ _ _ _ _ checked7177.1 (.cons _ _ _ _ _ checked7178.1 (.cons _ _ _ _ _ checked7179.1 (.cons _ _ _ _ _ checked7180.1 (.cons _ _ _ _ _ checked7181.1 (.cons _ _ _ _ _ checked7182.1 (.cons _ _ _ _ _ checked7183.1 (.cons _ _ _ _ _ checked7184.1 (.cons _ _ _ _ _ checked7185.1 (.cons _ _ _ _ _ checked7186.1 (.cons _ _ _ _ _ checked7187.1 (.cons _ _ _ _ _ checked7188.1 (.cons _ _ _ _ _ checked7189.1 (.cons _ _ _ _ _ checked7190.1 (.cons _ _ _ _ _ checked7191.1 (.cons _ _ _ _ _ checked7192.1 (.cons _ _ _ _ _ checked7193.1 (.cons _ _ _ _ _ checked7194.1 (.cons _ _ _ _ _ checked7195.1 (.cons _ _ _ _ _ checked7196.1 (.cons _ _ _ _ _ checked7197.1 (.cons _ _ _ _ _ checked7198.1 (.cons _ _ _ _ _ checked7199.1 (.cons _ _ _ _ _ checked7200.1 (.cons _ _ _ _ _ checked7201.1 (.cons _ _ _ _ _ checked7202.1 (.cons _ _ _ _ _ checked7203.1 (.cons _ _ _ _ _ checked7204.1 (.cons _ _ _ _ _ checked7205.1 (.cons _ _ _ _ _ checked7206.1 (.cons _ _ _ _ _ checked7207.1 (.cons _ _ _ _ _ checked7208.1 (.cons _ _ _ _ _ checked7209.1 (.cons _ _ _ _ _ checked7210.1 (.cons _ _ _ _ _ checked7211.1 (.cons _ _ _ _ _ checked7212.1 (.cons _ _ _ _ _ checked7213.1 (.cons _ _ _ _ _ checked7214.1 (.cons _ _ _ _ _ checked7215.1 (.cons _ _ _ _ _ checked7216.1 (.cons _ _ _ _ _ checked7217.1 (.cons _ _ _ _ _ checked7218.1 (.cons _ _ _ _ _ checked7219.1 (.cons _ _ _ _ _ checked7220.1 (.cons _ _ _ _ _ checked7221.1 (.cons _ _ _ _ _ checked7222.1 (.cons _ _ _ _ _ checked7223.1 (.cons _ _ _ _ _ checked7224.1 (.cons _ _ _ _ _ checked7225.1 (.cons _ _ _ _ _ checked7226.1 (.cons _ _ _ _ _ checked7227.1 (.cons _ _ _ _ _ checked7228.1 (.cons _ _ _ _ _ checked7229.1 (.cons _ _ _ _ _ checked7230.1 (.cons _ _ _ _ _ checked7231.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7211 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3483 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7168.2,checked7169.2,checked7170.2,checked7171.2,checked7172.2,checked7173.2,checked7174.2,checked7175.2,checked7176.2,checked7177.2,checked7178.2,checked7179.2,checked7180.2,checked7181.2,checked7182.2,checked7183.2,checked7184.2,checked7185.2,checked7186.2,checked7187.2,checked7188.2,checked7189.2,checked7190.2,checked7191.2,checked7192.2,checked7193.2,checked7194.2,checked7195.2,checked7196.2,checked7197.2,checked7198.2,checked7199.2,checked7200.2,checked7201.2,checked7202.2,checked7203.2,checked7204.2,checked7205.2,checked7206.2,checked7207.2,checked7208.2,checked7209.2,checked7210.2,checked7211.2,checked7212.2,checked7213.2,checked7214.2,checked7215.2,checked7216.2,checked7217.2,checked7218.2,checked7219.2,checked7220.2,checked7221.2,checked7222.2,checked7223.2,checked7224.2,checked7225.2,checked7226.2,checked7227.2,checked7228.2,checked7229.2,checked7230.2,checked7231.2]
  decide
end ArtifactFrameHashControllerGroup112
