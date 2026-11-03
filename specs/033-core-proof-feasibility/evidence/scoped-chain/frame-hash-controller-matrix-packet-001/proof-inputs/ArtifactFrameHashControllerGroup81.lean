import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup81
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5184 : List WordIR.Op := [.badd 5225 5226]
def bytes5184 : Bytes := ("    let r0000146b: u32 = r00001469.wrapping_add(r0000146a);\n" : String).toByteArray.data.toList
theorem checked5184 : bytes5184=statementBytes 5227 (op5184.map lower) ∧ bytes5184.length=60 := by core033_kernel_decide
def op5185 : List WordIR.Op := [.rotr 4059 24]
def bytes5185 : Bytes := ("    let r0000146c: u32 = r00000fdb.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5185 : bytes5185=statementBytes 5228 (op5185.map lower) ∧ bytes5185.length=65 := by core033_kernel_decide
def op5186 : List WordIR.Op := [.badd 5227 5228]
def bytes5186 : Bytes := ("    let r0000146d: u32 = r0000146b.wrapping_add(r0000146c);\n" : String).toByteArray.data.toList
theorem checked5186 : bytes5186=statementBytes 5229 (op5186.map lower) ∧ bytes5186.length=60 := by core033_kernel_decide
def op5187 : List WordIR.Op := [.badd 5229 4111]
def bytes5187 : Bytes := ("    let r0000146e: u32 = r0000146d.wrapping_add(r0000100f);\n" : String).toByteArray.data.toList
theorem checked5187 : bytes5187=statementBytes 5230 (op5187.map lower) ∧ bytes5187.length=60 := by core033_kernel_decide
def op5188 : List WordIR.Op := [.rotr 4163 8]
def bytes5188 : Bytes := ("    let r0000146f: u32 = r00001043.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5188 : bytes5188=statementBytes 5231 (op5188.map lower) ∧ bytes5188.length=65 := by core033_kernel_decide
def op5189 : List WordIR.Op := [.rotr 4215 16]
def bytes5189 : Bytes := ("    let r00001470: u32 = r00001077.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5189 : bytes5189=statementBytes 5232 (op5189.map lower) ∧ bytes5189.length=65 := by core033_kernel_decide
def op5190 : List WordIR.Op := [.badd 5231 5232]
def bytes5190 : Bytes := ("    let r00001471: u32 = r0000146f.wrapping_add(r00001470);\n" : String).toByteArray.data.toList
theorem checked5190 : bytes5190=statementBytes 5233 (op5190.map lower) ∧ bytes5190.length=60 := by core033_kernel_decide
def op5191 : List WordIR.Op := [.rotr 4267 24]
def bytes5191 : Bytes := ("    let r00001472: u32 = r000010ab.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5191 : bytes5191=statementBytes 5234 (op5191.map lower) ∧ bytes5191.length=65 := by core033_kernel_decide
def op5192 : List WordIR.Op := [.badd 5233 5234]
def bytes5192 : Bytes := ("    let r00001473: u32 = r00001471.wrapping_add(r00001472);\n" : String).toByteArray.data.toList
theorem checked5192 : bytes5192=statementBytes 5235 (op5192.map lower) ∧ bytes5192.length=60 := by core033_kernel_decide
def op5193 : List WordIR.Op := [.badd 5235 4319]
def bytes5193 : Bytes := ("    let r00001474: u32 = r00001473.wrapping_add(r000010df);\n" : String).toByteArray.data.toList
theorem checked5193 : bytes5193=statementBytes 5236 (op5193.map lower) ∧ bytes5193.length=60 := by core033_kernel_decide
def op5194 : List WordIR.Op := [.rotr 4371 8]
def bytes5194 : Bytes := ("    let r00001475: u32 = r00001113.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5194 : bytes5194=statementBytes 5237 (op5194.map lower) ∧ bytes5194.length=65 := by core033_kernel_decide
def op5195 : List WordIR.Op := [.rotr 4423 16]
def bytes5195 : Bytes := ("    let r00001476: u32 = r00001147.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5195 : bytes5195=statementBytes 5238 (op5195.map lower) ∧ bytes5195.length=65 := by core033_kernel_decide
def op5196 : List WordIR.Op := [.badd 5237 5238]
def bytes5196 : Bytes := ("    let r00001477: u32 = r00001475.wrapping_add(r00001476);\n" : String).toByteArray.data.toList
theorem checked5196 : bytes5196=statementBytes 5239 (op5196.map lower) ∧ bytes5196.length=60 := by core033_kernel_decide
def op5197 : List WordIR.Op := [.rotr 4475 24]
def bytes5197 : Bytes := ("    let r00001478: u32 = r0000117b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5197 : bytes5197=statementBytes 5240 (op5197.map lower) ∧ bytes5197.length=65 := by core033_kernel_decide
def op5198 : List WordIR.Op := [.badd 5239 5240]
def bytes5198 : Bytes := ("    let r00001479: u32 = r00001477.wrapping_add(r00001478);\n" : String).toByteArray.data.toList
theorem checked5198 : bytes5198=statementBytes 5241 (op5198.map lower) ∧ bytes5198.length=60 := by core033_kernel_decide
def op5199 : List WordIR.Op := [.badd 5241 4528]
def bytes5199 : Bytes := ("    let r0000147a: u32 = r00001479.wrapping_add(r000011b0);\n" : String).toByteArray.data.toList
theorem checked5199 : bytes5199=statementBytes 5242 (op5199.map lower) ∧ bytes5199.length=60 := by core033_kernel_decide
def op5200 : List WordIR.Op := [.rotr 4581 8]
def bytes5200 : Bytes := ("    let r0000147b: u32 = r000011e5.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5200 : bytes5200=statementBytes 5243 (op5200.map lower) ∧ bytes5200.length=65 := by core033_kernel_decide
def op5201 : List WordIR.Op := [.rotr 4634 16]
def bytes5201 : Bytes := ("    let r0000147c: u32 = r0000121a.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5201 : bytes5201=statementBytes 5244 (op5201.map lower) ∧ bytes5201.length=65 := by core033_kernel_decide
def op5202 : List WordIR.Op := [.badd 5243 5244]
def bytes5202 : Bytes := ("    let r0000147d: u32 = r0000147b.wrapping_add(r0000147c);\n" : String).toByteArray.data.toList
theorem checked5202 : bytes5202=statementBytes 5245 (op5202.map lower) ∧ bytes5202.length=60 := by core033_kernel_decide
def op5203 : List WordIR.Op := [.rotr 4687 24]
def bytes5203 : Bytes := ("    let r0000147e: u32 = r0000124f.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5203 : bytes5203=statementBytes 5246 (op5203.map lower) ∧ bytes5203.length=65 := by core033_kernel_decide
def op5204 : List WordIR.Op := [.badd 5245 5246]
def bytes5204 : Bytes := ("    let r0000147f: u32 = r0000147d.wrapping_add(r0000147e);\n" : String).toByteArray.data.toList
theorem checked5204 : bytes5204=statementBytes 5247 (op5204.map lower) ∧ bytes5204.length=60 := by core033_kernel_decide
def op5205 : List WordIR.Op := [.badd 5247 4740]
def bytes5205 : Bytes := ("    let r00001480: u32 = r0000147f.wrapping_add(r00001284);\n" : String).toByteArray.data.toList
theorem checked5205 : bytes5205=statementBytes 5248 (op5205.map lower) ∧ bytes5205.length=60 := by core033_kernel_decide
def op5206 : List WordIR.Op := [.rotr 4793 8]
def bytes5206 : Bytes := ("    let r00001481: u32 = r000012b9.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5206 : bytes5206=statementBytes 5249 (op5206.map lower) ∧ bytes5206.length=65 := by core033_kernel_decide
def op5207 : List WordIR.Op := [.rotr 4846 16]
def bytes5207 : Bytes := ("    let r00001482: u32 = r000012ee.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5207 : bytes5207=statementBytes 5250 (op5207.map lower) ∧ bytes5207.length=65 := by core033_kernel_decide
def op5208 : List WordIR.Op := [.badd 5249 5250]
def bytes5208 : Bytes := ("    let r00001483: u32 = r00001481.wrapping_add(r00001482);\n" : String).toByteArray.data.toList
theorem checked5208 : bytes5208=statementBytes 5251 (op5208.map lower) ∧ bytes5208.length=60 := by core033_kernel_decide
def op5209 : List WordIR.Op := [.rotr 4899 24]
def bytes5209 : Bytes := ("    let r00001484: u32 = r00001323.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5209 : bytes5209=statementBytes 5252 (op5209.map lower) ∧ bytes5209.length=65 := by core033_kernel_decide
def op5210 : List WordIR.Op := [.badd 5251 5252]
def bytes5210 : Bytes := ("    let r00001485: u32 = r00001483.wrapping_add(r00001484);\n" : String).toByteArray.data.toList
theorem checked5210 : bytes5210=statementBytes 5253 (op5210.map lower) ∧ bytes5210.length=60 := by core033_kernel_decide
def op5211 : List WordIR.Op := [.badd 5253 4952]
def bytes5211 : Bytes := ("    let r00001486: u32 = r00001485.wrapping_add(r00001358);\n" : String).toByteArray.data.toList
theorem checked5211 : bytes5211=statementBytes 5254 (op5211.map lower) ∧ bytes5211.length=60 := by core033_kernel_decide
def op5212 : List WordIR.Op := [.rotr 5005 8]
def bytes5212 : Bytes := ("    let r00001487: u32 = r0000138d.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5212 : bytes5212=statementBytes 5255 (op5212.map lower) ∧ bytes5212.length=65 := by core033_kernel_decide
def op5213 : List WordIR.Op := [.rotr 5058 16]
def bytes5213 : Bytes := ("    let r00001488: u32 = r000013c2.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5213 : bytes5213=statementBytes 5256 (op5213.map lower) ∧ bytes5213.length=65 := by core033_kernel_decide
def op5214 : List WordIR.Op := [.badd 5255 5256]
def bytes5214 : Bytes := ("    let r00001489: u32 = r00001487.wrapping_add(r00001488);\n" : String).toByteArray.data.toList
theorem checked5214 : bytes5214=statementBytes 5257 (op5214.map lower) ∧ bytes5214.length=60 := by core033_kernel_decide
def op5215 : List WordIR.Op := [.rotr 5111 24]
def bytes5215 : Bytes := ("    let r0000148a: u32 = r000013f7.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5215 : bytes5215=statementBytes 5258 (op5215.map lower) ∧ bytes5215.length=65 := by core033_kernel_decide
def op5216 : List WordIR.Op := [.badd 5257 5258]
def bytes5216 : Bytes := ("    let r0000148b: u32 = r00001489.wrapping_add(r0000148a);\n" : String).toByteArray.data.toList
theorem checked5216 : bytes5216=statementBytes 5259 (op5216.map lower) ∧ bytes5216.length=60 := by core033_kernel_decide
def op5217 : List WordIR.Op := [.badd 5259 5164]
def bytes5217 : Bytes := ("    let r0000148c: u32 = r0000148b.wrapping_add(r0000142c);\n" : String).toByteArray.data.toList
theorem checked5217 : bytes5217=statementBytes 5260 (op5217.map lower) ∧ bytes5217.length=60 := by core033_kernel_decide
def op5218 : List WordIR.Op := [.shr 1875 8]
def bytes5218 : Bytes := ("    let r0000148d: u32 = r00000753 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5218 : bytes5218=statementBytes 5261 (op5218.map lower) ∧ bytes5218.length=54 := by core033_kernel_decide
def op5219 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5219 : Bytes := ("    let r0000148e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5219 : bytes5219=statementBytes 5262 (op5219.map lower) ∧ bytes5219.length=41 := by core033_kernel_decide
def op5220 : List WordIR.Op := [.bnot 5262]
def bytes5220 : Bytes := ("    let r0000148f: u32 = !r0000148e;\n" : String).toByteArray.data.toList
theorem checked5220 : bytes5220=statementBytes 5263 (op5220.map lower) ∧ bytes5220.length=37 := by core033_kernel_decide
def op5221 : List WordIR.Op := [.band 5261 5263]
def bytes5221 : Bytes := ("    let r00001490: u32 = r0000148d & r0000148f;\n" : String).toByteArray.data.toList
theorem checked5221 : bytes5221=statementBytes 5264 (op5221.map lower) ∧ bytes5221.length=48 := by core033_kernel_decide
def op5222 : List WordIR.Op := [.shr 1875 8]
def bytes5222 : Bytes := ("    let r00001491: u32 = r00000753 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5222 : bytes5222=statementBytes 5265 (op5222.map lower) ∧ bytes5222.length=54 := by core033_kernel_decide
def op5223 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5223 : Bytes := ("    let r00001492: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5223 : bytes5223=statementBytes 5266 (op5223.map lower) ∧ bytes5223.length=41 := by core033_kernel_decide
def op5224 : List WordIR.Op := [.bnot 5266]
def bytes5224 : Bytes := ("    let r00001493: u32 = !r00001492;\n" : String).toByteArray.data.toList
theorem checked5224 : bytes5224=statementBytes 5267 (op5224.map lower) ∧ bytes5224.length=37 := by core033_kernel_decide
def op5225 : List WordIR.Op := [.bxor 5265 5267]
def bytes5225 : Bytes := ("    let r00001494: u32 = r00001491 ^ r00001493;\n" : String).toByteArray.data.toList
theorem checked5225 : bytes5225=statementBytes 5268 (op5225.map lower) ∧ bytes5225.length=48 := by core033_kernel_decide
def op5226 : List WordIR.Op := [.shr 1875 8]
def bytes5226 : Bytes := ("    let r00001495: u32 = r00000753 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5226 : bytes5226=statementBytes 5269 (op5226.map lower) ∧ bytes5226.length=54 := by core033_kernel_decide
def op5227 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5227 : Bytes := ("    let r00001496: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5227 : bytes5227=statementBytes 5270 (op5227.map lower) ∧ bytes5227.length=41 := by core033_kernel_decide
def op5228 : List WordIR.Op := [.bnot 5270]
def bytes5228 : Bytes := ("    let r00001497: u32 = !r00001496;\n" : String).toByteArray.data.toList
theorem checked5228 : bytes5228=statementBytes 5271 (op5228.map lower) ∧ bytes5228.length=37 := by core033_kernel_decide
def op5229 : List WordIR.Op := [.badd 5269 5271]
def bytes5229 : Bytes := ("    let r00001498: u32 = r00001495.wrapping_add(r00001497);\n" : String).toByteArray.data.toList
theorem checked5229 : bytes5229=statementBytes 5272 (op5229.map lower) ∧ bytes5229.length=60 := by core033_kernel_decide
def op5230 : List WordIR.Op := [.bnot 5272]
def bytes5230 : Bytes := ("    let r00001499: u32 = !r00001498;\n" : String).toByteArray.data.toList
theorem checked5230 : bytes5230=statementBytes 5273 (op5230.map lower) ∧ bytes5230.length=37 := by core033_kernel_decide
def op5231 : List WordIR.Op := [.band 5268 5273]
def bytes5231 : Bytes := ("    let r0000149a: u32 = r00001494 & r00001499;\n" : String).toByteArray.data.toList
theorem checked5231 : bytes5231=statementBytes 5274 (op5231.map lower) ∧ bytes5231.length=48 := by core033_kernel_decide
def op5232 : List WordIR.Op := [.bxor 5264 5274]
def bytes5232 : Bytes := ("    let r0000149b: u32 = r00001490 ^ r0000149a;\n" : String).toByteArray.data.toList
theorem checked5232 : bytes5232=statementBytes 5275 (op5232.map lower) ∧ bytes5232.length=48 := by core033_kernel_decide
def op5233 : List WordIR.Op := [.shr 5275 31]
def bytes5233 : Bytes := ("    let r0000149c: u32 = r0000149b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5233 : bytes5233=statementBytes 5276 (op5233.map lower) ∧ bytes5233.length=54 := by core033_kernel_decide
def op5234 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5234 : Bytes := ("    let r0000149d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5234 : bytes5234=statementBytes 5277 (op5234.map lower) ∧ bytes5234.length=41 := by core033_kernel_decide
def op5235 : List WordIR.Op := [.bxor 5276 5277]
def bytes5235 : Bytes := ("    let r0000149e: u32 = r0000149c ^ r0000149d;\n" : String).toByteArray.data.toList
theorem checked5235 : bytes5235=statementBytes 5278 (op5235.map lower) ∧ bytes5235.length=48 := by core033_kernel_decide
def op5236 : List WordIR.Op := [.shr 1927 8]
def bytes5236 : Bytes := ("    let r0000149f: u32 = r00000787 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5236 : bytes5236=statementBytes 5279 (op5236.map lower) ∧ bytes5236.length=54 := by core033_kernel_decide
def op5237 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5237 : Bytes := ("    let r000014a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5237 : bytes5237=statementBytes 5280 (op5237.map lower) ∧ bytes5237.length=41 := by core033_kernel_decide
def op5238 : List WordIR.Op := [.bnot 5280]
def bytes5238 : Bytes := ("    let r000014a1: u32 = !r000014a0;\n" : String).toByteArray.data.toList
theorem checked5238 : bytes5238=statementBytes 5281 (op5238.map lower) ∧ bytes5238.length=37 := by core033_kernel_decide
def op5239 : List WordIR.Op := [.band 5279 5281]
def bytes5239 : Bytes := ("    let r000014a2: u32 = r0000149f & r000014a1;\n" : String).toByteArray.data.toList
theorem checked5239 : bytes5239=statementBytes 5282 (op5239.map lower) ∧ bytes5239.length=48 := by core033_kernel_decide
def op5240 : List WordIR.Op := [.shr 1927 8]
def bytes5240 : Bytes := ("    let r000014a3: u32 = r00000787 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5240 : bytes5240=statementBytes 5283 (op5240.map lower) ∧ bytes5240.length=54 := by core033_kernel_decide
def op5241 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5241 : Bytes := ("    let r000014a4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5241 : bytes5241=statementBytes 5284 (op5241.map lower) ∧ bytes5241.length=41 := by core033_kernel_decide
def op5242 : List WordIR.Op := [.bnot 5284]
def bytes5242 : Bytes := ("    let r000014a5: u32 = !r000014a4;\n" : String).toByteArray.data.toList
theorem checked5242 : bytes5242=statementBytes 5285 (op5242.map lower) ∧ bytes5242.length=37 := by core033_kernel_decide
def op5243 : List WordIR.Op := [.bxor 5283 5285]
def bytes5243 : Bytes := ("    let r000014a6: u32 = r000014a3 ^ r000014a5;\n" : String).toByteArray.data.toList
theorem checked5243 : bytes5243=statementBytes 5286 (op5243.map lower) ∧ bytes5243.length=48 := by core033_kernel_decide
def op5244 : List WordIR.Op := [.shr 1927 8]
def bytes5244 : Bytes := ("    let r000014a7: u32 = r00000787 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5244 : bytes5244=statementBytes 5287 (op5244.map lower) ∧ bytes5244.length=54 := by core033_kernel_decide
def op5245 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5245 : Bytes := ("    let r000014a8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5245 : bytes5245=statementBytes 5288 (op5245.map lower) ∧ bytes5245.length=41 := by core033_kernel_decide
def op5246 : List WordIR.Op := [.bnot 5288]
def bytes5246 : Bytes := ("    let r000014a9: u32 = !r000014a8;\n" : String).toByteArray.data.toList
theorem checked5246 : bytes5246=statementBytes 5289 (op5246.map lower) ∧ bytes5246.length=37 := by core033_kernel_decide
def op5247 : List WordIR.Op := [.badd 5287 5289]
def bytes5247 : Bytes := ("    let r000014aa: u32 = r000014a7.wrapping_add(r000014a9);\n" : String).toByteArray.data.toList
theorem checked5247 : bytes5247=statementBytes 5290 (op5247.map lower) ∧ bytes5247.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5184,op5185,op5186,op5187,op5188,op5189,op5190,op5191,op5192,op5193,op5194,op5195,op5196,op5197,op5198,op5199,op5200,op5201,op5202,op5203,op5204,op5205,op5206,op5207,op5208,op5209,op5210,op5211,op5212,op5213,op5214,op5215,op5216,op5217,op5218,op5219,op5220,op5221,op5222,op5223,op5224,op5225,op5226,op5227,op5228,op5229,op5230,op5231,op5232,op5233,op5234,op5235,op5236,op5237,op5238,op5239,op5240,op5241,op5242,op5243,op5244,op5245,op5246,op5247]
def chunks : List Bytes := [bytes5184,bytes5185,bytes5186,bytes5187,bytes5188,bytes5189,bytes5190,bytes5191,bytes5192,bytes5193,bytes5194,bytes5195,bytes5196,bytes5197,bytes5198,bytes5199,bytes5200,bytes5201,bytes5202,bytes5203,bytes5204,bytes5205,bytes5206,bytes5207,bytes5208,bytes5209,bytes5210,bytes5211,bytes5212,bytes5213,bytes5214,bytes5215,bytes5216,bytes5217,bytes5218,bytes5219,bytes5220,bytes5221,bytes5222,bytes5223,bytes5224,bytes5225,bytes5226,bytes5227,bytes5228,bytes5229,bytes5230,bytes5231,bytes5232,bytes5233,bytes5234,bytes5235,bytes5236,bytes5237,bytes5238,bytes5239,bytes5240,bytes5241,bytes5242,bytes5243,bytes5244,bytes5245,bytes5246,bytes5247]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5227 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5184.1 (.cons _ _ _ _ _ checked5185.1 (.cons _ _ _ _ _ checked5186.1 (.cons _ _ _ _ _ checked5187.1 (.cons _ _ _ _ _ checked5188.1 (.cons _ _ _ _ _ checked5189.1 (.cons _ _ _ _ _ checked5190.1 (.cons _ _ _ _ _ checked5191.1 (.cons _ _ _ _ _ checked5192.1 (.cons _ _ _ _ _ checked5193.1 (.cons _ _ _ _ _ checked5194.1 (.cons _ _ _ _ _ checked5195.1 (.cons _ _ _ _ _ checked5196.1 (.cons _ _ _ _ _ checked5197.1 (.cons _ _ _ _ _ checked5198.1 (.cons _ _ _ _ _ checked5199.1 (.cons _ _ _ _ _ checked5200.1 (.cons _ _ _ _ _ checked5201.1 (.cons _ _ _ _ _ checked5202.1 (.cons _ _ _ _ _ checked5203.1 (.cons _ _ _ _ _ checked5204.1 (.cons _ _ _ _ _ checked5205.1 (.cons _ _ _ _ _ checked5206.1 (.cons _ _ _ _ _ checked5207.1 (.cons _ _ _ _ _ checked5208.1 (.cons _ _ _ _ _ checked5209.1 (.cons _ _ _ _ _ checked5210.1 (.cons _ _ _ _ _ checked5211.1 (.cons _ _ _ _ _ checked5212.1 (.cons _ _ _ _ _ checked5213.1 (.cons _ _ _ _ _ checked5214.1 (.cons _ _ _ _ _ checked5215.1 (.cons _ _ _ _ _ checked5216.1 (.cons _ _ _ _ _ checked5217.1 (.cons _ _ _ _ _ checked5218.1 (.cons _ _ _ _ _ checked5219.1 (.cons _ _ _ _ _ checked5220.1 (.cons _ _ _ _ _ checked5221.1 (.cons _ _ _ _ _ checked5222.1 (.cons _ _ _ _ _ checked5223.1 (.cons _ _ _ _ _ checked5224.1 (.cons _ _ _ _ _ checked5225.1 (.cons _ _ _ _ _ checked5226.1 (.cons _ _ _ _ _ checked5227.1 (.cons _ _ _ _ _ checked5228.1 (.cons _ _ _ _ _ checked5229.1 (.cons _ _ _ _ _ checked5230.1 (.cons _ _ _ _ _ checked5231.1 (.cons _ _ _ _ _ checked5232.1 (.cons _ _ _ _ _ checked5233.1 (.cons _ _ _ _ _ checked5234.1 (.cons _ _ _ _ _ checked5235.1 (.cons _ _ _ _ _ checked5236.1 (.cons _ _ _ _ _ checked5237.1 (.cons _ _ _ _ _ checked5238.1 (.cons _ _ _ _ _ checked5239.1 (.cons _ _ _ _ _ checked5240.1 (.cons _ _ _ _ _ checked5241.1 (.cons _ _ _ _ _ checked5242.1 (.cons _ _ _ _ _ checked5243.1 (.cons _ _ _ _ _ checked5244.1 (.cons _ _ _ _ _ checked5245.1 (.cons _ _ _ _ _ checked5246.1 (.cons _ _ _ _ _ checked5247.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5227 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3500 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5184.2,checked5185.2,checked5186.2,checked5187.2,checked5188.2,checked5189.2,checked5190.2,checked5191.2,checked5192.2,checked5193.2,checked5194.2,checked5195.2,checked5196.2,checked5197.2,checked5198.2,checked5199.2,checked5200.2,checked5201.2,checked5202.2,checked5203.2,checked5204.2,checked5205.2,checked5206.2,checked5207.2,checked5208.2,checked5209.2,checked5210.2,checked5211.2,checked5212.2,checked5213.2,checked5214.2,checked5215.2,checked5216.2,checked5217.2,checked5218.2,checked5219.2,checked5220.2,checked5221.2,checked5222.2,checked5223.2,checked5224.2,checked5225.2,checked5226.2,checked5227.2,checked5228.2,checked5229.2,checked5230.2,checked5231.2,checked5232.2,checked5233.2,checked5234.2,checked5235.2,checked5236.2,checked5237.2,checked5238.2,checked5239.2,checked5240.2,checked5241.2,checked5242.2,checked5243.2,checked5244.2,checked5245.2,checked5246.2,checked5247.2]
  decide
end ArtifactFrameHashControllerGroup81
