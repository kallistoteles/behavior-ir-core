import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup85
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5440 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes5440 : Bytes := ("    let r000015a0: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked5440 : bytes5440=statementBytes 5536 (op5440.map lower) ∧ bytes5440.length=41 := by core033_kernel_decide
def op5441 : List WordIR.Op := [.band 5535 5536]
def bytes5441 : Bytes := ("    let r000015a1: u32 = r0000159f & r000015a0;\n" : String).toByteArray.data.toList
theorem checked5441 : bytes5441=statementBytes 5537 (op5441.map lower) ∧ bytes5441.length=48 := by core033_kernel_decide
def op5442 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5442 : Bytes := ("    let r000015a2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5442 : bytes5442=statementBytes 5538 (op5442.map lower) ∧ bytes5442.length=41 := by core033_kernel_decide
def op5443 : List WordIR.Op := [.bxor 616 5538]
def bytes5443 : Bytes := ("    let r000015a3: u32 = r00000268 ^ r000015a2;\n" : String).toByteArray.data.toList
theorem checked5443 : bytes5443=statementBytes 5539 (op5443.map lower) ∧ bytes5443.length=48 := by core033_kernel_decide
def op5444 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5444 : Bytes := ("    let r000015a4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5444 : bytes5444=statementBytes 5540 (op5444.map lower) ∧ bytes5444.length=41 := by core033_kernel_decide
def op5445 : List WordIR.Op := [.bnot 5540]
def bytes5445 : Bytes := ("    let r000015a5: u32 = !r000015a4;\n" : String).toByteArray.data.toList
theorem checked5445 : bytes5445=statementBytes 5541 (op5445.map lower) ∧ bytes5445.length=37 := by core033_kernel_decide
def op5446 : List WordIR.Op := [.band 5539 5541]
def bytes5446 : Bytes := ("    let r000015a6: u32 = r000015a3 & r000015a5;\n" : String).toByteArray.data.toList
theorem checked5446 : bytes5446=statementBytes 5542 (op5446.map lower) ∧ bytes5446.length=48 := by core033_kernel_decide
def op5447 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5447 : Bytes := ("    let r000015a7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5447 : bytes5447=statementBytes 5543 (op5447.map lower) ∧ bytes5447.length=41 := by core033_kernel_decide
def op5448 : List WordIR.Op := [.bxor 616 5543]
def bytes5448 : Bytes := ("    let r000015a8: u32 = r00000268 ^ r000015a7;\n" : String).toByteArray.data.toList
theorem checked5448 : bytes5448=statementBytes 5544 (op5448.map lower) ∧ bytes5448.length=48 := by core033_kernel_decide
def op5449 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5449 : Bytes := ("    let r000015a9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5449 : bytes5449=statementBytes 5545 (op5449.map lower) ∧ bytes5449.length=41 := by core033_kernel_decide
def op5450 : List WordIR.Op := [.bnot 5545]
def bytes5450 : Bytes := ("    let r000015aa: u32 = !r000015a9;\n" : String).toByteArray.data.toList
theorem checked5450 : bytes5450=statementBytes 5546 (op5450.map lower) ∧ bytes5450.length=37 := by core033_kernel_decide
def op5451 : List WordIR.Op := [.bxor 5544 5546]
def bytes5451 : Bytes := ("    let r000015ab: u32 = r000015a8 ^ r000015aa;\n" : String).toByteArray.data.toList
theorem checked5451 : bytes5451=statementBytes 5547 (op5451.map lower) ∧ bytes5451.length=48 := by core033_kernel_decide
def op5452 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5452 : Bytes := ("    let r000015ac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5452 : bytes5452=statementBytes 5548 (op5452.map lower) ∧ bytes5452.length=41 := by core033_kernel_decide
def op5453 : List WordIR.Op := [.bxor 616 5548]
def bytes5453 : Bytes := ("    let r000015ad: u32 = r00000268 ^ r000015ac;\n" : String).toByteArray.data.toList
theorem checked5453 : bytes5453=statementBytes 5549 (op5453.map lower) ∧ bytes5453.length=48 := by core033_kernel_decide
def op5454 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5454 : Bytes := ("    let r000015ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5454 : bytes5454=statementBytes 5550 (op5454.map lower) ∧ bytes5454.length=41 := by core033_kernel_decide
def op5455 : List WordIR.Op := [.bnot 5550]
def bytes5455 : Bytes := ("    let r000015af: u32 = !r000015ae;\n" : String).toByteArray.data.toList
theorem checked5455 : bytes5455=statementBytes 5551 (op5455.map lower) ∧ bytes5455.length=37 := by core033_kernel_decide
def op5456 : List WordIR.Op := [.badd 5549 5551]
def bytes5456 : Bytes := ("    let r000015b0: u32 = r000015ad.wrapping_add(r000015af);\n" : String).toByteArray.data.toList
theorem checked5456 : bytes5456=statementBytes 5552 (op5456.map lower) ∧ bytes5456.length=60 := by core033_kernel_decide
def op5457 : List WordIR.Op := [.bnot 5552]
def bytes5457 : Bytes := ("    let r000015b1: u32 = !r000015b0;\n" : String).toByteArray.data.toList
theorem checked5457 : bytes5457=statementBytes 5553 (op5457.map lower) ∧ bytes5457.length=37 := by core033_kernel_decide
def op5458 : List WordIR.Op := [.band 5547 5553]
def bytes5458 : Bytes := ("    let r000015b2: u32 = r000015ab & r000015b1;\n" : String).toByteArray.data.toList
theorem checked5458 : bytes5458=statementBytes 5554 (op5458.map lower) ∧ bytes5458.length=48 := by core033_kernel_decide
def op5459 : List WordIR.Op := [.bxor 5542 5554]
def bytes5459 : Bytes := ("    let r000015b3: u32 = r000015a6 ^ r000015b2;\n" : String).toByteArray.data.toList
theorem checked5459 : bytes5459=statementBytes 5555 (op5459.map lower) ∧ bytes5459.length=48 := by core033_kernel_decide
def op5460 : List WordIR.Op := [.shr 5555 31]
def bytes5460 : Bytes := ("    let r000015b4: u32 = r000015b3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5460 : bytes5460=statementBytes 5556 (op5460.map lower) ∧ bytes5460.length=54 := by core033_kernel_decide
def op5461 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5461 : Bytes := ("    let r000015b5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5461 : bytes5461=statementBytes 5557 (op5461.map lower) ∧ bytes5461.length=41 := by core033_kernel_decide
def op5462 : List WordIR.Op := [.bxor 5556 5557]
def bytes5462 : Bytes := ("    let r000015b6: u32 = r000015b4 ^ r000015b5;\n" : String).toByteArray.data.toList
theorem checked5462 : bytes5462=statementBytes 5558 (op5462.map lower) ∧ bytes5462.length=48 := by core033_kernel_decide
def op5463 : List WordIR.Op := [.bnot 5558]
def bytes5463 : Bytes := ("    let r000015b7: u32 = !r000015b6;\n" : String).toByteArray.data.toList
theorem checked5463 : bytes5463=statementBytes 5559 (op5463.map lower) ∧ bytes5463.length=37 := by core033_kernel_decide
def op5464 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5464 : Bytes := ("    let r000015b8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5464 : bytes5464=statementBytes 5560 (op5464.map lower) ∧ bytes5464.length=41 := by core033_kernel_decide
def op5465 : List WordIR.Op := [.badd 5559 5560]
def bytes5465 : Bytes := ("    let r000015b9: u32 = r000015b7.wrapping_add(r000015b8);\n" : String).toByteArray.data.toList
theorem checked5465 : bytes5465=statementBytes 5561 (op5465.map lower) ∧ bytes5465.length=60 := by core033_kernel_decide
def op5466 : List WordIR.Op := [.bnot 5561]
def bytes5466 : Bytes := ("    let r000015ba: u32 = !r000015b9;\n" : String).toByteArray.data.toList
theorem checked5466 : bytes5466=statementBytes 5562 (op5466.map lower) ∧ bytes5466.length=37 := by core033_kernel_decide
def op5467 : List WordIR.Op := [.band 5562 1974]
def bytes5467 : Bytes := ("    let r000015bb: u32 = r000015ba & r000007b6;\n" : String).toByteArray.data.toList
theorem checked5467 : bytes5467=statementBytes 5563 (op5467.map lower) ∧ bytes5467.length=48 := by core033_kernel_decide
def op5468 : List WordIR.Op := [.bxor 5537 5563]
def bytes5468 : Bytes := ("    let r000015bc: u32 = r000015a1 ^ r000015bb;\n" : String).toByteArray.data.toList
theorem checked5468 : bytes5468=statementBytes 5564 (op5468.map lower) ∧ bytes5468.length=48 := by core033_kernel_decide
def op5469 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5469 : Bytes := ("    let r000015bd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5469 : bytes5469=statementBytes 5565 (op5469.map lower) ∧ bytes5469.length=41 := by core033_kernel_decide
def op5470 : List WordIR.Op := [.bxor 616 5565]
def bytes5470 : Bytes := ("    let r000015be: u32 = r00000268 ^ r000015bd;\n" : String).toByteArray.data.toList
theorem checked5470 : bytes5470=statementBytes 5566 (op5470.map lower) ∧ bytes5470.length=48 := by core033_kernel_decide
def op5471 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5471 : Bytes := ("    let r000015bf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5471 : bytes5471=statementBytes 5567 (op5471.map lower) ∧ bytes5471.length=41 := by core033_kernel_decide
def op5472 : List WordIR.Op := [.bnot 5567]
def bytes5472 : Bytes := ("    let r000015c0: u32 = !r000015bf;\n" : String).toByteArray.data.toList
theorem checked5472 : bytes5472=statementBytes 5568 (op5472.map lower) ∧ bytes5472.length=37 := by core033_kernel_decide
def op5473 : List WordIR.Op := [.band 5566 5568]
def bytes5473 : Bytes := ("    let r000015c1: u32 = r000015be & r000015c0;\n" : String).toByteArray.data.toList
theorem checked5473 : bytes5473=statementBytes 5569 (op5473.map lower) ∧ bytes5473.length=48 := by core033_kernel_decide
def op5474 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5474 : Bytes := ("    let r000015c2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5474 : bytes5474=statementBytes 5570 (op5474.map lower) ∧ bytes5474.length=41 := by core033_kernel_decide
def op5475 : List WordIR.Op := [.bxor 616 5570]
def bytes5475 : Bytes := ("    let r000015c3: u32 = r00000268 ^ r000015c2;\n" : String).toByteArray.data.toList
theorem checked5475 : bytes5475=statementBytes 5571 (op5475.map lower) ∧ bytes5475.length=48 := by core033_kernel_decide
def op5476 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5476 : Bytes := ("    let r000015c4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5476 : bytes5476=statementBytes 5572 (op5476.map lower) ∧ bytes5476.length=41 := by core033_kernel_decide
def op5477 : List WordIR.Op := [.bnot 5572]
def bytes5477 : Bytes := ("    let r000015c5: u32 = !r000015c4;\n" : String).toByteArray.data.toList
theorem checked5477 : bytes5477=statementBytes 5573 (op5477.map lower) ∧ bytes5477.length=37 := by core033_kernel_decide
def op5478 : List WordIR.Op := [.bxor 5571 5573]
def bytes5478 : Bytes := ("    let r000015c6: u32 = r000015c3 ^ r000015c5;\n" : String).toByteArray.data.toList
theorem checked5478 : bytes5478=statementBytes 5574 (op5478.map lower) ∧ bytes5478.length=48 := by core033_kernel_decide
def op5479 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5479 : Bytes := ("    let r000015c7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5479 : bytes5479=statementBytes 5575 (op5479.map lower) ∧ bytes5479.length=41 := by core033_kernel_decide
def op5480 : List WordIR.Op := [.bxor 616 5575]
def bytes5480 : Bytes := ("    let r000015c8: u32 = r00000268 ^ r000015c7;\n" : String).toByteArray.data.toList
theorem checked5480 : bytes5480=statementBytes 5576 (op5480.map lower) ∧ bytes5480.length=48 := by core033_kernel_decide
def op5481 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5481 : Bytes := ("    let r000015c9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5481 : bytes5481=statementBytes 5577 (op5481.map lower) ∧ bytes5481.length=41 := by core033_kernel_decide
def op5482 : List WordIR.Op := [.bnot 5577]
def bytes5482 : Bytes := ("    let r000015ca: u32 = !r000015c9;\n" : String).toByteArray.data.toList
theorem checked5482 : bytes5482=statementBytes 5578 (op5482.map lower) ∧ bytes5482.length=37 := by core033_kernel_decide
def op5483 : List WordIR.Op := [.badd 5576 5578]
def bytes5483 : Bytes := ("    let r000015cb: u32 = r000015c8.wrapping_add(r000015ca);\n" : String).toByteArray.data.toList
theorem checked5483 : bytes5483=statementBytes 5579 (op5483.map lower) ∧ bytes5483.length=60 := by core033_kernel_decide
def op5484 : List WordIR.Op := [.bnot 5579]
def bytes5484 : Bytes := ("    let r000015cc: u32 = !r000015cb;\n" : String).toByteArray.data.toList
theorem checked5484 : bytes5484=statementBytes 5580 (op5484.map lower) ∧ bytes5484.length=37 := by core033_kernel_decide
def op5485 : List WordIR.Op := [.band 5574 5580]
def bytes5485 : Bytes := ("    let r000015cd: u32 = r000015c6 & r000015cc;\n" : String).toByteArray.data.toList
theorem checked5485 : bytes5485=statementBytes 5581 (op5485.map lower) ∧ bytes5485.length=48 := by core033_kernel_decide
def op5486 : List WordIR.Op := [.bxor 5569 5581]
def bytes5486 : Bytes := ("    let r000015ce: u32 = r000015c1 ^ r000015cd;\n" : String).toByteArray.data.toList
theorem checked5486 : bytes5486=statementBytes 5582 (op5486.map lower) ∧ bytes5486.length=48 := by core033_kernel_decide
def op5487 : List WordIR.Op := [.shr 5582 31]
def bytes5487 : Bytes := ("    let r000015cf: u32 = r000015ce >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5487 : bytes5487=statementBytes 5583 (op5487.map lower) ∧ bytes5487.length=54 := by core033_kernel_decide
def op5488 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5488 : Bytes := ("    let r000015d0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5488 : bytes5488=statementBytes 5584 (op5488.map lower) ∧ bytes5488.length=41 := by core033_kernel_decide
def op5489 : List WordIR.Op := [.bxor 5583 5584]
def bytes5489 : Bytes := ("    let r000015d1: u32 = r000015cf ^ r000015d0;\n" : String).toByteArray.data.toList
theorem checked5489 : bytes5489=statementBytes 5585 (op5489.map lower) ∧ bytes5489.length=48 := by core033_kernel_decide
def op5490 : List WordIR.Op := [.bnot 5585]
def bytes5490 : Bytes := ("    let r000015d2: u32 = !r000015d1;\n" : String).toByteArray.data.toList
theorem checked5490 : bytes5490=statementBytes 5586 (op5490.map lower) ∧ bytes5490.length=37 := by core033_kernel_decide
def op5491 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5491 : Bytes := ("    let r000015d3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5491 : bytes5491=statementBytes 5587 (op5491.map lower) ∧ bytes5491.length=41 := by core033_kernel_decide
def op5492 : List WordIR.Op := [.badd 5586 5587]
def bytes5492 : Bytes := ("    let r000015d4: u32 = r000015d2.wrapping_add(r000015d3);\n" : String).toByteArray.data.toList
theorem checked5492 : bytes5492=statementBytes 5588 (op5492.map lower) ∧ bytes5492.length=60 := by core033_kernel_decide
def op5493 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5493 : Bytes := ("    let r000015d5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5493 : bytes5493=statementBytes 5589 (op5493.map lower) ∧ bytes5493.length=41 := by core033_kernel_decide
def op5494 : List WordIR.Op := [.band 5588 5589]
def bytes5494 : Bytes := ("    let r000015d6: u32 = r000015d4 & r000015d5;\n" : String).toByteArray.data.toList
theorem checked5494 : bytes5494=statementBytes 5590 (op5494.map lower) ∧ bytes5494.length=48 := by core033_kernel_decide
def op5495 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5495 : Bytes := ("    let r000015d7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5495 : bytes5495=statementBytes 5591 (op5495.map lower) ∧ bytes5495.length=41 := by core033_kernel_decide
def op5496 : List WordIR.Op := [.bxor 616 5591]
def bytes5496 : Bytes := ("    let r000015d8: u32 = r00000268 ^ r000015d7;\n" : String).toByteArray.data.toList
theorem checked5496 : bytes5496=statementBytes 5592 (op5496.map lower) ∧ bytes5496.length=48 := by core033_kernel_decide
def op5497 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5497 : Bytes := ("    let r000015d9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5497 : bytes5497=statementBytes 5593 (op5497.map lower) ∧ bytes5497.length=41 := by core033_kernel_decide
def op5498 : List WordIR.Op := [.bnot 5593]
def bytes5498 : Bytes := ("    let r000015da: u32 = !r000015d9;\n" : String).toByteArray.data.toList
theorem checked5498 : bytes5498=statementBytes 5594 (op5498.map lower) ∧ bytes5498.length=37 := by core033_kernel_decide
def op5499 : List WordIR.Op := [.band 5592 5594]
def bytes5499 : Bytes := ("    let r000015db: u32 = r000015d8 & r000015da;\n" : String).toByteArray.data.toList
theorem checked5499 : bytes5499=statementBytes 5595 (op5499.map lower) ∧ bytes5499.length=48 := by core033_kernel_decide
def op5500 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5500 : Bytes := ("    let r000015dc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5500 : bytes5500=statementBytes 5596 (op5500.map lower) ∧ bytes5500.length=41 := by core033_kernel_decide
def op5501 : List WordIR.Op := [.bxor 616 5596]
def bytes5501 : Bytes := ("    let r000015dd: u32 = r00000268 ^ r000015dc;\n" : String).toByteArray.data.toList
theorem checked5501 : bytes5501=statementBytes 5597 (op5501.map lower) ∧ bytes5501.length=48 := by core033_kernel_decide
def op5502 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5502 : Bytes := ("    let r000015de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5502 : bytes5502=statementBytes 5598 (op5502.map lower) ∧ bytes5502.length=41 := by core033_kernel_decide
def op5503 : List WordIR.Op := [.bnot 5598]
def bytes5503 : Bytes := ("    let r000015df: u32 = !r000015de;\n" : String).toByteArray.data.toList
theorem checked5503 : bytes5503=statementBytes 5599 (op5503.map lower) ∧ bytes5503.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5440,op5441,op5442,op5443,op5444,op5445,op5446,op5447,op5448,op5449,op5450,op5451,op5452,op5453,op5454,op5455,op5456,op5457,op5458,op5459,op5460,op5461,op5462,op5463,op5464,op5465,op5466,op5467,op5468,op5469,op5470,op5471,op5472,op5473,op5474,op5475,op5476,op5477,op5478,op5479,op5480,op5481,op5482,op5483,op5484,op5485,op5486,op5487,op5488,op5489,op5490,op5491,op5492,op5493,op5494,op5495,op5496,op5497,op5498,op5499,op5500,op5501,op5502,op5503]
def chunks : List Bytes := [bytes5440,bytes5441,bytes5442,bytes5443,bytes5444,bytes5445,bytes5446,bytes5447,bytes5448,bytes5449,bytes5450,bytes5451,bytes5452,bytes5453,bytes5454,bytes5455,bytes5456,bytes5457,bytes5458,bytes5459,bytes5460,bytes5461,bytes5462,bytes5463,bytes5464,bytes5465,bytes5466,bytes5467,bytes5468,bytes5469,bytes5470,bytes5471,bytes5472,bytes5473,bytes5474,bytes5475,bytes5476,bytes5477,bytes5478,bytes5479,bytes5480,bytes5481,bytes5482,bytes5483,bytes5484,bytes5485,bytes5486,bytes5487,bytes5488,bytes5489,bytes5490,bytes5491,bytes5492,bytes5493,bytes5494,bytes5495,bytes5496,bytes5497,bytes5498,bytes5499,bytes5500,bytes5501,bytes5502,bytes5503]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5536 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5440.1 (.cons _ _ _ _ _ checked5441.1 (.cons _ _ _ _ _ checked5442.1 (.cons _ _ _ _ _ checked5443.1 (.cons _ _ _ _ _ checked5444.1 (.cons _ _ _ _ _ checked5445.1 (.cons _ _ _ _ _ checked5446.1 (.cons _ _ _ _ _ checked5447.1 (.cons _ _ _ _ _ checked5448.1 (.cons _ _ _ _ _ checked5449.1 (.cons _ _ _ _ _ checked5450.1 (.cons _ _ _ _ _ checked5451.1 (.cons _ _ _ _ _ checked5452.1 (.cons _ _ _ _ _ checked5453.1 (.cons _ _ _ _ _ checked5454.1 (.cons _ _ _ _ _ checked5455.1 (.cons _ _ _ _ _ checked5456.1 (.cons _ _ _ _ _ checked5457.1 (.cons _ _ _ _ _ checked5458.1 (.cons _ _ _ _ _ checked5459.1 (.cons _ _ _ _ _ checked5460.1 (.cons _ _ _ _ _ checked5461.1 (.cons _ _ _ _ _ checked5462.1 (.cons _ _ _ _ _ checked5463.1 (.cons _ _ _ _ _ checked5464.1 (.cons _ _ _ _ _ checked5465.1 (.cons _ _ _ _ _ checked5466.1 (.cons _ _ _ _ _ checked5467.1 (.cons _ _ _ _ _ checked5468.1 (.cons _ _ _ _ _ checked5469.1 (.cons _ _ _ _ _ checked5470.1 (.cons _ _ _ _ _ checked5471.1 (.cons _ _ _ _ _ checked5472.1 (.cons _ _ _ _ _ checked5473.1 (.cons _ _ _ _ _ checked5474.1 (.cons _ _ _ _ _ checked5475.1 (.cons _ _ _ _ _ checked5476.1 (.cons _ _ _ _ _ checked5477.1 (.cons _ _ _ _ _ checked5478.1 (.cons _ _ _ _ _ checked5479.1 (.cons _ _ _ _ _ checked5480.1 (.cons _ _ _ _ _ checked5481.1 (.cons _ _ _ _ _ checked5482.1 (.cons _ _ _ _ _ checked5483.1 (.cons _ _ _ _ _ checked5484.1 (.cons _ _ _ _ _ checked5485.1 (.cons _ _ _ _ _ checked5486.1 (.cons _ _ _ _ _ checked5487.1 (.cons _ _ _ _ _ checked5488.1 (.cons _ _ _ _ _ checked5489.1 (.cons _ _ _ _ _ checked5490.1 (.cons _ _ _ _ _ checked5491.1 (.cons _ _ _ _ _ checked5492.1 (.cons _ _ _ _ _ checked5493.1 (.cons _ _ _ _ _ checked5494.1 (.cons _ _ _ _ _ checked5495.1 (.cons _ _ _ _ _ checked5496.1 (.cons _ _ _ _ _ checked5497.1 (.cons _ _ _ _ _ checked5498.1 (.cons _ _ _ _ _ checked5499.1 (.cons _ _ _ _ _ checked5500.1 (.cons _ _ _ _ _ checked5501.1 (.cons _ _ _ _ _ checked5502.1 (.cons _ _ _ _ _ checked5503.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5536 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2835 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5440.2,checked5441.2,checked5442.2,checked5443.2,checked5444.2,checked5445.2,checked5446.2,checked5447.2,checked5448.2,checked5449.2,checked5450.2,checked5451.2,checked5452.2,checked5453.2,checked5454.2,checked5455.2,checked5456.2,checked5457.2,checked5458.2,checked5459.2,checked5460.2,checked5461.2,checked5462.2,checked5463.2,checked5464.2,checked5465.2,checked5466.2,checked5467.2,checked5468.2,checked5469.2,checked5470.2,checked5471.2,checked5472.2,checked5473.2,checked5474.2,checked5475.2,checked5476.2,checked5477.2,checked5478.2,checked5479.2,checked5480.2,checked5481.2,checked5482.2,checked5483.2,checked5484.2,checked5485.2,checked5486.2,checked5487.2,checked5488.2,checked5489.2,checked5490.2,checked5491.2,checked5492.2,checked5493.2,checked5494.2,checked5495.2,checked5496.2,checked5497.2,checked5498.2,checked5499.2,checked5500.2,checked5501.2,checked5502.2,checked5503.2]
  decide
end ArtifactPairedPathRoundGroup85
