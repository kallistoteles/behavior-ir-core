import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup85
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5440 : List WordIR.Op := [.badd 5555 5557]
def bytes5440 : Bytes := ("    let r000015b6: u32 = r000015b3.wrapping_add(r000015b5);\n" : String).toByteArray.data.toList
theorem checked5440 : bytes5440=statementBytes 5558 (op5440.map lower) ∧ bytes5440.length=60 := by core033_kernel_decide
def op5441 : List WordIR.Op := [.bnot 5558]
def bytes5441 : Bytes := ("    let r000015b7: u32 = !r000015b6;\n" : String).toByteArray.data.toList
theorem checked5441 : bytes5441=statementBytes 5559 (op5441.map lower) ∧ bytes5441.length=37 := by core033_kernel_decide
def op5442 : List WordIR.Op := [.band 5553 5559]
def bytes5442 : Bytes := ("    let r000015b8: u32 = r000015b1 & r000015b7;\n" : String).toByteArray.data.toList
theorem checked5442 : bytes5442=statementBytes 5560 (op5442.map lower) ∧ bytes5442.length=48 := by core033_kernel_decide
def op5443 : List WordIR.Op := [.bxor 5548 5560]
def bytes5443 : Bytes := ("    let r000015b9: u32 = r000015ac ^ r000015b8;\n" : String).toByteArray.data.toList
theorem checked5443 : bytes5443=statementBytes 5561 (op5443.map lower) ∧ bytes5443.length=48 := by core033_kernel_decide
def op5444 : List WordIR.Op := [.shr 5561 31]
def bytes5444 : Bytes := ("    let r000015ba: u32 = r000015b9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5444 : bytes5444=statementBytes 5562 (op5444.map lower) ∧ bytes5444.length=54 := by core033_kernel_decide
def op5445 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5445 : Bytes := ("    let r000015bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5445 : bytes5445=statementBytes 5563 (op5445.map lower) ∧ bytes5445.length=41 := by core033_kernel_decide
def op5446 : List WordIR.Op := [.bxor 5562 5563]
def bytes5446 : Bytes := ("    let r000015bc: u32 = r000015ba ^ r000015bb;\n" : String).toByteArray.data.toList
theorem checked5446 : bytes5446=statementBytes 5564 (op5446.map lower) ∧ bytes5446.length=48 := by core033_kernel_decide
def op5447 : List WordIR.Op := [.bnot 5564]
def bytes5447 : Bytes := ("    let r000015bd: u32 = !r000015bc;\n" : String).toByteArray.data.toList
theorem checked5447 : bytes5447=statementBytes 5565 (op5447.map lower) ∧ bytes5447.length=37 := by core033_kernel_decide
def op5448 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5448 : Bytes := ("    let r000015be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5448 : bytes5448=statementBytes 5566 (op5448.map lower) ∧ bytes5448.length=41 := by core033_kernel_decide
def op5449 : List WordIR.Op := [.badd 5565 5566]
def bytes5449 : Bytes := ("    let r000015bf: u32 = r000015bd.wrapping_add(r000015be);\n" : String).toByteArray.data.toList
theorem checked5449 : bytes5449=statementBytes 5567 (op5449.map lower) ∧ bytes5449.length=60 := by core033_kernel_decide
def op5450 : List WordIR.Op := [.bnot 5567]
def bytes5450 : Bytes := ("    let r000015c0: u32 = !r000015bf;\n" : String).toByteArray.data.toList
theorem checked5450 : bytes5450=statementBytes 5568 (op5450.map lower) ∧ bytes5450.length=37 := by core033_kernel_decide
def op5451 : List WordIR.Op := [.band 5568 2618]
def bytes5451 : Bytes := ("    let r000015c1: u32 = r000015c0 & r00000a3a;\n" : String).toByteArray.data.toList
theorem checked5451 : bytes5451=statementBytes 5569 (op5451.map lower) ∧ bytes5451.length=48 := by core033_kernel_decide
def op5452 : List WordIR.Op := [.bxor 5543 5569]
def bytes5452 : Bytes := ("    let r000015c2: u32 = r000015a7 ^ r000015c1;\n" : String).toByteArray.data.toList
theorem checked5452 : bytes5452=statementBytes 5570 (op5452.map lower) ∧ bytes5452.length=48 := by core033_kernel_decide
def op5453 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5453 : Bytes := ("    let r000015c3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5453 : bytes5453=statementBytes 5571 (op5453.map lower) ∧ bytes5453.length=41 := by core033_kernel_decide
def op5454 : List WordIR.Op := [.bxor 1299 5571]
def bytes5454 : Bytes := ("    let r000015c4: u32 = r00000513 ^ r000015c3;\n" : String).toByteArray.data.toList
theorem checked5454 : bytes5454=statementBytes 5572 (op5454.map lower) ∧ bytes5454.length=48 := by core033_kernel_decide
def op5455 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5455 : Bytes := ("    let r000015c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5455 : bytes5455=statementBytes 5573 (op5455.map lower) ∧ bytes5455.length=41 := by core033_kernel_decide
def op5456 : List WordIR.Op := [.bnot 5573]
def bytes5456 : Bytes := ("    let r000015c6: u32 = !r000015c5;\n" : String).toByteArray.data.toList
theorem checked5456 : bytes5456=statementBytes 5574 (op5456.map lower) ∧ bytes5456.length=37 := by core033_kernel_decide
def op5457 : List WordIR.Op := [.band 5572 5574]
def bytes5457 : Bytes := ("    let r000015c7: u32 = r000015c4 & r000015c6;\n" : String).toByteArray.data.toList
theorem checked5457 : bytes5457=statementBytes 5575 (op5457.map lower) ∧ bytes5457.length=48 := by core033_kernel_decide
def op5458 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5458 : Bytes := ("    let r000015c8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5458 : bytes5458=statementBytes 5576 (op5458.map lower) ∧ bytes5458.length=41 := by core033_kernel_decide
def op5459 : List WordIR.Op := [.bxor 1299 5576]
def bytes5459 : Bytes := ("    let r000015c9: u32 = r00000513 ^ r000015c8;\n" : String).toByteArray.data.toList
theorem checked5459 : bytes5459=statementBytes 5577 (op5459.map lower) ∧ bytes5459.length=48 := by core033_kernel_decide
def op5460 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5460 : Bytes := ("    let r000015ca: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5460 : bytes5460=statementBytes 5578 (op5460.map lower) ∧ bytes5460.length=41 := by core033_kernel_decide
def op5461 : List WordIR.Op := [.bnot 5578]
def bytes5461 : Bytes := ("    let r000015cb: u32 = !r000015ca;\n" : String).toByteArray.data.toList
theorem checked5461 : bytes5461=statementBytes 5579 (op5461.map lower) ∧ bytes5461.length=37 := by core033_kernel_decide
def op5462 : List WordIR.Op := [.bxor 5577 5579]
def bytes5462 : Bytes := ("    let r000015cc: u32 = r000015c9 ^ r000015cb;\n" : String).toByteArray.data.toList
theorem checked5462 : bytes5462=statementBytes 5580 (op5462.map lower) ∧ bytes5462.length=48 := by core033_kernel_decide
def op5463 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5463 : Bytes := ("    let r000015cd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5463 : bytes5463=statementBytes 5581 (op5463.map lower) ∧ bytes5463.length=41 := by core033_kernel_decide
def op5464 : List WordIR.Op := [.bxor 1299 5581]
def bytes5464 : Bytes := ("    let r000015ce: u32 = r00000513 ^ r000015cd;\n" : String).toByteArray.data.toList
theorem checked5464 : bytes5464=statementBytes 5582 (op5464.map lower) ∧ bytes5464.length=48 := by core033_kernel_decide
def op5465 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5465 : Bytes := ("    let r000015cf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5465 : bytes5465=statementBytes 5583 (op5465.map lower) ∧ bytes5465.length=41 := by core033_kernel_decide
def op5466 : List WordIR.Op := [.bnot 5583]
def bytes5466 : Bytes := ("    let r000015d0: u32 = !r000015cf;\n" : String).toByteArray.data.toList
theorem checked5466 : bytes5466=statementBytes 5584 (op5466.map lower) ∧ bytes5466.length=37 := by core033_kernel_decide
def op5467 : List WordIR.Op := [.badd 5582 5584]
def bytes5467 : Bytes := ("    let r000015d1: u32 = r000015ce.wrapping_add(r000015d0);\n" : String).toByteArray.data.toList
theorem checked5467 : bytes5467=statementBytes 5585 (op5467.map lower) ∧ bytes5467.length=60 := by core033_kernel_decide
def op5468 : List WordIR.Op := [.bnot 5585]
def bytes5468 : Bytes := ("    let r000015d2: u32 = !r000015d1;\n" : String).toByteArray.data.toList
theorem checked5468 : bytes5468=statementBytes 5586 (op5468.map lower) ∧ bytes5468.length=37 := by core033_kernel_decide
def op5469 : List WordIR.Op := [.band 5580 5586]
def bytes5469 : Bytes := ("    let r000015d3: u32 = r000015cc & r000015d2;\n" : String).toByteArray.data.toList
theorem checked5469 : bytes5469=statementBytes 5587 (op5469.map lower) ∧ bytes5469.length=48 := by core033_kernel_decide
def op5470 : List WordIR.Op := [.bxor 5575 5587]
def bytes5470 : Bytes := ("    let r000015d4: u32 = r000015c7 ^ r000015d3;\n" : String).toByteArray.data.toList
theorem checked5470 : bytes5470=statementBytes 5588 (op5470.map lower) ∧ bytes5470.length=48 := by core033_kernel_decide
def op5471 : List WordIR.Op := [.shr 5588 31]
def bytes5471 : Bytes := ("    let r000015d5: u32 = r000015d4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5471 : bytes5471=statementBytes 5589 (op5471.map lower) ∧ bytes5471.length=54 := by core033_kernel_decide
def op5472 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5472 : Bytes := ("    let r000015d6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5472 : bytes5472=statementBytes 5590 (op5472.map lower) ∧ bytes5472.length=41 := by core033_kernel_decide
def op5473 : List WordIR.Op := [.bxor 5589 5590]
def bytes5473 : Bytes := ("    let r000015d7: u32 = r000015d5 ^ r000015d6;\n" : String).toByteArray.data.toList
theorem checked5473 : bytes5473=statementBytes 5591 (op5473.map lower) ∧ bytes5473.length=48 := by core033_kernel_decide
def op5474 : List WordIR.Op := [.bnot 5591]
def bytes5474 : Bytes := ("    let r000015d8: u32 = !r000015d7;\n" : String).toByteArray.data.toList
theorem checked5474 : bytes5474=statementBytes 5592 (op5474.map lower) ∧ bytes5474.length=37 := by core033_kernel_decide
def op5475 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5475 : Bytes := ("    let r000015d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5475 : bytes5475=statementBytes 5593 (op5475.map lower) ∧ bytes5475.length=41 := by core033_kernel_decide
def op5476 : List WordIR.Op := [.badd 5592 5593]
def bytes5476 : Bytes := ("    let r000015da: u32 = r000015d8.wrapping_add(r000015d9);\n" : String).toByteArray.data.toList
theorem checked5476 : bytes5476=statementBytes 5594 (op5476.map lower) ∧ bytes5476.length=60 := by core033_kernel_decide
def op5477 : List WordIR.Op := [.band 5594 2813]
def bytes5477 : Bytes := ("    let r000015db: u32 = r000015da & r00000afd;\n" : String).toByteArray.data.toList
theorem checked5477 : bytes5477=statementBytes 5595 (op5477.map lower) ∧ bytes5477.length=48 := by core033_kernel_decide
def op5478 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5478 : Bytes := ("    let r000015dc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5478 : bytes5478=statementBytes 5596 (op5478.map lower) ∧ bytes5478.length=41 := by core033_kernel_decide
def op5479 : List WordIR.Op := [.bxor 1299 5596]
def bytes5479 : Bytes := ("    let r000015dd: u32 = r00000513 ^ r000015dc;\n" : String).toByteArray.data.toList
theorem checked5479 : bytes5479=statementBytes 5597 (op5479.map lower) ∧ bytes5479.length=48 := by core033_kernel_decide
def op5480 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5480 : Bytes := ("    let r000015de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5480 : bytes5480=statementBytes 5598 (op5480.map lower) ∧ bytes5480.length=41 := by core033_kernel_decide
def op5481 : List WordIR.Op := [.bnot 5598]
def bytes5481 : Bytes := ("    let r000015df: u32 = !r000015de;\n" : String).toByteArray.data.toList
theorem checked5481 : bytes5481=statementBytes 5599 (op5481.map lower) ∧ bytes5481.length=37 := by core033_kernel_decide
def op5482 : List WordIR.Op := [.band 5597 5599]
def bytes5482 : Bytes := ("    let r000015e0: u32 = r000015dd & r000015df;\n" : String).toByteArray.data.toList
theorem checked5482 : bytes5482=statementBytes 5600 (op5482.map lower) ∧ bytes5482.length=48 := by core033_kernel_decide
def op5483 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5483 : Bytes := ("    let r000015e1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5483 : bytes5483=statementBytes 5601 (op5483.map lower) ∧ bytes5483.length=41 := by core033_kernel_decide
def op5484 : List WordIR.Op := [.bxor 1299 5601]
def bytes5484 : Bytes := ("    let r000015e2: u32 = r00000513 ^ r000015e1;\n" : String).toByteArray.data.toList
theorem checked5484 : bytes5484=statementBytes 5602 (op5484.map lower) ∧ bytes5484.length=48 := by core033_kernel_decide
def op5485 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5485 : Bytes := ("    let r000015e3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5485 : bytes5485=statementBytes 5603 (op5485.map lower) ∧ bytes5485.length=41 := by core033_kernel_decide
def op5486 : List WordIR.Op := [.bnot 5603]
def bytes5486 : Bytes := ("    let r000015e4: u32 = !r000015e3;\n" : String).toByteArray.data.toList
theorem checked5486 : bytes5486=statementBytes 5604 (op5486.map lower) ∧ bytes5486.length=37 := by core033_kernel_decide
def op5487 : List WordIR.Op := [.bxor 5602 5604]
def bytes5487 : Bytes := ("    let r000015e5: u32 = r000015e2 ^ r000015e4;\n" : String).toByteArray.data.toList
theorem checked5487 : bytes5487=statementBytes 5605 (op5487.map lower) ∧ bytes5487.length=48 := by core033_kernel_decide
def op5488 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5488 : Bytes := ("    let r000015e6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5488 : bytes5488=statementBytes 5606 (op5488.map lower) ∧ bytes5488.length=41 := by core033_kernel_decide
def op5489 : List WordIR.Op := [.bxor 1299 5606]
def bytes5489 : Bytes := ("    let r000015e7: u32 = r00000513 ^ r000015e6;\n" : String).toByteArray.data.toList
theorem checked5489 : bytes5489=statementBytes 5607 (op5489.map lower) ∧ bytes5489.length=48 := by core033_kernel_decide
def op5490 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5490 : Bytes := ("    let r000015e8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5490 : bytes5490=statementBytes 5608 (op5490.map lower) ∧ bytes5490.length=41 := by core033_kernel_decide
def op5491 : List WordIR.Op := [.bnot 5608]
def bytes5491 : Bytes := ("    let r000015e9: u32 = !r000015e8;\n" : String).toByteArray.data.toList
theorem checked5491 : bytes5491=statementBytes 5609 (op5491.map lower) ∧ bytes5491.length=37 := by core033_kernel_decide
def op5492 : List WordIR.Op := [.badd 5607 5609]
def bytes5492 : Bytes := ("    let r000015ea: u32 = r000015e7.wrapping_add(r000015e9);\n" : String).toByteArray.data.toList
theorem checked5492 : bytes5492=statementBytes 5610 (op5492.map lower) ∧ bytes5492.length=60 := by core033_kernel_decide
def op5493 : List WordIR.Op := [.bnot 5610]
def bytes5493 : Bytes := ("    let r000015eb: u32 = !r000015ea;\n" : String).toByteArray.data.toList
theorem checked5493 : bytes5493=statementBytes 5611 (op5493.map lower) ∧ bytes5493.length=37 := by core033_kernel_decide
def op5494 : List WordIR.Op := [.band 5605 5611]
def bytes5494 : Bytes := ("    let r000015ec: u32 = r000015e5 & r000015eb;\n" : String).toByteArray.data.toList
theorem checked5494 : bytes5494=statementBytes 5612 (op5494.map lower) ∧ bytes5494.length=48 := by core033_kernel_decide
def op5495 : List WordIR.Op := [.bxor 5600 5612]
def bytes5495 : Bytes := ("    let r000015ed: u32 = r000015e0 ^ r000015ec;\n" : String).toByteArray.data.toList
theorem checked5495 : bytes5495=statementBytes 5613 (op5495.map lower) ∧ bytes5495.length=48 := by core033_kernel_decide
def op5496 : List WordIR.Op := [.shr 5613 31]
def bytes5496 : Bytes := ("    let r000015ee: u32 = r000015ed >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5496 : bytes5496=statementBytes 5614 (op5496.map lower) ∧ bytes5496.length=54 := by core033_kernel_decide
def op5497 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5497 : Bytes := ("    let r000015ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5497 : bytes5497=statementBytes 5615 (op5497.map lower) ∧ bytes5497.length=41 := by core033_kernel_decide
def op5498 : List WordIR.Op := [.bxor 5614 5615]
def bytes5498 : Bytes := ("    let r000015f0: u32 = r000015ee ^ r000015ef;\n" : String).toByteArray.data.toList
theorem checked5498 : bytes5498=statementBytes 5616 (op5498.map lower) ∧ bytes5498.length=48 := by core033_kernel_decide
def op5499 : List WordIR.Op := [.bnot 5616]
def bytes5499 : Bytes := ("    let r000015f1: u32 = !r000015f0;\n" : String).toByteArray.data.toList
theorem checked5499 : bytes5499=statementBytes 5617 (op5499.map lower) ∧ bytes5499.length=37 := by core033_kernel_decide
def op5500 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5500 : Bytes := ("    let r000015f2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5500 : bytes5500=statementBytes 5618 (op5500.map lower) ∧ bytes5500.length=41 := by core033_kernel_decide
def op5501 : List WordIR.Op := [.badd 5617 5618]
def bytes5501 : Bytes := ("    let r000015f3: u32 = r000015f1.wrapping_add(r000015f2);\n" : String).toByteArray.data.toList
theorem checked5501 : bytes5501=statementBytes 5619 (op5501.map lower) ∧ bytes5501.length=60 := by core033_kernel_decide
def op5502 : List WordIR.Op := [.bnot 5619]
def bytes5502 : Bytes := ("    let r000015f4: u32 = !r000015f3;\n" : String).toByteArray.data.toList
theorem checked5502 : bytes5502=statementBytes 5620 (op5502.map lower) ∧ bytes5502.length=37 := by core033_kernel_decide
def op5503 : List WordIR.Op := [.band 5620 2621]
def bytes5503 : Bytes := ("    let r000015f5: u32 = r000015f4 & r00000a3d;\n" : String).toByteArray.data.toList
theorem checked5503 : bytes5503=statementBytes 5621 (op5503.map lower) ∧ bytes5503.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5440,op5441,op5442,op5443,op5444,op5445,op5446,op5447,op5448,op5449,op5450,op5451,op5452,op5453,op5454,op5455,op5456,op5457,op5458,op5459,op5460,op5461,op5462,op5463,op5464,op5465,op5466,op5467,op5468,op5469,op5470,op5471,op5472,op5473,op5474,op5475,op5476,op5477,op5478,op5479,op5480,op5481,op5482,op5483,op5484,op5485,op5486,op5487,op5488,op5489,op5490,op5491,op5492,op5493,op5494,op5495,op5496,op5497,op5498,op5499,op5500,op5501,op5502,op5503]
def chunks : List Bytes := [bytes5440,bytes5441,bytes5442,bytes5443,bytes5444,bytes5445,bytes5446,bytes5447,bytes5448,bytes5449,bytes5450,bytes5451,bytes5452,bytes5453,bytes5454,bytes5455,bytes5456,bytes5457,bytes5458,bytes5459,bytes5460,bytes5461,bytes5462,bytes5463,bytes5464,bytes5465,bytes5466,bytes5467,bytes5468,bytes5469,bytes5470,bytes5471,bytes5472,bytes5473,bytes5474,bytes5475,bytes5476,bytes5477,bytes5478,bytes5479,bytes5480,bytes5481,bytes5482,bytes5483,bytes5484,bytes5485,bytes5486,bytes5487,bytes5488,bytes5489,bytes5490,bytes5491,bytes5492,bytes5493,bytes5494,bytes5495,bytes5496,bytes5497,bytes5498,bytes5499,bytes5500,bytes5501,bytes5502,bytes5503]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5558 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5440.1 (.cons _ _ _ _ _ checked5441.1 (.cons _ _ _ _ _ checked5442.1 (.cons _ _ _ _ _ checked5443.1 (.cons _ _ _ _ _ checked5444.1 (.cons _ _ _ _ _ checked5445.1 (.cons _ _ _ _ _ checked5446.1 (.cons _ _ _ _ _ checked5447.1 (.cons _ _ _ _ _ checked5448.1 (.cons _ _ _ _ _ checked5449.1 (.cons _ _ _ _ _ checked5450.1 (.cons _ _ _ _ _ checked5451.1 (.cons _ _ _ _ _ checked5452.1 (.cons _ _ _ _ _ checked5453.1 (.cons _ _ _ _ _ checked5454.1 (.cons _ _ _ _ _ checked5455.1 (.cons _ _ _ _ _ checked5456.1 (.cons _ _ _ _ _ checked5457.1 (.cons _ _ _ _ _ checked5458.1 (.cons _ _ _ _ _ checked5459.1 (.cons _ _ _ _ _ checked5460.1 (.cons _ _ _ _ _ checked5461.1 (.cons _ _ _ _ _ checked5462.1 (.cons _ _ _ _ _ checked5463.1 (.cons _ _ _ _ _ checked5464.1 (.cons _ _ _ _ _ checked5465.1 (.cons _ _ _ _ _ checked5466.1 (.cons _ _ _ _ _ checked5467.1 (.cons _ _ _ _ _ checked5468.1 (.cons _ _ _ _ _ checked5469.1 (.cons _ _ _ _ _ checked5470.1 (.cons _ _ _ _ _ checked5471.1 (.cons _ _ _ _ _ checked5472.1 (.cons _ _ _ _ _ checked5473.1 (.cons _ _ _ _ _ checked5474.1 (.cons _ _ _ _ _ checked5475.1 (.cons _ _ _ _ _ checked5476.1 (.cons _ _ _ _ _ checked5477.1 (.cons _ _ _ _ _ checked5478.1 (.cons _ _ _ _ _ checked5479.1 (.cons _ _ _ _ _ checked5480.1 (.cons _ _ _ _ _ checked5481.1 (.cons _ _ _ _ _ checked5482.1 (.cons _ _ _ _ _ checked5483.1 (.cons _ _ _ _ _ checked5484.1 (.cons _ _ _ _ _ checked5485.1 (.cons _ _ _ _ _ checked5486.1 (.cons _ _ _ _ _ checked5487.1 (.cons _ _ _ _ _ checked5488.1 (.cons _ _ _ _ _ checked5489.1 (.cons _ _ _ _ _ checked5490.1 (.cons _ _ _ _ _ checked5491.1 (.cons _ _ _ _ _ checked5492.1 (.cons _ _ _ _ _ checked5493.1 (.cons _ _ _ _ _ checked5494.1 (.cons _ _ _ _ _ checked5495.1 (.cons _ _ _ _ _ checked5496.1 (.cons _ _ _ _ _ checked5497.1 (.cons _ _ _ _ _ checked5498.1 (.cons _ _ _ _ _ checked5499.1 (.cons _ _ _ _ _ checked5500.1 (.cons _ _ _ _ _ checked5501.1 (.cons _ _ _ _ _ checked5502.1 (.cons _ _ _ _ _ checked5503.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5558 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5440.2,checked5441.2,checked5442.2,checked5443.2,checked5444.2,checked5445.2,checked5446.2,checked5447.2,checked5448.2,checked5449.2,checked5450.2,checked5451.2,checked5452.2,checked5453.2,checked5454.2,checked5455.2,checked5456.2,checked5457.2,checked5458.2,checked5459.2,checked5460.2,checked5461.2,checked5462.2,checked5463.2,checked5464.2,checked5465.2,checked5466.2,checked5467.2,checked5468.2,checked5469.2,checked5470.2,checked5471.2,checked5472.2,checked5473.2,checked5474.2,checked5475.2,checked5476.2,checked5477.2,checked5478.2,checked5479.2,checked5480.2,checked5481.2,checked5482.2,checked5483.2,checked5484.2,checked5485.2,checked5486.2,checked5487.2,checked5488.2,checked5489.2,checked5490.2,checked5491.2,checked5492.2,checked5493.2,checked5494.2,checked5495.2,checked5496.2,checked5497.2,checked5498.2,checked5499.2,checked5500.2,checked5501.2,checked5502.2,checked5503.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup85
