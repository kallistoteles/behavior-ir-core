import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup83
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5312 : List WordIR.Op := [.shr 2135 8]
def bytes5312 : Bytes := ("    let r000014eb: u32 = r00000857 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5312 : bytes5312=statementBytes 5355 (op5312.map lower) ∧ bytes5312.length=54 := by core033_kernel_decide
def op5313 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5313 : Bytes := ("    let r000014ec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5313 : bytes5313=statementBytes 5356 (op5313.map lower) ∧ bytes5313.length=41 := by core033_kernel_decide
def op5314 : List WordIR.Op := [.bnot 5356]
def bytes5314 : Bytes := ("    let r000014ed: u32 = !r000014ec;\n" : String).toByteArray.data.toList
theorem checked5314 : bytes5314=statementBytes 5357 (op5314.map lower) ∧ bytes5314.length=37 := by core033_kernel_decide
def op5315 : List WordIR.Op := [.bxor 5355 5357]
def bytes5315 : Bytes := ("    let r000014ee: u32 = r000014eb ^ r000014ed;\n" : String).toByteArray.data.toList
theorem checked5315 : bytes5315=statementBytes 5358 (op5315.map lower) ∧ bytes5315.length=48 := by core033_kernel_decide
def op5316 : List WordIR.Op := [.shr 2135 8]
def bytes5316 : Bytes := ("    let r000014ef: u32 = r00000857 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5316 : bytes5316=statementBytes 5359 (op5316.map lower) ∧ bytes5316.length=54 := by core033_kernel_decide
def op5317 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5317 : Bytes := ("    let r000014f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5317 : bytes5317=statementBytes 5360 (op5317.map lower) ∧ bytes5317.length=41 := by core033_kernel_decide
def op5318 : List WordIR.Op := [.bnot 5360]
def bytes5318 : Bytes := ("    let r000014f1: u32 = !r000014f0;\n" : String).toByteArray.data.toList
theorem checked5318 : bytes5318=statementBytes 5361 (op5318.map lower) ∧ bytes5318.length=37 := by core033_kernel_decide
def op5319 : List WordIR.Op := [.badd 5359 5361]
def bytes5319 : Bytes := ("    let r000014f2: u32 = r000014ef.wrapping_add(r000014f1);\n" : String).toByteArray.data.toList
theorem checked5319 : bytes5319=statementBytes 5362 (op5319.map lower) ∧ bytes5319.length=60 := by core033_kernel_decide
def op5320 : List WordIR.Op := [.bnot 5362]
def bytes5320 : Bytes := ("    let r000014f3: u32 = !r000014f2;\n" : String).toByteArray.data.toList
theorem checked5320 : bytes5320=statementBytes 5363 (op5320.map lower) ∧ bytes5320.length=37 := by core033_kernel_decide
def op5321 : List WordIR.Op := [.band 5358 5363]
def bytes5321 : Bytes := ("    let r000014f4: u32 = r000014ee & r000014f3;\n" : String).toByteArray.data.toList
theorem checked5321 : bytes5321=statementBytes 5364 (op5321.map lower) ∧ bytes5321.length=48 := by core033_kernel_decide
def op5322 : List WordIR.Op := [.bxor 5354 5364]
def bytes5322 : Bytes := ("    let r000014f5: u32 = r000014ea ^ r000014f4;\n" : String).toByteArray.data.toList
theorem checked5322 : bytes5322=statementBytes 5365 (op5322.map lower) ∧ bytes5322.length=48 := by core033_kernel_decide
def op5323 : List WordIR.Op := [.shr 5365 31]
def bytes5323 : Bytes := ("    let r000014f6: u32 = r000014f5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5323 : bytes5323=statementBytes 5366 (op5323.map lower) ∧ bytes5323.length=54 := by core033_kernel_decide
def op5324 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5324 : Bytes := ("    let r000014f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5324 : bytes5324=statementBytes 5367 (op5324.map lower) ∧ bytes5324.length=41 := by core033_kernel_decide
def op5325 : List WordIR.Op := [.bxor 5366 5367]
def bytes5325 : Bytes := ("    let r000014f8: u32 = r000014f6 ^ r000014f7;\n" : String).toByteArray.data.toList
theorem checked5325 : bytes5325=statementBytes 5368 (op5325.map lower) ∧ bytes5325.length=48 := by core033_kernel_decide
def op5326 : List WordIR.Op := [.shr 2187 8]
def bytes5326 : Bytes := ("    let r000014f9: u32 = r0000088b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5326 : bytes5326=statementBytes 5369 (op5326.map lower) ∧ bytes5326.length=54 := by core033_kernel_decide
def op5327 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5327 : Bytes := ("    let r000014fa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5327 : bytes5327=statementBytes 5370 (op5327.map lower) ∧ bytes5327.length=41 := by core033_kernel_decide
def op5328 : List WordIR.Op := [.bnot 5370]
def bytes5328 : Bytes := ("    let r000014fb: u32 = !r000014fa;\n" : String).toByteArray.data.toList
theorem checked5328 : bytes5328=statementBytes 5371 (op5328.map lower) ∧ bytes5328.length=37 := by core033_kernel_decide
def op5329 : List WordIR.Op := [.band 5369 5371]
def bytes5329 : Bytes := ("    let r000014fc: u32 = r000014f9 & r000014fb;\n" : String).toByteArray.data.toList
theorem checked5329 : bytes5329=statementBytes 5372 (op5329.map lower) ∧ bytes5329.length=48 := by core033_kernel_decide
def op5330 : List WordIR.Op := [.shr 2187 8]
def bytes5330 : Bytes := ("    let r000014fd: u32 = r0000088b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5330 : bytes5330=statementBytes 5373 (op5330.map lower) ∧ bytes5330.length=54 := by core033_kernel_decide
def op5331 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5331 : Bytes := ("    let r000014fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5331 : bytes5331=statementBytes 5374 (op5331.map lower) ∧ bytes5331.length=41 := by core033_kernel_decide
def op5332 : List WordIR.Op := [.bnot 5374]
def bytes5332 : Bytes := ("    let r000014ff: u32 = !r000014fe;\n" : String).toByteArray.data.toList
theorem checked5332 : bytes5332=statementBytes 5375 (op5332.map lower) ∧ bytes5332.length=37 := by core033_kernel_decide
def op5333 : List WordIR.Op := [.bxor 5373 5375]
def bytes5333 : Bytes := ("    let r00001500: u32 = r000014fd ^ r000014ff;\n" : String).toByteArray.data.toList
theorem checked5333 : bytes5333=statementBytes 5376 (op5333.map lower) ∧ bytes5333.length=48 := by core033_kernel_decide
def op5334 : List WordIR.Op := [.shr 2187 8]
def bytes5334 : Bytes := ("    let r00001501: u32 = r0000088b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5334 : bytes5334=statementBytes 5377 (op5334.map lower) ∧ bytes5334.length=54 := by core033_kernel_decide
def op5335 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5335 : Bytes := ("    let r00001502: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5335 : bytes5335=statementBytes 5378 (op5335.map lower) ∧ bytes5335.length=41 := by core033_kernel_decide
def op5336 : List WordIR.Op := [.bnot 5378]
def bytes5336 : Bytes := ("    let r00001503: u32 = !r00001502;\n" : String).toByteArray.data.toList
theorem checked5336 : bytes5336=statementBytes 5379 (op5336.map lower) ∧ bytes5336.length=37 := by core033_kernel_decide
def op5337 : List WordIR.Op := [.badd 5377 5379]
def bytes5337 : Bytes := ("    let r00001504: u32 = r00001501.wrapping_add(r00001503);\n" : String).toByteArray.data.toList
theorem checked5337 : bytes5337=statementBytes 5380 (op5337.map lower) ∧ bytes5337.length=60 := by core033_kernel_decide
def op5338 : List WordIR.Op := [.bnot 5380]
def bytes5338 : Bytes := ("    let r00001505: u32 = !r00001504;\n" : String).toByteArray.data.toList
theorem checked5338 : bytes5338=statementBytes 5381 (op5338.map lower) ∧ bytes5338.length=37 := by core033_kernel_decide
def op5339 : List WordIR.Op := [.band 5376 5381]
def bytes5339 : Bytes := ("    let r00001506: u32 = r00001500 & r00001505;\n" : String).toByteArray.data.toList
theorem checked5339 : bytes5339=statementBytes 5382 (op5339.map lower) ∧ bytes5339.length=48 := by core033_kernel_decide
def op5340 : List WordIR.Op := [.bxor 5372 5382]
def bytes5340 : Bytes := ("    let r00001507: u32 = r000014fc ^ r00001506;\n" : String).toByteArray.data.toList
theorem checked5340 : bytes5340=statementBytes 5383 (op5340.map lower) ∧ bytes5340.length=48 := by core033_kernel_decide
def op5341 : List WordIR.Op := [.shr 5383 31]
def bytes5341 : Bytes := ("    let r00001508: u32 = r00001507 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5341 : bytes5341=statementBytes 5384 (op5341.map lower) ∧ bytes5341.length=54 := by core033_kernel_decide
def op5342 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5342 : Bytes := ("    let r00001509: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5342 : bytes5342=statementBytes 5385 (op5342.map lower) ∧ bytes5342.length=41 := by core033_kernel_decide
def op5343 : List WordIR.Op := [.bxor 5384 5385]
def bytes5343 : Bytes := ("    let r0000150a: u32 = r00001508 ^ r00001509;\n" : String).toByteArray.data.toList
theorem checked5343 : bytes5343=statementBytes 5386 (op5343.map lower) ∧ bytes5343.length=48 := by core033_kernel_decide
def op5344 : List WordIR.Op := [.shr 2239 8]
def bytes5344 : Bytes := ("    let r0000150b: u32 = r000008bf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5344 : bytes5344=statementBytes 5387 (op5344.map lower) ∧ bytes5344.length=54 := by core033_kernel_decide
def op5345 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5345 : Bytes := ("    let r0000150c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5345 : bytes5345=statementBytes 5388 (op5345.map lower) ∧ bytes5345.length=41 := by core033_kernel_decide
def op5346 : List WordIR.Op := [.bnot 5388]
def bytes5346 : Bytes := ("    let r0000150d: u32 = !r0000150c;\n" : String).toByteArray.data.toList
theorem checked5346 : bytes5346=statementBytes 5389 (op5346.map lower) ∧ bytes5346.length=37 := by core033_kernel_decide
def op5347 : List WordIR.Op := [.band 5387 5389]
def bytes5347 : Bytes := ("    let r0000150e: u32 = r0000150b & r0000150d;\n" : String).toByteArray.data.toList
theorem checked5347 : bytes5347=statementBytes 5390 (op5347.map lower) ∧ bytes5347.length=48 := by core033_kernel_decide
def op5348 : List WordIR.Op := [.shr 2239 8]
def bytes5348 : Bytes := ("    let r0000150f: u32 = r000008bf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5348 : bytes5348=statementBytes 5391 (op5348.map lower) ∧ bytes5348.length=54 := by core033_kernel_decide
def op5349 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5349 : Bytes := ("    let r00001510: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5349 : bytes5349=statementBytes 5392 (op5349.map lower) ∧ bytes5349.length=41 := by core033_kernel_decide
def op5350 : List WordIR.Op := [.bnot 5392]
def bytes5350 : Bytes := ("    let r00001511: u32 = !r00001510;\n" : String).toByteArray.data.toList
theorem checked5350 : bytes5350=statementBytes 5393 (op5350.map lower) ∧ bytes5350.length=37 := by core033_kernel_decide
def op5351 : List WordIR.Op := [.bxor 5391 5393]
def bytes5351 : Bytes := ("    let r00001512: u32 = r0000150f ^ r00001511;\n" : String).toByteArray.data.toList
theorem checked5351 : bytes5351=statementBytes 5394 (op5351.map lower) ∧ bytes5351.length=48 := by core033_kernel_decide
def op5352 : List WordIR.Op := [.shr 2239 8]
def bytes5352 : Bytes := ("    let r00001513: u32 = r000008bf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5352 : bytes5352=statementBytes 5395 (op5352.map lower) ∧ bytes5352.length=54 := by core033_kernel_decide
def op5353 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5353 : Bytes := ("    let r00001514: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5353 : bytes5353=statementBytes 5396 (op5353.map lower) ∧ bytes5353.length=41 := by core033_kernel_decide
def op5354 : List WordIR.Op := [.bnot 5396]
def bytes5354 : Bytes := ("    let r00001515: u32 = !r00001514;\n" : String).toByteArray.data.toList
theorem checked5354 : bytes5354=statementBytes 5397 (op5354.map lower) ∧ bytes5354.length=37 := by core033_kernel_decide
def op5355 : List WordIR.Op := [.badd 5395 5397]
def bytes5355 : Bytes := ("    let r00001516: u32 = r00001513.wrapping_add(r00001515);\n" : String).toByteArray.data.toList
theorem checked5355 : bytes5355=statementBytes 5398 (op5355.map lower) ∧ bytes5355.length=60 := by core033_kernel_decide
def op5356 : List WordIR.Op := [.bnot 5398]
def bytes5356 : Bytes := ("    let r00001517: u32 = !r00001516;\n" : String).toByteArray.data.toList
theorem checked5356 : bytes5356=statementBytes 5399 (op5356.map lower) ∧ bytes5356.length=37 := by core033_kernel_decide
def op5357 : List WordIR.Op := [.band 5394 5399]
def bytes5357 : Bytes := ("    let r00001518: u32 = r00001512 & r00001517;\n" : String).toByteArray.data.toList
theorem checked5357 : bytes5357=statementBytes 5400 (op5357.map lower) ∧ bytes5357.length=48 := by core033_kernel_decide
def op5358 : List WordIR.Op := [.bxor 5390 5400]
def bytes5358 : Bytes := ("    let r00001519: u32 = r0000150e ^ r00001518;\n" : String).toByteArray.data.toList
theorem checked5358 : bytes5358=statementBytes 5401 (op5358.map lower) ∧ bytes5358.length=48 := by core033_kernel_decide
def op5359 : List WordIR.Op := [.shr 5401 31]
def bytes5359 : Bytes := ("    let r0000151a: u32 = r00001519 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5359 : bytes5359=statementBytes 5402 (op5359.map lower) ∧ bytes5359.length=54 := by core033_kernel_decide
def op5360 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5360 : Bytes := ("    let r0000151b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5360 : bytes5360=statementBytes 5403 (op5360.map lower) ∧ bytes5360.length=41 := by core033_kernel_decide
def op5361 : List WordIR.Op := [.bxor 5402 5403]
def bytes5361 : Bytes := ("    let r0000151c: u32 = r0000151a ^ r0000151b;\n" : String).toByteArray.data.toList
theorem checked5361 : bytes5361=statementBytes 5404 (op5361.map lower) ∧ bytes5361.length=48 := by core033_kernel_decide
def op5362 : List WordIR.Op := [.shr 2291 8]
def bytes5362 : Bytes := ("    let r0000151d: u32 = r000008f3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5362 : bytes5362=statementBytes 5405 (op5362.map lower) ∧ bytes5362.length=54 := by core033_kernel_decide
def op5363 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5363 : Bytes := ("    let r0000151e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5363 : bytes5363=statementBytes 5406 (op5363.map lower) ∧ bytes5363.length=41 := by core033_kernel_decide
def op5364 : List WordIR.Op := [.bnot 5406]
def bytes5364 : Bytes := ("    let r0000151f: u32 = !r0000151e;\n" : String).toByteArray.data.toList
theorem checked5364 : bytes5364=statementBytes 5407 (op5364.map lower) ∧ bytes5364.length=37 := by core033_kernel_decide
def op5365 : List WordIR.Op := [.band 5405 5407]
def bytes5365 : Bytes := ("    let r00001520: u32 = r0000151d & r0000151f;\n" : String).toByteArray.data.toList
theorem checked5365 : bytes5365=statementBytes 5408 (op5365.map lower) ∧ bytes5365.length=48 := by core033_kernel_decide
def op5366 : List WordIR.Op := [.shr 2291 8]
def bytes5366 : Bytes := ("    let r00001521: u32 = r000008f3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5366 : bytes5366=statementBytes 5409 (op5366.map lower) ∧ bytes5366.length=54 := by core033_kernel_decide
def op5367 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5367 : Bytes := ("    let r00001522: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5367 : bytes5367=statementBytes 5410 (op5367.map lower) ∧ bytes5367.length=41 := by core033_kernel_decide
def op5368 : List WordIR.Op := [.bnot 5410]
def bytes5368 : Bytes := ("    let r00001523: u32 = !r00001522;\n" : String).toByteArray.data.toList
theorem checked5368 : bytes5368=statementBytes 5411 (op5368.map lower) ∧ bytes5368.length=37 := by core033_kernel_decide
def op5369 : List WordIR.Op := [.bxor 5409 5411]
def bytes5369 : Bytes := ("    let r00001524: u32 = r00001521 ^ r00001523;\n" : String).toByteArray.data.toList
theorem checked5369 : bytes5369=statementBytes 5412 (op5369.map lower) ∧ bytes5369.length=48 := by core033_kernel_decide
def op5370 : List WordIR.Op := [.shr 2291 8]
def bytes5370 : Bytes := ("    let r00001525: u32 = r000008f3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5370 : bytes5370=statementBytes 5413 (op5370.map lower) ∧ bytes5370.length=54 := by core033_kernel_decide
def op5371 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5371 : Bytes := ("    let r00001526: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5371 : bytes5371=statementBytes 5414 (op5371.map lower) ∧ bytes5371.length=41 := by core033_kernel_decide
def op5372 : List WordIR.Op := [.bnot 5414]
def bytes5372 : Bytes := ("    let r00001527: u32 = !r00001526;\n" : String).toByteArray.data.toList
theorem checked5372 : bytes5372=statementBytes 5415 (op5372.map lower) ∧ bytes5372.length=37 := by core033_kernel_decide
def op5373 : List WordIR.Op := [.badd 5413 5415]
def bytes5373 : Bytes := ("    let r00001528: u32 = r00001525.wrapping_add(r00001527);\n" : String).toByteArray.data.toList
theorem checked5373 : bytes5373=statementBytes 5416 (op5373.map lower) ∧ bytes5373.length=60 := by core033_kernel_decide
def op5374 : List WordIR.Op := [.bnot 5416]
def bytes5374 : Bytes := ("    let r00001529: u32 = !r00001528;\n" : String).toByteArray.data.toList
theorem checked5374 : bytes5374=statementBytes 5417 (op5374.map lower) ∧ bytes5374.length=37 := by core033_kernel_decide
def op5375 : List WordIR.Op := [.band 5412 5417]
def bytes5375 : Bytes := ("    let r0000152a: u32 = r00001524 & r00001529;\n" : String).toByteArray.data.toList
theorem checked5375 : bytes5375=statementBytes 5418 (op5375.map lower) ∧ bytes5375.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5312,op5313,op5314,op5315,op5316,op5317,op5318,op5319,op5320,op5321,op5322,op5323,op5324,op5325,op5326,op5327,op5328,op5329,op5330,op5331,op5332,op5333,op5334,op5335,op5336,op5337,op5338,op5339,op5340,op5341,op5342,op5343,op5344,op5345,op5346,op5347,op5348,op5349,op5350,op5351,op5352,op5353,op5354,op5355,op5356,op5357,op5358,op5359,op5360,op5361,op5362,op5363,op5364,op5365,op5366,op5367,op5368,op5369,op5370,op5371,op5372,op5373,op5374,op5375]
def chunks : List Bytes := [bytes5312,bytes5313,bytes5314,bytes5315,bytes5316,bytes5317,bytes5318,bytes5319,bytes5320,bytes5321,bytes5322,bytes5323,bytes5324,bytes5325,bytes5326,bytes5327,bytes5328,bytes5329,bytes5330,bytes5331,bytes5332,bytes5333,bytes5334,bytes5335,bytes5336,bytes5337,bytes5338,bytes5339,bytes5340,bytes5341,bytes5342,bytes5343,bytes5344,bytes5345,bytes5346,bytes5347,bytes5348,bytes5349,bytes5350,bytes5351,bytes5352,bytes5353,bytes5354,bytes5355,bytes5356,bytes5357,bytes5358,bytes5359,bytes5360,bytes5361,bytes5362,bytes5363,bytes5364,bytes5365,bytes5366,bytes5367,bytes5368,bytes5369,bytes5370,bytes5371,bytes5372,bytes5373,bytes5374,bytes5375]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5355 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5312.1 (.cons _ _ _ _ _ checked5313.1 (.cons _ _ _ _ _ checked5314.1 (.cons _ _ _ _ _ checked5315.1 (.cons _ _ _ _ _ checked5316.1 (.cons _ _ _ _ _ checked5317.1 (.cons _ _ _ _ _ checked5318.1 (.cons _ _ _ _ _ checked5319.1 (.cons _ _ _ _ _ checked5320.1 (.cons _ _ _ _ _ checked5321.1 (.cons _ _ _ _ _ checked5322.1 (.cons _ _ _ _ _ checked5323.1 (.cons _ _ _ _ _ checked5324.1 (.cons _ _ _ _ _ checked5325.1 (.cons _ _ _ _ _ checked5326.1 (.cons _ _ _ _ _ checked5327.1 (.cons _ _ _ _ _ checked5328.1 (.cons _ _ _ _ _ checked5329.1 (.cons _ _ _ _ _ checked5330.1 (.cons _ _ _ _ _ checked5331.1 (.cons _ _ _ _ _ checked5332.1 (.cons _ _ _ _ _ checked5333.1 (.cons _ _ _ _ _ checked5334.1 (.cons _ _ _ _ _ checked5335.1 (.cons _ _ _ _ _ checked5336.1 (.cons _ _ _ _ _ checked5337.1 (.cons _ _ _ _ _ checked5338.1 (.cons _ _ _ _ _ checked5339.1 (.cons _ _ _ _ _ checked5340.1 (.cons _ _ _ _ _ checked5341.1 (.cons _ _ _ _ _ checked5342.1 (.cons _ _ _ _ _ checked5343.1 (.cons _ _ _ _ _ checked5344.1 (.cons _ _ _ _ _ checked5345.1 (.cons _ _ _ _ _ checked5346.1 (.cons _ _ _ _ _ checked5347.1 (.cons _ _ _ _ _ checked5348.1 (.cons _ _ _ _ _ checked5349.1 (.cons _ _ _ _ _ checked5350.1 (.cons _ _ _ _ _ checked5351.1 (.cons _ _ _ _ _ checked5352.1 (.cons _ _ _ _ _ checked5353.1 (.cons _ _ _ _ _ checked5354.1 (.cons _ _ _ _ _ checked5355.1 (.cons _ _ _ _ _ checked5356.1 (.cons _ _ _ _ _ checked5357.1 (.cons _ _ _ _ _ checked5358.1 (.cons _ _ _ _ _ checked5359.1 (.cons _ _ _ _ _ checked5360.1 (.cons _ _ _ _ _ checked5361.1 (.cons _ _ _ _ _ checked5362.1 (.cons _ _ _ _ _ checked5363.1 (.cons _ _ _ _ _ checked5364.1 (.cons _ _ _ _ _ checked5365.1 (.cons _ _ _ _ _ checked5366.1 (.cons _ _ _ _ _ checked5367.1 (.cons _ _ _ _ _ checked5368.1 (.cons _ _ _ _ _ checked5369.1 (.cons _ _ _ _ _ checked5370.1 (.cons _ _ _ _ _ checked5371.1 (.cons _ _ _ _ _ checked5372.1 (.cons _ _ _ _ _ checked5373.1 (.cons _ _ _ _ _ checked5374.1 (.cons _ _ _ _ _ checked5375.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5355 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2941 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5312.2,checked5313.2,checked5314.2,checked5315.2,checked5316.2,checked5317.2,checked5318.2,checked5319.2,checked5320.2,checked5321.2,checked5322.2,checked5323.2,checked5324.2,checked5325.2,checked5326.2,checked5327.2,checked5328.2,checked5329.2,checked5330.2,checked5331.2,checked5332.2,checked5333.2,checked5334.2,checked5335.2,checked5336.2,checked5337.2,checked5338.2,checked5339.2,checked5340.2,checked5341.2,checked5342.2,checked5343.2,checked5344.2,checked5345.2,checked5346.2,checked5347.2,checked5348.2,checked5349.2,checked5350.2,checked5351.2,checked5352.2,checked5353.2,checked5354.2,checked5355.2,checked5356.2,checked5357.2,checked5358.2,checked5359.2,checked5360.2,checked5361.2,checked5362.2,checked5363.2,checked5364.2,checked5365.2,checked5366.2,checked5367.2,checked5368.2,checked5369.2,checked5370.2,checked5371.2,checked5372.2,checked5373.2,checked5374.2,checked5375.2]
  decide
end ArtifactFrameHashControllerGroup83
