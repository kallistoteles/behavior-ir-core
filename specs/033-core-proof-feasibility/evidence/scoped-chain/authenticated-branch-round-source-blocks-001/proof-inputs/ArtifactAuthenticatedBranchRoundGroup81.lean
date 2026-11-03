import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup81
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5184 : List WordIR.Op := [.shr 5301 31]
def bytes5184 : Bytes := ("    let r000014b6: u32 = r000014b5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5184 : bytes5184=statementBytes 5302 (op5184.map lower) ∧ bytes5184.length=54 := by core033_kernel_decide
def op5185 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5185 : Bytes := ("    let r000014b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5185 : bytes5185=statementBytes 5303 (op5185.map lower) ∧ bytes5185.length=41 := by core033_kernel_decide
def op5186 : List WordIR.Op := [.bxor 5302 5303]
def bytes5186 : Bytes := ("    let r000014b8: u32 = r000014b6 ^ r000014b7;\n" : String).toByteArray.data.toList
theorem checked5186 : bytes5186=statementBytes 5304 (op5186.map lower) ∧ bytes5186.length=48 := by core033_kernel_decide
def op5187 : List WordIR.Op := [.bnot 5304]
def bytes5187 : Bytes := ("    let r000014b9: u32 = !r000014b8;\n" : String).toByteArray.data.toList
theorem checked5187 : bytes5187=statementBytes 5305 (op5187.map lower) ∧ bytes5187.length=37 := by core033_kernel_decide
def op5188 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5188 : Bytes := ("    let r000014ba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5188 : bytes5188=statementBytes 5306 (op5188.map lower) ∧ bytes5188.length=41 := by core033_kernel_decide
def op5189 : List WordIR.Op := [.badd 5305 5306]
def bytes5189 : Bytes := ("    let r000014bb: u32 = r000014b9.wrapping_add(r000014ba);\n" : String).toByteArray.data.toList
theorem checked5189 : bytes5189=statementBytes 5307 (op5189.map lower) ∧ bytes5189.length=60 := by core033_kernel_decide
def op5190 : List WordIR.Op := [.bnot 5307]
def bytes5190 : Bytes := ("    let r000014bc: u32 = !r000014bb;\n" : String).toByteArray.data.toList
theorem checked5190 : bytes5190=statementBytes 5308 (op5190.map lower) ∧ bytes5190.length=37 := by core033_kernel_decide
def op5191 : List WordIR.Op := [.band 5308 2603]
def bytes5191 : Bytes := ("    let r000014bd: u32 = r000014bc & r00000a2b;\n" : String).toByteArray.data.toList
theorem checked5191 : bytes5191=statementBytes 5309 (op5191.map lower) ∧ bytes5191.length=48 := by core033_kernel_decide
def op5192 : List WordIR.Op := [.bxor 5283 5309]
def bytes5192 : Bytes := ("    let r000014be: u32 = r000014a3 ^ r000014bd;\n" : String).toByteArray.data.toList
theorem checked5192 : bytes5192=statementBytes 5310 (op5192.map lower) ∧ bytes5192.length=48 := by core033_kernel_decide
def op5193 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5193 : Bytes := ("    let r000014bf: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5193 : bytes5193=statementBytes 5311 (op5193.map lower) ∧ bytes5193.length=41 := by core033_kernel_decide
def op5194 : List WordIR.Op := [.bxor 1299 5311]
def bytes5194 : Bytes := ("    let r000014c0: u32 = r00000513 ^ r000014bf;\n" : String).toByteArray.data.toList
theorem checked5194 : bytes5194=statementBytes 5312 (op5194.map lower) ∧ bytes5194.length=48 := by core033_kernel_decide
def op5195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5195 : Bytes := ("    let r000014c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5195 : bytes5195=statementBytes 5313 (op5195.map lower) ∧ bytes5195.length=41 := by core033_kernel_decide
def op5196 : List WordIR.Op := [.bnot 5313]
def bytes5196 : Bytes := ("    let r000014c2: u32 = !r000014c1;\n" : String).toByteArray.data.toList
theorem checked5196 : bytes5196=statementBytes 5314 (op5196.map lower) ∧ bytes5196.length=37 := by core033_kernel_decide
def op5197 : List WordIR.Op := [.band 5312 5314]
def bytes5197 : Bytes := ("    let r000014c3: u32 = r000014c0 & r000014c2;\n" : String).toByteArray.data.toList
theorem checked5197 : bytes5197=statementBytes 5315 (op5197.map lower) ∧ bytes5197.length=48 := by core033_kernel_decide
def op5198 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5198 : Bytes := ("    let r000014c4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5198 : bytes5198=statementBytes 5316 (op5198.map lower) ∧ bytes5198.length=41 := by core033_kernel_decide
def op5199 : List WordIR.Op := [.bxor 1299 5316]
def bytes5199 : Bytes := ("    let r000014c5: u32 = r00000513 ^ r000014c4;\n" : String).toByteArray.data.toList
theorem checked5199 : bytes5199=statementBytes 5317 (op5199.map lower) ∧ bytes5199.length=48 := by core033_kernel_decide
def op5200 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5200 : Bytes := ("    let r000014c6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5200 : bytes5200=statementBytes 5318 (op5200.map lower) ∧ bytes5200.length=41 := by core033_kernel_decide
def op5201 : List WordIR.Op := [.bnot 5318]
def bytes5201 : Bytes := ("    let r000014c7: u32 = !r000014c6;\n" : String).toByteArray.data.toList
theorem checked5201 : bytes5201=statementBytes 5319 (op5201.map lower) ∧ bytes5201.length=37 := by core033_kernel_decide
def op5202 : List WordIR.Op := [.bxor 5317 5319]
def bytes5202 : Bytes := ("    let r000014c8: u32 = r000014c5 ^ r000014c7;\n" : String).toByteArray.data.toList
theorem checked5202 : bytes5202=statementBytes 5320 (op5202.map lower) ∧ bytes5202.length=48 := by core033_kernel_decide
def op5203 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5203 : Bytes := ("    let r000014c9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5203 : bytes5203=statementBytes 5321 (op5203.map lower) ∧ bytes5203.length=41 := by core033_kernel_decide
def op5204 : List WordIR.Op := [.bxor 1299 5321]
def bytes5204 : Bytes := ("    let r000014ca: u32 = r00000513 ^ r000014c9;\n" : String).toByteArray.data.toList
theorem checked5204 : bytes5204=statementBytes 5322 (op5204.map lower) ∧ bytes5204.length=48 := by core033_kernel_decide
def op5205 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5205 : Bytes := ("    let r000014cb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5205 : bytes5205=statementBytes 5323 (op5205.map lower) ∧ bytes5205.length=41 := by core033_kernel_decide
def op5206 : List WordIR.Op := [.bnot 5323]
def bytes5206 : Bytes := ("    let r000014cc: u32 = !r000014cb;\n" : String).toByteArray.data.toList
theorem checked5206 : bytes5206=statementBytes 5324 (op5206.map lower) ∧ bytes5206.length=37 := by core033_kernel_decide
def op5207 : List WordIR.Op := [.badd 5322 5324]
def bytes5207 : Bytes := ("    let r000014cd: u32 = r000014ca.wrapping_add(r000014cc);\n" : String).toByteArray.data.toList
theorem checked5207 : bytes5207=statementBytes 5325 (op5207.map lower) ∧ bytes5207.length=60 := by core033_kernel_decide
def op5208 : List WordIR.Op := [.bnot 5325]
def bytes5208 : Bytes := ("    let r000014ce: u32 = !r000014cd;\n" : String).toByteArray.data.toList
theorem checked5208 : bytes5208=statementBytes 5326 (op5208.map lower) ∧ bytes5208.length=37 := by core033_kernel_decide
def op5209 : List WordIR.Op := [.band 5320 5326]
def bytes5209 : Bytes := ("    let r000014cf: u32 = r000014c8 & r000014ce;\n" : String).toByteArray.data.toList
theorem checked5209 : bytes5209=statementBytes 5327 (op5209.map lower) ∧ bytes5209.length=48 := by core033_kernel_decide
def op5210 : List WordIR.Op := [.bxor 5315 5327]
def bytes5210 : Bytes := ("    let r000014d0: u32 = r000014c3 ^ r000014cf;\n" : String).toByteArray.data.toList
theorem checked5210 : bytes5210=statementBytes 5328 (op5210.map lower) ∧ bytes5210.length=48 := by core033_kernel_decide
def op5211 : List WordIR.Op := [.shr 5328 31]
def bytes5211 : Bytes := ("    let r000014d1: u32 = r000014d0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5211 : bytes5211=statementBytes 5329 (op5211.map lower) ∧ bytes5211.length=54 := by core033_kernel_decide
def op5212 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5212 : Bytes := ("    let r000014d2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5212 : bytes5212=statementBytes 5330 (op5212.map lower) ∧ bytes5212.length=41 := by core033_kernel_decide
def op5213 : List WordIR.Op := [.bxor 5329 5330]
def bytes5213 : Bytes := ("    let r000014d3: u32 = r000014d1 ^ r000014d2;\n" : String).toByteArray.data.toList
theorem checked5213 : bytes5213=statementBytes 5331 (op5213.map lower) ∧ bytes5213.length=48 := by core033_kernel_decide
def op5214 : List WordIR.Op := [.bnot 5331]
def bytes5214 : Bytes := ("    let r000014d4: u32 = !r000014d3;\n" : String).toByteArray.data.toList
theorem checked5214 : bytes5214=statementBytes 5332 (op5214.map lower) ∧ bytes5214.length=37 := by core033_kernel_decide
def op5215 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5215 : Bytes := ("    let r000014d5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5215 : bytes5215=statementBytes 5333 (op5215.map lower) ∧ bytes5215.length=41 := by core033_kernel_decide
def op5216 : List WordIR.Op := [.badd 5332 5333]
def bytes5216 : Bytes := ("    let r000014d6: u32 = r000014d4.wrapping_add(r000014d5);\n" : String).toByteArray.data.toList
theorem checked5216 : bytes5216=statementBytes 5334 (op5216.map lower) ∧ bytes5216.length=60 := by core033_kernel_decide
def op5217 : List WordIR.Op := [.band 5334 2798]
def bytes5217 : Bytes := ("    let r000014d7: u32 = r000014d6 & r00000aee;\n" : String).toByteArray.data.toList
theorem checked5217 : bytes5217=statementBytes 5335 (op5217.map lower) ∧ bytes5217.length=48 := by core033_kernel_decide
def op5218 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5218 : Bytes := ("    let r000014d8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5218 : bytes5218=statementBytes 5336 (op5218.map lower) ∧ bytes5218.length=41 := by core033_kernel_decide
def op5219 : List WordIR.Op := [.bxor 1299 5336]
def bytes5219 : Bytes := ("    let r000014d9: u32 = r00000513 ^ r000014d8;\n" : String).toByteArray.data.toList
theorem checked5219 : bytes5219=statementBytes 5337 (op5219.map lower) ∧ bytes5219.length=48 := by core033_kernel_decide
def op5220 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5220 : Bytes := ("    let r000014da: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5220 : bytes5220=statementBytes 5338 (op5220.map lower) ∧ bytes5220.length=41 := by core033_kernel_decide
def op5221 : List WordIR.Op := [.bnot 5338]
def bytes5221 : Bytes := ("    let r000014db: u32 = !r000014da;\n" : String).toByteArray.data.toList
theorem checked5221 : bytes5221=statementBytes 5339 (op5221.map lower) ∧ bytes5221.length=37 := by core033_kernel_decide
def op5222 : List WordIR.Op := [.band 5337 5339]
def bytes5222 : Bytes := ("    let r000014dc: u32 = r000014d9 & r000014db;\n" : String).toByteArray.data.toList
theorem checked5222 : bytes5222=statementBytes 5340 (op5222.map lower) ∧ bytes5222.length=48 := by core033_kernel_decide
def op5223 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5223 : Bytes := ("    let r000014dd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5223 : bytes5223=statementBytes 5341 (op5223.map lower) ∧ bytes5223.length=41 := by core033_kernel_decide
def op5224 : List WordIR.Op := [.bxor 1299 5341]
def bytes5224 : Bytes := ("    let r000014de: u32 = r00000513 ^ r000014dd;\n" : String).toByteArray.data.toList
theorem checked5224 : bytes5224=statementBytes 5342 (op5224.map lower) ∧ bytes5224.length=48 := by core033_kernel_decide
def op5225 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5225 : Bytes := ("    let r000014df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5225 : bytes5225=statementBytes 5343 (op5225.map lower) ∧ bytes5225.length=41 := by core033_kernel_decide
def op5226 : List WordIR.Op := [.bnot 5343]
def bytes5226 : Bytes := ("    let r000014e0: u32 = !r000014df;\n" : String).toByteArray.data.toList
theorem checked5226 : bytes5226=statementBytes 5344 (op5226.map lower) ∧ bytes5226.length=37 := by core033_kernel_decide
def op5227 : List WordIR.Op := [.bxor 5342 5344]
def bytes5227 : Bytes := ("    let r000014e1: u32 = r000014de ^ r000014e0;\n" : String).toByteArray.data.toList
theorem checked5227 : bytes5227=statementBytes 5345 (op5227.map lower) ∧ bytes5227.length=48 := by core033_kernel_decide
def op5228 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5228 : Bytes := ("    let r000014e2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5228 : bytes5228=statementBytes 5346 (op5228.map lower) ∧ bytes5228.length=41 := by core033_kernel_decide
def op5229 : List WordIR.Op := [.bxor 1299 5346]
def bytes5229 : Bytes := ("    let r000014e3: u32 = r00000513 ^ r000014e2;\n" : String).toByteArray.data.toList
theorem checked5229 : bytes5229=statementBytes 5347 (op5229.map lower) ∧ bytes5229.length=48 := by core033_kernel_decide
def op5230 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5230 : Bytes := ("    let r000014e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5230 : bytes5230=statementBytes 5348 (op5230.map lower) ∧ bytes5230.length=41 := by core033_kernel_decide
def op5231 : List WordIR.Op := [.bnot 5348]
def bytes5231 : Bytes := ("    let r000014e5: u32 = !r000014e4;\n" : String).toByteArray.data.toList
theorem checked5231 : bytes5231=statementBytes 5349 (op5231.map lower) ∧ bytes5231.length=37 := by core033_kernel_decide
def op5232 : List WordIR.Op := [.badd 5347 5349]
def bytes5232 : Bytes := ("    let r000014e6: u32 = r000014e3.wrapping_add(r000014e5);\n" : String).toByteArray.data.toList
theorem checked5232 : bytes5232=statementBytes 5350 (op5232.map lower) ∧ bytes5232.length=60 := by core033_kernel_decide
def op5233 : List WordIR.Op := [.bnot 5350]
def bytes5233 : Bytes := ("    let r000014e7: u32 = !r000014e6;\n" : String).toByteArray.data.toList
theorem checked5233 : bytes5233=statementBytes 5351 (op5233.map lower) ∧ bytes5233.length=37 := by core033_kernel_decide
def op5234 : List WordIR.Op := [.band 5345 5351]
def bytes5234 : Bytes := ("    let r000014e8: u32 = r000014e1 & r000014e7;\n" : String).toByteArray.data.toList
theorem checked5234 : bytes5234=statementBytes 5352 (op5234.map lower) ∧ bytes5234.length=48 := by core033_kernel_decide
def op5235 : List WordIR.Op := [.bxor 5340 5352]
def bytes5235 : Bytes := ("    let r000014e9: u32 = r000014dc ^ r000014e8;\n" : String).toByteArray.data.toList
theorem checked5235 : bytes5235=statementBytes 5353 (op5235.map lower) ∧ bytes5235.length=48 := by core033_kernel_decide
def op5236 : List WordIR.Op := [.shr 5353 31]
def bytes5236 : Bytes := ("    let r000014ea: u32 = r000014e9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5236 : bytes5236=statementBytes 5354 (op5236.map lower) ∧ bytes5236.length=54 := by core033_kernel_decide
def op5237 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5237 : Bytes := ("    let r000014eb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5237 : bytes5237=statementBytes 5355 (op5237.map lower) ∧ bytes5237.length=41 := by core033_kernel_decide
def op5238 : List WordIR.Op := [.bxor 5354 5355]
def bytes5238 : Bytes := ("    let r000014ec: u32 = r000014ea ^ r000014eb;\n" : String).toByteArray.data.toList
theorem checked5238 : bytes5238=statementBytes 5356 (op5238.map lower) ∧ bytes5238.length=48 := by core033_kernel_decide
def op5239 : List WordIR.Op := [.bnot 5356]
def bytes5239 : Bytes := ("    let r000014ed: u32 = !r000014ec;\n" : String).toByteArray.data.toList
theorem checked5239 : bytes5239=statementBytes 5357 (op5239.map lower) ∧ bytes5239.length=37 := by core033_kernel_decide
def op5240 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5240 : Bytes := ("    let r000014ee: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5240 : bytes5240=statementBytes 5358 (op5240.map lower) ∧ bytes5240.length=41 := by core033_kernel_decide
def op5241 : List WordIR.Op := [.badd 5357 5358]
def bytes5241 : Bytes := ("    let r000014ef: u32 = r000014ed.wrapping_add(r000014ee);\n" : String).toByteArray.data.toList
theorem checked5241 : bytes5241=statementBytes 5359 (op5241.map lower) ∧ bytes5241.length=60 := by core033_kernel_decide
def op5242 : List WordIR.Op := [.bnot 5359]
def bytes5242 : Bytes := ("    let r000014f0: u32 = !r000014ef;\n" : String).toByteArray.data.toList
theorem checked5242 : bytes5242=statementBytes 5360 (op5242.map lower) ∧ bytes5242.length=37 := by core033_kernel_decide
def op5243 : List WordIR.Op := [.band 5360 2606]
def bytes5243 : Bytes := ("    let r000014f1: u32 = r000014f0 & r00000a2e;\n" : String).toByteArray.data.toList
theorem checked5243 : bytes5243=statementBytes 5361 (op5243.map lower) ∧ bytes5243.length=48 := by core033_kernel_decide
def op5244 : List WordIR.Op := [.bxor 5335 5361]
def bytes5244 : Bytes := ("    let r000014f2: u32 = r000014d7 ^ r000014f1;\n" : String).toByteArray.data.toList
theorem checked5244 : bytes5244=statementBytes 5362 (op5244.map lower) ∧ bytes5244.length=48 := by core033_kernel_decide
def op5245 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5245 : Bytes := ("    let r000014f3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5245 : bytes5245=statementBytes 5363 (op5245.map lower) ∧ bytes5245.length=41 := by core033_kernel_decide
def op5246 : List WordIR.Op := [.bxor 1299 5363]
def bytes5246 : Bytes := ("    let r000014f4: u32 = r00000513 ^ r000014f3;\n" : String).toByteArray.data.toList
theorem checked5246 : bytes5246=statementBytes 5364 (op5246.map lower) ∧ bytes5246.length=48 := by core033_kernel_decide
def op5247 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5247 : Bytes := ("    let r000014f5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5247 : bytes5247=statementBytes 5365 (op5247.map lower) ∧ bytes5247.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5184,op5185,op5186,op5187,op5188,op5189,op5190,op5191,op5192,op5193,op5194,op5195,op5196,op5197,op5198,op5199,op5200,op5201,op5202,op5203,op5204,op5205,op5206,op5207,op5208,op5209,op5210,op5211,op5212,op5213,op5214,op5215,op5216,op5217,op5218,op5219,op5220,op5221,op5222,op5223,op5224,op5225,op5226,op5227,op5228,op5229,op5230,op5231,op5232,op5233,op5234,op5235,op5236,op5237,op5238,op5239,op5240,op5241,op5242,op5243,op5244,op5245,op5246,op5247]
def chunks : List Bytes := [bytes5184,bytes5185,bytes5186,bytes5187,bytes5188,bytes5189,bytes5190,bytes5191,bytes5192,bytes5193,bytes5194,bytes5195,bytes5196,bytes5197,bytes5198,bytes5199,bytes5200,bytes5201,bytes5202,bytes5203,bytes5204,bytes5205,bytes5206,bytes5207,bytes5208,bytes5209,bytes5210,bytes5211,bytes5212,bytes5213,bytes5214,bytes5215,bytes5216,bytes5217,bytes5218,bytes5219,bytes5220,bytes5221,bytes5222,bytes5223,bytes5224,bytes5225,bytes5226,bytes5227,bytes5228,bytes5229,bytes5230,bytes5231,bytes5232,bytes5233,bytes5234,bytes5235,bytes5236,bytes5237,bytes5238,bytes5239,bytes5240,bytes5241,bytes5242,bytes5243,bytes5244,bytes5245,bytes5246,bytes5247]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5302 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5184.1 (.cons _ _ _ _ _ checked5185.1 (.cons _ _ _ _ _ checked5186.1 (.cons _ _ _ _ _ checked5187.1 (.cons _ _ _ _ _ checked5188.1 (.cons _ _ _ _ _ checked5189.1 (.cons _ _ _ _ _ checked5190.1 (.cons _ _ _ _ _ checked5191.1 (.cons _ _ _ _ _ checked5192.1 (.cons _ _ _ _ _ checked5193.1 (.cons _ _ _ _ _ checked5194.1 (.cons _ _ _ _ _ checked5195.1 (.cons _ _ _ _ _ checked5196.1 (.cons _ _ _ _ _ checked5197.1 (.cons _ _ _ _ _ checked5198.1 (.cons _ _ _ _ _ checked5199.1 (.cons _ _ _ _ _ checked5200.1 (.cons _ _ _ _ _ checked5201.1 (.cons _ _ _ _ _ checked5202.1 (.cons _ _ _ _ _ checked5203.1 (.cons _ _ _ _ _ checked5204.1 (.cons _ _ _ _ _ checked5205.1 (.cons _ _ _ _ _ checked5206.1 (.cons _ _ _ _ _ checked5207.1 (.cons _ _ _ _ _ checked5208.1 (.cons _ _ _ _ _ checked5209.1 (.cons _ _ _ _ _ checked5210.1 (.cons _ _ _ _ _ checked5211.1 (.cons _ _ _ _ _ checked5212.1 (.cons _ _ _ _ _ checked5213.1 (.cons _ _ _ _ _ checked5214.1 (.cons _ _ _ _ _ checked5215.1 (.cons _ _ _ _ _ checked5216.1 (.cons _ _ _ _ _ checked5217.1 (.cons _ _ _ _ _ checked5218.1 (.cons _ _ _ _ _ checked5219.1 (.cons _ _ _ _ _ checked5220.1 (.cons _ _ _ _ _ checked5221.1 (.cons _ _ _ _ _ checked5222.1 (.cons _ _ _ _ _ checked5223.1 (.cons _ _ _ _ _ checked5224.1 (.cons _ _ _ _ _ checked5225.1 (.cons _ _ _ _ _ checked5226.1 (.cons _ _ _ _ _ checked5227.1 (.cons _ _ _ _ _ checked5228.1 (.cons _ _ _ _ _ checked5229.1 (.cons _ _ _ _ _ checked5230.1 (.cons _ _ _ _ _ checked5231.1 (.cons _ _ _ _ _ checked5232.1 (.cons _ _ _ _ _ checked5233.1 (.cons _ _ _ _ _ checked5234.1 (.cons _ _ _ _ _ checked5235.1 (.cons _ _ _ _ _ checked5236.1 (.cons _ _ _ _ _ checked5237.1 (.cons _ _ _ _ _ checked5238.1 (.cons _ _ _ _ _ checked5239.1 (.cons _ _ _ _ _ checked5240.1 (.cons _ _ _ _ _ checked5241.1 (.cons _ _ _ _ _ checked5242.1 (.cons _ _ _ _ _ checked5243.1 (.cons _ _ _ _ _ checked5244.1 (.cons _ _ _ _ _ checked5245.1 (.cons _ _ _ _ _ checked5246.1 (.cons _ _ _ _ _ checked5247.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5302 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5184.2,checked5185.2,checked5186.2,checked5187.2,checked5188.2,checked5189.2,checked5190.2,checked5191.2,checked5192.2,checked5193.2,checked5194.2,checked5195.2,checked5196.2,checked5197.2,checked5198.2,checked5199.2,checked5200.2,checked5201.2,checked5202.2,checked5203.2,checked5204.2,checked5205.2,checked5206.2,checked5207.2,checked5208.2,checked5209.2,checked5210.2,checked5211.2,checked5212.2,checked5213.2,checked5214.2,checked5215.2,checked5216.2,checked5217.2,checked5218.2,checked5219.2,checked5220.2,checked5221.2,checked5222.2,checked5223.2,checked5224.2,checked5225.2,checked5226.2,checked5227.2,checked5228.2,checked5229.2,checked5230.2,checked5231.2,checked5232.2,checked5233.2,checked5234.2,checked5235.2,checked5236.2,checked5237.2,checked5238.2,checked5239.2,checked5240.2,checked5241.2,checked5242.2,checked5243.2,checked5244.2,checked5245.2,checked5246.2,checked5247.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup81
