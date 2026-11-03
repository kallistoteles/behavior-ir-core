import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup174
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11136 : List WordIR.Op := [.shr 11231 31]
def bytes11136 : Bytes := ("    let r00002be0: u32 = r00002bdf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11136 : bytes11136=statementBytes 11232 (op11136.map lower) ∧ bytes11136.length=54 := by core033_kernel_decide
def op11137 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11137 : Bytes := ("    let r00002be1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11137 : bytes11137=statementBytes 11233 (op11137.map lower) ∧ bytes11137.length=41 := by core033_kernel_decide
def op11138 : List WordIR.Op := [.bxor 11232 11233]
def bytes11138 : Bytes := ("    let r00002be2: u32 = r00002be0 ^ r00002be1;\n" : String).toByteArray.data.toList
theorem checked11138 : bytes11138=statementBytes 11234 (op11138.map lower) ∧ bytes11138.length=48 := by core033_kernel_decide
def op11139 : List WordIR.Op := [.bnot 11234]
def bytes11139 : Bytes := ("    let r00002be3: u32 = !r00002be2;\n" : String).toByteArray.data.toList
theorem checked11139 : bytes11139=statementBytes 11235 (op11139.map lower) ∧ bytes11139.length=37 := by core033_kernel_decide
def op11140 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11140 : Bytes := ("    let r00002be4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11140 : bytes11140=statementBytes 11236 (op11140.map lower) ∧ bytes11140.length=41 := by core033_kernel_decide
def op11141 : List WordIR.Op := [.badd 11235 11236]
def bytes11141 : Bytes := ("    let r00002be5: u32 = r00002be3.wrapping_add(r00002be4);\n" : String).toByteArray.data.toList
theorem checked11141 : bytes11141=statementBytes 11237 (op11141.map lower) ∧ bytes11141.length=60 := by core033_kernel_decide
def op11142 : List WordIR.Op := [.band 11237 10036]
def bytes11142 : Bytes := ("    let r00002be6: u32 = r00002be5 & r00002734;\n" : String).toByteArray.data.toList
theorem checked11142 : bytes11142=statementBytes 11238 (op11142.map lower) ∧ bytes11142.length=48 := by core033_kernel_decide
def op11143 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11143 : Bytes := ("    let r00002be7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11143 : bytes11143=statementBytes 11239 (op11143.map lower) ∧ bytes11143.length=41 := by core033_kernel_decide
def op11144 : List WordIR.Op := [.bxor 442 11239]
def bytes11144 : Bytes := ("    let r00002be8: u32 = r000001ba ^ r00002be7;\n" : String).toByteArray.data.toList
theorem checked11144 : bytes11144=statementBytes 11240 (op11144.map lower) ∧ bytes11144.length=48 := by core033_kernel_decide
def op11145 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11145 : Bytes := ("    let r00002be9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11145 : bytes11145=statementBytes 11241 (op11145.map lower) ∧ bytes11145.length=41 := by core033_kernel_decide
def op11146 : List WordIR.Op := [.bnot 11241]
def bytes11146 : Bytes := ("    let r00002bea: u32 = !r00002be9;\n" : String).toByteArray.data.toList
theorem checked11146 : bytes11146=statementBytes 11242 (op11146.map lower) ∧ bytes11146.length=37 := by core033_kernel_decide
def op11147 : List WordIR.Op := [.band 11240 11242]
def bytes11147 : Bytes := ("    let r00002beb: u32 = r00002be8 & r00002bea;\n" : String).toByteArray.data.toList
theorem checked11147 : bytes11147=statementBytes 11243 (op11147.map lower) ∧ bytes11147.length=48 := by core033_kernel_decide
def op11148 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11148 : Bytes := ("    let r00002bec: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11148 : bytes11148=statementBytes 11244 (op11148.map lower) ∧ bytes11148.length=41 := by core033_kernel_decide
def op11149 : List WordIR.Op := [.bxor 442 11244]
def bytes11149 : Bytes := ("    let r00002bed: u32 = r000001ba ^ r00002bec;\n" : String).toByteArray.data.toList
theorem checked11149 : bytes11149=statementBytes 11245 (op11149.map lower) ∧ bytes11149.length=48 := by core033_kernel_decide
def op11150 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11150 : Bytes := ("    let r00002bee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11150 : bytes11150=statementBytes 11246 (op11150.map lower) ∧ bytes11150.length=41 := by core033_kernel_decide
def op11151 : List WordIR.Op := [.bnot 11246]
def bytes11151 : Bytes := ("    let r00002bef: u32 = !r00002bee;\n" : String).toByteArray.data.toList
theorem checked11151 : bytes11151=statementBytes 11247 (op11151.map lower) ∧ bytes11151.length=37 := by core033_kernel_decide
def op11152 : List WordIR.Op := [.bxor 11245 11247]
def bytes11152 : Bytes := ("    let r00002bf0: u32 = r00002bed ^ r00002bef;\n" : String).toByteArray.data.toList
theorem checked11152 : bytes11152=statementBytes 11248 (op11152.map lower) ∧ bytes11152.length=48 := by core033_kernel_decide
def op11153 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11153 : Bytes := ("    let r00002bf1: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11153 : bytes11153=statementBytes 11249 (op11153.map lower) ∧ bytes11153.length=41 := by core033_kernel_decide
def op11154 : List WordIR.Op := [.bxor 442 11249]
def bytes11154 : Bytes := ("    let r00002bf2: u32 = r000001ba ^ r00002bf1;\n" : String).toByteArray.data.toList
theorem checked11154 : bytes11154=statementBytes 11250 (op11154.map lower) ∧ bytes11154.length=48 := by core033_kernel_decide
def op11155 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11155 : Bytes := ("    let r00002bf3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11155 : bytes11155=statementBytes 11251 (op11155.map lower) ∧ bytes11155.length=41 := by core033_kernel_decide
def op11156 : List WordIR.Op := [.bnot 11251]
def bytes11156 : Bytes := ("    let r00002bf4: u32 = !r00002bf3;\n" : String).toByteArray.data.toList
theorem checked11156 : bytes11156=statementBytes 11252 (op11156.map lower) ∧ bytes11156.length=37 := by core033_kernel_decide
def op11157 : List WordIR.Op := [.badd 11250 11252]
def bytes11157 : Bytes := ("    let r00002bf5: u32 = r00002bf2.wrapping_add(r00002bf4);\n" : String).toByteArray.data.toList
theorem checked11157 : bytes11157=statementBytes 11253 (op11157.map lower) ∧ bytes11157.length=60 := by core033_kernel_decide
def op11158 : List WordIR.Op := [.bnot 11253]
def bytes11158 : Bytes := ("    let r00002bf6: u32 = !r00002bf5;\n" : String).toByteArray.data.toList
theorem checked11158 : bytes11158=statementBytes 11254 (op11158.map lower) ∧ bytes11158.length=37 := by core033_kernel_decide
def op11159 : List WordIR.Op := [.band 11248 11254]
def bytes11159 : Bytes := ("    let r00002bf7: u32 = r00002bf0 & r00002bf6;\n" : String).toByteArray.data.toList
theorem checked11159 : bytes11159=statementBytes 11255 (op11159.map lower) ∧ bytes11159.length=48 := by core033_kernel_decide
def op11160 : List WordIR.Op := [.bxor 11243 11255]
def bytes11160 : Bytes := ("    let r00002bf8: u32 = r00002beb ^ r00002bf7;\n" : String).toByteArray.data.toList
theorem checked11160 : bytes11160=statementBytes 11256 (op11160.map lower) ∧ bytes11160.length=48 := by core033_kernel_decide
def op11161 : List WordIR.Op := [.shr 11256 31]
def bytes11161 : Bytes := ("    let r00002bf9: u32 = r00002bf8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11161 : bytes11161=statementBytes 11257 (op11161.map lower) ∧ bytes11161.length=54 := by core033_kernel_decide
def op11162 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11162 : Bytes := ("    let r00002bfa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11162 : bytes11162=statementBytes 11258 (op11162.map lower) ∧ bytes11162.length=41 := by core033_kernel_decide
def op11163 : List WordIR.Op := [.bxor 11257 11258]
def bytes11163 : Bytes := ("    let r00002bfb: u32 = r00002bf9 ^ r00002bfa;\n" : String).toByteArray.data.toList
theorem checked11163 : bytes11163=statementBytes 11259 (op11163.map lower) ∧ bytes11163.length=48 := by core033_kernel_decide
def op11164 : List WordIR.Op := [.bnot 11259]
def bytes11164 : Bytes := ("    let r00002bfc: u32 = !r00002bfb;\n" : String).toByteArray.data.toList
theorem checked11164 : bytes11164=statementBytes 11260 (op11164.map lower) ∧ bytes11164.length=37 := by core033_kernel_decide
def op11165 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11165 : Bytes := ("    let r00002bfd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11165 : bytes11165=statementBytes 11261 (op11165.map lower) ∧ bytes11165.length=41 := by core033_kernel_decide
def op11166 : List WordIR.Op := [.badd 11260 11261]
def bytes11166 : Bytes := ("    let r00002bfe: u32 = r00002bfc.wrapping_add(r00002bfd);\n" : String).toByteArray.data.toList
theorem checked11166 : bytes11166=statementBytes 11262 (op11166.map lower) ∧ bytes11166.length=60 := by core033_kernel_decide
def op11167 : List WordIR.Op := [.bnot 11262]
def bytes11167 : Bytes := ("    let r00002bff: u32 = !r00002bfe;\n" : String).toByteArray.data.toList
theorem checked11167 : bytes11167=statementBytes 11263 (op11167.map lower) ∧ bytes11167.length=37 := by core033_kernel_decide
def op11168 : List WordIR.Op := [.band 11263 715]
def bytes11168 : Bytes := ("    let r00002c00: u32 = r00002bff & r000002cb;\n" : String).toByteArray.data.toList
theorem checked11168 : bytes11168=statementBytes 11264 (op11168.map lower) ∧ bytes11168.length=48 := by core033_kernel_decide
def op11169 : List WordIR.Op := [.bxor 11238 11264]
def bytes11169 : Bytes := ("    let r00002c01: u32 = r00002be6 ^ r00002c00;\n" : String).toByteArray.data.toList
theorem checked11169 : bytes11169=statementBytes 11265 (op11169.map lower) ∧ bytes11169.length=48 := by core033_kernel_decide
def op11170 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11170 : Bytes := ("    let r00002c02: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11170 : bytes11170=statementBytes 11266 (op11170.map lower) ∧ bytes11170.length=41 := by core033_kernel_decide
def op11171 : List WordIR.Op := [.bxor 442 11266]
def bytes11171 : Bytes := ("    let r00002c03: u32 = r000001ba ^ r00002c02;\n" : String).toByteArray.data.toList
theorem checked11171 : bytes11171=statementBytes 11267 (op11171.map lower) ∧ bytes11171.length=48 := by core033_kernel_decide
def op11172 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11172 : Bytes := ("    let r00002c04: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11172 : bytes11172=statementBytes 11268 (op11172.map lower) ∧ bytes11172.length=41 := by core033_kernel_decide
def op11173 : List WordIR.Op := [.bnot 11268]
def bytes11173 : Bytes := ("    let r00002c05: u32 = !r00002c04;\n" : String).toByteArray.data.toList
theorem checked11173 : bytes11173=statementBytes 11269 (op11173.map lower) ∧ bytes11173.length=37 := by core033_kernel_decide
def op11174 : List WordIR.Op := [.band 11267 11269]
def bytes11174 : Bytes := ("    let r00002c06: u32 = r00002c03 & r00002c05;\n" : String).toByteArray.data.toList
theorem checked11174 : bytes11174=statementBytes 11270 (op11174.map lower) ∧ bytes11174.length=48 := by core033_kernel_decide
def op11175 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11175 : Bytes := ("    let r00002c07: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11175 : bytes11175=statementBytes 11271 (op11175.map lower) ∧ bytes11175.length=41 := by core033_kernel_decide
def op11176 : List WordIR.Op := [.bxor 442 11271]
def bytes11176 : Bytes := ("    let r00002c08: u32 = r000001ba ^ r00002c07;\n" : String).toByteArray.data.toList
theorem checked11176 : bytes11176=statementBytes 11272 (op11176.map lower) ∧ bytes11176.length=48 := by core033_kernel_decide
def op11177 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11177 : Bytes := ("    let r00002c09: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11177 : bytes11177=statementBytes 11273 (op11177.map lower) ∧ bytes11177.length=41 := by core033_kernel_decide
def op11178 : List WordIR.Op := [.bnot 11273]
def bytes11178 : Bytes := ("    let r00002c0a: u32 = !r00002c09;\n" : String).toByteArray.data.toList
theorem checked11178 : bytes11178=statementBytes 11274 (op11178.map lower) ∧ bytes11178.length=37 := by core033_kernel_decide
def op11179 : List WordIR.Op := [.bxor 11272 11274]
def bytes11179 : Bytes := ("    let r00002c0b: u32 = r00002c08 ^ r00002c0a;\n" : String).toByteArray.data.toList
theorem checked11179 : bytes11179=statementBytes 11275 (op11179.map lower) ∧ bytes11179.length=48 := by core033_kernel_decide
def op11180 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11180 : Bytes := ("    let r00002c0c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11180 : bytes11180=statementBytes 11276 (op11180.map lower) ∧ bytes11180.length=41 := by core033_kernel_decide
def op11181 : List WordIR.Op := [.bxor 442 11276]
def bytes11181 : Bytes := ("    let r00002c0d: u32 = r000001ba ^ r00002c0c;\n" : String).toByteArray.data.toList
theorem checked11181 : bytes11181=statementBytes 11277 (op11181.map lower) ∧ bytes11181.length=48 := by core033_kernel_decide
def op11182 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11182 : Bytes := ("    let r00002c0e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11182 : bytes11182=statementBytes 11278 (op11182.map lower) ∧ bytes11182.length=41 := by core033_kernel_decide
def op11183 : List WordIR.Op := [.bnot 11278]
def bytes11183 : Bytes := ("    let r00002c0f: u32 = !r00002c0e;\n" : String).toByteArray.data.toList
theorem checked11183 : bytes11183=statementBytes 11279 (op11183.map lower) ∧ bytes11183.length=37 := by core033_kernel_decide
def op11184 : List WordIR.Op := [.badd 11277 11279]
def bytes11184 : Bytes := ("    let r00002c10: u32 = r00002c0d.wrapping_add(r00002c0f);\n" : String).toByteArray.data.toList
theorem checked11184 : bytes11184=statementBytes 11280 (op11184.map lower) ∧ bytes11184.length=60 := by core033_kernel_decide
def op11185 : List WordIR.Op := [.bnot 11280]
def bytes11185 : Bytes := ("    let r00002c11: u32 = !r00002c10;\n" : String).toByteArray.data.toList
theorem checked11185 : bytes11185=statementBytes 11281 (op11185.map lower) ∧ bytes11185.length=37 := by core033_kernel_decide
def op11186 : List WordIR.Op := [.band 11275 11281]
def bytes11186 : Bytes := ("    let r00002c12: u32 = r00002c0b & r00002c11;\n" : String).toByteArray.data.toList
theorem checked11186 : bytes11186=statementBytes 11282 (op11186.map lower) ∧ bytes11186.length=48 := by core033_kernel_decide
def op11187 : List WordIR.Op := [.bxor 11270 11282]
def bytes11187 : Bytes := ("    let r00002c13: u32 = r00002c06 ^ r00002c12;\n" : String).toByteArray.data.toList
theorem checked11187 : bytes11187=statementBytes 11283 (op11187.map lower) ∧ bytes11187.length=48 := by core033_kernel_decide
def op11188 : List WordIR.Op := [.shr 11283 31]
def bytes11188 : Bytes := ("    let r00002c14: u32 = r00002c13 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11188 : bytes11188=statementBytes 11284 (op11188.map lower) ∧ bytes11188.length=54 := by core033_kernel_decide
def op11189 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11189 : Bytes := ("    let r00002c15: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11189 : bytes11189=statementBytes 11285 (op11189.map lower) ∧ bytes11189.length=41 := by core033_kernel_decide
def op11190 : List WordIR.Op := [.bxor 11284 11285]
def bytes11190 : Bytes := ("    let r00002c16: u32 = r00002c14 ^ r00002c15;\n" : String).toByteArray.data.toList
theorem checked11190 : bytes11190=statementBytes 11286 (op11190.map lower) ∧ bytes11190.length=48 := by core033_kernel_decide
def op11191 : List WordIR.Op := [.bnot 11286]
def bytes11191 : Bytes := ("    let r00002c17: u32 = !r00002c16;\n" : String).toByteArray.data.toList
theorem checked11191 : bytes11191=statementBytes 11287 (op11191.map lower) ∧ bytes11191.length=37 := by core033_kernel_decide
def op11192 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11192 : Bytes := ("    let r00002c18: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11192 : bytes11192=statementBytes 11288 (op11192.map lower) ∧ bytes11192.length=41 := by core033_kernel_decide
def op11193 : List WordIR.Op := [.badd 11287 11288]
def bytes11193 : Bytes := ("    let r00002c19: u32 = r00002c17.wrapping_add(r00002c18);\n" : String).toByteArray.data.toList
theorem checked11193 : bytes11193=statementBytes 11289 (op11193.map lower) ∧ bytes11193.length=60 := by core033_kernel_decide
def op11194 : List WordIR.Op := [.band 11289 10047]
def bytes11194 : Bytes := ("    let r00002c1a: u32 = r00002c19 & r0000273f;\n" : String).toByteArray.data.toList
theorem checked11194 : bytes11194=statementBytes 11290 (op11194.map lower) ∧ bytes11194.length=48 := by core033_kernel_decide
def op11195 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11195 : Bytes := ("    let r00002c1b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11195 : bytes11195=statementBytes 11291 (op11195.map lower) ∧ bytes11195.length=41 := by core033_kernel_decide
def op11196 : List WordIR.Op := [.bxor 442 11291]
def bytes11196 : Bytes := ("    let r00002c1c: u32 = r000001ba ^ r00002c1b;\n" : String).toByteArray.data.toList
theorem checked11196 : bytes11196=statementBytes 11292 (op11196.map lower) ∧ bytes11196.length=48 := by core033_kernel_decide
def op11197 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11197 : Bytes := ("    let r00002c1d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11197 : bytes11197=statementBytes 11293 (op11197.map lower) ∧ bytes11197.length=41 := by core033_kernel_decide
def op11198 : List WordIR.Op := [.bnot 11293]
def bytes11198 : Bytes := ("    let r00002c1e: u32 = !r00002c1d;\n" : String).toByteArray.data.toList
theorem checked11198 : bytes11198=statementBytes 11294 (op11198.map lower) ∧ bytes11198.length=37 := by core033_kernel_decide
def op11199 : List WordIR.Op := [.band 11292 11294]
def bytes11199 : Bytes := ("    let r00002c1f: u32 = r00002c1c & r00002c1e;\n" : String).toByteArray.data.toList
theorem checked11199 : bytes11199=statementBytes 11295 (op11199.map lower) ∧ bytes11199.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11136,op11137,op11138,op11139,op11140,op11141,op11142,op11143,op11144,op11145,op11146,op11147,op11148,op11149,op11150,op11151,op11152,op11153,op11154,op11155,op11156,op11157,op11158,op11159,op11160,op11161,op11162,op11163,op11164,op11165,op11166,op11167,op11168,op11169,op11170,op11171,op11172,op11173,op11174,op11175,op11176,op11177,op11178,op11179,op11180,op11181,op11182,op11183,op11184,op11185,op11186,op11187,op11188,op11189,op11190,op11191,op11192,op11193,op11194,op11195,op11196,op11197,op11198,op11199]
def chunks : List Bytes := [bytes11136,bytes11137,bytes11138,bytes11139,bytes11140,bytes11141,bytes11142,bytes11143,bytes11144,bytes11145,bytes11146,bytes11147,bytes11148,bytes11149,bytes11150,bytes11151,bytes11152,bytes11153,bytes11154,bytes11155,bytes11156,bytes11157,bytes11158,bytes11159,bytes11160,bytes11161,bytes11162,bytes11163,bytes11164,bytes11165,bytes11166,bytes11167,bytes11168,bytes11169,bytes11170,bytes11171,bytes11172,bytes11173,bytes11174,bytes11175,bytes11176,bytes11177,bytes11178,bytes11179,bytes11180,bytes11181,bytes11182,bytes11183,bytes11184,bytes11185,bytes11186,bytes11187,bytes11188,bytes11189,bytes11190,bytes11191,bytes11192,bytes11193,bytes11194,bytes11195,bytes11196,bytes11197,bytes11198,bytes11199]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11232 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11136.1 (.cons _ _ _ _ _ checked11137.1 (.cons _ _ _ _ _ checked11138.1 (.cons _ _ _ _ _ checked11139.1 (.cons _ _ _ _ _ checked11140.1 (.cons _ _ _ _ _ checked11141.1 (.cons _ _ _ _ _ checked11142.1 (.cons _ _ _ _ _ checked11143.1 (.cons _ _ _ _ _ checked11144.1 (.cons _ _ _ _ _ checked11145.1 (.cons _ _ _ _ _ checked11146.1 (.cons _ _ _ _ _ checked11147.1 (.cons _ _ _ _ _ checked11148.1 (.cons _ _ _ _ _ checked11149.1 (.cons _ _ _ _ _ checked11150.1 (.cons _ _ _ _ _ checked11151.1 (.cons _ _ _ _ _ checked11152.1 (.cons _ _ _ _ _ checked11153.1 (.cons _ _ _ _ _ checked11154.1 (.cons _ _ _ _ _ checked11155.1 (.cons _ _ _ _ _ checked11156.1 (.cons _ _ _ _ _ checked11157.1 (.cons _ _ _ _ _ checked11158.1 (.cons _ _ _ _ _ checked11159.1 (.cons _ _ _ _ _ checked11160.1 (.cons _ _ _ _ _ checked11161.1 (.cons _ _ _ _ _ checked11162.1 (.cons _ _ _ _ _ checked11163.1 (.cons _ _ _ _ _ checked11164.1 (.cons _ _ _ _ _ checked11165.1 (.cons _ _ _ _ _ checked11166.1 (.cons _ _ _ _ _ checked11167.1 (.cons _ _ _ _ _ checked11168.1 (.cons _ _ _ _ _ checked11169.1 (.cons _ _ _ _ _ checked11170.1 (.cons _ _ _ _ _ checked11171.1 (.cons _ _ _ _ _ checked11172.1 (.cons _ _ _ _ _ checked11173.1 (.cons _ _ _ _ _ checked11174.1 (.cons _ _ _ _ _ checked11175.1 (.cons _ _ _ _ _ checked11176.1 (.cons _ _ _ _ _ checked11177.1 (.cons _ _ _ _ _ checked11178.1 (.cons _ _ _ _ _ checked11179.1 (.cons _ _ _ _ _ checked11180.1 (.cons _ _ _ _ _ checked11181.1 (.cons _ _ _ _ _ checked11182.1 (.cons _ _ _ _ _ checked11183.1 (.cons _ _ _ _ _ checked11184.1 (.cons _ _ _ _ _ checked11185.1 (.cons _ _ _ _ _ checked11186.1 (.cons _ _ _ _ _ checked11187.1 (.cons _ _ _ _ _ checked11188.1 (.cons _ _ _ _ _ checked11189.1 (.cons _ _ _ _ _ checked11190.1 (.cons _ _ _ _ _ checked11191.1 (.cons _ _ _ _ _ checked11192.1 (.cons _ _ _ _ _ checked11193.1 (.cons _ _ _ _ _ checked11194.1 (.cons _ _ _ _ _ checked11195.1 (.cons _ _ _ _ _ checked11196.1 (.cons _ _ _ _ _ checked11197.1 (.cons _ _ _ _ _ checked11198.1 (.cons _ _ _ _ _ checked11199.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11232 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11136.2,checked11137.2,checked11138.2,checked11139.2,checked11140.2,checked11141.2,checked11142.2,checked11143.2,checked11144.2,checked11145.2,checked11146.2,checked11147.2,checked11148.2,checked11149.2,checked11150.2,checked11151.2,checked11152.2,checked11153.2,checked11154.2,checked11155.2,checked11156.2,checked11157.2,checked11158.2,checked11159.2,checked11160.2,checked11161.2,checked11162.2,checked11163.2,checked11164.2,checked11165.2,checked11166.2,checked11167.2,checked11168.2,checked11169.2,checked11170.2,checked11171.2,checked11172.2,checked11173.2,checked11174.2,checked11175.2,checked11176.2,checked11177.2,checked11178.2,checked11179.2,checked11180.2,checked11181.2,checked11182.2,checked11183.2,checked11184.2,checked11185.2,checked11186.2,checked11187.2,checked11188.2,checked11189.2,checked11190.2,checked11191.2,checked11192.2,checked11193.2,checked11194.2,checked11195.2,checked11196.2,checked11197.2,checked11198.2,checked11199.2]
  decide
end ArtifactPairedPathRoundGroup174
