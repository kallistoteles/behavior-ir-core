import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup127
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8128 : List WordIR.Op := [.bxor 8222 8223]
def bytes8128 : Bytes := ("    let r00002020: u32 = r0000201e ^ r0000201f;\n" : String).toByteArray.data.toList
theorem checked8128 : bytes8128=statementBytes 8224 (op8128.map lower) ∧ bytes8128.length=48 := by core033_kernel_decide
def op8129 : List WordIR.Op := [.rotr 8206 22]
def bytes8129 : Bytes := ("    let r00002021: u32 = r0000200e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8129 : bytes8129=statementBytes 8225 (op8129.map lower) ∧ bytes8129.length=65 := by core033_kernel_decide
def op8130 : List WordIR.Op := [.bxor 8224 8225]
def bytes8130 : Bytes := ("    let r00002022: u32 = r00002020 ^ r00002021;\n" : String).toByteArray.data.toList
theorem checked8130 : bytes8130=statementBytes 8226 (op8130.map lower) ∧ bytes8130.length=48 := by core033_kernel_decide
def op8131 : List WordIR.Op := [.band 8206 8179]
def bytes8131 : Bytes := ("    let r00002023: u32 = r0000200e & r00001ff3;\n" : String).toByteArray.data.toList
theorem checked8131 : bytes8131=statementBytes 8227 (op8131.map lower) ∧ bytes8131.length=48 := by core033_kernel_decide
def op8132 : List WordIR.Op := [.band 8206 8152]
def bytes8132 : Bytes := ("    let r00002024: u32 = r0000200e & r00001fd8;\n" : String).toByteArray.data.toList
theorem checked8132 : bytes8132=statementBytes 8228 (op8132.map lower) ∧ bytes8132.length=48 := by core033_kernel_decide
def op8133 : List WordIR.Op := [.bxor 8227 8228]
def bytes8133 : Bytes := ("    let r00002025: u32 = r00002023 ^ r00002024;\n" : String).toByteArray.data.toList
theorem checked8133 : bytes8133=statementBytes 8229 (op8133.map lower) ∧ bytes8133.length=48 := by core033_kernel_decide
def op8134 : List WordIR.Op := [.band 8179 8152]
def bytes8134 : Bytes := ("    let r00002026: u32 = r00001ff3 & r00001fd8;\n" : String).toByteArray.data.toList
theorem checked8134 : bytes8134=statementBytes 8230 (op8134.map lower) ∧ bytes8134.length=48 := by core033_kernel_decide
def op8135 : List WordIR.Op := [.bxor 8229 8230]
def bytes8135 : Bytes := ("    let r00002027: u32 = r00002025 ^ r00002026;\n" : String).toByteArray.data.toList
theorem checked8135 : bytes8135=statementBytes 8231 (op8135.map lower) ∧ bytes8135.length=48 := by core033_kernel_decide
def op8136 : List WordIR.Op := [.badd 8226 8231]
def bytes8136 : Bytes := ("    let r00002028: u32 = r00002022.wrapping_add(r00002027);\n" : String).toByteArray.data.toList
theorem checked8136 : bytes8136=statementBytes 8232 (op8136.map lower) ∧ bytes8136.length=60 := by core033_kernel_decide
def op8137 : List WordIR.Op := [.badd 8221 8232]
def bytes8137 : Bytes := ("    let r00002029: u32 = r0000201d.wrapping_add(r00002028);\n" : String).toByteArray.data.toList
theorem checked8137 : bytes8137=statementBytes 8233 (op8137.map lower) ∧ bytes8137.length=60 := by core033_kernel_decide
def op8138 : List WordIR.Op := [.badd 8125 8221]
def bytes8138 : Bytes := ("    let r0000202a: u32 = r00001fbd.wrapping_add(r0000201d);\n" : String).toByteArray.data.toList
theorem checked8138 : bytes8138=statementBytes 8234 (op8138.map lower) ∧ bytes8138.length=60 := by core033_kernel_decide
def op8139 : List WordIR.Op := [.rotr 8234 6]
def bytes8139 : Bytes := ("    let r0000202b: u32 = r0000202a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8139 : bytes8139=statementBytes 8235 (op8139.map lower) ∧ bytes8139.length=65 := by core033_kernel_decide
def op8140 : List WordIR.Op := [.rotr 8234 11]
def bytes8140 : Bytes := ("    let r0000202c: u32 = r0000202a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8140 : bytes8140=statementBytes 8236 (op8140.map lower) ∧ bytes8140.length=65 := by core033_kernel_decide
def op8141 : List WordIR.Op := [.bxor 8235 8236]
def bytes8141 : Bytes := ("    let r0000202d: u32 = r0000202b ^ r0000202c;\n" : String).toByteArray.data.toList
theorem checked8141 : bytes8141=statementBytes 8237 (op8141.map lower) ∧ bytes8141.length=48 := by core033_kernel_decide
def op8142 : List WordIR.Op := [.rotr 8234 25]
def bytes8142 : Bytes := ("    let r0000202e: u32 = r0000202a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8142 : bytes8142=statementBytes 8238 (op8142.map lower) ∧ bytes8142.length=65 := by core033_kernel_decide
def op8143 : List WordIR.Op := [.bxor 8237 8238]
def bytes8143 : Bytes := ("    let r0000202f: u32 = r0000202d ^ r0000202e;\n" : String).toByteArray.data.toList
theorem checked8143 : bytes8143=statementBytes 8239 (op8143.map lower) ∧ bytes8143.length=48 := by core033_kernel_decide
def op8144 : List WordIR.Op := [.badd 8153 8239]
def bytes8144 : Bytes := ("    let r00002030: u32 = r00001fd9.wrapping_add(r0000202f);\n" : String).toByteArray.data.toList
theorem checked8144 : bytes8144=statementBytes 8240 (op8144.map lower) ∧ bytes8144.length=60 := by core033_kernel_decide
def op8145 : List WordIR.Op := [.band 8234 8207]
def bytes8145 : Bytes := ("    let r00002031: u32 = r0000202a & r0000200f;\n" : String).toByteArray.data.toList
theorem checked8145 : bytes8145=statementBytes 8241 (op8145.map lower) ∧ bytes8145.length=48 := by core033_kernel_decide
def op8146 : List WordIR.Op := [.bnot 8234]
def bytes8146 : Bytes := ("    let r00002032: u32 = !r0000202a;\n" : String).toByteArray.data.toList
theorem checked8146 : bytes8146=statementBytes 8242 (op8146.map lower) ∧ bytes8146.length=37 := by core033_kernel_decide
def op8147 : List WordIR.Op := [.band 8242 8180]
def bytes8147 : Bytes := ("    let r00002033: u32 = r00002032 & r00001ff4;\n" : String).toByteArray.data.toList
theorem checked8147 : bytes8147=statementBytes 8243 (op8147.map lower) ∧ bytes8147.length=48 := by core033_kernel_decide
def op8148 : List WordIR.Op := [.bxor 8241 8243]
def bytes8148 : Bytes := ("    let r00002034: u32 = r00002031 ^ r00002033;\n" : String).toByteArray.data.toList
theorem checked8148 : bytes8148=statementBytes 8244 (op8148.map lower) ∧ bytes8148.length=48 := by core033_kernel_decide
def op8149 : List WordIR.Op := [.badd 8240 8244]
def bytes8149 : Bytes := ("    let r00002035: u32 = r00002030.wrapping_add(r00002034);\n" : String).toByteArray.data.toList
theorem checked8149 : bytes8149=statementBytes 8245 (op8149.map lower) ∧ bytes8149.length=60 := by core033_kernel_decide
def op8150 : List WordIR.Op := [.literal (BitVec.ofNat 32 2453635748)]
def bytes8150 : Bytes := ("    let r00002036: u32 = 0x923f82a4_u32;\n" : String).toByteArray.data.toList
theorem checked8150 : bytes8150=statementBytes 8246 (op8150.map lower) ∧ bytes8150.length=41 := by core033_kernel_decide
def op8151 : List WordIR.Op := [.badd 8245 8246]
def bytes8151 : Bytes := ("    let r00002037: u32 = r00002035.wrapping_add(r00002036);\n" : String).toByteArray.data.toList
theorem checked8151 : bytes8151=statementBytes 8247 (op8151.map lower) ∧ bytes8151.length=60 := by core033_kernel_decide
def op8152 : List WordIR.Op := [.badd 8247 6242]
def bytes8152 : Bytes := ("    let r00002038: u32 = r00002037.wrapping_add(r00001862);\n" : String).toByteArray.data.toList
theorem checked8152 : bytes8152=statementBytes 8248 (op8152.map lower) ∧ bytes8152.length=60 := by core033_kernel_decide
def op8153 : List WordIR.Op := [.rotr 8233 2]
def bytes8153 : Bytes := ("    let r00002039: u32 = r00002029.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8153 : bytes8153=statementBytes 8249 (op8153.map lower) ∧ bytes8153.length=65 := by core033_kernel_decide
def op8154 : List WordIR.Op := [.rotr 8233 13]
def bytes8154 : Bytes := ("    let r0000203a: u32 = r00002029.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8154 : bytes8154=statementBytes 8250 (op8154.map lower) ∧ bytes8154.length=65 := by core033_kernel_decide
def op8155 : List WordIR.Op := [.bxor 8249 8250]
def bytes8155 : Bytes := ("    let r0000203b: u32 = r00002039 ^ r0000203a;\n" : String).toByteArray.data.toList
theorem checked8155 : bytes8155=statementBytes 8251 (op8155.map lower) ∧ bytes8155.length=48 := by core033_kernel_decide
def op8156 : List WordIR.Op := [.rotr 8233 22]
def bytes8156 : Bytes := ("    let r0000203c: u32 = r00002029.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8156 : bytes8156=statementBytes 8252 (op8156.map lower) ∧ bytes8156.length=65 := by core033_kernel_decide
def op8157 : List WordIR.Op := [.bxor 8251 8252]
def bytes8157 : Bytes := ("    let r0000203d: u32 = r0000203b ^ r0000203c;\n" : String).toByteArray.data.toList
theorem checked8157 : bytes8157=statementBytes 8253 (op8157.map lower) ∧ bytes8157.length=48 := by core033_kernel_decide
def op8158 : List WordIR.Op := [.band 8233 8206]
def bytes8158 : Bytes := ("    let r0000203e: u32 = r00002029 & r0000200e;\n" : String).toByteArray.data.toList
theorem checked8158 : bytes8158=statementBytes 8254 (op8158.map lower) ∧ bytes8158.length=48 := by core033_kernel_decide
def op8159 : List WordIR.Op := [.band 8233 8179]
def bytes8159 : Bytes := ("    let r0000203f: u32 = r00002029 & r00001ff3;\n" : String).toByteArray.data.toList
theorem checked8159 : bytes8159=statementBytes 8255 (op8159.map lower) ∧ bytes8159.length=48 := by core033_kernel_decide
def op8160 : List WordIR.Op := [.bxor 8254 8255]
def bytes8160 : Bytes := ("    let r00002040: u32 = r0000203e ^ r0000203f;\n" : String).toByteArray.data.toList
theorem checked8160 : bytes8160=statementBytes 8256 (op8160.map lower) ∧ bytes8160.length=48 := by core033_kernel_decide
def op8161 : List WordIR.Op := [.band 8206 8179]
def bytes8161 : Bytes := ("    let r00002041: u32 = r0000200e & r00001ff3;\n" : String).toByteArray.data.toList
theorem checked8161 : bytes8161=statementBytes 8257 (op8161.map lower) ∧ bytes8161.length=48 := by core033_kernel_decide
def op8162 : List WordIR.Op := [.bxor 8256 8257]
def bytes8162 : Bytes := ("    let r00002042: u32 = r00002040 ^ r00002041;\n" : String).toByteArray.data.toList
theorem checked8162 : bytes8162=statementBytes 8258 (op8162.map lower) ∧ bytes8162.length=48 := by core033_kernel_decide
def op8163 : List WordIR.Op := [.badd 8253 8258]
def bytes8163 : Bytes := ("    let r00002043: u32 = r0000203d.wrapping_add(r00002042);\n" : String).toByteArray.data.toList
theorem checked8163 : bytes8163=statementBytes 8259 (op8163.map lower) ∧ bytes8163.length=60 := by core033_kernel_decide
def op8164 : List WordIR.Op := [.badd 8248 8259]
def bytes8164 : Bytes := ("    let r00002044: u32 = r00002038.wrapping_add(r00002043);\n" : String).toByteArray.data.toList
theorem checked8164 : bytes8164=statementBytes 8260 (op8164.map lower) ∧ bytes8164.length=60 := by core033_kernel_decide
def op8165 : List WordIR.Op := [.badd 8152 8248]
def bytes8165 : Bytes := ("    let r00002045: u32 = r00001fd8.wrapping_add(r00002038);\n" : String).toByteArray.data.toList
theorem checked8165 : bytes8165=statementBytes 8261 (op8165.map lower) ∧ bytes8165.length=60 := by core033_kernel_decide
def op8166 : List WordIR.Op := [.rotr 8261 6]
def bytes8166 : Bytes := ("    let r00002046: u32 = r00002045.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8166 : bytes8166=statementBytes 8262 (op8166.map lower) ∧ bytes8166.length=65 := by core033_kernel_decide
def op8167 : List WordIR.Op := [.rotr 8261 11]
def bytes8167 : Bytes := ("    let r00002047: u32 = r00002045.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8167 : bytes8167=statementBytes 8263 (op8167.map lower) ∧ bytes8167.length=65 := by core033_kernel_decide
def op8168 : List WordIR.Op := [.bxor 8262 8263]
def bytes8168 : Bytes := ("    let r00002048: u32 = r00002046 ^ r00002047;\n" : String).toByteArray.data.toList
theorem checked8168 : bytes8168=statementBytes 8264 (op8168.map lower) ∧ bytes8168.length=48 := by core033_kernel_decide
def op8169 : List WordIR.Op := [.rotr 8261 25]
def bytes8169 : Bytes := ("    let r00002049: u32 = r00002045.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8169 : bytes8169=statementBytes 8265 (op8169.map lower) ∧ bytes8169.length=65 := by core033_kernel_decide
def op8170 : List WordIR.Op := [.bxor 8264 8265]
def bytes8170 : Bytes := ("    let r0000204a: u32 = r00002048 ^ r00002049;\n" : String).toByteArray.data.toList
theorem checked8170 : bytes8170=statementBytes 8266 (op8170.map lower) ∧ bytes8170.length=48 := by core033_kernel_decide
def op8171 : List WordIR.Op := [.badd 8180 8266]
def bytes8171 : Bytes := ("    let r0000204b: u32 = r00001ff4.wrapping_add(r0000204a);\n" : String).toByteArray.data.toList
theorem checked8171 : bytes8171=statementBytes 8267 (op8171.map lower) ∧ bytes8171.length=60 := by core033_kernel_decide
def op8172 : List WordIR.Op := [.band 8261 8234]
def bytes8172 : Bytes := ("    let r0000204c: u32 = r00002045 & r0000202a;\n" : String).toByteArray.data.toList
theorem checked8172 : bytes8172=statementBytes 8268 (op8172.map lower) ∧ bytes8172.length=48 := by core033_kernel_decide
def op8173 : List WordIR.Op := [.bnot 8261]
def bytes8173 : Bytes := ("    let r0000204d: u32 = !r00002045;\n" : String).toByteArray.data.toList
theorem checked8173 : bytes8173=statementBytes 8269 (op8173.map lower) ∧ bytes8173.length=37 := by core033_kernel_decide
def op8174 : List WordIR.Op := [.band 8269 8207]
def bytes8174 : Bytes := ("    let r0000204e: u32 = r0000204d & r0000200f;\n" : String).toByteArray.data.toList
theorem checked8174 : bytes8174=statementBytes 8270 (op8174.map lower) ∧ bytes8174.length=48 := by core033_kernel_decide
def op8175 : List WordIR.Op := [.bxor 8268 8270]
def bytes8175 : Bytes := ("    let r0000204f: u32 = r0000204c ^ r0000204e;\n" : String).toByteArray.data.toList
theorem checked8175 : bytes8175=statementBytes 8271 (op8175.map lower) ∧ bytes8175.length=48 := by core033_kernel_decide
def op8176 : List WordIR.Op := [.badd 8267 8271]
def bytes8176 : Bytes := ("    let r00002050: u32 = r0000204b.wrapping_add(r0000204f);\n" : String).toByteArray.data.toList
theorem checked8176 : bytes8176=statementBytes 8272 (op8176.map lower) ∧ bytes8176.length=60 := by core033_kernel_decide
def op8177 : List WordIR.Op := [.literal (BitVec.ofNat 32 2870763221)]
def bytes8177 : Bytes := ("    let r00002051: u32 = 0xab1c5ed5_u32;\n" : String).toByteArray.data.toList
theorem checked8177 : bytes8177=statementBytes 8273 (op8177.map lower) ∧ bytes8177.length=41 := by core033_kernel_decide
def op8178 : List WordIR.Op := [.badd 8272 8273]
def bytes8178 : Bytes := ("    let r00002052: u32 = r00002050.wrapping_add(r00002051);\n" : String).toByteArray.data.toList
theorem checked8178 : bytes8178=statementBytes 8274 (op8178.map lower) ∧ bytes8178.length=60 := by core033_kernel_decide
def op8179 : List WordIR.Op := [.badd 8274 6248]
def bytes8179 : Bytes := ("    let r00002053: u32 = r00002052.wrapping_add(r00001868);\n" : String).toByteArray.data.toList
theorem checked8179 : bytes8179=statementBytes 8275 (op8179.map lower) ∧ bytes8179.length=60 := by core033_kernel_decide
def op8180 : List WordIR.Op := [.rotr 8260 2]
def bytes8180 : Bytes := ("    let r00002054: u32 = r00002044.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8180 : bytes8180=statementBytes 8276 (op8180.map lower) ∧ bytes8180.length=65 := by core033_kernel_decide
def op8181 : List WordIR.Op := [.rotr 8260 13]
def bytes8181 : Bytes := ("    let r00002055: u32 = r00002044.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8181 : bytes8181=statementBytes 8277 (op8181.map lower) ∧ bytes8181.length=65 := by core033_kernel_decide
def op8182 : List WordIR.Op := [.bxor 8276 8277]
def bytes8182 : Bytes := ("    let r00002056: u32 = r00002054 ^ r00002055;\n" : String).toByteArray.data.toList
theorem checked8182 : bytes8182=statementBytes 8278 (op8182.map lower) ∧ bytes8182.length=48 := by core033_kernel_decide
def op8183 : List WordIR.Op := [.rotr 8260 22]
def bytes8183 : Bytes := ("    let r00002057: u32 = r00002044.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8183 : bytes8183=statementBytes 8279 (op8183.map lower) ∧ bytes8183.length=65 := by core033_kernel_decide
def op8184 : List WordIR.Op := [.bxor 8278 8279]
def bytes8184 : Bytes := ("    let r00002058: u32 = r00002056 ^ r00002057;\n" : String).toByteArray.data.toList
theorem checked8184 : bytes8184=statementBytes 8280 (op8184.map lower) ∧ bytes8184.length=48 := by core033_kernel_decide
def op8185 : List WordIR.Op := [.band 8260 8233]
def bytes8185 : Bytes := ("    let r00002059: u32 = r00002044 & r00002029;\n" : String).toByteArray.data.toList
theorem checked8185 : bytes8185=statementBytes 8281 (op8185.map lower) ∧ bytes8185.length=48 := by core033_kernel_decide
def op8186 : List WordIR.Op := [.band 8260 8206]
def bytes8186 : Bytes := ("    let r0000205a: u32 = r00002044 & r0000200e;\n" : String).toByteArray.data.toList
theorem checked8186 : bytes8186=statementBytes 8282 (op8186.map lower) ∧ bytes8186.length=48 := by core033_kernel_decide
def op8187 : List WordIR.Op := [.bxor 8281 8282]
def bytes8187 : Bytes := ("    let r0000205b: u32 = r00002059 ^ r0000205a;\n" : String).toByteArray.data.toList
theorem checked8187 : bytes8187=statementBytes 8283 (op8187.map lower) ∧ bytes8187.length=48 := by core033_kernel_decide
def op8188 : List WordIR.Op := [.band 8233 8206]
def bytes8188 : Bytes := ("    let r0000205c: u32 = r00002029 & r0000200e;\n" : String).toByteArray.data.toList
theorem checked8188 : bytes8188=statementBytes 8284 (op8188.map lower) ∧ bytes8188.length=48 := by core033_kernel_decide
def op8189 : List WordIR.Op := [.bxor 8283 8284]
def bytes8189 : Bytes := ("    let r0000205d: u32 = r0000205b ^ r0000205c;\n" : String).toByteArray.data.toList
theorem checked8189 : bytes8189=statementBytes 8285 (op8189.map lower) ∧ bytes8189.length=48 := by core033_kernel_decide
def op8190 : List WordIR.Op := [.badd 8280 8285]
def bytes8190 : Bytes := ("    let r0000205e: u32 = r00002058.wrapping_add(r0000205d);\n" : String).toByteArray.data.toList
theorem checked8190 : bytes8190=statementBytes 8286 (op8190.map lower) ∧ bytes8190.length=60 := by core033_kernel_decide
def op8191 : List WordIR.Op := [.badd 8275 8286]
def bytes8191 : Bytes := ("    let r0000205f: u32 = r00002053.wrapping_add(r0000205e);\n" : String).toByteArray.data.toList
theorem checked8191 : bytes8191=statementBytes 8287 (op8191.map lower) ∧ bytes8191.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8128,op8129,op8130,op8131,op8132,op8133,op8134,op8135,op8136,op8137,op8138,op8139,op8140,op8141,op8142,op8143,op8144,op8145,op8146,op8147,op8148,op8149,op8150,op8151,op8152,op8153,op8154,op8155,op8156,op8157,op8158,op8159,op8160,op8161,op8162,op8163,op8164,op8165,op8166,op8167,op8168,op8169,op8170,op8171,op8172,op8173,op8174,op8175,op8176,op8177,op8178,op8179,op8180,op8181,op8182,op8183,op8184,op8185,op8186,op8187,op8188,op8189,op8190,op8191]
def chunks : List Bytes := [bytes8128,bytes8129,bytes8130,bytes8131,bytes8132,bytes8133,bytes8134,bytes8135,bytes8136,bytes8137,bytes8138,bytes8139,bytes8140,bytes8141,bytes8142,bytes8143,bytes8144,bytes8145,bytes8146,bytes8147,bytes8148,bytes8149,bytes8150,bytes8151,bytes8152,bytes8153,bytes8154,bytes8155,bytes8156,bytes8157,bytes8158,bytes8159,bytes8160,bytes8161,bytes8162,bytes8163,bytes8164,bytes8165,bytes8166,bytes8167,bytes8168,bytes8169,bytes8170,bytes8171,bytes8172,bytes8173,bytes8174,bytes8175,bytes8176,bytes8177,bytes8178,bytes8179,bytes8180,bytes8181,bytes8182,bytes8183,bytes8184,bytes8185,bytes8186,bytes8187,bytes8188,bytes8189,bytes8190,bytes8191]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8224 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8128.1 (.cons _ _ _ _ _ checked8129.1 (.cons _ _ _ _ _ checked8130.1 (.cons _ _ _ _ _ checked8131.1 (.cons _ _ _ _ _ checked8132.1 (.cons _ _ _ _ _ checked8133.1 (.cons _ _ _ _ _ checked8134.1 (.cons _ _ _ _ _ checked8135.1 (.cons _ _ _ _ _ checked8136.1 (.cons _ _ _ _ _ checked8137.1 (.cons _ _ _ _ _ checked8138.1 (.cons _ _ _ _ _ checked8139.1 (.cons _ _ _ _ _ checked8140.1 (.cons _ _ _ _ _ checked8141.1 (.cons _ _ _ _ _ checked8142.1 (.cons _ _ _ _ _ checked8143.1 (.cons _ _ _ _ _ checked8144.1 (.cons _ _ _ _ _ checked8145.1 (.cons _ _ _ _ _ checked8146.1 (.cons _ _ _ _ _ checked8147.1 (.cons _ _ _ _ _ checked8148.1 (.cons _ _ _ _ _ checked8149.1 (.cons _ _ _ _ _ checked8150.1 (.cons _ _ _ _ _ checked8151.1 (.cons _ _ _ _ _ checked8152.1 (.cons _ _ _ _ _ checked8153.1 (.cons _ _ _ _ _ checked8154.1 (.cons _ _ _ _ _ checked8155.1 (.cons _ _ _ _ _ checked8156.1 (.cons _ _ _ _ _ checked8157.1 (.cons _ _ _ _ _ checked8158.1 (.cons _ _ _ _ _ checked8159.1 (.cons _ _ _ _ _ checked8160.1 (.cons _ _ _ _ _ checked8161.1 (.cons _ _ _ _ _ checked8162.1 (.cons _ _ _ _ _ checked8163.1 (.cons _ _ _ _ _ checked8164.1 (.cons _ _ _ _ _ checked8165.1 (.cons _ _ _ _ _ checked8166.1 (.cons _ _ _ _ _ checked8167.1 (.cons _ _ _ _ _ checked8168.1 (.cons _ _ _ _ _ checked8169.1 (.cons _ _ _ _ _ checked8170.1 (.cons _ _ _ _ _ checked8171.1 (.cons _ _ _ _ _ checked8172.1 (.cons _ _ _ _ _ checked8173.1 (.cons _ _ _ _ _ checked8174.1 (.cons _ _ _ _ _ checked8175.1 (.cons _ _ _ _ _ checked8176.1 (.cons _ _ _ _ _ checked8177.1 (.cons _ _ _ _ _ checked8178.1 (.cons _ _ _ _ _ checked8179.1 (.cons _ _ _ _ _ checked8180.1 (.cons _ _ _ _ _ checked8181.1 (.cons _ _ _ _ _ checked8182.1 (.cons _ _ _ _ _ checked8183.1 (.cons _ _ _ _ _ checked8184.1 (.cons _ _ _ _ _ checked8185.1 (.cons _ _ _ _ _ checked8186.1 (.cons _ _ _ _ _ checked8187.1 (.cons _ _ _ _ _ checked8188.1 (.cons _ _ _ _ _ checked8189.1 (.cons _ _ _ _ _ checked8190.1 (.cons _ _ _ _ _ checked8191.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8224 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3449 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8128.2,checked8129.2,checked8130.2,checked8131.2,checked8132.2,checked8133.2,checked8134.2,checked8135.2,checked8136.2,checked8137.2,checked8138.2,checked8139.2,checked8140.2,checked8141.2,checked8142.2,checked8143.2,checked8144.2,checked8145.2,checked8146.2,checked8147.2,checked8148.2,checked8149.2,checked8150.2,checked8151.2,checked8152.2,checked8153.2,checked8154.2,checked8155.2,checked8156.2,checked8157.2,checked8158.2,checked8159.2,checked8160.2,checked8161.2,checked8162.2,checked8163.2,checked8164.2,checked8165.2,checked8166.2,checked8167.2,checked8168.2,checked8169.2,checked8170.2,checked8171.2,checked8172.2,checked8173.2,checked8174.2,checked8175.2,checked8176.2,checked8177.2,checked8178.2,checked8179.2,checked8180.2,checked8181.2,checked8182.2,checked8183.2,checked8184.2,checked8185.2,checked8186.2,checked8187.2,checked8188.2,checked8189.2,checked8190.2,checked8191.2]
  decide
end ArtifactPairedPathRoundGroup127
