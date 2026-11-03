import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup84
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5376 : List WordIR.Op := [.bnot 5418]
def bytes5376 : Bytes := ("    let r0000152b: u32 = !r0000152a;\n" : String).toByteArray.data.toList
theorem checked5376 : bytes5376=statementBytes 5419 (op5376.map lower) ∧ bytes5376.length=37 := by core033_kernel_decide
def op5377 : List WordIR.Op := [.band 5417 5419]
def bytes5377 : Bytes := ("    let r0000152c: u32 = r00001529 & r0000152b;\n" : String).toByteArray.data.toList
theorem checked5377 : bytes5377=statementBytes 5420 (op5377.map lower) ∧ bytes5377.length=48 := by core033_kernel_decide
def op5378 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5378 : Bytes := ("    let r0000152d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5378 : bytes5378=statementBytes 5421 (op5378.map lower) ∧ bytes5378.length=41 := by core033_kernel_decide
def op5379 : List WordIR.Op := [.bxor 96 5421]
def bytes5379 : Bytes := ("    let r0000152e: u32 = r00000060 ^ r0000152d;\n" : String).toByteArray.data.toList
theorem checked5379 : bytes5379=statementBytes 5422 (op5379.map lower) ∧ bytes5379.length=48 := by core033_kernel_decide
def op5380 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5380 : Bytes := ("    let r0000152f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5380 : bytes5380=statementBytes 5423 (op5380.map lower) ∧ bytes5380.length=41 := by core033_kernel_decide
def op5381 : List WordIR.Op := [.bnot 5423]
def bytes5381 : Bytes := ("    let r00001530: u32 = !r0000152f;\n" : String).toByteArray.data.toList
theorem checked5381 : bytes5381=statementBytes 5424 (op5381.map lower) ∧ bytes5381.length=37 := by core033_kernel_decide
def op5382 : List WordIR.Op := [.bxor 5422 5424]
def bytes5382 : Bytes := ("    let r00001531: u32 = r0000152e ^ r00001530;\n" : String).toByteArray.data.toList
theorem checked5382 : bytes5382=statementBytes 5425 (op5382.map lower) ∧ bytes5382.length=48 := by core033_kernel_decide
def op5383 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5383 : Bytes := ("    let r00001532: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5383 : bytes5383=statementBytes 5426 (op5383.map lower) ∧ bytes5383.length=41 := by core033_kernel_decide
def op5384 : List WordIR.Op := [.bxor 96 5426]
def bytes5384 : Bytes := ("    let r00001533: u32 = r00000060 ^ r00001532;\n" : String).toByteArray.data.toList
theorem checked5384 : bytes5384=statementBytes 5427 (op5384.map lower) ∧ bytes5384.length=48 := by core033_kernel_decide
def op5385 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5385 : Bytes := ("    let r00001534: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5385 : bytes5385=statementBytes 5428 (op5385.map lower) ∧ bytes5385.length=41 := by core033_kernel_decide
def op5386 : List WordIR.Op := [.bnot 5428]
def bytes5386 : Bytes := ("    let r00001535: u32 = !r00001534;\n" : String).toByteArray.data.toList
theorem checked5386 : bytes5386=statementBytes 5429 (op5386.map lower) ∧ bytes5386.length=37 := by core033_kernel_decide
def op5387 : List WordIR.Op := [.badd 5427 5429]
def bytes5387 : Bytes := ("    let r00001536: u32 = r00001533.wrapping_add(r00001535);\n" : String).toByteArray.data.toList
theorem checked5387 : bytes5387=statementBytes 5430 (op5387.map lower) ∧ bytes5387.length=60 := by core033_kernel_decide
def op5388 : List WordIR.Op := [.bnot 5430]
def bytes5388 : Bytes := ("    let r00001537: u32 = !r00001536;\n" : String).toByteArray.data.toList
theorem checked5388 : bytes5388=statementBytes 5431 (op5388.map lower) ∧ bytes5388.length=37 := by core033_kernel_decide
def op5389 : List WordIR.Op := [.band 5425 5431]
def bytes5389 : Bytes := ("    let r00001538: u32 = r00001531 & r00001537;\n" : String).toByteArray.data.toList
theorem checked5389 : bytes5389=statementBytes 5432 (op5389.map lower) ∧ bytes5389.length=48 := by core033_kernel_decide
def op5390 : List WordIR.Op := [.bxor 5420 5432]
def bytes5390 : Bytes := ("    let r00001539: u32 = r0000152c ^ r00001538;\n" : String).toByteArray.data.toList
theorem checked5390 : bytes5390=statementBytes 5433 (op5390.map lower) ∧ bytes5390.length=48 := by core033_kernel_decide
def op5391 : List WordIR.Op := [.shr 5433 31]
def bytes5391 : Bytes := ("    let r0000153a: u32 = r00001539 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5391 : bytes5391=statementBytes 5434 (op5391.map lower) ∧ bytes5391.length=54 := by core033_kernel_decide
def op5392 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5392 : Bytes := ("    let r0000153b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5392 : bytes5392=statementBytes 5435 (op5392.map lower) ∧ bytes5392.length=41 := by core033_kernel_decide
def op5393 : List WordIR.Op := [.bxor 5434 5435]
def bytes5393 : Bytes := ("    let r0000153c: u32 = r0000153a ^ r0000153b;\n" : String).toByteArray.data.toList
theorem checked5393 : bytes5393=statementBytes 5436 (op5393.map lower) ∧ bytes5393.length=48 := by core033_kernel_decide
def op5394 : List WordIR.Op := [.bnot 5436]
def bytes5394 : Bytes := ("    let r0000153d: u32 = !r0000153c;\n" : String).toByteArray.data.toList
theorem checked5394 : bytes5394=statementBytes 5437 (op5394.map lower) ∧ bytes5394.length=37 := by core033_kernel_decide
def op5395 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5395 : Bytes := ("    let r0000153e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5395 : bytes5395=statementBytes 5438 (op5395.map lower) ∧ bytes5395.length=41 := by core033_kernel_decide
def op5396 : List WordIR.Op := [.badd 5437 5438]
def bytes5396 : Bytes := ("    let r0000153f: u32 = r0000153d.wrapping_add(r0000153e);\n" : String).toByteArray.data.toList
theorem checked5396 : bytes5396=statementBytes 5439 (op5396.map lower) ∧ bytes5396.length=60 := by core033_kernel_decide
def op5397 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5397 : Bytes := ("    let r00001540: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5397 : bytes5397=statementBytes 5440 (op5397.map lower) ∧ bytes5397.length=41 := by core033_kernel_decide
def op5398 : List WordIR.Op := [.band 5439 5440]
def bytes5398 : Bytes := ("    let r00001541: u32 = r0000153f & r00001540;\n" : String).toByteArray.data.toList
theorem checked5398 : bytes5398=statementBytes 5441 (op5398.map lower) ∧ bytes5398.length=48 := by core033_kernel_decide
def op5399 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5399 : Bytes := ("    let r00001542: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5399 : bytes5399=statementBytes 5442 (op5399.map lower) ∧ bytes5399.length=41 := by core033_kernel_decide
def op5400 : List WordIR.Op := [.bxor 96 5442]
def bytes5400 : Bytes := ("    let r00001543: u32 = r00000060 ^ r00001542;\n" : String).toByteArray.data.toList
theorem checked5400 : bytes5400=statementBytes 5443 (op5400.map lower) ∧ bytes5400.length=48 := by core033_kernel_decide
def op5401 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5401 : Bytes := ("    let r00001544: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5401 : bytes5401=statementBytes 5444 (op5401.map lower) ∧ bytes5401.length=41 := by core033_kernel_decide
def op5402 : List WordIR.Op := [.bnot 5444]
def bytes5402 : Bytes := ("    let r00001545: u32 = !r00001544;\n" : String).toByteArray.data.toList
theorem checked5402 : bytes5402=statementBytes 5445 (op5402.map lower) ∧ bytes5402.length=37 := by core033_kernel_decide
def op5403 : List WordIR.Op := [.band 5443 5445]
def bytes5403 : Bytes := ("    let r00001546: u32 = r00001543 & r00001545;\n" : String).toByteArray.data.toList
theorem checked5403 : bytes5403=statementBytes 5446 (op5403.map lower) ∧ bytes5403.length=48 := by core033_kernel_decide
def op5404 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5404 : Bytes := ("    let r00001547: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5404 : bytes5404=statementBytes 5447 (op5404.map lower) ∧ bytes5404.length=41 := by core033_kernel_decide
def op5405 : List WordIR.Op := [.bxor 96 5447]
def bytes5405 : Bytes := ("    let r00001548: u32 = r00000060 ^ r00001547;\n" : String).toByteArray.data.toList
theorem checked5405 : bytes5405=statementBytes 5448 (op5405.map lower) ∧ bytes5405.length=48 := by core033_kernel_decide
def op5406 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5406 : Bytes := ("    let r00001549: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5406 : bytes5406=statementBytes 5449 (op5406.map lower) ∧ bytes5406.length=41 := by core033_kernel_decide
def op5407 : List WordIR.Op := [.bnot 5449]
def bytes5407 : Bytes := ("    let r0000154a: u32 = !r00001549;\n" : String).toByteArray.data.toList
theorem checked5407 : bytes5407=statementBytes 5450 (op5407.map lower) ∧ bytes5407.length=37 := by core033_kernel_decide
def op5408 : List WordIR.Op := [.bxor 5448 5450]
def bytes5408 : Bytes := ("    let r0000154b: u32 = r00001548 ^ r0000154a;\n" : String).toByteArray.data.toList
theorem checked5408 : bytes5408=statementBytes 5451 (op5408.map lower) ∧ bytes5408.length=48 := by core033_kernel_decide
def op5409 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5409 : Bytes := ("    let r0000154c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5409 : bytes5409=statementBytes 5452 (op5409.map lower) ∧ bytes5409.length=41 := by core033_kernel_decide
def op5410 : List WordIR.Op := [.bxor 96 5452]
def bytes5410 : Bytes := ("    let r0000154d: u32 = r00000060 ^ r0000154c;\n" : String).toByteArray.data.toList
theorem checked5410 : bytes5410=statementBytes 5453 (op5410.map lower) ∧ bytes5410.length=48 := by core033_kernel_decide
def op5411 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5411 : Bytes := ("    let r0000154e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5411 : bytes5411=statementBytes 5454 (op5411.map lower) ∧ bytes5411.length=41 := by core033_kernel_decide
def op5412 : List WordIR.Op := [.bnot 5454]
def bytes5412 : Bytes := ("    let r0000154f: u32 = !r0000154e;\n" : String).toByteArray.data.toList
theorem checked5412 : bytes5412=statementBytes 5455 (op5412.map lower) ∧ bytes5412.length=37 := by core033_kernel_decide
def op5413 : List WordIR.Op := [.badd 5453 5455]
def bytes5413 : Bytes := ("    let r00001550: u32 = r0000154d.wrapping_add(r0000154f);\n" : String).toByteArray.data.toList
theorem checked5413 : bytes5413=statementBytes 5456 (op5413.map lower) ∧ bytes5413.length=60 := by core033_kernel_decide
def op5414 : List WordIR.Op := [.bnot 5456]
def bytes5414 : Bytes := ("    let r00001551: u32 = !r00001550;\n" : String).toByteArray.data.toList
theorem checked5414 : bytes5414=statementBytes 5457 (op5414.map lower) ∧ bytes5414.length=37 := by core033_kernel_decide
def op5415 : List WordIR.Op := [.band 5451 5457]
def bytes5415 : Bytes := ("    let r00001552: u32 = r0000154b & r00001551;\n" : String).toByteArray.data.toList
theorem checked5415 : bytes5415=statementBytes 5458 (op5415.map lower) ∧ bytes5415.length=48 := by core033_kernel_decide
def op5416 : List WordIR.Op := [.bxor 5446 5458]
def bytes5416 : Bytes := ("    let r00001553: u32 = r00001546 ^ r00001552;\n" : String).toByteArray.data.toList
theorem checked5416 : bytes5416=statementBytes 5459 (op5416.map lower) ∧ bytes5416.length=48 := by core033_kernel_decide
def op5417 : List WordIR.Op := [.shr 5459 31]
def bytes5417 : Bytes := ("    let r00001554: u32 = r00001553 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5417 : bytes5417=statementBytes 5460 (op5417.map lower) ∧ bytes5417.length=54 := by core033_kernel_decide
def op5418 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5418 : Bytes := ("    let r00001555: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5418 : bytes5418=statementBytes 5461 (op5418.map lower) ∧ bytes5418.length=41 := by core033_kernel_decide
def op5419 : List WordIR.Op := [.bxor 5460 5461]
def bytes5419 : Bytes := ("    let r00001556: u32 = r00001554 ^ r00001555;\n" : String).toByteArray.data.toList
theorem checked5419 : bytes5419=statementBytes 5462 (op5419.map lower) ∧ bytes5419.length=48 := by core033_kernel_decide
def op5420 : List WordIR.Op := [.bnot 5462]
def bytes5420 : Bytes := ("    let r00001557: u32 = !r00001556;\n" : String).toByteArray.data.toList
theorem checked5420 : bytes5420=statementBytes 5463 (op5420.map lower) ∧ bytes5420.length=37 := by core033_kernel_decide
def op5421 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5421 : Bytes := ("    let r00001558: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5421 : bytes5421=statementBytes 5464 (op5421.map lower) ∧ bytes5421.length=41 := by core033_kernel_decide
def op5422 : List WordIR.Op := [.badd 5463 5464]
def bytes5422 : Bytes := ("    let r00001559: u32 = r00001557.wrapping_add(r00001558);\n" : String).toByteArray.data.toList
theorem checked5422 : bytes5422=statementBytes 5465 (op5422.map lower) ∧ bytes5422.length=60 := by core033_kernel_decide
def op5423 : List WordIR.Op := [.bnot 5465]
def bytes5423 : Bytes := ("    let r0000155a: u32 = !r00001559;\n" : String).toByteArray.data.toList
theorem checked5423 : bytes5423=statementBytes 5466 (op5423.map lower) ∧ bytes5423.length=37 := by core033_kernel_decide
def op5424 : List WordIR.Op := [.band 5466 1478]
def bytes5424 : Bytes := ("    let r0000155b: u32 = r0000155a & r000005c6;\n" : String).toByteArray.data.toList
theorem checked5424 : bytes5424=statementBytes 5467 (op5424.map lower) ∧ bytes5424.length=48 := by core033_kernel_decide
def op5425 : List WordIR.Op := [.bxor 5441 5467]
def bytes5425 : Bytes := ("    let r0000155c: u32 = r00001541 ^ r0000155b;\n" : String).toByteArray.data.toList
theorem checked5425 : bytes5425=statementBytes 5468 (op5425.map lower) ∧ bytes5425.length=48 := by core033_kernel_decide
def op5426 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5426 : Bytes := ("    let r0000155d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5426 : bytes5426=statementBytes 5469 (op5426.map lower) ∧ bytes5426.length=41 := by core033_kernel_decide
def op5427 : List WordIR.Op := [.bxor 96 5469]
def bytes5427 : Bytes := ("    let r0000155e: u32 = r00000060 ^ r0000155d;\n" : String).toByteArray.data.toList
theorem checked5427 : bytes5427=statementBytes 5470 (op5427.map lower) ∧ bytes5427.length=48 := by core033_kernel_decide
def op5428 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5428 : Bytes := ("    let r0000155f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5428 : bytes5428=statementBytes 5471 (op5428.map lower) ∧ bytes5428.length=41 := by core033_kernel_decide
def op5429 : List WordIR.Op := [.bnot 5471]
def bytes5429 : Bytes := ("    let r00001560: u32 = !r0000155f;\n" : String).toByteArray.data.toList
theorem checked5429 : bytes5429=statementBytes 5472 (op5429.map lower) ∧ bytes5429.length=37 := by core033_kernel_decide
def op5430 : List WordIR.Op := [.band 5470 5472]
def bytes5430 : Bytes := ("    let r00001561: u32 = r0000155e & r00001560;\n" : String).toByteArray.data.toList
theorem checked5430 : bytes5430=statementBytes 5473 (op5430.map lower) ∧ bytes5430.length=48 := by core033_kernel_decide
def op5431 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5431 : Bytes := ("    let r00001562: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5431 : bytes5431=statementBytes 5474 (op5431.map lower) ∧ bytes5431.length=41 := by core033_kernel_decide
def op5432 : List WordIR.Op := [.bxor 96 5474]
def bytes5432 : Bytes := ("    let r00001563: u32 = r00000060 ^ r00001562;\n" : String).toByteArray.data.toList
theorem checked5432 : bytes5432=statementBytes 5475 (op5432.map lower) ∧ bytes5432.length=48 := by core033_kernel_decide
def op5433 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5433 : Bytes := ("    let r00001564: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5433 : bytes5433=statementBytes 5476 (op5433.map lower) ∧ bytes5433.length=41 := by core033_kernel_decide
def op5434 : List WordIR.Op := [.bnot 5476]
def bytes5434 : Bytes := ("    let r00001565: u32 = !r00001564;\n" : String).toByteArray.data.toList
theorem checked5434 : bytes5434=statementBytes 5477 (op5434.map lower) ∧ bytes5434.length=37 := by core033_kernel_decide
def op5435 : List WordIR.Op := [.bxor 5475 5477]
def bytes5435 : Bytes := ("    let r00001566: u32 = r00001563 ^ r00001565;\n" : String).toByteArray.data.toList
theorem checked5435 : bytes5435=statementBytes 5478 (op5435.map lower) ∧ bytes5435.length=48 := by core033_kernel_decide
def op5436 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5436 : Bytes := ("    let r00001567: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5436 : bytes5436=statementBytes 5479 (op5436.map lower) ∧ bytes5436.length=41 := by core033_kernel_decide
def op5437 : List WordIR.Op := [.bxor 96 5479]
def bytes5437 : Bytes := ("    let r00001568: u32 = r00000060 ^ r00001567;\n" : String).toByteArray.data.toList
theorem checked5437 : bytes5437=statementBytes 5480 (op5437.map lower) ∧ bytes5437.length=48 := by core033_kernel_decide
def op5438 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5438 : Bytes := ("    let r00001569: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5438 : bytes5438=statementBytes 5481 (op5438.map lower) ∧ bytes5438.length=41 := by core033_kernel_decide
def op5439 : List WordIR.Op := [.bnot 5481]
def bytes5439 : Bytes := ("    let r0000156a: u32 = !r00001569;\n" : String).toByteArray.data.toList
theorem checked5439 : bytes5439=statementBytes 5482 (op5439.map lower) ∧ bytes5439.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5376,op5377,op5378,op5379,op5380,op5381,op5382,op5383,op5384,op5385,op5386,op5387,op5388,op5389,op5390,op5391,op5392,op5393,op5394,op5395,op5396,op5397,op5398,op5399,op5400,op5401,op5402,op5403,op5404,op5405,op5406,op5407,op5408,op5409,op5410,op5411,op5412,op5413,op5414,op5415,op5416,op5417,op5418,op5419,op5420,op5421,op5422,op5423,op5424,op5425,op5426,op5427,op5428,op5429,op5430,op5431,op5432,op5433,op5434,op5435,op5436,op5437,op5438,op5439]
def chunks : List Bytes := [bytes5376,bytes5377,bytes5378,bytes5379,bytes5380,bytes5381,bytes5382,bytes5383,bytes5384,bytes5385,bytes5386,bytes5387,bytes5388,bytes5389,bytes5390,bytes5391,bytes5392,bytes5393,bytes5394,bytes5395,bytes5396,bytes5397,bytes5398,bytes5399,bytes5400,bytes5401,bytes5402,bytes5403,bytes5404,bytes5405,bytes5406,bytes5407,bytes5408,bytes5409,bytes5410,bytes5411,bytes5412,bytes5413,bytes5414,bytes5415,bytes5416,bytes5417,bytes5418,bytes5419,bytes5420,bytes5421,bytes5422,bytes5423,bytes5424,bytes5425,bytes5426,bytes5427,bytes5428,bytes5429,bytes5430,bytes5431,bytes5432,bytes5433,bytes5434,bytes5435,bytes5436,bytes5437,bytes5438,bytes5439]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5419 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5376.1 (.cons _ _ _ _ _ checked5377.1 (.cons _ _ _ _ _ checked5378.1 (.cons _ _ _ _ _ checked5379.1 (.cons _ _ _ _ _ checked5380.1 (.cons _ _ _ _ _ checked5381.1 (.cons _ _ _ _ _ checked5382.1 (.cons _ _ _ _ _ checked5383.1 (.cons _ _ _ _ _ checked5384.1 (.cons _ _ _ _ _ checked5385.1 (.cons _ _ _ _ _ checked5386.1 (.cons _ _ _ _ _ checked5387.1 (.cons _ _ _ _ _ checked5388.1 (.cons _ _ _ _ _ checked5389.1 (.cons _ _ _ _ _ checked5390.1 (.cons _ _ _ _ _ checked5391.1 (.cons _ _ _ _ _ checked5392.1 (.cons _ _ _ _ _ checked5393.1 (.cons _ _ _ _ _ checked5394.1 (.cons _ _ _ _ _ checked5395.1 (.cons _ _ _ _ _ checked5396.1 (.cons _ _ _ _ _ checked5397.1 (.cons _ _ _ _ _ checked5398.1 (.cons _ _ _ _ _ checked5399.1 (.cons _ _ _ _ _ checked5400.1 (.cons _ _ _ _ _ checked5401.1 (.cons _ _ _ _ _ checked5402.1 (.cons _ _ _ _ _ checked5403.1 (.cons _ _ _ _ _ checked5404.1 (.cons _ _ _ _ _ checked5405.1 (.cons _ _ _ _ _ checked5406.1 (.cons _ _ _ _ _ checked5407.1 (.cons _ _ _ _ _ checked5408.1 (.cons _ _ _ _ _ checked5409.1 (.cons _ _ _ _ _ checked5410.1 (.cons _ _ _ _ _ checked5411.1 (.cons _ _ _ _ _ checked5412.1 (.cons _ _ _ _ _ checked5413.1 (.cons _ _ _ _ _ checked5414.1 (.cons _ _ _ _ _ checked5415.1 (.cons _ _ _ _ _ checked5416.1 (.cons _ _ _ _ _ checked5417.1 (.cons _ _ _ _ _ checked5418.1 (.cons _ _ _ _ _ checked5419.1 (.cons _ _ _ _ _ checked5420.1 (.cons _ _ _ _ _ checked5421.1 (.cons _ _ _ _ _ checked5422.1 (.cons _ _ _ _ _ checked5423.1 (.cons _ _ _ _ _ checked5424.1 (.cons _ _ _ _ _ checked5425.1 (.cons _ _ _ _ _ checked5426.1 (.cons _ _ _ _ _ checked5427.1 (.cons _ _ _ _ _ checked5428.1 (.cons _ _ _ _ _ checked5429.1 (.cons _ _ _ _ _ checked5430.1 (.cons _ _ _ _ _ checked5431.1 (.cons _ _ _ _ _ checked5432.1 (.cons _ _ _ _ _ checked5433.1 (.cons _ _ _ _ _ checked5434.1 (.cons _ _ _ _ _ checked5435.1 (.cons _ _ _ _ _ checked5436.1 (.cons _ _ _ _ _ checked5437.1 (.cons _ _ _ _ _ checked5438.1 (.cons _ _ _ _ _ checked5439.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5419 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5376.2,checked5377.2,checked5378.2,checked5379.2,checked5380.2,checked5381.2,checked5382.2,checked5383.2,checked5384.2,checked5385.2,checked5386.2,checked5387.2,checked5388.2,checked5389.2,checked5390.2,checked5391.2,checked5392.2,checked5393.2,checked5394.2,checked5395.2,checked5396.2,checked5397.2,checked5398.2,checked5399.2,checked5400.2,checked5401.2,checked5402.2,checked5403.2,checked5404.2,checked5405.2,checked5406.2,checked5407.2,checked5408.2,checked5409.2,checked5410.2,checked5411.2,checked5412.2,checked5413.2,checked5414.2,checked5415.2,checked5416.2,checked5417.2,checked5418.2,checked5419.2,checked5420.2,checked5421.2,checked5422.2,checked5423.2,checked5424.2,checked5425.2,checked5426.2,checked5427.2,checked5428.2,checked5429.2,checked5430.2,checked5431.2,checked5432.2,checked5433.2,checked5434.2,checked5435.2,checked5436.2,checked5437.2,checked5438.2,checked5439.2]
  decide
end ArtifactPathRoundDispatchGroup84
