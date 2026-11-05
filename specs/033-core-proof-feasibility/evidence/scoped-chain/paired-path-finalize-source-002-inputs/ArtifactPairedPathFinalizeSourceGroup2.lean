import ActualPairedPathFinalizeIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
namespace ArtifactPairedPathFinalizeSourceGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.band 218 223]
def bytes128 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e0: u32 = r000000da & r000000df;\n" : String)
theorem checked128 : bytes128=statementBytes 224 (op128.map lower) ∧ bytes128.length=48 := by core033_kernel_decide
def op129 : List WordIR.Op := [.bxor 214 224]
def bytes129 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e1: u32 = r000000d6 ^ r000000e0;\n" : String)
theorem checked129 : bytes129=statementBytes 225 (op129.map lower) ∧ bytes129.length=48 := by core033_kernel_decide
def op130 : List WordIR.Op := [.shr 225 31]
def bytes130 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e2: u32 = r000000e1 >> 0x0000001f_u32;\n" : String)
theorem checked130 : bytes130=statementBytes 226 (op130.map lower) ∧ bytes130.length=54 := by core033_kernel_decide
def op131 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes131 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e3: u32 = 0x00000001_u32;\n" : String)
theorem checked131 : bytes131=statementBytes 227 (op131.map lower) ∧ bytes131.length=41 := by core033_kernel_decide
def op132 : List WordIR.Op := [.bxor 226 227]
def bytes132 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e4: u32 = r000000e2 ^ r000000e3;\n" : String)
theorem checked132 : bytes132=statementBytes 228 (op132.map lower) ∧ bytes132.length=48 := by core033_kernel_decide
def op133 : List WordIR.Op := [.bxor 60 84]
def bytes133 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e5: u32 = r0000003c ^ r00000054;\n" : String)
theorem checked133 : bytes133=statementBytes 229 (op133.map lower) ∧ bytes133.length=48 := by core033_kernel_decide
def op134 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes134 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e6: u32 = 0x00000000_u32;\n" : String)
theorem checked134 : bytes134=statementBytes 230 (op134.map lower) ∧ bytes134.length=41 := by core033_kernel_decide
def op135 : List WordIR.Op := [.bnot 230]
def bytes135 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e7: u32 = !r000000e6;\n" : String)
theorem checked135 : bytes135=statementBytes 231 (op135.map lower) ∧ bytes135.length=37 := by core033_kernel_decide
def op136 : List WordIR.Op := [.band 229 231]
def bytes136 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e8: u32 = r000000e5 & r000000e7;\n" : String)
theorem checked136 : bytes136=statementBytes 232 (op136.map lower) ∧ bytes136.length=48 := by core033_kernel_decide
def op137 : List WordIR.Op := [.bxor 60 84]
def bytes137 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e9: u32 = r0000003c ^ r00000054;\n" : String)
theorem checked137 : bytes137=statementBytes 233 (op137.map lower) ∧ bytes137.length=48 := by core033_kernel_decide
def op138 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes138 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ea: u32 = 0x00000000_u32;\n" : String)
theorem checked138 : bytes138=statementBytes 234 (op138.map lower) ∧ bytes138.length=41 := by core033_kernel_decide
def op139 : List WordIR.Op := [.bnot 234]
def bytes139 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000eb: u32 = !r000000ea;\n" : String)
theorem checked139 : bytes139=statementBytes 235 (op139.map lower) ∧ bytes139.length=37 := by core033_kernel_decide
def op140 : List WordIR.Op := [.bxor 233 235]
def bytes140 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ec: u32 = r000000e9 ^ r000000eb;\n" : String)
theorem checked140 : bytes140=statementBytes 236 (op140.map lower) ∧ bytes140.length=48 := by core033_kernel_decide
def op141 : List WordIR.Op := [.bxor 60 84]
def bytes141 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ed: u32 = r0000003c ^ r00000054;\n" : String)
theorem checked141 : bytes141=statementBytes 237 (op141.map lower) ∧ bytes141.length=48 := by core033_kernel_decide
def op142 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes142 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ee: u32 = 0x00000000_u32;\n" : String)
theorem checked142 : bytes142=statementBytes 238 (op142.map lower) ∧ bytes142.length=41 := by core033_kernel_decide
def op143 : List WordIR.Op := [.bnot 238]
def bytes143 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ef: u32 = !r000000ee;\n" : String)
theorem checked143 : bytes143=statementBytes 239 (op143.map lower) ∧ bytes143.length=37 := by core033_kernel_decide
def op144 : List WordIR.Op := [.badd 237 239]
def bytes144 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f0: u32 = r000000ed.wrapping_add(r000000ef);\n" : String)
theorem checked144 : bytes144=statementBytes 240 (op144.map lower) ∧ bytes144.length=60 := by core033_kernel_decide
def op145 : List WordIR.Op := [.bnot 240]
def bytes145 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f1: u32 = !r000000f0;\n" : String)
theorem checked145 : bytes145=statementBytes 241 (op145.map lower) ∧ bytes145.length=37 := by core033_kernel_decide
def op146 : List WordIR.Op := [.band 236 241]
def bytes146 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f2: u32 = r000000ec & r000000f1;\n" : String)
theorem checked146 : bytes146=statementBytes 242 (op146.map lower) ∧ bytes146.length=48 := by core033_kernel_decide
def op147 : List WordIR.Op := [.bxor 232 242]
def bytes147 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f3: u32 = r000000e8 ^ r000000f2;\n" : String)
theorem checked147 : bytes147=statementBytes 243 (op147.map lower) ∧ bytes147.length=48 := by core033_kernel_decide
def op148 : List WordIR.Op := [.shr 243 31]
def bytes148 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f4: u32 = r000000f3 >> 0x0000001f_u32;\n" : String)
theorem checked148 : bytes148=statementBytes 244 (op148.map lower) ∧ bytes148.length=54 := by core033_kernel_decide
def op149 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes149 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f5: u32 = 0x00000001_u32;\n" : String)
theorem checked149 : bytes149=statementBytes 245 (op149.map lower) ∧ bytes149.length=41 := by core033_kernel_decide
def op150 : List WordIR.Op := [.bxor 244 245]
def bytes150 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f6: u32 = r000000f4 ^ r000000f5;\n" : String)
theorem checked150 : bytes150=statementBytes 246 (op150.map lower) ∧ bytes150.length=48 := by core033_kernel_decide
def op151 : List WordIR.Op := [.bxor 61 85]
def bytes151 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f7: u32 = r0000003d ^ r00000055;\n" : String)
theorem checked151 : bytes151=statementBytes 247 (op151.map lower) ∧ bytes151.length=48 := by core033_kernel_decide
def op152 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes152 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f8: u32 = 0x00000000_u32;\n" : String)
theorem checked152 : bytes152=statementBytes 248 (op152.map lower) ∧ bytes152.length=41 := by core033_kernel_decide
def op153 : List WordIR.Op := [.bnot 248]
def bytes153 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000f9: u32 = !r000000f8;\n" : String)
theorem checked153 : bytes153=statementBytes 249 (op153.map lower) ∧ bytes153.length=37 := by core033_kernel_decide
def op154 : List WordIR.Op := [.band 247 249]
def bytes154 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fa: u32 = r000000f7 & r000000f9;\n" : String)
theorem checked154 : bytes154=statementBytes 250 (op154.map lower) ∧ bytes154.length=48 := by core033_kernel_decide
def op155 : List WordIR.Op := [.bxor 61 85]
def bytes155 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fb: u32 = r0000003d ^ r00000055;\n" : String)
theorem checked155 : bytes155=statementBytes 251 (op155.map lower) ∧ bytes155.length=48 := by core033_kernel_decide
def op156 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes156 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fc: u32 = 0x00000000_u32;\n" : String)
theorem checked156 : bytes156=statementBytes 252 (op156.map lower) ∧ bytes156.length=41 := by core033_kernel_decide
def op157 : List WordIR.Op := [.bnot 252]
def bytes157 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fd: u32 = !r000000fc;\n" : String)
theorem checked157 : bytes157=statementBytes 253 (op157.map lower) ∧ bytes157.length=37 := by core033_kernel_decide
def op158 : List WordIR.Op := [.bxor 251 253]
def bytes158 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000fe: u32 = r000000fb ^ r000000fd;\n" : String)
theorem checked158 : bytes158=statementBytes 254 (op158.map lower) ∧ bytes158.length=48 := by core033_kernel_decide
def op159 : List WordIR.Op := [.bxor 61 85]
def bytes159 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ff: u32 = r0000003d ^ r00000055;\n" : String)
theorem checked159 : bytes159=statementBytes 255 (op159.map lower) ∧ bytes159.length=48 := by core033_kernel_decide
def op160 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes160 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000100: u32 = 0x00000000_u32;\n" : String)
theorem checked160 : bytes160=statementBytes 256 (op160.map lower) ∧ bytes160.length=41 := by core033_kernel_decide
def op161 : List WordIR.Op := [.bnot 256]
def bytes161 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000101: u32 = !r00000100;\n" : String)
theorem checked161 : bytes161=statementBytes 257 (op161.map lower) ∧ bytes161.length=37 := by core033_kernel_decide
def op162 : List WordIR.Op := [.badd 255 257]
def bytes162 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000102: u32 = r000000ff.wrapping_add(r00000101);\n" : String)
theorem checked162 : bytes162=statementBytes 258 (op162.map lower) ∧ bytes162.length=60 := by core033_kernel_decide
def op163 : List WordIR.Op := [.bnot 258]
def bytes163 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000103: u32 = !r00000102;\n" : String)
theorem checked163 : bytes163=statementBytes 259 (op163.map lower) ∧ bytes163.length=37 := by core033_kernel_decide
def op164 : List WordIR.Op := [.band 254 259]
def bytes164 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000104: u32 = r000000fe & r00000103;\n" : String)
theorem checked164 : bytes164=statementBytes 260 (op164.map lower) ∧ bytes164.length=48 := by core033_kernel_decide
def op165 : List WordIR.Op := [.bxor 250 260]
def bytes165 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000105: u32 = r000000fa ^ r00000104;\n" : String)
theorem checked165 : bytes165=statementBytes 261 (op165.map lower) ∧ bytes165.length=48 := by core033_kernel_decide
def op166 : List WordIR.Op := [.shr 261 31]
def bytes166 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000106: u32 = r00000105 >> 0x0000001f_u32;\n" : String)
theorem checked166 : bytes166=statementBytes 262 (op166.map lower) ∧ bytes166.length=54 := by core033_kernel_decide
def op167 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes167 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000107: u32 = 0x00000001_u32;\n" : String)
theorem checked167 : bytes167=statementBytes 263 (op167.map lower) ∧ bytes167.length=41 := by core033_kernel_decide
def op168 : List WordIR.Op := [.bxor 262 263]
def bytes168 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000108: u32 = r00000106 ^ r00000107;\n" : String)
theorem checked168 : bytes168=statementBytes 264 (op168.map lower) ∧ bytes168.length=48 := by core033_kernel_decide
def op169 : List WordIR.Op := [.bxor 62 86]
def bytes169 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000109: u32 = r0000003e ^ r00000056;\n" : String)
theorem checked169 : bytes169=statementBytes 265 (op169.map lower) ∧ bytes169.length=48 := by core033_kernel_decide
def op170 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes170 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010a: u32 = 0x00000000_u32;\n" : String)
theorem checked170 : bytes170=statementBytes 266 (op170.map lower) ∧ bytes170.length=41 := by core033_kernel_decide
def op171 : List WordIR.Op := [.bnot 266]
def bytes171 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010b: u32 = !r0000010a;\n" : String)
theorem checked171 : bytes171=statementBytes 267 (op171.map lower) ∧ bytes171.length=37 := by core033_kernel_decide
def op172 : List WordIR.Op := [.band 265 267]
def bytes172 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010c: u32 = r00000109 & r0000010b;\n" : String)
theorem checked172 : bytes172=statementBytes 268 (op172.map lower) ∧ bytes172.length=48 := by core033_kernel_decide
def op173 : List WordIR.Op := [.bxor 62 86]
def bytes173 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010d: u32 = r0000003e ^ r00000056;\n" : String)
theorem checked173 : bytes173=statementBytes 269 (op173.map lower) ∧ bytes173.length=48 := by core033_kernel_decide
def op174 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes174 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010e: u32 = 0x00000000_u32;\n" : String)
theorem checked174 : bytes174=statementBytes 270 (op174.map lower) ∧ bytes174.length=41 := by core033_kernel_decide
def op175 : List WordIR.Op := [.bnot 270]
def bytes175 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000010f: u32 = !r0000010e;\n" : String)
theorem checked175 : bytes175=statementBytes 271 (op175.map lower) ∧ bytes175.length=37 := by core033_kernel_decide
def op176 : List WordIR.Op := [.bxor 269 271]
def bytes176 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000110: u32 = r0000010d ^ r0000010f;\n" : String)
theorem checked176 : bytes176=statementBytes 272 (op176.map lower) ∧ bytes176.length=48 := by core033_kernel_decide
def op177 : List WordIR.Op := [.bxor 62 86]
def bytes177 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000111: u32 = r0000003e ^ r00000056;\n" : String)
theorem checked177 : bytes177=statementBytes 273 (op177.map lower) ∧ bytes177.length=48 := by core033_kernel_decide
def op178 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes178 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000112: u32 = 0x00000000_u32;\n" : String)
theorem checked178 : bytes178=statementBytes 274 (op178.map lower) ∧ bytes178.length=41 := by core033_kernel_decide
def op179 : List WordIR.Op := [.bnot 274]
def bytes179 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000113: u32 = !r00000112;\n" : String)
theorem checked179 : bytes179=statementBytes 275 (op179.map lower) ∧ bytes179.length=37 := by core033_kernel_decide
def op180 : List WordIR.Op := [.badd 273 275]
def bytes180 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000114: u32 = r00000111.wrapping_add(r00000113);\n" : String)
theorem checked180 : bytes180=statementBytes 276 (op180.map lower) ∧ bytes180.length=60 := by core033_kernel_decide
def op181 : List WordIR.Op := [.bnot 276]
def bytes181 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000115: u32 = !r00000114;\n" : String)
theorem checked181 : bytes181=statementBytes 277 (op181.map lower) ∧ bytes181.length=37 := by core033_kernel_decide
def op182 : List WordIR.Op := [.band 272 277]
def bytes182 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000116: u32 = r00000110 & r00000115;\n" : String)
theorem checked182 : bytes182=statementBytes 278 (op182.map lower) ∧ bytes182.length=48 := by core033_kernel_decide
def op183 : List WordIR.Op := [.bxor 268 278]
def bytes183 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000117: u32 = r0000010c ^ r00000116;\n" : String)
theorem checked183 : bytes183=statementBytes 279 (op183.map lower) ∧ bytes183.length=48 := by core033_kernel_decide
def op184 : List WordIR.Op := [.shr 279 31]
def bytes184 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000118: u32 = r00000117 >> 0x0000001f_u32;\n" : String)
theorem checked184 : bytes184=statementBytes 280 (op184.map lower) ∧ bytes184.length=54 := by core033_kernel_decide
def op185 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes185 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000119: u32 = 0x00000001_u32;\n" : String)
theorem checked185 : bytes185=statementBytes 281 (op185.map lower) ∧ bytes185.length=41 := by core033_kernel_decide
def op186 : List WordIR.Op := [.bxor 280 281]
def bytes186 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011a: u32 = r00000118 ^ r00000119;\n" : String)
theorem checked186 : bytes186=statementBytes 282 (op186.map lower) ∧ bytes186.length=48 := by core033_kernel_decide
def op187 : List WordIR.Op := [.bxor 63 87]
def bytes187 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011b: u32 = r0000003f ^ r00000057;\n" : String)
theorem checked187 : bytes187=statementBytes 283 (op187.map lower) ∧ bytes187.length=48 := by core033_kernel_decide
def op188 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes188 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011c: u32 = 0x00000000_u32;\n" : String)
theorem checked188 : bytes188=statementBytes 284 (op188.map lower) ∧ bytes188.length=41 := by core033_kernel_decide
def op189 : List WordIR.Op := [.bnot 284]
def bytes189 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011d: u32 = !r0000011c;\n" : String)
theorem checked189 : bytes189=statementBytes 285 (op189.map lower) ∧ bytes189.length=37 := by core033_kernel_decide
def op190 : List WordIR.Op := [.band 283 285]
def bytes190 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011e: u32 = r0000011b & r0000011d;\n" : String)
theorem checked190 : bytes190=statementBytes 286 (op190.map lower) ∧ bytes190.length=48 := by core033_kernel_decide
def op191 : List WordIR.Op := [.bxor 63 87]
def bytes191 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000011f: u32 = r0000003f ^ r00000057;\n" : String)
theorem checked191 : bytes191=statementBytes 287 (op191.map lower) ∧ bytes191.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129,op130,op131,op132,op133,op134,op135,op136,op137,op138,op139,op140,op141,op142,op143,op144,op145,op146,op147,op148,op149,op150,op151,op152,op153,op154,op155,op156,op157,op158,op159,op160,op161,op162,op163,op164,op165,op166,op167,op168,op169,op170,op171,op172,op173,op174,op175,op176,op177,op178,op179,op180,op181,op182,op183,op184,op185,op186,op187,op188,op189,op190,op191]
def chunks : List Bytes := [bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134,bytes135,bytes136,bytes137,bytes138,bytes139,bytes140,bytes141,bytes142,bytes143,bytes144,bytes145,bytes146,bytes147,bytes148,bytes149,bytes150,bytes151,bytes152,bytes153,bytes154,bytes155,bytes156,bytes157,bytes158,bytes159,bytes160,bytes161,bytes162,bytes163,bytes164,bytes165,bytes166,bytes167,bytes168,bytes169,bytes170,bytes171,bytes172,bytes173,bytes174,bytes175,bytes176,bytes177,bytes178,bytes179,bytes180,bytes181,bytes182,bytes183,bytes184,bytes185,bytes186,bytes187,bytes188,bytes189,bytes190,bytes191]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 224 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.cons _ _ _ _ _ checked135.1 (.cons _ _ _ _ _ checked136.1 (.cons _ _ _ _ _ checked137.1 (.cons _ _ _ _ _ checked138.1 (.cons _ _ _ _ _ checked139.1 (.cons _ _ _ _ _ checked140.1 (.cons _ _ _ _ _ checked141.1 (.cons _ _ _ _ _ checked142.1 (.cons _ _ _ _ _ checked143.1 (.cons _ _ _ _ _ checked144.1 (.cons _ _ _ _ _ checked145.1 (.cons _ _ _ _ _ checked146.1 (.cons _ _ _ _ _ checked147.1 (.cons _ _ _ _ _ checked148.1 (.cons _ _ _ _ _ checked149.1 (.cons _ _ _ _ _ checked150.1 (.cons _ _ _ _ _ checked151.1 (.cons _ _ _ _ _ checked152.1 (.cons _ _ _ _ _ checked153.1 (.cons _ _ _ _ _ checked154.1 (.cons _ _ _ _ _ checked155.1 (.cons _ _ _ _ _ checked156.1 (.cons _ _ _ _ _ checked157.1 (.cons _ _ _ _ _ checked158.1 (.cons _ _ _ _ _ checked159.1 (.cons _ _ _ _ _ checked160.1 (.cons _ _ _ _ _ checked161.1 (.cons _ _ _ _ _ checked162.1 (.cons _ _ _ _ _ checked163.1 (.cons _ _ _ _ _ checked164.1 (.cons _ _ _ _ _ checked165.1 (.cons _ _ _ _ _ checked166.1 (.cons _ _ _ _ _ checked167.1 (.cons _ _ _ _ _ checked168.1 (.cons _ _ _ _ _ checked169.1 (.cons _ _ _ _ _ checked170.1 (.cons _ _ _ _ _ checked171.1 (.cons _ _ _ _ _ checked172.1 (.cons _ _ _ _ _ checked173.1 (.cons _ _ _ _ _ checked174.1 (.cons _ _ _ _ _ checked175.1 (.cons _ _ _ _ _ checked176.1 (.cons _ _ _ _ _ checked177.1 (.cons _ _ _ _ _ checked178.1 (.cons _ _ _ _ _ checked179.1 (.cons _ _ _ _ _ checked180.1 (.cons _ _ _ _ _ checked181.1 (.cons _ _ _ _ _ checked182.1 (.cons _ _ _ _ _ checked183.1 (.cons _ _ _ _ _ checked184.1 (.cons _ _ _ _ _ checked185.1 (.cons _ _ _ _ _ checked186.1 (.cons _ _ _ _ _ checked187.1 (.cons _ _ _ _ _ checked188.1 (.cons _ _ _ _ _ checked189.1 (.cons _ _ _ _ _ checked190.1 (.cons _ _ _ _ _ checked191.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 224 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2891 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2,checked135.2,checked136.2,checked137.2,checked138.2,checked139.2,checked140.2,checked141.2,checked142.2,checked143.2,checked144.2,checked145.2,checked146.2,checked147.2,checked148.2,checked149.2,checked150.2,checked151.2,checked152.2,checked153.2,checked154.2,checked155.2,checked156.2,checked157.2,checked158.2,checked159.2,checked160.2,checked161.2,checked162.2,checked163.2,checked164.2,checked165.2,checked166.2,checked167.2,checked168.2,checked169.2,checked170.2,checked171.2,checked172.2,checked173.2,checked174.2,checked175.2,checked176.2,checked177.2,checked178.2,checked179.2,checked180.2,checked181.2,checked182.2,checked183.2,checked184.2,checked185.2,checked186.2,checked187.2,checked188.2,checked189.2,checked190.2,checked191.2]
  decide
end ArtifactPairedPathFinalizeSourceGroup2
