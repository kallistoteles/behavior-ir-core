import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup81
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5184 : List WordIR.Op := [.bnot 5279]
def bytes5184 : Bytes := ("    let r000014a0: u32 = !r0000149f;\n" : String).toByteArray.data.toList
theorem checked5184 : bytes5184=statementBytes 5280 (op5184.map lower) ∧ bytes5184.length=37 := by core033_kernel_decide
def op5185 : List WordIR.Op := [.band 5278 5280]
def bytes5185 : Bytes := ("    let r000014a1: u32 = r0000149e & r000014a0;\n" : String).toByteArray.data.toList
theorem checked5185 : bytes5185=statementBytes 5281 (op5185.map lower) ∧ bytes5185.length=48 := by core033_kernel_decide
def op5186 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5186 : Bytes := ("    let r000014a2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5186 : bytes5186=statementBytes 5282 (op5186.map lower) ∧ bytes5186.length=41 := by core033_kernel_decide
def op5187 : List WordIR.Op := [.bxor 616 5282]
def bytes5187 : Bytes := ("    let r000014a3: u32 = r00000268 ^ r000014a2;\n" : String).toByteArray.data.toList
theorem checked5187 : bytes5187=statementBytes 5283 (op5187.map lower) ∧ bytes5187.length=48 := by core033_kernel_decide
def op5188 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5188 : Bytes := ("    let r000014a4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5188 : bytes5188=statementBytes 5284 (op5188.map lower) ∧ bytes5188.length=41 := by core033_kernel_decide
def op5189 : List WordIR.Op := [.bnot 5284]
def bytes5189 : Bytes := ("    let r000014a5: u32 = !r000014a4;\n" : String).toByteArray.data.toList
theorem checked5189 : bytes5189=statementBytes 5285 (op5189.map lower) ∧ bytes5189.length=37 := by core033_kernel_decide
def op5190 : List WordIR.Op := [.bxor 5283 5285]
def bytes5190 : Bytes := ("    let r000014a6: u32 = r000014a3 ^ r000014a5;\n" : String).toByteArray.data.toList
theorem checked5190 : bytes5190=statementBytes 5286 (op5190.map lower) ∧ bytes5190.length=48 := by core033_kernel_decide
def op5191 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5191 : Bytes := ("    let r000014a7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5191 : bytes5191=statementBytes 5287 (op5191.map lower) ∧ bytes5191.length=41 := by core033_kernel_decide
def op5192 : List WordIR.Op := [.bxor 616 5287]
def bytes5192 : Bytes := ("    let r000014a8: u32 = r00000268 ^ r000014a7;\n" : String).toByteArray.data.toList
theorem checked5192 : bytes5192=statementBytes 5288 (op5192.map lower) ∧ bytes5192.length=48 := by core033_kernel_decide
def op5193 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5193 : Bytes := ("    let r000014a9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5193 : bytes5193=statementBytes 5289 (op5193.map lower) ∧ bytes5193.length=41 := by core033_kernel_decide
def op5194 : List WordIR.Op := [.bnot 5289]
def bytes5194 : Bytes := ("    let r000014aa: u32 = !r000014a9;\n" : String).toByteArray.data.toList
theorem checked5194 : bytes5194=statementBytes 5290 (op5194.map lower) ∧ bytes5194.length=37 := by core033_kernel_decide
def op5195 : List WordIR.Op := [.badd 5288 5290]
def bytes5195 : Bytes := ("    let r000014ab: u32 = r000014a8.wrapping_add(r000014aa);\n" : String).toByteArray.data.toList
theorem checked5195 : bytes5195=statementBytes 5291 (op5195.map lower) ∧ bytes5195.length=60 := by core033_kernel_decide
def op5196 : List WordIR.Op := [.bnot 5291]
def bytes5196 : Bytes := ("    let r000014ac: u32 = !r000014ab;\n" : String).toByteArray.data.toList
theorem checked5196 : bytes5196=statementBytes 5292 (op5196.map lower) ∧ bytes5196.length=37 := by core033_kernel_decide
def op5197 : List WordIR.Op := [.band 5286 5292]
def bytes5197 : Bytes := ("    let r000014ad: u32 = r000014a6 & r000014ac;\n" : String).toByteArray.data.toList
theorem checked5197 : bytes5197=statementBytes 5293 (op5197.map lower) ∧ bytes5197.length=48 := by core033_kernel_decide
def op5198 : List WordIR.Op := [.bxor 5281 5293]
def bytes5198 : Bytes := ("    let r000014ae: u32 = r000014a1 ^ r000014ad;\n" : String).toByteArray.data.toList
theorem checked5198 : bytes5198=statementBytes 5294 (op5198.map lower) ∧ bytes5198.length=48 := by core033_kernel_decide
def op5199 : List WordIR.Op := [.shr 5294 31]
def bytes5199 : Bytes := ("    let r000014af: u32 = r000014ae >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5199 : bytes5199=statementBytes 5295 (op5199.map lower) ∧ bytes5199.length=54 := by core033_kernel_decide
def op5200 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5200 : Bytes := ("    let r000014b0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5200 : bytes5200=statementBytes 5296 (op5200.map lower) ∧ bytes5200.length=41 := by core033_kernel_decide
def op5201 : List WordIR.Op := [.bxor 5295 5296]
def bytes5201 : Bytes := ("    let r000014b1: u32 = r000014af ^ r000014b0;\n" : String).toByteArray.data.toList
theorem checked5201 : bytes5201=statementBytes 5297 (op5201.map lower) ∧ bytes5201.length=48 := by core033_kernel_decide
def op5202 : List WordIR.Op := [.bnot 5297]
def bytes5202 : Bytes := ("    let r000014b2: u32 = !r000014b1;\n" : String).toByteArray.data.toList
theorem checked5202 : bytes5202=statementBytes 5298 (op5202.map lower) ∧ bytes5202.length=37 := by core033_kernel_decide
def op5203 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5203 : Bytes := ("    let r000014b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5203 : bytes5203=statementBytes 5299 (op5203.map lower) ∧ bytes5203.length=41 := by core033_kernel_decide
def op5204 : List WordIR.Op := [.badd 5298 5299]
def bytes5204 : Bytes := ("    let r000014b4: u32 = r000014b2.wrapping_add(r000014b3);\n" : String).toByteArray.data.toList
theorem checked5204 : bytes5204=statementBytes 5300 (op5204.map lower) ∧ bytes5204.length=60 := by core033_kernel_decide
def op5205 : List WordIR.Op := [.bnot 5300]
def bytes5205 : Bytes := ("    let r000014b5: u32 = !r000014b4;\n" : String).toByteArray.data.toList
theorem checked5205 : bytes5205=statementBytes 5301 (op5205.map lower) ∧ bytes5205.length=37 := by core033_kernel_decide
def op5206 : List WordIR.Op := [.band 5301 1959]
def bytes5206 : Bytes := ("    let r000014b6: u32 = r000014b5 & r000007a7;\n" : String).toByteArray.data.toList
theorem checked5206 : bytes5206=statementBytes 5302 (op5206.map lower) ∧ bytes5206.length=48 := by core033_kernel_decide
def op5207 : List WordIR.Op := [.bxor 5276 5302]
def bytes5207 : Bytes := ("    let r000014b7: u32 = r0000149c ^ r000014b6;\n" : String).toByteArray.data.toList
theorem checked5207 : bytes5207=statementBytes 5303 (op5207.map lower) ∧ bytes5207.length=48 := by core033_kernel_decide
def op5208 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5208 : Bytes := ("    let r000014b8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5208 : bytes5208=statementBytes 5304 (op5208.map lower) ∧ bytes5208.length=41 := by core033_kernel_decide
def op5209 : List WordIR.Op := [.bxor 616 5304]
def bytes5209 : Bytes := ("    let r000014b9: u32 = r00000268 ^ r000014b8;\n" : String).toByteArray.data.toList
theorem checked5209 : bytes5209=statementBytes 5305 (op5209.map lower) ∧ bytes5209.length=48 := by core033_kernel_decide
def op5210 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5210 : Bytes := ("    let r000014ba: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5210 : bytes5210=statementBytes 5306 (op5210.map lower) ∧ bytes5210.length=41 := by core033_kernel_decide
def op5211 : List WordIR.Op := [.bnot 5306]
def bytes5211 : Bytes := ("    let r000014bb: u32 = !r000014ba;\n" : String).toByteArray.data.toList
theorem checked5211 : bytes5211=statementBytes 5307 (op5211.map lower) ∧ bytes5211.length=37 := by core033_kernel_decide
def op5212 : List WordIR.Op := [.band 5305 5307]
def bytes5212 : Bytes := ("    let r000014bc: u32 = r000014b9 & r000014bb;\n" : String).toByteArray.data.toList
theorem checked5212 : bytes5212=statementBytes 5308 (op5212.map lower) ∧ bytes5212.length=48 := by core033_kernel_decide
def op5213 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5213 : Bytes := ("    let r000014bd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5213 : bytes5213=statementBytes 5309 (op5213.map lower) ∧ bytes5213.length=41 := by core033_kernel_decide
def op5214 : List WordIR.Op := [.bxor 616 5309]
def bytes5214 : Bytes := ("    let r000014be: u32 = r00000268 ^ r000014bd;\n" : String).toByteArray.data.toList
theorem checked5214 : bytes5214=statementBytes 5310 (op5214.map lower) ∧ bytes5214.length=48 := by core033_kernel_decide
def op5215 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5215 : Bytes := ("    let r000014bf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5215 : bytes5215=statementBytes 5311 (op5215.map lower) ∧ bytes5215.length=41 := by core033_kernel_decide
def op5216 : List WordIR.Op := [.bnot 5311]
def bytes5216 : Bytes := ("    let r000014c0: u32 = !r000014bf;\n" : String).toByteArray.data.toList
theorem checked5216 : bytes5216=statementBytes 5312 (op5216.map lower) ∧ bytes5216.length=37 := by core033_kernel_decide
def op5217 : List WordIR.Op := [.bxor 5310 5312]
def bytes5217 : Bytes := ("    let r000014c1: u32 = r000014be ^ r000014c0;\n" : String).toByteArray.data.toList
theorem checked5217 : bytes5217=statementBytes 5313 (op5217.map lower) ∧ bytes5217.length=48 := by core033_kernel_decide
def op5218 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5218 : Bytes := ("    let r000014c2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5218 : bytes5218=statementBytes 5314 (op5218.map lower) ∧ bytes5218.length=41 := by core033_kernel_decide
def op5219 : List WordIR.Op := [.bxor 616 5314]
def bytes5219 : Bytes := ("    let r000014c3: u32 = r00000268 ^ r000014c2;\n" : String).toByteArray.data.toList
theorem checked5219 : bytes5219=statementBytes 5315 (op5219.map lower) ∧ bytes5219.length=48 := by core033_kernel_decide
def op5220 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5220 : Bytes := ("    let r000014c4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5220 : bytes5220=statementBytes 5316 (op5220.map lower) ∧ bytes5220.length=41 := by core033_kernel_decide
def op5221 : List WordIR.Op := [.bnot 5316]
def bytes5221 : Bytes := ("    let r000014c5: u32 = !r000014c4;\n" : String).toByteArray.data.toList
theorem checked5221 : bytes5221=statementBytes 5317 (op5221.map lower) ∧ bytes5221.length=37 := by core033_kernel_decide
def op5222 : List WordIR.Op := [.badd 5315 5317]
def bytes5222 : Bytes := ("    let r000014c6: u32 = r000014c3.wrapping_add(r000014c5);\n" : String).toByteArray.data.toList
theorem checked5222 : bytes5222=statementBytes 5318 (op5222.map lower) ∧ bytes5222.length=60 := by core033_kernel_decide
def op5223 : List WordIR.Op := [.bnot 5318]
def bytes5223 : Bytes := ("    let r000014c7: u32 = !r000014c6;\n" : String).toByteArray.data.toList
theorem checked5223 : bytes5223=statementBytes 5319 (op5223.map lower) ∧ bytes5223.length=37 := by core033_kernel_decide
def op5224 : List WordIR.Op := [.band 5313 5319]
def bytes5224 : Bytes := ("    let r000014c8: u32 = r000014c1 & r000014c7;\n" : String).toByteArray.data.toList
theorem checked5224 : bytes5224=statementBytes 5320 (op5224.map lower) ∧ bytes5224.length=48 := by core033_kernel_decide
def op5225 : List WordIR.Op := [.bxor 5308 5320]
def bytes5225 : Bytes := ("    let r000014c9: u32 = r000014bc ^ r000014c8;\n" : String).toByteArray.data.toList
theorem checked5225 : bytes5225=statementBytes 5321 (op5225.map lower) ∧ bytes5225.length=48 := by core033_kernel_decide
def op5226 : List WordIR.Op := [.shr 5321 31]
def bytes5226 : Bytes := ("    let r000014ca: u32 = r000014c9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5226 : bytes5226=statementBytes 5322 (op5226.map lower) ∧ bytes5226.length=54 := by core033_kernel_decide
def op5227 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5227 : Bytes := ("    let r000014cb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5227 : bytes5227=statementBytes 5323 (op5227.map lower) ∧ bytes5227.length=41 := by core033_kernel_decide
def op5228 : List WordIR.Op := [.bxor 5322 5323]
def bytes5228 : Bytes := ("    let r000014cc: u32 = r000014ca ^ r000014cb;\n" : String).toByteArray.data.toList
theorem checked5228 : bytes5228=statementBytes 5324 (op5228.map lower) ∧ bytes5228.length=48 := by core033_kernel_decide
def op5229 : List WordIR.Op := [.bnot 5324]
def bytes5229 : Bytes := ("    let r000014cd: u32 = !r000014cc;\n" : String).toByteArray.data.toList
theorem checked5229 : bytes5229=statementBytes 5325 (op5229.map lower) ∧ bytes5229.length=37 := by core033_kernel_decide
def op5230 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5230 : Bytes := ("    let r000014ce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5230 : bytes5230=statementBytes 5326 (op5230.map lower) ∧ bytes5230.length=41 := by core033_kernel_decide
def op5231 : List WordIR.Op := [.badd 5325 5326]
def bytes5231 : Bytes := ("    let r000014cf: u32 = r000014cd.wrapping_add(r000014ce);\n" : String).toByteArray.data.toList
theorem checked5231 : bytes5231=statementBytes 5327 (op5231.map lower) ∧ bytes5231.length=60 := by core033_kernel_decide
def op5232 : List WordIR.Op := [.band 5327 2154]
def bytes5232 : Bytes := ("    let r000014d0: u32 = r000014cf & r0000086a;\n" : String).toByteArray.data.toList
theorem checked5232 : bytes5232=statementBytes 5328 (op5232.map lower) ∧ bytes5232.length=48 := by core033_kernel_decide
def op5233 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5233 : Bytes := ("    let r000014d1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5233 : bytes5233=statementBytes 5329 (op5233.map lower) ∧ bytes5233.length=41 := by core033_kernel_decide
def op5234 : List WordIR.Op := [.bxor 616 5329]
def bytes5234 : Bytes := ("    let r000014d2: u32 = r00000268 ^ r000014d1;\n" : String).toByteArray.data.toList
theorem checked5234 : bytes5234=statementBytes 5330 (op5234.map lower) ∧ bytes5234.length=48 := by core033_kernel_decide
def op5235 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5235 : Bytes := ("    let r000014d3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5235 : bytes5235=statementBytes 5331 (op5235.map lower) ∧ bytes5235.length=41 := by core033_kernel_decide
def op5236 : List WordIR.Op := [.bnot 5331]
def bytes5236 : Bytes := ("    let r000014d4: u32 = !r000014d3;\n" : String).toByteArray.data.toList
theorem checked5236 : bytes5236=statementBytes 5332 (op5236.map lower) ∧ bytes5236.length=37 := by core033_kernel_decide
def op5237 : List WordIR.Op := [.band 5330 5332]
def bytes5237 : Bytes := ("    let r000014d5: u32 = r000014d2 & r000014d4;\n" : String).toByteArray.data.toList
theorem checked5237 : bytes5237=statementBytes 5333 (op5237.map lower) ∧ bytes5237.length=48 := by core033_kernel_decide
def op5238 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5238 : Bytes := ("    let r000014d6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5238 : bytes5238=statementBytes 5334 (op5238.map lower) ∧ bytes5238.length=41 := by core033_kernel_decide
def op5239 : List WordIR.Op := [.bxor 616 5334]
def bytes5239 : Bytes := ("    let r000014d7: u32 = r00000268 ^ r000014d6;\n" : String).toByteArray.data.toList
theorem checked5239 : bytes5239=statementBytes 5335 (op5239.map lower) ∧ bytes5239.length=48 := by core033_kernel_decide
def op5240 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5240 : Bytes := ("    let r000014d8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5240 : bytes5240=statementBytes 5336 (op5240.map lower) ∧ bytes5240.length=41 := by core033_kernel_decide
def op5241 : List WordIR.Op := [.bnot 5336]
def bytes5241 : Bytes := ("    let r000014d9: u32 = !r000014d8;\n" : String).toByteArray.data.toList
theorem checked5241 : bytes5241=statementBytes 5337 (op5241.map lower) ∧ bytes5241.length=37 := by core033_kernel_decide
def op5242 : List WordIR.Op := [.bxor 5335 5337]
def bytes5242 : Bytes := ("    let r000014da: u32 = r000014d7 ^ r000014d9;\n" : String).toByteArray.data.toList
theorem checked5242 : bytes5242=statementBytes 5338 (op5242.map lower) ∧ bytes5242.length=48 := by core033_kernel_decide
def op5243 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5243 : Bytes := ("    let r000014db: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5243 : bytes5243=statementBytes 5339 (op5243.map lower) ∧ bytes5243.length=41 := by core033_kernel_decide
def op5244 : List WordIR.Op := [.bxor 616 5339]
def bytes5244 : Bytes := ("    let r000014dc: u32 = r00000268 ^ r000014db;\n" : String).toByteArray.data.toList
theorem checked5244 : bytes5244=statementBytes 5340 (op5244.map lower) ∧ bytes5244.length=48 := by core033_kernel_decide
def op5245 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5245 : Bytes := ("    let r000014dd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5245 : bytes5245=statementBytes 5341 (op5245.map lower) ∧ bytes5245.length=41 := by core033_kernel_decide
def op5246 : List WordIR.Op := [.bnot 5341]
def bytes5246 : Bytes := ("    let r000014de: u32 = !r000014dd;\n" : String).toByteArray.data.toList
theorem checked5246 : bytes5246=statementBytes 5342 (op5246.map lower) ∧ bytes5246.length=37 := by core033_kernel_decide
def op5247 : List WordIR.Op := [.badd 5340 5342]
def bytes5247 : Bytes := ("    let r000014df: u32 = r000014dc.wrapping_add(r000014de);\n" : String).toByteArray.data.toList
theorem checked5247 : bytes5247=statementBytes 5343 (op5247.map lower) ∧ bytes5247.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5184,op5185,op5186,op5187,op5188,op5189,op5190,op5191,op5192,op5193,op5194,op5195,op5196,op5197,op5198,op5199,op5200,op5201,op5202,op5203,op5204,op5205,op5206,op5207,op5208,op5209,op5210,op5211,op5212,op5213,op5214,op5215,op5216,op5217,op5218,op5219,op5220,op5221,op5222,op5223,op5224,op5225,op5226,op5227,op5228,op5229,op5230,op5231,op5232,op5233,op5234,op5235,op5236,op5237,op5238,op5239,op5240,op5241,op5242,op5243,op5244,op5245,op5246,op5247]
def chunks : List Bytes := [bytes5184,bytes5185,bytes5186,bytes5187,bytes5188,bytes5189,bytes5190,bytes5191,bytes5192,bytes5193,bytes5194,bytes5195,bytes5196,bytes5197,bytes5198,bytes5199,bytes5200,bytes5201,bytes5202,bytes5203,bytes5204,bytes5205,bytes5206,bytes5207,bytes5208,bytes5209,bytes5210,bytes5211,bytes5212,bytes5213,bytes5214,bytes5215,bytes5216,bytes5217,bytes5218,bytes5219,bytes5220,bytes5221,bytes5222,bytes5223,bytes5224,bytes5225,bytes5226,bytes5227,bytes5228,bytes5229,bytes5230,bytes5231,bytes5232,bytes5233,bytes5234,bytes5235,bytes5236,bytes5237,bytes5238,bytes5239,bytes5240,bytes5241,bytes5242,bytes5243,bytes5244,bytes5245,bytes5246,bytes5247]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5280 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5184.1 (.cons _ _ _ _ _ checked5185.1 (.cons _ _ _ _ _ checked5186.1 (.cons _ _ _ _ _ checked5187.1 (.cons _ _ _ _ _ checked5188.1 (.cons _ _ _ _ _ checked5189.1 (.cons _ _ _ _ _ checked5190.1 (.cons _ _ _ _ _ checked5191.1 (.cons _ _ _ _ _ checked5192.1 (.cons _ _ _ _ _ checked5193.1 (.cons _ _ _ _ _ checked5194.1 (.cons _ _ _ _ _ checked5195.1 (.cons _ _ _ _ _ checked5196.1 (.cons _ _ _ _ _ checked5197.1 (.cons _ _ _ _ _ checked5198.1 (.cons _ _ _ _ _ checked5199.1 (.cons _ _ _ _ _ checked5200.1 (.cons _ _ _ _ _ checked5201.1 (.cons _ _ _ _ _ checked5202.1 (.cons _ _ _ _ _ checked5203.1 (.cons _ _ _ _ _ checked5204.1 (.cons _ _ _ _ _ checked5205.1 (.cons _ _ _ _ _ checked5206.1 (.cons _ _ _ _ _ checked5207.1 (.cons _ _ _ _ _ checked5208.1 (.cons _ _ _ _ _ checked5209.1 (.cons _ _ _ _ _ checked5210.1 (.cons _ _ _ _ _ checked5211.1 (.cons _ _ _ _ _ checked5212.1 (.cons _ _ _ _ _ checked5213.1 (.cons _ _ _ _ _ checked5214.1 (.cons _ _ _ _ _ checked5215.1 (.cons _ _ _ _ _ checked5216.1 (.cons _ _ _ _ _ checked5217.1 (.cons _ _ _ _ _ checked5218.1 (.cons _ _ _ _ _ checked5219.1 (.cons _ _ _ _ _ checked5220.1 (.cons _ _ _ _ _ checked5221.1 (.cons _ _ _ _ _ checked5222.1 (.cons _ _ _ _ _ checked5223.1 (.cons _ _ _ _ _ checked5224.1 (.cons _ _ _ _ _ checked5225.1 (.cons _ _ _ _ _ checked5226.1 (.cons _ _ _ _ _ checked5227.1 (.cons _ _ _ _ _ checked5228.1 (.cons _ _ _ _ _ checked5229.1 (.cons _ _ _ _ _ checked5230.1 (.cons _ _ _ _ _ checked5231.1 (.cons _ _ _ _ _ checked5232.1 (.cons _ _ _ _ _ checked5233.1 (.cons _ _ _ _ _ checked5234.1 (.cons _ _ _ _ _ checked5235.1 (.cons _ _ _ _ _ checked5236.1 (.cons _ _ _ _ _ checked5237.1 (.cons _ _ _ _ _ checked5238.1 (.cons _ _ _ _ _ checked5239.1 (.cons _ _ _ _ _ checked5240.1 (.cons _ _ _ _ _ checked5241.1 (.cons _ _ _ _ _ checked5242.1 (.cons _ _ _ _ _ checked5243.1 (.cons _ _ _ _ _ checked5244.1 (.cons _ _ _ _ _ checked5245.1 (.cons _ _ _ _ _ checked5246.1 (.cons _ _ _ _ _ checked5247.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5280 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5184.2,checked5185.2,checked5186.2,checked5187.2,checked5188.2,checked5189.2,checked5190.2,checked5191.2,checked5192.2,checked5193.2,checked5194.2,checked5195.2,checked5196.2,checked5197.2,checked5198.2,checked5199.2,checked5200.2,checked5201.2,checked5202.2,checked5203.2,checked5204.2,checked5205.2,checked5206.2,checked5207.2,checked5208.2,checked5209.2,checked5210.2,checked5211.2,checked5212.2,checked5213.2,checked5214.2,checked5215.2,checked5216.2,checked5217.2,checked5218.2,checked5219.2,checked5220.2,checked5221.2,checked5222.2,checked5223.2,checked5224.2,checked5225.2,checked5226.2,checked5227.2,checked5228.2,checked5229.2,checked5230.2,checked5231.2,checked5232.2,checked5233.2,checked5234.2,checked5235.2,checked5236.2,checked5237.2,checked5238.2,checked5239.2,checked5240.2,checked5241.2,checked5242.2,checked5243.2,checked5244.2,checked5245.2,checked5246.2,checked5247.2]
  decide
end ArtifactPairedPathRoundGroup81
