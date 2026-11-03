import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup82
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5248 : List WordIR.Op := [.bnot 5365]
def bytes5248 : Bytes := ("    let r000014f6: u32 = !r000014f5;\n" : String).toByteArray.data.toList
theorem checked5248 : bytes5248=statementBytes 5366 (op5248.map lower) ∧ bytes5248.length=37 := by core033_kernel_decide
def op5249 : List WordIR.Op := [.band 5364 5366]
def bytes5249 : Bytes := ("    let r000014f7: u32 = r000014f4 & r000014f6;\n" : String).toByteArray.data.toList
theorem checked5249 : bytes5249=statementBytes 5367 (op5249.map lower) ∧ bytes5249.length=48 := by core033_kernel_decide
def op5250 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5250 : Bytes := ("    let r000014f8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5250 : bytes5250=statementBytes 5368 (op5250.map lower) ∧ bytes5250.length=41 := by core033_kernel_decide
def op5251 : List WordIR.Op := [.bxor 1299 5368]
def bytes5251 : Bytes := ("    let r000014f9: u32 = r00000513 ^ r000014f8;\n" : String).toByteArray.data.toList
theorem checked5251 : bytes5251=statementBytes 5369 (op5251.map lower) ∧ bytes5251.length=48 := by core033_kernel_decide
def op5252 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5252 : Bytes := ("    let r000014fa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5252 : bytes5252=statementBytes 5370 (op5252.map lower) ∧ bytes5252.length=41 := by core033_kernel_decide
def op5253 : List WordIR.Op := [.bnot 5370]
def bytes5253 : Bytes := ("    let r000014fb: u32 = !r000014fa;\n" : String).toByteArray.data.toList
theorem checked5253 : bytes5253=statementBytes 5371 (op5253.map lower) ∧ bytes5253.length=37 := by core033_kernel_decide
def op5254 : List WordIR.Op := [.bxor 5369 5371]
def bytes5254 : Bytes := ("    let r000014fc: u32 = r000014f9 ^ r000014fb;\n" : String).toByteArray.data.toList
theorem checked5254 : bytes5254=statementBytes 5372 (op5254.map lower) ∧ bytes5254.length=48 := by core033_kernel_decide
def op5255 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5255 : Bytes := ("    let r000014fd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5255 : bytes5255=statementBytes 5373 (op5255.map lower) ∧ bytes5255.length=41 := by core033_kernel_decide
def op5256 : List WordIR.Op := [.bxor 1299 5373]
def bytes5256 : Bytes := ("    let r000014fe: u32 = r00000513 ^ r000014fd;\n" : String).toByteArray.data.toList
theorem checked5256 : bytes5256=statementBytes 5374 (op5256.map lower) ∧ bytes5256.length=48 := by core033_kernel_decide
def op5257 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5257 : Bytes := ("    let r000014ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5257 : bytes5257=statementBytes 5375 (op5257.map lower) ∧ bytes5257.length=41 := by core033_kernel_decide
def op5258 : List WordIR.Op := [.bnot 5375]
def bytes5258 : Bytes := ("    let r00001500: u32 = !r000014ff;\n" : String).toByteArray.data.toList
theorem checked5258 : bytes5258=statementBytes 5376 (op5258.map lower) ∧ bytes5258.length=37 := by core033_kernel_decide
def op5259 : List WordIR.Op := [.badd 5374 5376]
def bytes5259 : Bytes := ("    let r00001501: u32 = r000014fe.wrapping_add(r00001500);\n" : String).toByteArray.data.toList
theorem checked5259 : bytes5259=statementBytes 5377 (op5259.map lower) ∧ bytes5259.length=60 := by core033_kernel_decide
def op5260 : List WordIR.Op := [.bnot 5377]
def bytes5260 : Bytes := ("    let r00001502: u32 = !r00001501;\n" : String).toByteArray.data.toList
theorem checked5260 : bytes5260=statementBytes 5378 (op5260.map lower) ∧ bytes5260.length=37 := by core033_kernel_decide
def op5261 : List WordIR.Op := [.band 5372 5378]
def bytes5261 : Bytes := ("    let r00001503: u32 = r000014fc & r00001502;\n" : String).toByteArray.data.toList
theorem checked5261 : bytes5261=statementBytes 5379 (op5261.map lower) ∧ bytes5261.length=48 := by core033_kernel_decide
def op5262 : List WordIR.Op := [.bxor 5367 5379]
def bytes5262 : Bytes := ("    let r00001504: u32 = r000014f7 ^ r00001503;\n" : String).toByteArray.data.toList
theorem checked5262 : bytes5262=statementBytes 5380 (op5262.map lower) ∧ bytes5262.length=48 := by core033_kernel_decide
def op5263 : List WordIR.Op := [.shr 5380 31]
def bytes5263 : Bytes := ("    let r00001505: u32 = r00001504 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5263 : bytes5263=statementBytes 5381 (op5263.map lower) ∧ bytes5263.length=54 := by core033_kernel_decide
def op5264 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5264 : Bytes := ("    let r00001506: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5264 : bytes5264=statementBytes 5382 (op5264.map lower) ∧ bytes5264.length=41 := by core033_kernel_decide
def op5265 : List WordIR.Op := [.bxor 5381 5382]
def bytes5265 : Bytes := ("    let r00001507: u32 = r00001505 ^ r00001506;\n" : String).toByteArray.data.toList
theorem checked5265 : bytes5265=statementBytes 5383 (op5265.map lower) ∧ bytes5265.length=48 := by core033_kernel_decide
def op5266 : List WordIR.Op := [.bnot 5383]
def bytes5266 : Bytes := ("    let r00001508: u32 = !r00001507;\n" : String).toByteArray.data.toList
theorem checked5266 : bytes5266=statementBytes 5384 (op5266.map lower) ∧ bytes5266.length=37 := by core033_kernel_decide
def op5267 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5267 : Bytes := ("    let r00001509: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5267 : bytes5267=statementBytes 5385 (op5267.map lower) ∧ bytes5267.length=41 := by core033_kernel_decide
def op5268 : List WordIR.Op := [.badd 5384 5385]
def bytes5268 : Bytes := ("    let r0000150a: u32 = r00001508.wrapping_add(r00001509);\n" : String).toByteArray.data.toList
theorem checked5268 : bytes5268=statementBytes 5386 (op5268.map lower) ∧ bytes5268.length=60 := by core033_kernel_decide
def op5269 : List WordIR.Op := [.band 5386 2801]
def bytes5269 : Bytes := ("    let r0000150b: u32 = r0000150a & r00000af1;\n" : String).toByteArray.data.toList
theorem checked5269 : bytes5269=statementBytes 5387 (op5269.map lower) ∧ bytes5269.length=48 := by core033_kernel_decide
def op5270 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5270 : Bytes := ("    let r0000150c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5270 : bytes5270=statementBytes 5388 (op5270.map lower) ∧ bytes5270.length=41 := by core033_kernel_decide
def op5271 : List WordIR.Op := [.bxor 1299 5388]
def bytes5271 : Bytes := ("    let r0000150d: u32 = r00000513 ^ r0000150c;\n" : String).toByteArray.data.toList
theorem checked5271 : bytes5271=statementBytes 5389 (op5271.map lower) ∧ bytes5271.length=48 := by core033_kernel_decide
def op5272 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5272 : Bytes := ("    let r0000150e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5272 : bytes5272=statementBytes 5390 (op5272.map lower) ∧ bytes5272.length=41 := by core033_kernel_decide
def op5273 : List WordIR.Op := [.bnot 5390]
def bytes5273 : Bytes := ("    let r0000150f: u32 = !r0000150e;\n" : String).toByteArray.data.toList
theorem checked5273 : bytes5273=statementBytes 5391 (op5273.map lower) ∧ bytes5273.length=37 := by core033_kernel_decide
def op5274 : List WordIR.Op := [.band 5389 5391]
def bytes5274 : Bytes := ("    let r00001510: u32 = r0000150d & r0000150f;\n" : String).toByteArray.data.toList
theorem checked5274 : bytes5274=statementBytes 5392 (op5274.map lower) ∧ bytes5274.length=48 := by core033_kernel_decide
def op5275 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5275 : Bytes := ("    let r00001511: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5275 : bytes5275=statementBytes 5393 (op5275.map lower) ∧ bytes5275.length=41 := by core033_kernel_decide
def op5276 : List WordIR.Op := [.bxor 1299 5393]
def bytes5276 : Bytes := ("    let r00001512: u32 = r00000513 ^ r00001511;\n" : String).toByteArray.data.toList
theorem checked5276 : bytes5276=statementBytes 5394 (op5276.map lower) ∧ bytes5276.length=48 := by core033_kernel_decide
def op5277 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5277 : Bytes := ("    let r00001513: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5277 : bytes5277=statementBytes 5395 (op5277.map lower) ∧ bytes5277.length=41 := by core033_kernel_decide
def op5278 : List WordIR.Op := [.bnot 5395]
def bytes5278 : Bytes := ("    let r00001514: u32 = !r00001513;\n" : String).toByteArray.data.toList
theorem checked5278 : bytes5278=statementBytes 5396 (op5278.map lower) ∧ bytes5278.length=37 := by core033_kernel_decide
def op5279 : List WordIR.Op := [.bxor 5394 5396]
def bytes5279 : Bytes := ("    let r00001515: u32 = r00001512 ^ r00001514;\n" : String).toByteArray.data.toList
theorem checked5279 : bytes5279=statementBytes 5397 (op5279.map lower) ∧ bytes5279.length=48 := by core033_kernel_decide
def op5280 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5280 : Bytes := ("    let r00001516: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5280 : bytes5280=statementBytes 5398 (op5280.map lower) ∧ bytes5280.length=41 := by core033_kernel_decide
def op5281 : List WordIR.Op := [.bxor 1299 5398]
def bytes5281 : Bytes := ("    let r00001517: u32 = r00000513 ^ r00001516;\n" : String).toByteArray.data.toList
theorem checked5281 : bytes5281=statementBytes 5399 (op5281.map lower) ∧ bytes5281.length=48 := by core033_kernel_decide
def op5282 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5282 : Bytes := ("    let r00001518: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5282 : bytes5282=statementBytes 5400 (op5282.map lower) ∧ bytes5282.length=41 := by core033_kernel_decide
def op5283 : List WordIR.Op := [.bnot 5400]
def bytes5283 : Bytes := ("    let r00001519: u32 = !r00001518;\n" : String).toByteArray.data.toList
theorem checked5283 : bytes5283=statementBytes 5401 (op5283.map lower) ∧ bytes5283.length=37 := by core033_kernel_decide
def op5284 : List WordIR.Op := [.badd 5399 5401]
def bytes5284 : Bytes := ("    let r0000151a: u32 = r00001517.wrapping_add(r00001519);\n" : String).toByteArray.data.toList
theorem checked5284 : bytes5284=statementBytes 5402 (op5284.map lower) ∧ bytes5284.length=60 := by core033_kernel_decide
def op5285 : List WordIR.Op := [.bnot 5402]
def bytes5285 : Bytes := ("    let r0000151b: u32 = !r0000151a;\n" : String).toByteArray.data.toList
theorem checked5285 : bytes5285=statementBytes 5403 (op5285.map lower) ∧ bytes5285.length=37 := by core033_kernel_decide
def op5286 : List WordIR.Op := [.band 5397 5403]
def bytes5286 : Bytes := ("    let r0000151c: u32 = r00001515 & r0000151b;\n" : String).toByteArray.data.toList
theorem checked5286 : bytes5286=statementBytes 5404 (op5286.map lower) ∧ bytes5286.length=48 := by core033_kernel_decide
def op5287 : List WordIR.Op := [.bxor 5392 5404]
def bytes5287 : Bytes := ("    let r0000151d: u32 = r00001510 ^ r0000151c;\n" : String).toByteArray.data.toList
theorem checked5287 : bytes5287=statementBytes 5405 (op5287.map lower) ∧ bytes5287.length=48 := by core033_kernel_decide
def op5288 : List WordIR.Op := [.shr 5405 31]
def bytes5288 : Bytes := ("    let r0000151e: u32 = r0000151d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5288 : bytes5288=statementBytes 5406 (op5288.map lower) ∧ bytes5288.length=54 := by core033_kernel_decide
def op5289 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5289 : Bytes := ("    let r0000151f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5289 : bytes5289=statementBytes 5407 (op5289.map lower) ∧ bytes5289.length=41 := by core033_kernel_decide
def op5290 : List WordIR.Op := [.bxor 5406 5407]
def bytes5290 : Bytes := ("    let r00001520: u32 = r0000151e ^ r0000151f;\n" : String).toByteArray.data.toList
theorem checked5290 : bytes5290=statementBytes 5408 (op5290.map lower) ∧ bytes5290.length=48 := by core033_kernel_decide
def op5291 : List WordIR.Op := [.bnot 5408]
def bytes5291 : Bytes := ("    let r00001521: u32 = !r00001520;\n" : String).toByteArray.data.toList
theorem checked5291 : bytes5291=statementBytes 5409 (op5291.map lower) ∧ bytes5291.length=37 := by core033_kernel_decide
def op5292 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5292 : Bytes := ("    let r00001522: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5292 : bytes5292=statementBytes 5410 (op5292.map lower) ∧ bytes5292.length=41 := by core033_kernel_decide
def op5293 : List WordIR.Op := [.badd 5409 5410]
def bytes5293 : Bytes := ("    let r00001523: u32 = r00001521.wrapping_add(r00001522);\n" : String).toByteArray.data.toList
theorem checked5293 : bytes5293=statementBytes 5411 (op5293.map lower) ∧ bytes5293.length=60 := by core033_kernel_decide
def op5294 : List WordIR.Op := [.bnot 5411]
def bytes5294 : Bytes := ("    let r00001524: u32 = !r00001523;\n" : String).toByteArray.data.toList
theorem checked5294 : bytes5294=statementBytes 5412 (op5294.map lower) ∧ bytes5294.length=37 := by core033_kernel_decide
def op5295 : List WordIR.Op := [.band 5412 2609]
def bytes5295 : Bytes := ("    let r00001525: u32 = r00001524 & r00000a31;\n" : String).toByteArray.data.toList
theorem checked5295 : bytes5295=statementBytes 5413 (op5295.map lower) ∧ bytes5295.length=48 := by core033_kernel_decide
def op5296 : List WordIR.Op := [.bxor 5387 5413]
def bytes5296 : Bytes := ("    let r00001526: u32 = r0000150b ^ r00001525;\n" : String).toByteArray.data.toList
theorem checked5296 : bytes5296=statementBytes 5414 (op5296.map lower) ∧ bytes5296.length=48 := by core033_kernel_decide
def op5297 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5297 : Bytes := ("    let r00001527: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5297 : bytes5297=statementBytes 5415 (op5297.map lower) ∧ bytes5297.length=41 := by core033_kernel_decide
def op5298 : List WordIR.Op := [.bxor 1299 5415]
def bytes5298 : Bytes := ("    let r00001528: u32 = r00000513 ^ r00001527;\n" : String).toByteArray.data.toList
theorem checked5298 : bytes5298=statementBytes 5416 (op5298.map lower) ∧ bytes5298.length=48 := by core033_kernel_decide
def op5299 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5299 : Bytes := ("    let r00001529: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5299 : bytes5299=statementBytes 5417 (op5299.map lower) ∧ bytes5299.length=41 := by core033_kernel_decide
def op5300 : List WordIR.Op := [.bnot 5417]
def bytes5300 : Bytes := ("    let r0000152a: u32 = !r00001529;\n" : String).toByteArray.data.toList
theorem checked5300 : bytes5300=statementBytes 5418 (op5300.map lower) ∧ bytes5300.length=37 := by core033_kernel_decide
def op5301 : List WordIR.Op := [.band 5416 5418]
def bytes5301 : Bytes := ("    let r0000152b: u32 = r00001528 & r0000152a;\n" : String).toByteArray.data.toList
theorem checked5301 : bytes5301=statementBytes 5419 (op5301.map lower) ∧ bytes5301.length=48 := by core033_kernel_decide
def op5302 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5302 : Bytes := ("    let r0000152c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5302 : bytes5302=statementBytes 5420 (op5302.map lower) ∧ bytes5302.length=41 := by core033_kernel_decide
def op5303 : List WordIR.Op := [.bxor 1299 5420]
def bytes5303 : Bytes := ("    let r0000152d: u32 = r00000513 ^ r0000152c;\n" : String).toByteArray.data.toList
theorem checked5303 : bytes5303=statementBytes 5421 (op5303.map lower) ∧ bytes5303.length=48 := by core033_kernel_decide
def op5304 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5304 : Bytes := ("    let r0000152e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5304 : bytes5304=statementBytes 5422 (op5304.map lower) ∧ bytes5304.length=41 := by core033_kernel_decide
def op5305 : List WordIR.Op := [.bnot 5422]
def bytes5305 : Bytes := ("    let r0000152f: u32 = !r0000152e;\n" : String).toByteArray.data.toList
theorem checked5305 : bytes5305=statementBytes 5423 (op5305.map lower) ∧ bytes5305.length=37 := by core033_kernel_decide
def op5306 : List WordIR.Op := [.bxor 5421 5423]
def bytes5306 : Bytes := ("    let r00001530: u32 = r0000152d ^ r0000152f;\n" : String).toByteArray.data.toList
theorem checked5306 : bytes5306=statementBytes 5424 (op5306.map lower) ∧ bytes5306.length=48 := by core033_kernel_decide
def op5307 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5307 : Bytes := ("    let r00001531: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5307 : bytes5307=statementBytes 5425 (op5307.map lower) ∧ bytes5307.length=41 := by core033_kernel_decide
def op5308 : List WordIR.Op := [.bxor 1299 5425]
def bytes5308 : Bytes := ("    let r00001532: u32 = r00000513 ^ r00001531;\n" : String).toByteArray.data.toList
theorem checked5308 : bytes5308=statementBytes 5426 (op5308.map lower) ∧ bytes5308.length=48 := by core033_kernel_decide
def op5309 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5309 : Bytes := ("    let r00001533: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5309 : bytes5309=statementBytes 5427 (op5309.map lower) ∧ bytes5309.length=41 := by core033_kernel_decide
def op5310 : List WordIR.Op := [.bnot 5427]
def bytes5310 : Bytes := ("    let r00001534: u32 = !r00001533;\n" : String).toByteArray.data.toList
theorem checked5310 : bytes5310=statementBytes 5428 (op5310.map lower) ∧ bytes5310.length=37 := by core033_kernel_decide
def op5311 : List WordIR.Op := [.badd 5426 5428]
def bytes5311 : Bytes := ("    let r00001535: u32 = r00001532.wrapping_add(r00001534);\n" : String).toByteArray.data.toList
theorem checked5311 : bytes5311=statementBytes 5429 (op5311.map lower) ∧ bytes5311.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5248,op5249,op5250,op5251,op5252,op5253,op5254,op5255,op5256,op5257,op5258,op5259,op5260,op5261,op5262,op5263,op5264,op5265,op5266,op5267,op5268,op5269,op5270,op5271,op5272,op5273,op5274,op5275,op5276,op5277,op5278,op5279,op5280,op5281,op5282,op5283,op5284,op5285,op5286,op5287,op5288,op5289,op5290,op5291,op5292,op5293,op5294,op5295,op5296,op5297,op5298,op5299,op5300,op5301,op5302,op5303,op5304,op5305,op5306,op5307,op5308,op5309,op5310,op5311]
def chunks : List Bytes := [bytes5248,bytes5249,bytes5250,bytes5251,bytes5252,bytes5253,bytes5254,bytes5255,bytes5256,bytes5257,bytes5258,bytes5259,bytes5260,bytes5261,bytes5262,bytes5263,bytes5264,bytes5265,bytes5266,bytes5267,bytes5268,bytes5269,bytes5270,bytes5271,bytes5272,bytes5273,bytes5274,bytes5275,bytes5276,bytes5277,bytes5278,bytes5279,bytes5280,bytes5281,bytes5282,bytes5283,bytes5284,bytes5285,bytes5286,bytes5287,bytes5288,bytes5289,bytes5290,bytes5291,bytes5292,bytes5293,bytes5294,bytes5295,bytes5296,bytes5297,bytes5298,bytes5299,bytes5300,bytes5301,bytes5302,bytes5303,bytes5304,bytes5305,bytes5306,bytes5307,bytes5308,bytes5309,bytes5310,bytes5311]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5366 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5248.1 (.cons _ _ _ _ _ checked5249.1 (.cons _ _ _ _ _ checked5250.1 (.cons _ _ _ _ _ checked5251.1 (.cons _ _ _ _ _ checked5252.1 (.cons _ _ _ _ _ checked5253.1 (.cons _ _ _ _ _ checked5254.1 (.cons _ _ _ _ _ checked5255.1 (.cons _ _ _ _ _ checked5256.1 (.cons _ _ _ _ _ checked5257.1 (.cons _ _ _ _ _ checked5258.1 (.cons _ _ _ _ _ checked5259.1 (.cons _ _ _ _ _ checked5260.1 (.cons _ _ _ _ _ checked5261.1 (.cons _ _ _ _ _ checked5262.1 (.cons _ _ _ _ _ checked5263.1 (.cons _ _ _ _ _ checked5264.1 (.cons _ _ _ _ _ checked5265.1 (.cons _ _ _ _ _ checked5266.1 (.cons _ _ _ _ _ checked5267.1 (.cons _ _ _ _ _ checked5268.1 (.cons _ _ _ _ _ checked5269.1 (.cons _ _ _ _ _ checked5270.1 (.cons _ _ _ _ _ checked5271.1 (.cons _ _ _ _ _ checked5272.1 (.cons _ _ _ _ _ checked5273.1 (.cons _ _ _ _ _ checked5274.1 (.cons _ _ _ _ _ checked5275.1 (.cons _ _ _ _ _ checked5276.1 (.cons _ _ _ _ _ checked5277.1 (.cons _ _ _ _ _ checked5278.1 (.cons _ _ _ _ _ checked5279.1 (.cons _ _ _ _ _ checked5280.1 (.cons _ _ _ _ _ checked5281.1 (.cons _ _ _ _ _ checked5282.1 (.cons _ _ _ _ _ checked5283.1 (.cons _ _ _ _ _ checked5284.1 (.cons _ _ _ _ _ checked5285.1 (.cons _ _ _ _ _ checked5286.1 (.cons _ _ _ _ _ checked5287.1 (.cons _ _ _ _ _ checked5288.1 (.cons _ _ _ _ _ checked5289.1 (.cons _ _ _ _ _ checked5290.1 (.cons _ _ _ _ _ checked5291.1 (.cons _ _ _ _ _ checked5292.1 (.cons _ _ _ _ _ checked5293.1 (.cons _ _ _ _ _ checked5294.1 (.cons _ _ _ _ _ checked5295.1 (.cons _ _ _ _ _ checked5296.1 (.cons _ _ _ _ _ checked5297.1 (.cons _ _ _ _ _ checked5298.1 (.cons _ _ _ _ _ checked5299.1 (.cons _ _ _ _ _ checked5300.1 (.cons _ _ _ _ _ checked5301.1 (.cons _ _ _ _ _ checked5302.1 (.cons _ _ _ _ _ checked5303.1 (.cons _ _ _ _ _ checked5304.1 (.cons _ _ _ _ _ checked5305.1 (.cons _ _ _ _ _ checked5306.1 (.cons _ _ _ _ _ checked5307.1 (.cons _ _ _ _ _ checked5308.1 (.cons _ _ _ _ _ checked5309.1 (.cons _ _ _ _ _ checked5310.1 (.cons _ _ _ _ _ checked5311.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5366 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5248.2,checked5249.2,checked5250.2,checked5251.2,checked5252.2,checked5253.2,checked5254.2,checked5255.2,checked5256.2,checked5257.2,checked5258.2,checked5259.2,checked5260.2,checked5261.2,checked5262.2,checked5263.2,checked5264.2,checked5265.2,checked5266.2,checked5267.2,checked5268.2,checked5269.2,checked5270.2,checked5271.2,checked5272.2,checked5273.2,checked5274.2,checked5275.2,checked5276.2,checked5277.2,checked5278.2,checked5279.2,checked5280.2,checked5281.2,checked5282.2,checked5283.2,checked5284.2,checked5285.2,checked5286.2,checked5287.2,checked5288.2,checked5289.2,checked5290.2,checked5291.2,checked5292.2,checked5293.2,checked5294.2,checked5295.2,checked5296.2,checked5297.2,checked5298.2,checked5299.2,checked5300.2,checked5301.2,checked5302.2,checked5303.2,checked5304.2,checked5305.2,checked5306.2,checked5307.2,checked5308.2,checked5309.2,checked5310.2,checked5311.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup82
