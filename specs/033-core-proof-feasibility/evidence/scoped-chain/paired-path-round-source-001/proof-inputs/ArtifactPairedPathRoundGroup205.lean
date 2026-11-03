import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup205
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13120 : List WordIR.Op := [.bnot 13215]
def bytes13120 : Bytes := ("    let r000033a0: u32 = !r0000339f;\n" : String).toByteArray.data.toList
theorem checked13120 : bytes13120=statementBytes 13216 (op13120.map lower) ∧ bytes13120.length=37 := by core033_kernel_decide
def op13121 : List WordIR.Op := [.band 13216 70]
def bytes13121 : Bytes := ("    let r000033a1: u32 = r000033a0 & r00000046;\n" : String).toByteArray.data.toList
theorem checked13121 : bytes13121=statementBytes 13217 (op13121.map lower) ∧ bytes13121.length=48 := by core033_kernel_decide
def op13122 : List WordIR.Op := [.bxor 13212 13217]
def bytes13122 : Bytes := ("    let r000033a2: u32 = r0000339c ^ r000033a1;\n" : String).toByteArray.data.toList
theorem checked13122 : bytes13122=statementBytes 13218 (op13122.map lower) ∧ bytes13122.length=48 := by core033_kernel_decide
def op13123 : List WordIR.Op := [.bnot 288]
def bytes13123 : Bytes := ("    let r000033a3: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13123 : bytes13123=statementBytes 13219 (op13123.map lower) ∧ bytes13123.length=37 := by core033_kernel_decide
def op13124 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13124 : Bytes := ("    let r000033a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13124 : bytes13124=statementBytes 13220 (op13124.map lower) ∧ bytes13124.length=41 := by core033_kernel_decide
def op13125 : List WordIR.Op := [.badd 13219 13220]
def bytes13125 : Bytes := ("    let r000033a5: u32 = r000033a3.wrapping_add(r000033a4);\n" : String).toByteArray.data.toList
theorem checked13125 : bytes13125=statementBytes 13221 (op13125.map lower) ∧ bytes13125.length=60 := by core033_kernel_decide
def op13126 : List WordIR.Op := [.band 13221 11577]
def bytes13126 : Bytes := ("    let r000033a6: u32 = r000033a5 & r00002d39;\n" : String).toByteArray.data.toList
theorem checked13126 : bytes13126=statementBytes 13222 (op13126.map lower) ∧ bytes13126.length=48 := by core033_kernel_decide
def op13127 : List WordIR.Op := [.bnot 288]
def bytes13127 : Bytes := ("    let r000033a7: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13127 : bytes13127=statementBytes 13223 (op13127.map lower) ∧ bytes13127.length=37 := by core033_kernel_decide
def op13128 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13128 : Bytes := ("    let r000033a8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13128 : bytes13128=statementBytes 13224 (op13128.map lower) ∧ bytes13128.length=41 := by core033_kernel_decide
def op13129 : List WordIR.Op := [.badd 13223 13224]
def bytes13129 : Bytes := ("    let r000033a9: u32 = r000033a7.wrapping_add(r000033a8);\n" : String).toByteArray.data.toList
theorem checked13129 : bytes13129=statementBytes 13225 (op13129.map lower) ∧ bytes13129.length=60 := by core033_kernel_decide
def op13130 : List WordIR.Op := [.bnot 13225]
def bytes13130 : Bytes := ("    let r000033aa: u32 = !r000033a9;\n" : String).toByteArray.data.toList
theorem checked13130 : bytes13130=statementBytes 13226 (op13130.map lower) ∧ bytes13130.length=37 := by core033_kernel_decide
def op13131 : List WordIR.Op := [.band 13226 71]
def bytes13131 : Bytes := ("    let r000033ab: u32 = r000033aa & r00000047;\n" : String).toByteArray.data.toList
theorem checked13131 : bytes13131=statementBytes 13227 (op13131.map lower) ∧ bytes13131.length=48 := by core033_kernel_decide
def op13132 : List WordIR.Op := [.bxor 13222 13227]
def bytes13132 : Bytes := ("    let r000033ac: u32 = r000033a6 ^ r000033ab;\n" : String).toByteArray.data.toList
theorem checked13132 : bytes13132=statementBytes 13228 (op13132.map lower) ∧ bytes13132.length=48 := by core033_kernel_decide
def op13133 : List WordIR.Op := [.bnot 288]
def bytes13133 : Bytes := ("    let r000033ad: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13133 : bytes13133=statementBytes 13229 (op13133.map lower) ∧ bytes13133.length=37 := by core033_kernel_decide
def op13134 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13134 : Bytes := ("    let r000033ae: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13134 : bytes13134=statementBytes 13230 (op13134.map lower) ∧ bytes13134.length=41 := by core033_kernel_decide
def op13135 : List WordIR.Op := [.badd 13229 13230]
def bytes13135 : Bytes := ("    let r000033af: u32 = r000033ad.wrapping_add(r000033ae);\n" : String).toByteArray.data.toList
theorem checked13135 : bytes13135=statementBytes 13231 (op13135.map lower) ∧ bytes13135.length=60 := by core033_kernel_decide
def op13136 : List WordIR.Op := [.band 13231 11629]
def bytes13136 : Bytes := ("    let r000033b0: u32 = r000033af & r00002d6d;\n" : String).toByteArray.data.toList
theorem checked13136 : bytes13136=statementBytes 13232 (op13136.map lower) ∧ bytes13136.length=48 := by core033_kernel_decide
def op13137 : List WordIR.Op := [.bnot 288]
def bytes13137 : Bytes := ("    let r000033b1: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13137 : bytes13137=statementBytes 13233 (op13137.map lower) ∧ bytes13137.length=37 := by core033_kernel_decide
def op13138 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13138 : Bytes := ("    let r000033b2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13138 : bytes13138=statementBytes 13234 (op13138.map lower) ∧ bytes13138.length=41 := by core033_kernel_decide
def op13139 : List WordIR.Op := [.badd 13233 13234]
def bytes13139 : Bytes := ("    let r000033b3: u32 = r000033b1.wrapping_add(r000033b2);\n" : String).toByteArray.data.toList
theorem checked13139 : bytes13139=statementBytes 13235 (op13139.map lower) ∧ bytes13139.length=60 := by core033_kernel_decide
def op13140 : List WordIR.Op := [.bnot 13235]
def bytes13140 : Bytes := ("    let r000033b4: u32 = !r000033b3;\n" : String).toByteArray.data.toList
theorem checked13140 : bytes13140=statementBytes 13236 (op13140.map lower) ∧ bytes13140.length=37 := by core033_kernel_decide
def op13141 : List WordIR.Op := [.band 13236 72]
def bytes13141 : Bytes := ("    let r000033b5: u32 = r000033b4 & r00000048;\n" : String).toByteArray.data.toList
theorem checked13141 : bytes13141=statementBytes 13237 (op13141.map lower) ∧ bytes13141.length=48 := by core033_kernel_decide
def op13142 : List WordIR.Op := [.bxor 13232 13237]
def bytes13142 : Bytes := ("    let r000033b6: u32 = r000033b0 ^ r000033b5;\n" : String).toByteArray.data.toList
theorem checked13142 : bytes13142=statementBytes 13238 (op13142.map lower) ∧ bytes13142.length=48 := by core033_kernel_decide
def op13143 : List WordIR.Op := [.bnot 288]
def bytes13143 : Bytes := ("    let r000033b7: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13143 : bytes13143=statementBytes 13239 (op13143.map lower) ∧ bytes13143.length=37 := by core033_kernel_decide
def op13144 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13144 : Bytes := ("    let r000033b8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13144 : bytes13144=statementBytes 13240 (op13144.map lower) ∧ bytes13144.length=41 := by core033_kernel_decide
def op13145 : List WordIR.Op := [.badd 13239 13240]
def bytes13145 : Bytes := ("    let r000033b9: u32 = r000033b7.wrapping_add(r000033b8);\n" : String).toByteArray.data.toList
theorem checked13145 : bytes13145=statementBytes 13241 (op13145.map lower) ∧ bytes13145.length=60 := by core033_kernel_decide
def op13146 : List WordIR.Op := [.band 13241 11681]
def bytes13146 : Bytes := ("    let r000033ba: u32 = r000033b9 & r00002da1;\n" : String).toByteArray.data.toList
theorem checked13146 : bytes13146=statementBytes 13242 (op13146.map lower) ∧ bytes13146.length=48 := by core033_kernel_decide
def op13147 : List WordIR.Op := [.bnot 288]
def bytes13147 : Bytes := ("    let r000033bb: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13147 : bytes13147=statementBytes 13243 (op13147.map lower) ∧ bytes13147.length=37 := by core033_kernel_decide
def op13148 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13148 : Bytes := ("    let r000033bc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13148 : bytes13148=statementBytes 13244 (op13148.map lower) ∧ bytes13148.length=41 := by core033_kernel_decide
def op13149 : List WordIR.Op := [.badd 13243 13244]
def bytes13149 : Bytes := ("    let r000033bd: u32 = r000033bb.wrapping_add(r000033bc);\n" : String).toByteArray.data.toList
theorem checked13149 : bytes13149=statementBytes 13245 (op13149.map lower) ∧ bytes13149.length=60 := by core033_kernel_decide
def op13150 : List WordIR.Op := [.bnot 13245]
def bytes13150 : Bytes := ("    let r000033be: u32 = !r000033bd;\n" : String).toByteArray.data.toList
theorem checked13150 : bytes13150=statementBytes 13246 (op13150.map lower) ∧ bytes13150.length=37 := by core033_kernel_decide
def op13151 : List WordIR.Op := [.band 13246 73]
def bytes13151 : Bytes := ("    let r000033bf: u32 = r000033be & r00000049;\n" : String).toByteArray.data.toList
theorem checked13151 : bytes13151=statementBytes 13247 (op13151.map lower) ∧ bytes13151.length=48 := by core033_kernel_decide
def op13152 : List WordIR.Op := [.bxor 13242 13247]
def bytes13152 : Bytes := ("    let r000033c0: u32 = r000033ba ^ r000033bf;\n" : String).toByteArray.data.toList
theorem checked13152 : bytes13152=statementBytes 13248 (op13152.map lower) ∧ bytes13152.length=48 := by core033_kernel_decide
def op13153 : List WordIR.Op := [.bnot 288]
def bytes13153 : Bytes := ("    let r000033c1: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13153 : bytes13153=statementBytes 13249 (op13153.map lower) ∧ bytes13153.length=37 := by core033_kernel_decide
def op13154 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13154 : Bytes := ("    let r000033c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13154 : bytes13154=statementBytes 13250 (op13154.map lower) ∧ bytes13154.length=41 := by core033_kernel_decide
def op13155 : List WordIR.Op := [.badd 13249 13250]
def bytes13155 : Bytes := ("    let r000033c3: u32 = r000033c1.wrapping_add(r000033c2);\n" : String).toByteArray.data.toList
theorem checked13155 : bytes13155=statementBytes 13251 (op13155.map lower) ∧ bytes13155.length=60 := by core033_kernel_decide
def op13156 : List WordIR.Op := [.band 13251 11733]
def bytes13156 : Bytes := ("    let r000033c4: u32 = r000033c3 & r00002dd5;\n" : String).toByteArray.data.toList
theorem checked13156 : bytes13156=statementBytes 13252 (op13156.map lower) ∧ bytes13156.length=48 := by core033_kernel_decide
def op13157 : List WordIR.Op := [.bnot 288]
def bytes13157 : Bytes := ("    let r000033c5: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13157 : bytes13157=statementBytes 13253 (op13157.map lower) ∧ bytes13157.length=37 := by core033_kernel_decide
def op13158 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13158 : Bytes := ("    let r000033c6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13158 : bytes13158=statementBytes 13254 (op13158.map lower) ∧ bytes13158.length=41 := by core033_kernel_decide
def op13159 : List WordIR.Op := [.badd 13253 13254]
def bytes13159 : Bytes := ("    let r000033c7: u32 = r000033c5.wrapping_add(r000033c6);\n" : String).toByteArray.data.toList
theorem checked13159 : bytes13159=statementBytes 13255 (op13159.map lower) ∧ bytes13159.length=60 := by core033_kernel_decide
def op13160 : List WordIR.Op := [.bnot 13255]
def bytes13160 : Bytes := ("    let r000033c8: u32 = !r000033c7;\n" : String).toByteArray.data.toList
theorem checked13160 : bytes13160=statementBytes 13256 (op13160.map lower) ∧ bytes13160.length=37 := by core033_kernel_decide
def op13161 : List WordIR.Op := [.band 13256 74]
def bytes13161 : Bytes := ("    let r000033c9: u32 = r000033c8 & r0000004a;\n" : String).toByteArray.data.toList
theorem checked13161 : bytes13161=statementBytes 13257 (op13161.map lower) ∧ bytes13161.length=48 := by core033_kernel_decide
def op13162 : List WordIR.Op := [.bxor 13252 13257]
def bytes13162 : Bytes := ("    let r000033ca: u32 = r000033c4 ^ r000033c9;\n" : String).toByteArray.data.toList
theorem checked13162 : bytes13162=statementBytes 13258 (op13162.map lower) ∧ bytes13162.length=48 := by core033_kernel_decide
def op13163 : List WordIR.Op := [.bnot 288]
def bytes13163 : Bytes := ("    let r000033cb: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13163 : bytes13163=statementBytes 13259 (op13163.map lower) ∧ bytes13163.length=37 := by core033_kernel_decide
def op13164 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13164 : Bytes := ("    let r000033cc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13164 : bytes13164=statementBytes 13260 (op13164.map lower) ∧ bytes13164.length=41 := by core033_kernel_decide
def op13165 : List WordIR.Op := [.badd 13259 13260]
def bytes13165 : Bytes := ("    let r000033cd: u32 = r000033cb.wrapping_add(r000033cc);\n" : String).toByteArray.data.toList
theorem checked13165 : bytes13165=statementBytes 13261 (op13165.map lower) ∧ bytes13165.length=60 := by core033_kernel_decide
def op13166 : List WordIR.Op := [.band 13261 12201]
def bytes13166 : Bytes := ("    let r000033ce: u32 = r000033cd & r00002fa9;\n" : String).toByteArray.data.toList
theorem checked13166 : bytes13166=statementBytes 13262 (op13166.map lower) ∧ bytes13166.length=48 := by core033_kernel_decide
def op13167 : List WordIR.Op := [.bnot 288]
def bytes13167 : Bytes := ("    let r000033cf: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13167 : bytes13167=statementBytes 13263 (op13167.map lower) ∧ bytes13167.length=37 := by core033_kernel_decide
def op13168 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13168 : Bytes := ("    let r000033d0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13168 : bytes13168=statementBytes 13264 (op13168.map lower) ∧ bytes13168.length=41 := by core033_kernel_decide
def op13169 : List WordIR.Op := [.badd 13263 13264]
def bytes13169 : Bytes := ("    let r000033d1: u32 = r000033cf.wrapping_add(r000033d0);\n" : String).toByteArray.data.toList
theorem checked13169 : bytes13169=statementBytes 13265 (op13169.map lower) ∧ bytes13169.length=60 := by core033_kernel_decide
def op13170 : List WordIR.Op := [.bnot 13265]
def bytes13170 : Bytes := ("    let r000033d2: u32 = !r000033d1;\n" : String).toByteArray.data.toList
theorem checked13170 : bytes13170=statementBytes 13266 (op13170.map lower) ∧ bytes13170.length=37 := by core033_kernel_decide
def op13171 : List WordIR.Op := [.band 13266 75]
def bytes13171 : Bytes := ("    let r000033d3: u32 = r000033d2 & r0000004b;\n" : String).toByteArray.data.toList
theorem checked13171 : bytes13171=statementBytes 13267 (op13171.map lower) ∧ bytes13171.length=48 := by core033_kernel_decide
def op13172 : List WordIR.Op := [.bxor 13262 13267]
def bytes13172 : Bytes := ("    let r000033d4: u32 = r000033ce ^ r000033d3;\n" : String).toByteArray.data.toList
theorem checked13172 : bytes13172=statementBytes 13268 (op13172.map lower) ∧ bytes13172.length=48 := by core033_kernel_decide
def op13173 : List WordIR.Op := [.bnot 288]
def bytes13173 : Bytes := ("    let r000033d5: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13173 : bytes13173=statementBytes 13269 (op13173.map lower) ∧ bytes13173.length=37 := by core033_kernel_decide
def op13174 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13174 : Bytes := ("    let r000033d6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13174 : bytes13174=statementBytes 13270 (op13174.map lower) ∧ bytes13174.length=41 := by core033_kernel_decide
def op13175 : List WordIR.Op := [.badd 13269 13270]
def bytes13175 : Bytes := ("    let r000033d7: u32 = r000033d5.wrapping_add(r000033d6);\n" : String).toByteArray.data.toList
theorem checked13175 : bytes13175=statementBytes 13271 (op13175.map lower) ∧ bytes13175.length=60 := by core033_kernel_decide
def op13176 : List WordIR.Op := [.band 13271 12253]
def bytes13176 : Bytes := ("    let r000033d8: u32 = r000033d7 & r00002fdd;\n" : String).toByteArray.data.toList
theorem checked13176 : bytes13176=statementBytes 13272 (op13176.map lower) ∧ bytes13176.length=48 := by core033_kernel_decide
def op13177 : List WordIR.Op := [.bnot 288]
def bytes13177 : Bytes := ("    let r000033d9: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13177 : bytes13177=statementBytes 13273 (op13177.map lower) ∧ bytes13177.length=37 := by core033_kernel_decide
def op13178 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13178 : Bytes := ("    let r000033da: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13178 : bytes13178=statementBytes 13274 (op13178.map lower) ∧ bytes13178.length=41 := by core033_kernel_decide
def op13179 : List WordIR.Op := [.badd 13273 13274]
def bytes13179 : Bytes := ("    let r000033db: u32 = r000033d9.wrapping_add(r000033da);\n" : String).toByteArray.data.toList
theorem checked13179 : bytes13179=statementBytes 13275 (op13179.map lower) ∧ bytes13179.length=60 := by core033_kernel_decide
def op13180 : List WordIR.Op := [.bnot 13275]
def bytes13180 : Bytes := ("    let r000033dc: u32 = !r000033db;\n" : String).toByteArray.data.toList
theorem checked13180 : bytes13180=statementBytes 13276 (op13180.map lower) ∧ bytes13180.length=37 := by core033_kernel_decide
def op13181 : List WordIR.Op := [.band 13276 76]
def bytes13181 : Bytes := ("    let r000033dd: u32 = r000033dc & r0000004c;\n" : String).toByteArray.data.toList
theorem checked13181 : bytes13181=statementBytes 13277 (op13181.map lower) ∧ bytes13181.length=48 := by core033_kernel_decide
def op13182 : List WordIR.Op := [.bxor 13272 13277]
def bytes13182 : Bytes := ("    let r000033de: u32 = r000033d8 ^ r000033dd;\n" : String).toByteArray.data.toList
theorem checked13182 : bytes13182=statementBytes 13278 (op13182.map lower) ∧ bytes13182.length=48 := by core033_kernel_decide
def op13183 : List WordIR.Op := [.bnot 288]
def bytes13183 : Bytes := ("    let r000033df: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13183 : bytes13183=statementBytes 13279 (op13183.map lower) ∧ bytes13183.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13120,op13121,op13122,op13123,op13124,op13125,op13126,op13127,op13128,op13129,op13130,op13131,op13132,op13133,op13134,op13135,op13136,op13137,op13138,op13139,op13140,op13141,op13142,op13143,op13144,op13145,op13146,op13147,op13148,op13149,op13150,op13151,op13152,op13153,op13154,op13155,op13156,op13157,op13158,op13159,op13160,op13161,op13162,op13163,op13164,op13165,op13166,op13167,op13168,op13169,op13170,op13171,op13172,op13173,op13174,op13175,op13176,op13177,op13178,op13179,op13180,op13181,op13182,op13183]
def chunks : List Bytes := [bytes13120,bytes13121,bytes13122,bytes13123,bytes13124,bytes13125,bytes13126,bytes13127,bytes13128,bytes13129,bytes13130,bytes13131,bytes13132,bytes13133,bytes13134,bytes13135,bytes13136,bytes13137,bytes13138,bytes13139,bytes13140,bytes13141,bytes13142,bytes13143,bytes13144,bytes13145,bytes13146,bytes13147,bytes13148,bytes13149,bytes13150,bytes13151,bytes13152,bytes13153,bytes13154,bytes13155,bytes13156,bytes13157,bytes13158,bytes13159,bytes13160,bytes13161,bytes13162,bytes13163,bytes13164,bytes13165,bytes13166,bytes13167,bytes13168,bytes13169,bytes13170,bytes13171,bytes13172,bytes13173,bytes13174,bytes13175,bytes13176,bytes13177,bytes13178,bytes13179,bytes13180,bytes13181,bytes13182,bytes13183]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13216 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13120.1 (.cons _ _ _ _ _ checked13121.1 (.cons _ _ _ _ _ checked13122.1 (.cons _ _ _ _ _ checked13123.1 (.cons _ _ _ _ _ checked13124.1 (.cons _ _ _ _ _ checked13125.1 (.cons _ _ _ _ _ checked13126.1 (.cons _ _ _ _ _ checked13127.1 (.cons _ _ _ _ _ checked13128.1 (.cons _ _ _ _ _ checked13129.1 (.cons _ _ _ _ _ checked13130.1 (.cons _ _ _ _ _ checked13131.1 (.cons _ _ _ _ _ checked13132.1 (.cons _ _ _ _ _ checked13133.1 (.cons _ _ _ _ _ checked13134.1 (.cons _ _ _ _ _ checked13135.1 (.cons _ _ _ _ _ checked13136.1 (.cons _ _ _ _ _ checked13137.1 (.cons _ _ _ _ _ checked13138.1 (.cons _ _ _ _ _ checked13139.1 (.cons _ _ _ _ _ checked13140.1 (.cons _ _ _ _ _ checked13141.1 (.cons _ _ _ _ _ checked13142.1 (.cons _ _ _ _ _ checked13143.1 (.cons _ _ _ _ _ checked13144.1 (.cons _ _ _ _ _ checked13145.1 (.cons _ _ _ _ _ checked13146.1 (.cons _ _ _ _ _ checked13147.1 (.cons _ _ _ _ _ checked13148.1 (.cons _ _ _ _ _ checked13149.1 (.cons _ _ _ _ _ checked13150.1 (.cons _ _ _ _ _ checked13151.1 (.cons _ _ _ _ _ checked13152.1 (.cons _ _ _ _ _ checked13153.1 (.cons _ _ _ _ _ checked13154.1 (.cons _ _ _ _ _ checked13155.1 (.cons _ _ _ _ _ checked13156.1 (.cons _ _ _ _ _ checked13157.1 (.cons _ _ _ _ _ checked13158.1 (.cons _ _ _ _ _ checked13159.1 (.cons _ _ _ _ _ checked13160.1 (.cons _ _ _ _ _ checked13161.1 (.cons _ _ _ _ _ checked13162.1 (.cons _ _ _ _ _ checked13163.1 (.cons _ _ _ _ _ checked13164.1 (.cons _ _ _ _ _ checked13165.1 (.cons _ _ _ _ _ checked13166.1 (.cons _ _ _ _ _ checked13167.1 (.cons _ _ _ _ _ checked13168.1 (.cons _ _ _ _ _ checked13169.1 (.cons _ _ _ _ _ checked13170.1 (.cons _ _ _ _ _ checked13171.1 (.cons _ _ _ _ _ checked13172.1 (.cons _ _ _ _ _ checked13173.1 (.cons _ _ _ _ _ checked13174.1 (.cons _ _ _ _ _ checked13175.1 (.cons _ _ _ _ _ checked13176.1 (.cons _ _ _ _ _ checked13177.1 (.cons _ _ _ _ _ checked13178.1 (.cons _ _ _ _ _ checked13179.1 (.cons _ _ _ _ _ checked13180.1 (.cons _ _ _ _ _ checked13181.1 (.cons _ _ _ _ _ checked13182.1 (.cons _ _ _ _ _ checked13183.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13216 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2912 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13120.2,checked13121.2,checked13122.2,checked13123.2,checked13124.2,checked13125.2,checked13126.2,checked13127.2,checked13128.2,checked13129.2,checked13130.2,checked13131.2,checked13132.2,checked13133.2,checked13134.2,checked13135.2,checked13136.2,checked13137.2,checked13138.2,checked13139.2,checked13140.2,checked13141.2,checked13142.2,checked13143.2,checked13144.2,checked13145.2,checked13146.2,checked13147.2,checked13148.2,checked13149.2,checked13150.2,checked13151.2,checked13152.2,checked13153.2,checked13154.2,checked13155.2,checked13156.2,checked13157.2,checked13158.2,checked13159.2,checked13160.2,checked13161.2,checked13162.2,checked13163.2,checked13164.2,checked13165.2,checked13166.2,checked13167.2,checked13168.2,checked13169.2,checked13170.2,checked13171.2,checked13172.2,checked13173.2,checked13174.2,checked13175.2,checked13176.2,checked13177.2,checked13178.2,checked13179.2,checked13180.2,checked13181.2,checked13182.2,checked13183.2]
  decide
end ArtifactPairedPathRoundGroup205
