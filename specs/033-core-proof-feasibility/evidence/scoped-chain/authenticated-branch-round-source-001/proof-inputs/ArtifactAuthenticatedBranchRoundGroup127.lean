import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup127
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8128 : List WordIR.Op := [.bxor 8244 8245]
def bytes8128 : Bytes := ("    let r00002036: u32 = r00002034 ^ r00002035;\n" : String).toByteArray.data.toList
theorem checked8128 : bytes8128=statementBytes 8246 (op8128.map lower) ∧ bytes8128.length=48 := by core033_kernel_decide
def op8129 : List WordIR.Op := [.badd 8241 8246]
def bytes8129 : Bytes := ("    let r00002037: u32 = r00002031.wrapping_add(r00002036);\n" : String).toByteArray.data.toList
theorem checked8129 : bytes8129=statementBytes 8247 (op8129.map lower) ∧ bytes8129.length=60 := by core033_kernel_decide
def op8130 : List WordIR.Op := [.badd 8247 6937]
def bytes8130 : Bytes := ("    let r00002038: u32 = r00002037.wrapping_add(r00001b19);\n" : String).toByteArray.data.toList
theorem checked8130 : bytes8130=statementBytes 8248 (op8130.map lower) ∧ bytes8130.length=60 := by core033_kernel_decide
def op8131 : List WordIR.Op := [.rotr 8235 17]
def bytes8131 : Bytes := ("    let r00002039: u32 = r0000202b.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8131 : bytes8131=statementBytes 8249 (op8131.map lower) ∧ bytes8131.length=65 := by core033_kernel_decide
def op8132 : List WordIR.Op := [.rotr 8235 19]
def bytes8132 : Bytes := ("    let r0000203a: u32 = r0000202b.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8132 : bytes8132=statementBytes 8250 (op8132.map lower) ∧ bytes8132.length=65 := by core033_kernel_decide
def op8133 : List WordIR.Op := [.bxor 8249 8250]
def bytes8133 : Bytes := ("    let r0000203b: u32 = r00002039 ^ r0000203a;\n" : String).toByteArray.data.toList
theorem checked8133 : bytes8133=statementBytes 8251 (op8133.map lower) ∧ bytes8133.length=48 := by core033_kernel_decide
def op8134 : List WordIR.Op := [.shr 8235 10]
def bytes8134 : Bytes := ("    let r0000203c: u32 = r0000202b >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8134 : bytes8134=statementBytes 8252 (op8134.map lower) ∧ bytes8134.length=54 := by core033_kernel_decide
def op8135 : List WordIR.Op := [.bxor 8251 8252]
def bytes8135 : Bytes := ("    let r0000203d: u32 = r0000203b ^ r0000203c;\n" : String).toByteArray.data.toList
theorem checked8135 : bytes8135=statementBytes 8253 (op8135.map lower) ∧ bytes8135.length=48 := by core033_kernel_decide
def op8136 : List WordIR.Op := [.badd 8253 8170]
def bytes8136 : Bytes := ("    let r0000203e: u32 = r0000203d.wrapping_add(r00001fea);\n" : String).toByteArray.data.toList
theorem checked8136 : bytes8136=statementBytes 8254 (op8136.map lower) ∧ bytes8136.length=60 := by core033_kernel_decide
def op8137 : List WordIR.Op := [.rotr 6949 7]
def bytes8137 : Bytes := ("    let r0000203f: u32 = r00001b25.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8137 : bytes8137=statementBytes 8255 (op8137.map lower) ∧ bytes8137.length=65 := by core033_kernel_decide
def op8138 : List WordIR.Op := [.rotr 6949 18]
def bytes8138 : Bytes := ("    let r00002040: u32 = r00001b25.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8138 : bytes8138=statementBytes 8256 (op8138.map lower) ∧ bytes8138.length=65 := by core033_kernel_decide
def op8139 : List WordIR.Op := [.bxor 8255 8256]
def bytes8139 : Bytes := ("    let r00002041: u32 = r0000203f ^ r00002040;\n" : String).toByteArray.data.toList
theorem checked8139 : bytes8139=statementBytes 8257 (op8139.map lower) ∧ bytes8139.length=48 := by core033_kernel_decide
def op8140 : List WordIR.Op := [.shr 6949 3]
def bytes8140 : Bytes := ("    let r00002042: u32 = r00001b25 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8140 : bytes8140=statementBytes 8258 (op8140.map lower) ∧ bytes8140.length=54 := by core033_kernel_decide
def op8141 : List WordIR.Op := [.bxor 8257 8258]
def bytes8141 : Bytes := ("    let r00002043: u32 = r00002041 ^ r00002042;\n" : String).toByteArray.data.toList
theorem checked8141 : bytes8141=statementBytes 8259 (op8141.map lower) ∧ bytes8141.length=48 := by core033_kernel_decide
def op8142 : List WordIR.Op := [.badd 8254 8259]
def bytes8142 : Bytes := ("    let r00002044: u32 = r0000203e.wrapping_add(r00002043);\n" : String).toByteArray.data.toList
theorem checked8142 : bytes8142=statementBytes 8260 (op8142.map lower) ∧ bytes8142.length=60 := by core033_kernel_decide
def op8143 : List WordIR.Op := [.badd 8260 6943]
def bytes8143 : Bytes := ("    let r00002045: u32 = r00002044.wrapping_add(r00001b1f);\n" : String).toByteArray.data.toList
theorem checked8143 : bytes8143=statementBytes 8261 (op8143.map lower) ∧ bytes8143.length=60 := by core033_kernel_decide
def op8144 : List WordIR.Op := [.rotr 8248 17]
def bytes8144 : Bytes := ("    let r00002046: u32 = r00002038.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8144 : bytes8144=statementBytes 8262 (op8144.map lower) ∧ bytes8144.length=65 := by core033_kernel_decide
def op8145 : List WordIR.Op := [.rotr 8248 19]
def bytes8145 : Bytes := ("    let r00002047: u32 = r00002038.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8145 : bytes8145=statementBytes 8263 (op8145.map lower) ∧ bytes8145.length=65 := by core033_kernel_decide
def op8146 : List WordIR.Op := [.bxor 8262 8263]
def bytes8146 : Bytes := ("    let r00002048: u32 = r00002046 ^ r00002047;\n" : String).toByteArray.data.toList
theorem checked8146 : bytes8146=statementBytes 8264 (op8146.map lower) ∧ bytes8146.length=48 := by core033_kernel_decide
def op8147 : List WordIR.Op := [.shr 8248 10]
def bytes8147 : Bytes := ("    let r00002049: u32 = r00002038 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8147 : bytes8147=statementBytes 8265 (op8147.map lower) ∧ bytes8147.length=54 := by core033_kernel_decide
def op8148 : List WordIR.Op := [.bxor 8264 8265]
def bytes8148 : Bytes := ("    let r0000204a: u32 = r00002048 ^ r00002049;\n" : String).toByteArray.data.toList
theorem checked8148 : bytes8148=statementBytes 8266 (op8148.map lower) ∧ bytes8148.length=48 := by core033_kernel_decide
def op8149 : List WordIR.Op := [.badd 8266 8183]
def bytes8149 : Bytes := ("    let r0000204b: u32 = r0000204a.wrapping_add(r00001ff7);\n" : String).toByteArray.data.toList
theorem checked8149 : bytes8149=statementBytes 8267 (op8149.map lower) ∧ bytes8149.length=60 := by core033_kernel_decide
def op8150 : List WordIR.Op := [.rotr 6955 7]
def bytes8150 : Bytes := ("    let r0000204c: u32 = r00001b2b.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8150 : bytes8150=statementBytes 8268 (op8150.map lower) ∧ bytes8150.length=65 := by core033_kernel_decide
def op8151 : List WordIR.Op := [.rotr 6955 18]
def bytes8151 : Bytes := ("    let r0000204d: u32 = r00001b2b.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8151 : bytes8151=statementBytes 8269 (op8151.map lower) ∧ bytes8151.length=65 := by core033_kernel_decide
def op8152 : List WordIR.Op := [.bxor 8268 8269]
def bytes8152 : Bytes := ("    let r0000204e: u32 = r0000204c ^ r0000204d;\n" : String).toByteArray.data.toList
theorem checked8152 : bytes8152=statementBytes 8270 (op8152.map lower) ∧ bytes8152.length=48 := by core033_kernel_decide
def op8153 : List WordIR.Op := [.shr 6955 3]
def bytes8153 : Bytes := ("    let r0000204f: u32 = r00001b2b >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8153 : bytes8153=statementBytes 8271 (op8153.map lower) ∧ bytes8153.length=54 := by core033_kernel_decide
def op8154 : List WordIR.Op := [.bxor 8270 8271]
def bytes8154 : Bytes := ("    let r00002050: u32 = r0000204e ^ r0000204f;\n" : String).toByteArray.data.toList
theorem checked8154 : bytes8154=statementBytes 8272 (op8154.map lower) ∧ bytes8154.length=48 := by core033_kernel_decide
def op8155 : List WordIR.Op := [.badd 8267 8272]
def bytes8155 : Bytes := ("    let r00002051: u32 = r0000204b.wrapping_add(r00002050);\n" : String).toByteArray.data.toList
theorem checked8155 : bytes8155=statementBytes 8273 (op8155.map lower) ∧ bytes8155.length=60 := by core033_kernel_decide
def op8156 : List WordIR.Op := [.badd 8273 6949]
def bytes8156 : Bytes := ("    let r00002052: u32 = r00002051.wrapping_add(r00001b25);\n" : String).toByteArray.data.toList
theorem checked8156 : bytes8156=statementBytes 8274 (op8156.map lower) ∧ bytes8156.length=60 := by core033_kernel_decide
def op8157 : List WordIR.Op := [.rotr 8261 17]
def bytes8157 : Bytes := ("    let r00002053: u32 = r00002045.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8157 : bytes8157=statementBytes 8275 (op8157.map lower) ∧ bytes8157.length=65 := by core033_kernel_decide
def op8158 : List WordIR.Op := [.rotr 8261 19]
def bytes8158 : Bytes := ("    let r00002054: u32 = r00002045.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8158 : bytes8158=statementBytes 8276 (op8158.map lower) ∧ bytes8158.length=65 := by core033_kernel_decide
def op8159 : List WordIR.Op := [.bxor 8275 8276]
def bytes8159 : Bytes := ("    let r00002055: u32 = r00002053 ^ r00002054;\n" : String).toByteArray.data.toList
theorem checked8159 : bytes8159=statementBytes 8277 (op8159.map lower) ∧ bytes8159.length=48 := by core033_kernel_decide
def op8160 : List WordIR.Op := [.shr 8261 10]
def bytes8160 : Bytes := ("    let r00002056: u32 = r00002045 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8160 : bytes8160=statementBytes 8278 (op8160.map lower) ∧ bytes8160.length=54 := by core033_kernel_decide
def op8161 : List WordIR.Op := [.bxor 8277 8278]
def bytes8161 : Bytes := ("    let r00002057: u32 = r00002055 ^ r00002056;\n" : String).toByteArray.data.toList
theorem checked8161 : bytes8161=statementBytes 8279 (op8161.map lower) ∧ bytes8161.length=48 := by core033_kernel_decide
def op8162 : List WordIR.Op := [.badd 8279 8196]
def bytes8162 : Bytes := ("    let r00002058: u32 = r00002057.wrapping_add(r00002004);\n" : String).toByteArray.data.toList
theorem checked8162 : bytes8162=statementBytes 8280 (op8162.map lower) ∧ bytes8162.length=60 := by core033_kernel_decide
def op8163 : List WordIR.Op := [.rotr 6961 7]
def bytes8163 : Bytes := ("    let r00002059: u32 = r00001b31.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8163 : bytes8163=statementBytes 8281 (op8163.map lower) ∧ bytes8163.length=65 := by core033_kernel_decide
def op8164 : List WordIR.Op := [.rotr 6961 18]
def bytes8164 : Bytes := ("    let r0000205a: u32 = r00001b31.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8164 : bytes8164=statementBytes 8282 (op8164.map lower) ∧ bytes8164.length=65 := by core033_kernel_decide
def op8165 : List WordIR.Op := [.bxor 8281 8282]
def bytes8165 : Bytes := ("    let r0000205b: u32 = r00002059 ^ r0000205a;\n" : String).toByteArray.data.toList
theorem checked8165 : bytes8165=statementBytes 8283 (op8165.map lower) ∧ bytes8165.length=48 := by core033_kernel_decide
def op8166 : List WordIR.Op := [.shr 6961 3]
def bytes8166 : Bytes := ("    let r0000205c: u32 = r00001b31 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8166 : bytes8166=statementBytes 8284 (op8166.map lower) ∧ bytes8166.length=54 := by core033_kernel_decide
def op8167 : List WordIR.Op := [.bxor 8283 8284]
def bytes8167 : Bytes := ("    let r0000205d: u32 = r0000205b ^ r0000205c;\n" : String).toByteArray.data.toList
theorem checked8167 : bytes8167=statementBytes 8285 (op8167.map lower) ∧ bytes8167.length=48 := by core033_kernel_decide
def op8168 : List WordIR.Op := [.badd 8280 8285]
def bytes8168 : Bytes := ("    let r0000205e: u32 = r00002058.wrapping_add(r0000205d);\n" : String).toByteArray.data.toList
theorem checked8168 : bytes8168=statementBytes 8286 (op8168.map lower) ∧ bytes8168.length=60 := by core033_kernel_decide
def op8169 : List WordIR.Op := [.badd 8286 6955]
def bytes8169 : Bytes := ("    let r0000205f: u32 = r0000205e.wrapping_add(r00001b2b);\n" : String).toByteArray.data.toList
theorem checked8169 : bytes8169=statementBytes 8287 (op8169.map lower) ∧ bytes8169.length=60 := by core033_kernel_decide
def op8170 : List WordIR.Op := [.rotr 8274 17]
def bytes8170 : Bytes := ("    let r00002060: u32 = r00002052.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8170 : bytes8170=statementBytes 8288 (op8170.map lower) ∧ bytes8170.length=65 := by core033_kernel_decide
def op8171 : List WordIR.Op := [.rotr 8274 19]
def bytes8171 : Bytes := ("    let r00002061: u32 = r00002052.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8171 : bytes8171=statementBytes 8289 (op8171.map lower) ∧ bytes8171.length=65 := by core033_kernel_decide
def op8172 : List WordIR.Op := [.bxor 8288 8289]
def bytes8172 : Bytes := ("    let r00002062: u32 = r00002060 ^ r00002061;\n" : String).toByteArray.data.toList
theorem checked8172 : bytes8172=statementBytes 8290 (op8172.map lower) ∧ bytes8172.length=48 := by core033_kernel_decide
def op8173 : List WordIR.Op := [.shr 8274 10]
def bytes8173 : Bytes := ("    let r00002063: u32 = r00002052 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8173 : bytes8173=statementBytes 8291 (op8173.map lower) ∧ bytes8173.length=54 := by core033_kernel_decide
def op8174 : List WordIR.Op := [.bxor 8290 8291]
def bytes8174 : Bytes := ("    let r00002064: u32 = r00002062 ^ r00002063;\n" : String).toByteArray.data.toList
theorem checked8174 : bytes8174=statementBytes 8292 (op8174.map lower) ∧ bytes8174.length=48 := by core033_kernel_decide
def op8175 : List WordIR.Op := [.badd 8292 8209]
def bytes8175 : Bytes := ("    let r00002065: u32 = r00002064.wrapping_add(r00002011);\n" : String).toByteArray.data.toList
theorem checked8175 : bytes8175=statementBytes 8293 (op8175.map lower) ∧ bytes8175.length=60 := by core033_kernel_decide
def op8176 : List WordIR.Op := [.rotr 6967 7]
def bytes8176 : Bytes := ("    let r00002066: u32 = r00001b37.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8176 : bytes8176=statementBytes 8294 (op8176.map lower) ∧ bytes8176.length=65 := by core033_kernel_decide
def op8177 : List WordIR.Op := [.rotr 6967 18]
def bytes8177 : Bytes := ("    let r00002067: u32 = r00001b37.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8177 : bytes8177=statementBytes 8295 (op8177.map lower) ∧ bytes8177.length=65 := by core033_kernel_decide
def op8178 : List WordIR.Op := [.bxor 8294 8295]
def bytes8178 : Bytes := ("    let r00002068: u32 = r00002066 ^ r00002067;\n" : String).toByteArray.data.toList
theorem checked8178 : bytes8178=statementBytes 8296 (op8178.map lower) ∧ bytes8178.length=48 := by core033_kernel_decide
def op8179 : List WordIR.Op := [.shr 6967 3]
def bytes8179 : Bytes := ("    let r00002069: u32 = r00001b37 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8179 : bytes8179=statementBytes 8297 (op8179.map lower) ∧ bytes8179.length=54 := by core033_kernel_decide
def op8180 : List WordIR.Op := [.bxor 8296 8297]
def bytes8180 : Bytes := ("    let r0000206a: u32 = r00002068 ^ r00002069;\n" : String).toByteArray.data.toList
theorem checked8180 : bytes8180=statementBytes 8298 (op8180.map lower) ∧ bytes8180.length=48 := by core033_kernel_decide
def op8181 : List WordIR.Op := [.badd 8293 8298]
def bytes8181 : Bytes := ("    let r0000206b: u32 = r00002065.wrapping_add(r0000206a);\n" : String).toByteArray.data.toList
theorem checked8181 : bytes8181=statementBytes 8299 (op8181.map lower) ∧ bytes8181.length=60 := by core033_kernel_decide
def op8182 : List WordIR.Op := [.badd 8299 6961]
def bytes8182 : Bytes := ("    let r0000206c: u32 = r0000206b.wrapping_add(r00001b31);\n" : String).toByteArray.data.toList
theorem checked8182 : bytes8182=statementBytes 8300 (op8182.map lower) ∧ bytes8182.length=60 := by core033_kernel_decide
def op8183 : List WordIR.Op := [.rotr 8287 17]
def bytes8183 : Bytes := ("    let r0000206d: u32 = r0000205f.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8183 : bytes8183=statementBytes 8301 (op8183.map lower) ∧ bytes8183.length=65 := by core033_kernel_decide
def op8184 : List WordIR.Op := [.rotr 8287 19]
def bytes8184 : Bytes := ("    let r0000206e: u32 = r0000205f.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8184 : bytes8184=statementBytes 8302 (op8184.map lower) ∧ bytes8184.length=65 := by core033_kernel_decide
def op8185 : List WordIR.Op := [.bxor 8301 8302]
def bytes8185 : Bytes := ("    let r0000206f: u32 = r0000206d ^ r0000206e;\n" : String).toByteArray.data.toList
theorem checked8185 : bytes8185=statementBytes 8303 (op8185.map lower) ∧ bytes8185.length=48 := by core033_kernel_decide
def op8186 : List WordIR.Op := [.shr 8287 10]
def bytes8186 : Bytes := ("    let r00002070: u32 = r0000205f >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8186 : bytes8186=statementBytes 8304 (op8186.map lower) ∧ bytes8186.length=54 := by core033_kernel_decide
def op8187 : List WordIR.Op := [.bxor 8303 8304]
def bytes8187 : Bytes := ("    let r00002071: u32 = r0000206f ^ r00002070;\n" : String).toByteArray.data.toList
theorem checked8187 : bytes8187=statementBytes 8305 (op8187.map lower) ∧ bytes8187.length=48 := by core033_kernel_decide
def op8188 : List WordIR.Op := [.badd 8305 8222]
def bytes8188 : Bytes := ("    let r00002072: u32 = r00002071.wrapping_add(r0000201e);\n" : String).toByteArray.data.toList
theorem checked8188 : bytes8188=statementBytes 8306 (op8188.map lower) ∧ bytes8188.length=60 := by core033_kernel_decide
def op8189 : List WordIR.Op := [.rotr 6973 7]
def bytes8189 : Bytes := ("    let r00002073: u32 = r00001b3d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8189 : bytes8189=statementBytes 8307 (op8189.map lower) ∧ bytes8189.length=65 := by core033_kernel_decide
def op8190 : List WordIR.Op := [.rotr 6973 18]
def bytes8190 : Bytes := ("    let r00002074: u32 = r00001b3d.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8190 : bytes8190=statementBytes 8308 (op8190.map lower) ∧ bytes8190.length=65 := by core033_kernel_decide
def op8191 : List WordIR.Op := [.bxor 8307 8308]
def bytes8191 : Bytes := ("    let r00002075: u32 = r00002073 ^ r00002074;\n" : String).toByteArray.data.toList
theorem checked8191 : bytes8191=statementBytes 8309 (op8191.map lower) ∧ bytes8191.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8128,op8129,op8130,op8131,op8132,op8133,op8134,op8135,op8136,op8137,op8138,op8139,op8140,op8141,op8142,op8143,op8144,op8145,op8146,op8147,op8148,op8149,op8150,op8151,op8152,op8153,op8154,op8155,op8156,op8157,op8158,op8159,op8160,op8161,op8162,op8163,op8164,op8165,op8166,op8167,op8168,op8169,op8170,op8171,op8172,op8173,op8174,op8175,op8176,op8177,op8178,op8179,op8180,op8181,op8182,op8183,op8184,op8185,op8186,op8187,op8188,op8189,op8190,op8191]
def chunks : List Bytes := [bytes8128,bytes8129,bytes8130,bytes8131,bytes8132,bytes8133,bytes8134,bytes8135,bytes8136,bytes8137,bytes8138,bytes8139,bytes8140,bytes8141,bytes8142,bytes8143,bytes8144,bytes8145,bytes8146,bytes8147,bytes8148,bytes8149,bytes8150,bytes8151,bytes8152,bytes8153,bytes8154,bytes8155,bytes8156,bytes8157,bytes8158,bytes8159,bytes8160,bytes8161,bytes8162,bytes8163,bytes8164,bytes8165,bytes8166,bytes8167,bytes8168,bytes8169,bytes8170,bytes8171,bytes8172,bytes8173,bytes8174,bytes8175,bytes8176,bytes8177,bytes8178,bytes8179,bytes8180,bytes8181,bytes8182,bytes8183,bytes8184,bytes8185,bytes8186,bytes8187,bytes8188,bytes8189,bytes8190,bytes8191]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8246 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8128.1 (.cons _ _ _ _ _ checked8129.1 (.cons _ _ _ _ _ checked8130.1 (.cons _ _ _ _ _ checked8131.1 (.cons _ _ _ _ _ checked8132.1 (.cons _ _ _ _ _ checked8133.1 (.cons _ _ _ _ _ checked8134.1 (.cons _ _ _ _ _ checked8135.1 (.cons _ _ _ _ _ checked8136.1 (.cons _ _ _ _ _ checked8137.1 (.cons _ _ _ _ _ checked8138.1 (.cons _ _ _ _ _ checked8139.1 (.cons _ _ _ _ _ checked8140.1 (.cons _ _ _ _ _ checked8141.1 (.cons _ _ _ _ _ checked8142.1 (.cons _ _ _ _ _ checked8143.1 (.cons _ _ _ _ _ checked8144.1 (.cons _ _ _ _ _ checked8145.1 (.cons _ _ _ _ _ checked8146.1 (.cons _ _ _ _ _ checked8147.1 (.cons _ _ _ _ _ checked8148.1 (.cons _ _ _ _ _ checked8149.1 (.cons _ _ _ _ _ checked8150.1 (.cons _ _ _ _ _ checked8151.1 (.cons _ _ _ _ _ checked8152.1 (.cons _ _ _ _ _ checked8153.1 (.cons _ _ _ _ _ checked8154.1 (.cons _ _ _ _ _ checked8155.1 (.cons _ _ _ _ _ checked8156.1 (.cons _ _ _ _ _ checked8157.1 (.cons _ _ _ _ _ checked8158.1 (.cons _ _ _ _ _ checked8159.1 (.cons _ _ _ _ _ checked8160.1 (.cons _ _ _ _ _ checked8161.1 (.cons _ _ _ _ _ checked8162.1 (.cons _ _ _ _ _ checked8163.1 (.cons _ _ _ _ _ checked8164.1 (.cons _ _ _ _ _ checked8165.1 (.cons _ _ _ _ _ checked8166.1 (.cons _ _ _ _ _ checked8167.1 (.cons _ _ _ _ _ checked8168.1 (.cons _ _ _ _ _ checked8169.1 (.cons _ _ _ _ _ checked8170.1 (.cons _ _ _ _ _ checked8171.1 (.cons _ _ _ _ _ checked8172.1 (.cons _ _ _ _ _ checked8173.1 (.cons _ _ _ _ _ checked8174.1 (.cons _ _ _ _ _ checked8175.1 (.cons _ _ _ _ _ checked8176.1 (.cons _ _ _ _ _ checked8177.1 (.cons _ _ _ _ _ checked8178.1 (.cons _ _ _ _ _ checked8179.1 (.cons _ _ _ _ _ checked8180.1 (.cons _ _ _ _ _ checked8181.1 (.cons _ _ _ _ _ checked8182.1 (.cons _ _ _ _ _ checked8183.1 (.cons _ _ _ _ _ checked8184.1 (.cons _ _ _ _ _ checked8185.1 (.cons _ _ _ _ _ checked8186.1 (.cons _ _ _ _ _ checked8187.1 (.cons _ _ _ _ _ checked8188.1 (.cons _ _ _ _ _ checked8189.1 (.cons _ _ _ _ _ checked8190.1 (.cons _ _ _ _ _ checked8191.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8246 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3646 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8128.2,checked8129.2,checked8130.2,checked8131.2,checked8132.2,checked8133.2,checked8134.2,checked8135.2,checked8136.2,checked8137.2,checked8138.2,checked8139.2,checked8140.2,checked8141.2,checked8142.2,checked8143.2,checked8144.2,checked8145.2,checked8146.2,checked8147.2,checked8148.2,checked8149.2,checked8150.2,checked8151.2,checked8152.2,checked8153.2,checked8154.2,checked8155.2,checked8156.2,checked8157.2,checked8158.2,checked8159.2,checked8160.2,checked8161.2,checked8162.2,checked8163.2,checked8164.2,checked8165.2,checked8166.2,checked8167.2,checked8168.2,checked8169.2,checked8170.2,checked8171.2,checked8172.2,checked8173.2,checked8174.2,checked8175.2,checked8176.2,checked8177.2,checked8178.2,checked8179.2,checked8180.2,checked8181.2,checked8182.2,checked8183.2,checked8184.2,checked8185.2,checked8186.2,checked8187.2,checked8188.2,checked8189.2,checked8190.2,checked8191.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup127
