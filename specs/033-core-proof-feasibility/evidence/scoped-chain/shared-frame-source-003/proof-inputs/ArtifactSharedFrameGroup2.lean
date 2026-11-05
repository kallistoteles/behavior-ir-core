import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.bxor 168 170]
def bytes128 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ab: u32 = r000000a8 ^ r000000aa;\n" : String)
theorem checked128 : bytes128=statementBytes 171 (op128.map lower) ∧ bytes128.length=48 := by core033_kernel_decide
def op129 : List WordIR.Op := [.shr 81 4]
def bytes129 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ac: u32 = r00000051 >> 0x00000004_u32;\n" : String)
theorem checked129 : bytes129=statementBytes 172 (op129.map lower) ∧ bytes129.length=54 := by core033_kernel_decide
def op130 : List WordIR.Op := [.band 172 43]
def bytes130 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ad: u32 = r000000ac & r0000002b;\n" : String)
theorem checked130 : bytes130=statementBytes 173 (op130.map lower) ∧ bytes130.length=48 := by core033_kernel_decide
def op131 : List WordIR.Op := [.bnot 173]
def bytes131 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ae: u32 = !r000000ad;\n" : String)
theorem checked131 : bytes131=statementBytes 174 (op131.map lower) ∧ bytes131.length=37 := by core033_kernel_decide
def op132 : List WordIR.Op := [.badd 174 43]
def bytes132 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000af: u32 = r000000ae.wrapping_add(r0000002b);\n" : String)
theorem checked132 : bytes132=statementBytes 175 (op132.map lower) ∧ bytes132.length=60 := by core033_kernel_decide
def op133 : List WordIR.Op := [.shr 171 16]
def bytes133 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b0: u32 = r000000ab >> 0x00000010_u32;\n" : String)
theorem checked133 : bytes133=statementBytes 176 (op133.map lower) ∧ bytes133.length=54 := by core033_kernel_decide
def op134 : List WordIR.Op := [.band 175 176]
def bytes134 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b1: u32 = r000000af & r000000b0;\n" : String)
theorem checked134 : bytes134=statementBytes 177 (op134.map lower) ∧ bytes134.length=48 := by core033_kernel_decide
def op135 : List WordIR.Op := [.bnot 175]
def bytes135 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b2: u32 = !r000000af;\n" : String)
theorem checked135 : bytes135=statementBytes 178 (op135.map lower) ∧ bytes135.length=37 := by core033_kernel_decide
def op136 : List WordIR.Op := [.band 178 171]
def bytes136 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b3: u32 = r000000b2 & r000000ab;\n" : String)
theorem checked136 : bytes136=statementBytes 179 (op136.map lower) ∧ bytes136.length=48 := by core033_kernel_decide
def op137 : List WordIR.Op := [.bxor 177 179]
def bytes137 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b4: u32 = r000000b1 ^ r000000b3;\n" : String)
theorem checked137 : bytes137=statementBytes 180 (op137.map lower) ∧ bytes137.length=48 := by core033_kernel_decide
def op138 : List WordIR.Op := [.shr 81 5]
def bytes138 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b5: u32 = r00000051 >> 0x00000005_u32;\n" : String)
theorem checked138 : bytes138=statementBytes 181 (op138.map lower) ∧ bytes138.length=54 := by core033_kernel_decide
def op139 : List WordIR.Op := [.band 181 50]
def bytes139 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b6: u32 = r000000b5 & r00000032;\n" : String)
theorem checked139 : bytes139=statementBytes 182 (op139.map lower) ∧ bytes139.length=48 := by core033_kernel_decide
def op140 : List WordIR.Op := [.bxor 181 50]
def bytes140 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b7: u32 = r000000b5 ^ r00000032;\n" : String)
theorem checked140 : bytes140=statementBytes 183 (op140.map lower) ∧ bytes140.length=48 := by core033_kernel_decide
def op141 : List WordIR.Op := [.badd 181 50]
def bytes141 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b8: u32 = r000000b5.wrapping_add(r00000032);\n" : String)
theorem checked141 : bytes141=statementBytes 184 (op141.map lower) ∧ bytes141.length=60 := by core033_kernel_decide
def op142 : List WordIR.Op := [.bnot 184]
def bytes142 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b9: u32 = !r000000b8;\n" : String)
theorem checked142 : bytes142=statementBytes 185 (op142.map lower) ∧ bytes142.length=37 := by core033_kernel_decide
def op143 : List WordIR.Op := [.band 183 185]
def bytes143 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ba: u32 = r000000b7 & r000000b9;\n" : String)
theorem checked143 : bytes143=statementBytes 186 (op143.map lower) ∧ bytes143.length=48 := by core033_kernel_decide
def op144 : List WordIR.Op := [.bxor 182 186]
def bytes144 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bb: u32 = r000000b6 ^ r000000ba;\n" : String)
theorem checked144 : bytes144=statementBytes 187 (op144.map lower) ∧ bytes144.length=48 := by core033_kernel_decide
def op145 : List WordIR.Op := [.shr 187 31]
def bytes145 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bc: u32 = r000000bb >> 0x0000001f_u32;\n" : String)
theorem checked145 : bytes145=statementBytes 188 (op145.map lower) ∧ bytes145.length=54 := by core033_kernel_decide
def op146 : List WordIR.Op := [.bxor 188 43]
def bytes146 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bd: u32 = r000000bc ^ r0000002b;\n" : String)
theorem checked146 : bytes146=statementBytes 189 (op146.map lower) ∧ bytes146.length=48 := by core033_kernel_decide
def op147 : List WordIR.Op := [.shr 180 0]
def bytes147 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000be: u32 = r000000b4 >> 0x00000000_u32;\n" : String)
theorem checked147 : bytes147=statementBytes 190 (op147.map lower) ∧ bytes147.length=54 := by core033_kernel_decide
def op148 : List WordIR.Op := [.band 190 43]
def bytes148 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bf: u32 = r000000be & r0000002b;\n" : String)
theorem checked148 : bytes148=statementBytes 191 (op148.map lower) ∧ bytes148.length=48 := by core033_kernel_decide
def op149 : List WordIR.Op := [.bnot 191]
def bytes149 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c0: u32 = !r000000bf;\n" : String)
theorem checked149 : bytes149=statementBytes 192 (op149.map lower) ∧ bytes149.length=37 := by core033_kernel_decide
def op150 : List WordIR.Op := [.badd 192 43]
def bytes150 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c1: u32 = r000000c0.wrapping_add(r0000002b);\n" : String)
theorem checked150 : bytes150=statementBytes 193 (op150.map lower) ∧ bytes150.length=60 := by core033_kernel_decide
def op151 : List WordIR.Op := [.band 193 19]
def bytes151 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c2: u32 = r000000c1 & r00000013;\n" : String)
theorem checked151 : bytes151=statementBytes 194 (op151.map lower) ∧ bytes151.length=48 := by core033_kernel_decide
def op152 : List WordIR.Op := [.bnot 193]
def bytes152 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c3: u32 = !r000000c1;\n" : String)
theorem checked152 : bytes152=statementBytes 195 (op152.map lower) ∧ bytes152.length=37 := by core033_kernel_decide
def op153 : List WordIR.Op := [.band 195 11]
def bytes153 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c4: u32 = r000000c3 & r0000000b;\n" : String)
theorem checked153 : bytes153=statementBytes 196 (op153.map lower) ∧ bytes153.length=48 := by core033_kernel_decide
def op154 : List WordIR.Op := [.bxor 194 196]
def bytes154 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c5: u32 = r000000c2 ^ r000000c4;\n" : String)
theorem checked154 : bytes154=statementBytes 197 (op154.map lower) ∧ bytes154.length=48 := by core033_kernel_decide
def op155 : List WordIR.Op := [.band 193 20]
def bytes155 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c6: u32 = r000000c1 & r00000014;\n" : String)
theorem checked155 : bytes155=statementBytes 198 (op155.map lower) ∧ bytes155.length=48 := by core033_kernel_decide
def op156 : List WordIR.Op := [.band 195 12]
def bytes156 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c7: u32 = r000000c3 & r0000000c;\n" : String)
theorem checked156 : bytes156=statementBytes 199 (op156.map lower) ∧ bytes156.length=48 := by core033_kernel_decide
def op157 : List WordIR.Op := [.bxor 198 199]
def bytes157 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c8: u32 = r000000c6 ^ r000000c7;\n" : String)
theorem checked157 : bytes157=statementBytes 200 (op157.map lower) ∧ bytes157.length=48 := by core033_kernel_decide
def op158 : List WordIR.Op := [.band 193 21]
def bytes158 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c9: u32 = r000000c1 & r00000015;\n" : String)
theorem checked158 : bytes158=statementBytes 201 (op158.map lower) ∧ bytes158.length=48 := by core033_kernel_decide
def op159 : List WordIR.Op := [.band 195 13]
def bytes159 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ca: u32 = r000000c3 & r0000000d;\n" : String)
theorem checked159 : bytes159=statementBytes 202 (op159.map lower) ∧ bytes159.length=48 := by core033_kernel_decide
def op160 : List WordIR.Op := [.bxor 201 202]
def bytes160 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cb: u32 = r000000c9 ^ r000000ca;\n" : String)
theorem checked160 : bytes160=statementBytes 203 (op160.map lower) ∧ bytes160.length=48 := by core033_kernel_decide
def op161 : List WordIR.Op := [.band 193 22]
def bytes161 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cc: u32 = r000000c1 & r00000016;\n" : String)
theorem checked161 : bytes161=statementBytes 204 (op161.map lower) ∧ bytes161.length=48 := by core033_kernel_decide
def op162 : List WordIR.Op := [.band 195 14]
def bytes162 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cd: u32 = r000000c3 & r0000000e;\n" : String)
theorem checked162 : bytes162=statementBytes 205 (op162.map lower) ∧ bytes162.length=48 := by core033_kernel_decide
def op163 : List WordIR.Op := [.bxor 204 205]
def bytes163 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ce: u32 = r000000cc ^ r000000cd;\n" : String)
theorem checked163 : bytes163=statementBytes 206 (op163.map lower) ∧ bytes163.length=48 := by core033_kernel_decide
def op164 : List WordIR.Op := [.band 193 23]
def bytes164 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cf: u32 = r000000c1 & r00000017;\n" : String)
theorem checked164 : bytes164=statementBytes 207 (op164.map lower) ∧ bytes164.length=48 := by core033_kernel_decide
def op165 : List WordIR.Op := [.band 195 15]
def bytes165 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d0: u32 = r000000c3 & r0000000f;\n" : String)
theorem checked165 : bytes165=statementBytes 208 (op165.map lower) ∧ bytes165.length=48 := by core033_kernel_decide
def op166 : List WordIR.Op := [.bxor 207 208]
def bytes166 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d1: u32 = r000000cf ^ r000000d0;\n" : String)
theorem checked166 : bytes166=statementBytes 209 (op166.map lower) ∧ bytes166.length=48 := by core033_kernel_decide
def op167 : List WordIR.Op := [.band 193 24]
def bytes167 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d2: u32 = r000000c1 & r00000018;\n" : String)
theorem checked167 : bytes167=statementBytes 210 (op167.map lower) ∧ bytes167.length=48 := by core033_kernel_decide
def op168 : List WordIR.Op := [.band 195 16]
def bytes168 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d3: u32 = r000000c3 & r00000010;\n" : String)
theorem checked168 : bytes168=statementBytes 211 (op168.map lower) ∧ bytes168.length=48 := by core033_kernel_decide
def op169 : List WordIR.Op := [.bxor 210 211]
def bytes169 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d4: u32 = r000000d2 ^ r000000d3;\n" : String)
theorem checked169 : bytes169=statementBytes 212 (op169.map lower) ∧ bytes169.length=48 := by core033_kernel_decide
def op170 : List WordIR.Op := [.band 193 25]
def bytes170 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d5: u32 = r000000c1 & r00000019;\n" : String)
theorem checked170 : bytes170=statementBytes 213 (op170.map lower) ∧ bytes170.length=48 := by core033_kernel_decide
def op171 : List WordIR.Op := [.band 195 17]
def bytes171 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d6: u32 = r000000c3 & r00000011;\n" : String)
theorem checked171 : bytes171=statementBytes 214 (op171.map lower) ∧ bytes171.length=48 := by core033_kernel_decide
def op172 : List WordIR.Op := [.bxor 213 214]
def bytes172 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d7: u32 = r000000d5 ^ r000000d6;\n" : String)
theorem checked172 : bytes172=statementBytes 215 (op172.map lower) ∧ bytes172.length=48 := by core033_kernel_decide
def op173 : List WordIR.Op := [.band 193 26]
def bytes173 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d8: u32 = r000000c1 & r0000001a;\n" : String)
theorem checked173 : bytes173=statementBytes 216 (op173.map lower) ∧ bytes173.length=48 := by core033_kernel_decide
def op174 : List WordIR.Op := [.band 195 18]
def bytes174 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d9: u32 = r000000c3 & r00000012;\n" : String)
theorem checked174 : bytes174=statementBytes 217 (op174.map lower) ∧ bytes174.length=48 := by core033_kernel_decide
def op175 : List WordIR.Op := [.bxor 216 217]
def bytes175 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000da: u32 = r000000d8 ^ r000000d9;\n" : String)
theorem checked175 : bytes175=statementBytes 218 (op175.map lower) ∧ bytes175.length=48 := by core033_kernel_decide
def op176 : List WordIR.Op := [.band 193 29]
def bytes176 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000db: u32 = r000000c1 & r0000001d;\n" : String)
theorem checked176 : bytes176=statementBytes 219 (op176.map lower) ∧ bytes176.length=48 := by core033_kernel_decide
def op177 : List WordIR.Op := [.band 195 27]
def bytes177 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000dc: u32 = r000000c3 & r0000001b;\n" : String)
theorem checked177 : bytes177=statementBytes 220 (op177.map lower) ∧ bytes177.length=48 := by core033_kernel_decide
def op178 : List WordIR.Op := [.bxor 219 220]
def bytes178 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000dd: u32 = r000000db ^ r000000dc;\n" : String)
theorem checked178 : bytes178=statementBytes 221 (op178.map lower) ∧ bytes178.length=48 := by core033_kernel_decide
def op179 : List WordIR.Op := [.band 193 30]
def bytes179 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000de: u32 = r000000c1 & r0000001e;\n" : String)
theorem checked179 : bytes179=statementBytes 222 (op179.map lower) ∧ bytes179.length=48 := by core033_kernel_decide
def op180 : List WordIR.Op := [.band 195 28]
def bytes180 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000df: u32 = r000000c3 & r0000001c;\n" : String)
theorem checked180 : bytes180=statementBytes 223 (op180.map lower) ∧ bytes180.length=48 := by core033_kernel_decide
def op181 : List WordIR.Op := [.bxor 222 223]
def bytes181 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e0: u32 = r000000de ^ r000000df;\n" : String)
theorem checked181 : bytes181=statementBytes 224 (op181.map lower) ∧ bytes181.length=48 := by core033_kernel_decide
def op182 : List WordIR.Op := [.band 193 32]
def bytes182 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e1: u32 = r000000c1 & r00000020;\n" : String)
theorem checked182 : bytes182=statementBytes 225 (op182.map lower) ∧ bytes182.length=48 := by core033_kernel_decide
def op183 : List WordIR.Op := [.band 195 31]
def bytes183 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e2: u32 = r000000c3 & r0000001f;\n" : String)
theorem checked183 : bytes183=statementBytes 226 (op183.map lower) ∧ bytes183.length=48 := by core033_kernel_decide
def op184 : List WordIR.Op := [.bxor 225 226]
def bytes184 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e3: u32 = r000000e1 ^ r000000e2;\n" : String)
theorem checked184 : bytes184=statementBytes 227 (op184.map lower) ∧ bytes184.length=48 := by core033_kernel_decide
def op185 : List WordIR.Op := [.band 193 34]
def bytes185 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e4: u32 = r000000c1 & r00000022;\n" : String)
theorem checked185 : bytes185=statementBytes 228 (op185.map lower) ∧ bytes185.length=48 := by core033_kernel_decide
def op186 : List WordIR.Op := [.band 195 33]
def bytes186 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e5: u32 = r000000c3 & r00000021;\n" : String)
theorem checked186 : bytes186=statementBytes 229 (op186.map lower) ∧ bytes186.length=48 := by core033_kernel_decide
def op187 : List WordIR.Op := [.bxor 228 229]
def bytes187 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e6: u32 = r000000e4 ^ r000000e5;\n" : String)
theorem checked187 : bytes187=statementBytes 230 (op187.map lower) ∧ bytes187.length=48 := by core033_kernel_decide
def op188 : List WordIR.Op := [.band 193 11]
def bytes188 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e7: u32 = r000000c1 & r0000000b;\n" : String)
theorem checked188 : bytes188=statementBytes 231 (op188.map lower) ∧ bytes188.length=48 := by core033_kernel_decide
def op189 : List WordIR.Op := [.band 195 19]
def bytes189 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e8: u32 = r000000c3 & r00000013;\n" : String)
theorem checked189 : bytes189=statementBytes 232 (op189.map lower) ∧ bytes189.length=48 := by core033_kernel_decide
def op190 : List WordIR.Op := [.bxor 231 232]
def bytes190 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000e9: u32 = r000000e7 ^ r000000e8;\n" : String)
theorem checked190 : bytes190=statementBytes 233 (op190.map lower) ∧ bytes190.length=48 := by core033_kernel_decide
def op191 : List WordIR.Op := [.band 193 12]
def bytes191 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ea: u32 = r000000c1 & r0000000c;\n" : String)
theorem checked191 : bytes191=statementBytes 234 (op191.map lower) ∧ bytes191.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129,op130,op131,op132,op133,op134,op135,op136,op137,op138,op139,op140,op141,op142,op143,op144,op145,op146,op147,op148,op149,op150,op151,op152,op153,op154,op155,op156,op157,op158,op159,op160,op161,op162,op163,op164,op165,op166,op167,op168,op169,op170,op171,op172,op173,op174,op175,op176,op177,op178,op179,op180,op181,op182,op183,op184,op185,op186,op187,op188,op189,op190,op191]
def chunks : List Bytes := [bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134,bytes135,bytes136,bytes137,bytes138,bytes139,bytes140,bytes141,bytes142,bytes143,bytes144,bytes145,bytes146,bytes147,bytes148,bytes149,bytes150,bytes151,bytes152,bytes153,bytes154,bytes155,bytes156,bytes157,bytes158,bytes159,bytes160,bytes161,bytes162,bytes163,bytes164,bytes165,bytes166,bytes167,bytes168,bytes169,bytes170,bytes171,bytes172,bytes173,bytes174,bytes175,bytes176,bytes177,bytes178,bytes179,bytes180,bytes181,bytes182,bytes183,bytes184,bytes185,bytes186,bytes187,bytes188,bytes189,bytes190,bytes191]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 171 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.cons _ _ _ _ _ checked135.1 (.cons _ _ _ _ _ checked136.1 (.cons _ _ _ _ _ checked137.1 (.cons _ _ _ _ _ checked138.1 (.cons _ _ _ _ _ checked139.1 (.cons _ _ _ _ _ checked140.1 (.cons _ _ _ _ _ checked141.1 (.cons _ _ _ _ _ checked142.1 (.cons _ _ _ _ _ checked143.1 (.cons _ _ _ _ _ checked144.1 (.cons _ _ _ _ _ checked145.1 (.cons _ _ _ _ _ checked146.1 (.cons _ _ _ _ _ checked147.1 (.cons _ _ _ _ _ checked148.1 (.cons _ _ _ _ _ checked149.1 (.cons _ _ _ _ _ checked150.1 (.cons _ _ _ _ _ checked151.1 (.cons _ _ _ _ _ checked152.1 (.cons _ _ _ _ _ checked153.1 (.cons _ _ _ _ _ checked154.1 (.cons _ _ _ _ _ checked155.1 (.cons _ _ _ _ _ checked156.1 (.cons _ _ _ _ _ checked157.1 (.cons _ _ _ _ _ checked158.1 (.cons _ _ _ _ _ checked159.1 (.cons _ _ _ _ _ checked160.1 (.cons _ _ _ _ _ checked161.1 (.cons _ _ _ _ _ checked162.1 (.cons _ _ _ _ _ checked163.1 (.cons _ _ _ _ _ checked164.1 (.cons _ _ _ _ _ checked165.1 (.cons _ _ _ _ _ checked166.1 (.cons _ _ _ _ _ checked167.1 (.cons _ _ _ _ _ checked168.1 (.cons _ _ _ _ _ checked169.1 (.cons _ _ _ _ _ checked170.1 (.cons _ _ _ _ _ checked171.1 (.cons _ _ _ _ _ checked172.1 (.cons _ _ _ _ _ checked173.1 (.cons _ _ _ _ _ checked174.1 (.cons _ _ _ _ _ checked175.1 (.cons _ _ _ _ _ checked176.1 (.cons _ _ _ _ _ checked177.1 (.cons _ _ _ _ _ checked178.1 (.cons _ _ _ _ _ checked179.1 (.cons _ _ _ _ _ checked180.1 (.cons _ _ _ _ _ checked181.1 (.cons _ _ _ _ _ checked182.1 (.cons _ _ _ _ _ checked183.1 (.cons _ _ _ _ _ checked184.1 (.cons _ _ _ _ _ checked185.1 (.cons _ _ _ _ _ checked186.1 (.cons _ _ _ _ _ checked187.1 (.cons _ _ _ _ _ checked188.1 (.cons _ _ _ _ _ checked189.1 (.cons _ _ _ _ _ checked190.1 (.cons _ _ _ _ _ checked191.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 171 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3083 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2,checked135.2,checked136.2,checked137.2,checked138.2,checked139.2,checked140.2,checked141.2,checked142.2,checked143.2,checked144.2,checked145.2,checked146.2,checked147.2,checked148.2,checked149.2,checked150.2,checked151.2,checked152.2,checked153.2,checked154.2,checked155.2,checked156.2,checked157.2,checked158.2,checked159.2,checked160.2,checked161.2,checked162.2,checked163.2,checked164.2,checked165.2,checked166.2,checked167.2,checked168.2,checked169.2,checked170.2,checked171.2,checked172.2,checked173.2,checked174.2,checked175.2,checked176.2,checked177.2,checked178.2,checked179.2,checked180.2,checked181.2,checked182.2,checked183.2,checked184.2,checked185.2,checked186.2,checked187.2,checked188.2,checked189.2,checked190.2,checked191.2]
  decide
end ArtifactSharedFrameGroup2
