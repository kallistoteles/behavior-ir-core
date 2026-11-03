import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup85
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5440 : List WordIR.Op := [.bnot 5482]
def bytes5440 : Bytes := ("    let r0000156b: u32 = !r0000156a;\n" : String).toByteArray.data.toList
theorem checked5440 : bytes5440=statementBytes 5483 (op5440.map lower) ∧ bytes5440.length=37 := by core033_kernel_decide
def op5441 : List WordIR.Op := [.bxor 5481 5483]
def bytes5441 : Bytes := ("    let r0000156c: u32 = r00001569 ^ r0000156b;\n" : String).toByteArray.data.toList
theorem checked5441 : bytes5441=statementBytes 5484 (op5441.map lower) ∧ bytes5441.length=48 := by core033_kernel_decide
def op5442 : List WordIR.Op := [.shr 2499 8]
def bytes5442 : Bytes := ("    let r0000156d: u32 = r000009c3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5442 : bytes5442=statementBytes 5485 (op5442.map lower) ∧ bytes5442.length=54 := by core033_kernel_decide
def op5443 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5443 : Bytes := ("    let r0000156e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5443 : bytes5443=statementBytes 5486 (op5443.map lower) ∧ bytes5443.length=41 := by core033_kernel_decide
def op5444 : List WordIR.Op := [.bnot 5486]
def bytes5444 : Bytes := ("    let r0000156f: u32 = !r0000156e;\n" : String).toByteArray.data.toList
theorem checked5444 : bytes5444=statementBytes 5487 (op5444.map lower) ∧ bytes5444.length=37 := by core033_kernel_decide
def op5445 : List WordIR.Op := [.badd 5485 5487]
def bytes5445 : Bytes := ("    let r00001570: u32 = r0000156d.wrapping_add(r0000156f);\n" : String).toByteArray.data.toList
theorem checked5445 : bytes5445=statementBytes 5488 (op5445.map lower) ∧ bytes5445.length=60 := by core033_kernel_decide
def op5446 : List WordIR.Op := [.bnot 5488]
def bytes5446 : Bytes := ("    let r00001571: u32 = !r00001570;\n" : String).toByteArray.data.toList
theorem checked5446 : bytes5446=statementBytes 5489 (op5446.map lower) ∧ bytes5446.length=37 := by core033_kernel_decide
def op5447 : List WordIR.Op := [.band 5484 5489]
def bytes5447 : Bytes := ("    let r00001572: u32 = r0000156c & r00001571;\n" : String).toByteArray.data.toList
theorem checked5447 : bytes5447=statementBytes 5490 (op5447.map lower) ∧ bytes5447.length=48 := by core033_kernel_decide
def op5448 : List WordIR.Op := [.bxor 5480 5490]
def bytes5448 : Bytes := ("    let r00001573: u32 = r00001568 ^ r00001572;\n" : String).toByteArray.data.toList
theorem checked5448 : bytes5448=statementBytes 5491 (op5448.map lower) ∧ bytes5448.length=48 := by core033_kernel_decide
def op5449 : List WordIR.Op := [.shr 5491 31]
def bytes5449 : Bytes := ("    let r00001574: u32 = r00001573 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5449 : bytes5449=statementBytes 5492 (op5449.map lower) ∧ bytes5449.length=54 := by core033_kernel_decide
def op5450 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5450 : Bytes := ("    let r00001575: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5450 : bytes5450=statementBytes 5493 (op5450.map lower) ∧ bytes5450.length=41 := by core033_kernel_decide
def op5451 : List WordIR.Op := [.bxor 5492 5493]
def bytes5451 : Bytes := ("    let r00001576: u32 = r00001574 ^ r00001575;\n" : String).toByteArray.data.toList
theorem checked5451 : bytes5451=statementBytes 5494 (op5451.map lower) ∧ bytes5451.length=48 := by core033_kernel_decide
def op5452 : List WordIR.Op := [.shr 2551 8]
def bytes5452 : Bytes := ("    let r00001577: u32 = r000009f7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5452 : bytes5452=statementBytes 5495 (op5452.map lower) ∧ bytes5452.length=54 := by core033_kernel_decide
def op5453 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5453 : Bytes := ("    let r00001578: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5453 : bytes5453=statementBytes 5496 (op5453.map lower) ∧ bytes5453.length=41 := by core033_kernel_decide
def op5454 : List WordIR.Op := [.bnot 5496]
def bytes5454 : Bytes := ("    let r00001579: u32 = !r00001578;\n" : String).toByteArray.data.toList
theorem checked5454 : bytes5454=statementBytes 5497 (op5454.map lower) ∧ bytes5454.length=37 := by core033_kernel_decide
def op5455 : List WordIR.Op := [.band 5495 5497]
def bytes5455 : Bytes := ("    let r0000157a: u32 = r00001577 & r00001579;\n" : String).toByteArray.data.toList
theorem checked5455 : bytes5455=statementBytes 5498 (op5455.map lower) ∧ bytes5455.length=48 := by core033_kernel_decide
def op5456 : List WordIR.Op := [.shr 2551 8]
def bytes5456 : Bytes := ("    let r0000157b: u32 = r000009f7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5456 : bytes5456=statementBytes 5499 (op5456.map lower) ∧ bytes5456.length=54 := by core033_kernel_decide
def op5457 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5457 : Bytes := ("    let r0000157c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5457 : bytes5457=statementBytes 5500 (op5457.map lower) ∧ bytes5457.length=41 := by core033_kernel_decide
def op5458 : List WordIR.Op := [.bnot 5500]
def bytes5458 : Bytes := ("    let r0000157d: u32 = !r0000157c;\n" : String).toByteArray.data.toList
theorem checked5458 : bytes5458=statementBytes 5501 (op5458.map lower) ∧ bytes5458.length=37 := by core033_kernel_decide
def op5459 : List WordIR.Op := [.bxor 5499 5501]
def bytes5459 : Bytes := ("    let r0000157e: u32 = r0000157b ^ r0000157d;\n" : String).toByteArray.data.toList
theorem checked5459 : bytes5459=statementBytes 5502 (op5459.map lower) ∧ bytes5459.length=48 := by core033_kernel_decide
def op5460 : List WordIR.Op := [.shr 2551 8]
def bytes5460 : Bytes := ("    let r0000157f: u32 = r000009f7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5460 : bytes5460=statementBytes 5503 (op5460.map lower) ∧ bytes5460.length=54 := by core033_kernel_decide
def op5461 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5461 : Bytes := ("    let r00001580: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5461 : bytes5461=statementBytes 5504 (op5461.map lower) ∧ bytes5461.length=41 := by core033_kernel_decide
def op5462 : List WordIR.Op := [.bnot 5504]
def bytes5462 : Bytes := ("    let r00001581: u32 = !r00001580;\n" : String).toByteArray.data.toList
theorem checked5462 : bytes5462=statementBytes 5505 (op5462.map lower) ∧ bytes5462.length=37 := by core033_kernel_decide
def op5463 : List WordIR.Op := [.badd 5503 5505]
def bytes5463 : Bytes := ("    let r00001582: u32 = r0000157f.wrapping_add(r00001581);\n" : String).toByteArray.data.toList
theorem checked5463 : bytes5463=statementBytes 5506 (op5463.map lower) ∧ bytes5463.length=60 := by core033_kernel_decide
def op5464 : List WordIR.Op := [.bnot 5506]
def bytes5464 : Bytes := ("    let r00001583: u32 = !r00001582;\n" : String).toByteArray.data.toList
theorem checked5464 : bytes5464=statementBytes 5507 (op5464.map lower) ∧ bytes5464.length=37 := by core033_kernel_decide
def op5465 : List WordIR.Op := [.band 5502 5507]
def bytes5465 : Bytes := ("    let r00001584: u32 = r0000157e & r00001583;\n" : String).toByteArray.data.toList
theorem checked5465 : bytes5465=statementBytes 5508 (op5465.map lower) ∧ bytes5465.length=48 := by core033_kernel_decide
def op5466 : List WordIR.Op := [.bxor 5498 5508]
def bytes5466 : Bytes := ("    let r00001585: u32 = r0000157a ^ r00001584;\n" : String).toByteArray.data.toList
theorem checked5466 : bytes5466=statementBytes 5509 (op5466.map lower) ∧ bytes5466.length=48 := by core033_kernel_decide
def op5467 : List WordIR.Op := [.shr 5509 31]
def bytes5467 : Bytes := ("    let r00001586: u32 = r00001585 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5467 : bytes5467=statementBytes 5510 (op5467.map lower) ∧ bytes5467.length=54 := by core033_kernel_decide
def op5468 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5468 : Bytes := ("    let r00001587: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5468 : bytes5468=statementBytes 5511 (op5468.map lower) ∧ bytes5468.length=41 := by core033_kernel_decide
def op5469 : List WordIR.Op := [.bxor 5510 5511]
def bytes5469 : Bytes := ("    let r00001588: u32 = r00001586 ^ r00001587;\n" : String).toByteArray.data.toList
theorem checked5469 : bytes5469=statementBytes 5512 (op5469.map lower) ∧ bytes5469.length=48 := by core033_kernel_decide
def op5470 : List WordIR.Op := [.shr 2603 8]
def bytes5470 : Bytes := ("    let r00001589: u32 = r00000a2b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5470 : bytes5470=statementBytes 5513 (op5470.map lower) ∧ bytes5470.length=54 := by core033_kernel_decide
def op5471 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5471 : Bytes := ("    let r0000158a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5471 : bytes5471=statementBytes 5514 (op5471.map lower) ∧ bytes5471.length=41 := by core033_kernel_decide
def op5472 : List WordIR.Op := [.bnot 5514]
def bytes5472 : Bytes := ("    let r0000158b: u32 = !r0000158a;\n" : String).toByteArray.data.toList
theorem checked5472 : bytes5472=statementBytes 5515 (op5472.map lower) ∧ bytes5472.length=37 := by core033_kernel_decide
def op5473 : List WordIR.Op := [.band 5513 5515]
def bytes5473 : Bytes := ("    let r0000158c: u32 = r00001589 & r0000158b;\n" : String).toByteArray.data.toList
theorem checked5473 : bytes5473=statementBytes 5516 (op5473.map lower) ∧ bytes5473.length=48 := by core033_kernel_decide
def op5474 : List WordIR.Op := [.shr 2603 8]
def bytes5474 : Bytes := ("    let r0000158d: u32 = r00000a2b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5474 : bytes5474=statementBytes 5517 (op5474.map lower) ∧ bytes5474.length=54 := by core033_kernel_decide
def op5475 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5475 : Bytes := ("    let r0000158e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5475 : bytes5475=statementBytes 5518 (op5475.map lower) ∧ bytes5475.length=41 := by core033_kernel_decide
def op5476 : List WordIR.Op := [.bnot 5518]
def bytes5476 : Bytes := ("    let r0000158f: u32 = !r0000158e;\n" : String).toByteArray.data.toList
theorem checked5476 : bytes5476=statementBytes 5519 (op5476.map lower) ∧ bytes5476.length=37 := by core033_kernel_decide
def op5477 : List WordIR.Op := [.bxor 5517 5519]
def bytes5477 : Bytes := ("    let r00001590: u32 = r0000158d ^ r0000158f;\n" : String).toByteArray.data.toList
theorem checked5477 : bytes5477=statementBytes 5520 (op5477.map lower) ∧ bytes5477.length=48 := by core033_kernel_decide
def op5478 : List WordIR.Op := [.shr 2603 8]
def bytes5478 : Bytes := ("    let r00001591: u32 = r00000a2b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5478 : bytes5478=statementBytes 5521 (op5478.map lower) ∧ bytes5478.length=54 := by core033_kernel_decide
def op5479 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5479 : Bytes := ("    let r00001592: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5479 : bytes5479=statementBytes 5522 (op5479.map lower) ∧ bytes5479.length=41 := by core033_kernel_decide
def op5480 : List WordIR.Op := [.bnot 5522]
def bytes5480 : Bytes := ("    let r00001593: u32 = !r00001592;\n" : String).toByteArray.data.toList
theorem checked5480 : bytes5480=statementBytes 5523 (op5480.map lower) ∧ bytes5480.length=37 := by core033_kernel_decide
def op5481 : List WordIR.Op := [.badd 5521 5523]
def bytes5481 : Bytes := ("    let r00001594: u32 = r00001591.wrapping_add(r00001593);\n" : String).toByteArray.data.toList
theorem checked5481 : bytes5481=statementBytes 5524 (op5481.map lower) ∧ bytes5481.length=60 := by core033_kernel_decide
def op5482 : List WordIR.Op := [.bnot 5524]
def bytes5482 : Bytes := ("    let r00001595: u32 = !r00001594;\n" : String).toByteArray.data.toList
theorem checked5482 : bytes5482=statementBytes 5525 (op5482.map lower) ∧ bytes5482.length=37 := by core033_kernel_decide
def op5483 : List WordIR.Op := [.band 5520 5525]
def bytes5483 : Bytes := ("    let r00001596: u32 = r00001590 & r00001595;\n" : String).toByteArray.data.toList
theorem checked5483 : bytes5483=statementBytes 5526 (op5483.map lower) ∧ bytes5483.length=48 := by core033_kernel_decide
def op5484 : List WordIR.Op := [.bxor 5516 5526]
def bytes5484 : Bytes := ("    let r00001597: u32 = r0000158c ^ r00001596;\n" : String).toByteArray.data.toList
theorem checked5484 : bytes5484=statementBytes 5527 (op5484.map lower) ∧ bytes5484.length=48 := by core033_kernel_decide
def op5485 : List WordIR.Op := [.shr 5527 31]
def bytes5485 : Bytes := ("    let r00001598: u32 = r00001597 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5485 : bytes5485=statementBytes 5528 (op5485.map lower) ∧ bytes5485.length=54 := by core033_kernel_decide
def op5486 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5486 : Bytes := ("    let r00001599: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5486 : bytes5486=statementBytes 5529 (op5486.map lower) ∧ bytes5486.length=41 := by core033_kernel_decide
def op5487 : List WordIR.Op := [.bxor 5528 5529]
def bytes5487 : Bytes := ("    let r0000159a: u32 = r00001598 ^ r00001599;\n" : String).toByteArray.data.toList
theorem checked5487 : bytes5487=statementBytes 5530 (op5487.map lower) ∧ bytes5487.length=48 := by core033_kernel_decide
def op5488 : List WordIR.Op := [.shr 2655 8]
def bytes5488 : Bytes := ("    let r0000159b: u32 = r00000a5f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5488 : bytes5488=statementBytes 5531 (op5488.map lower) ∧ bytes5488.length=54 := by core033_kernel_decide
def op5489 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5489 : Bytes := ("    let r0000159c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5489 : bytes5489=statementBytes 5532 (op5489.map lower) ∧ bytes5489.length=41 := by core033_kernel_decide
def op5490 : List WordIR.Op := [.bnot 5532]
def bytes5490 : Bytes := ("    let r0000159d: u32 = !r0000159c;\n" : String).toByteArray.data.toList
theorem checked5490 : bytes5490=statementBytes 5533 (op5490.map lower) ∧ bytes5490.length=37 := by core033_kernel_decide
def op5491 : List WordIR.Op := [.band 5531 5533]
def bytes5491 : Bytes := ("    let r0000159e: u32 = r0000159b & r0000159d;\n" : String).toByteArray.data.toList
theorem checked5491 : bytes5491=statementBytes 5534 (op5491.map lower) ∧ bytes5491.length=48 := by core033_kernel_decide
def op5492 : List WordIR.Op := [.shr 2655 8]
def bytes5492 : Bytes := ("    let r0000159f: u32 = r00000a5f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5492 : bytes5492=statementBytes 5535 (op5492.map lower) ∧ bytes5492.length=54 := by core033_kernel_decide
def op5493 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5493 : Bytes := ("    let r000015a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5493 : bytes5493=statementBytes 5536 (op5493.map lower) ∧ bytes5493.length=41 := by core033_kernel_decide
def op5494 : List WordIR.Op := [.bnot 5536]
def bytes5494 : Bytes := ("    let r000015a1: u32 = !r000015a0;\n" : String).toByteArray.data.toList
theorem checked5494 : bytes5494=statementBytes 5537 (op5494.map lower) ∧ bytes5494.length=37 := by core033_kernel_decide
def op5495 : List WordIR.Op := [.bxor 5535 5537]
def bytes5495 : Bytes := ("    let r000015a2: u32 = r0000159f ^ r000015a1;\n" : String).toByteArray.data.toList
theorem checked5495 : bytes5495=statementBytes 5538 (op5495.map lower) ∧ bytes5495.length=48 := by core033_kernel_decide
def op5496 : List WordIR.Op := [.shr 2655 8]
def bytes5496 : Bytes := ("    let r000015a3: u32 = r00000a5f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5496 : bytes5496=statementBytes 5539 (op5496.map lower) ∧ bytes5496.length=54 := by core033_kernel_decide
def op5497 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5497 : Bytes := ("    let r000015a4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5497 : bytes5497=statementBytes 5540 (op5497.map lower) ∧ bytes5497.length=41 := by core033_kernel_decide
def op5498 : List WordIR.Op := [.bnot 5540]
def bytes5498 : Bytes := ("    let r000015a5: u32 = !r000015a4;\n" : String).toByteArray.data.toList
theorem checked5498 : bytes5498=statementBytes 5541 (op5498.map lower) ∧ bytes5498.length=37 := by core033_kernel_decide
def op5499 : List WordIR.Op := [.badd 5539 5541]
def bytes5499 : Bytes := ("    let r000015a6: u32 = r000015a3.wrapping_add(r000015a5);\n" : String).toByteArray.data.toList
theorem checked5499 : bytes5499=statementBytes 5542 (op5499.map lower) ∧ bytes5499.length=60 := by core033_kernel_decide
def op5500 : List WordIR.Op := [.bnot 5542]
def bytes5500 : Bytes := ("    let r000015a7: u32 = !r000015a6;\n" : String).toByteArray.data.toList
theorem checked5500 : bytes5500=statementBytes 5543 (op5500.map lower) ∧ bytes5500.length=37 := by core033_kernel_decide
def op5501 : List WordIR.Op := [.band 5538 5543]
def bytes5501 : Bytes := ("    let r000015a8: u32 = r000015a2 & r000015a7;\n" : String).toByteArray.data.toList
theorem checked5501 : bytes5501=statementBytes 5544 (op5501.map lower) ∧ bytes5501.length=48 := by core033_kernel_decide
def op5502 : List WordIR.Op := [.bxor 5534 5544]
def bytes5502 : Bytes := ("    let r000015a9: u32 = r0000159e ^ r000015a8;\n" : String).toByteArray.data.toList
theorem checked5502 : bytes5502=statementBytes 5545 (op5502.map lower) ∧ bytes5502.length=48 := by core033_kernel_decide
def op5503 : List WordIR.Op := [.shr 5545 31]
def bytes5503 : Bytes := ("    let r000015aa: u32 = r000015a9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5503 : bytes5503=statementBytes 5546 (op5503.map lower) ∧ bytes5503.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5440,op5441,op5442,op5443,op5444,op5445,op5446,op5447,op5448,op5449,op5450,op5451,op5452,op5453,op5454,op5455,op5456,op5457,op5458,op5459,op5460,op5461,op5462,op5463,op5464,op5465,op5466,op5467,op5468,op5469,op5470,op5471,op5472,op5473,op5474,op5475,op5476,op5477,op5478,op5479,op5480,op5481,op5482,op5483,op5484,op5485,op5486,op5487,op5488,op5489,op5490,op5491,op5492,op5493,op5494,op5495,op5496,op5497,op5498,op5499,op5500,op5501,op5502,op5503]
def chunks : List Bytes := [bytes5440,bytes5441,bytes5442,bytes5443,bytes5444,bytes5445,bytes5446,bytes5447,bytes5448,bytes5449,bytes5450,bytes5451,bytes5452,bytes5453,bytes5454,bytes5455,bytes5456,bytes5457,bytes5458,bytes5459,bytes5460,bytes5461,bytes5462,bytes5463,bytes5464,bytes5465,bytes5466,bytes5467,bytes5468,bytes5469,bytes5470,bytes5471,bytes5472,bytes5473,bytes5474,bytes5475,bytes5476,bytes5477,bytes5478,bytes5479,bytes5480,bytes5481,bytes5482,bytes5483,bytes5484,bytes5485,bytes5486,bytes5487,bytes5488,bytes5489,bytes5490,bytes5491,bytes5492,bytes5493,bytes5494,bytes5495,bytes5496,bytes5497,bytes5498,bytes5499,bytes5500,bytes5501,bytes5502,bytes5503]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5483 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5440.1 (.cons _ _ _ _ _ checked5441.1 (.cons _ _ _ _ _ checked5442.1 (.cons _ _ _ _ _ checked5443.1 (.cons _ _ _ _ _ checked5444.1 (.cons _ _ _ _ _ checked5445.1 (.cons _ _ _ _ _ checked5446.1 (.cons _ _ _ _ _ checked5447.1 (.cons _ _ _ _ _ checked5448.1 (.cons _ _ _ _ _ checked5449.1 (.cons _ _ _ _ _ checked5450.1 (.cons _ _ _ _ _ checked5451.1 (.cons _ _ _ _ _ checked5452.1 (.cons _ _ _ _ _ checked5453.1 (.cons _ _ _ _ _ checked5454.1 (.cons _ _ _ _ _ checked5455.1 (.cons _ _ _ _ _ checked5456.1 (.cons _ _ _ _ _ checked5457.1 (.cons _ _ _ _ _ checked5458.1 (.cons _ _ _ _ _ checked5459.1 (.cons _ _ _ _ _ checked5460.1 (.cons _ _ _ _ _ checked5461.1 (.cons _ _ _ _ _ checked5462.1 (.cons _ _ _ _ _ checked5463.1 (.cons _ _ _ _ _ checked5464.1 (.cons _ _ _ _ _ checked5465.1 (.cons _ _ _ _ _ checked5466.1 (.cons _ _ _ _ _ checked5467.1 (.cons _ _ _ _ _ checked5468.1 (.cons _ _ _ _ _ checked5469.1 (.cons _ _ _ _ _ checked5470.1 (.cons _ _ _ _ _ checked5471.1 (.cons _ _ _ _ _ checked5472.1 (.cons _ _ _ _ _ checked5473.1 (.cons _ _ _ _ _ checked5474.1 (.cons _ _ _ _ _ checked5475.1 (.cons _ _ _ _ _ checked5476.1 (.cons _ _ _ _ _ checked5477.1 (.cons _ _ _ _ _ checked5478.1 (.cons _ _ _ _ _ checked5479.1 (.cons _ _ _ _ _ checked5480.1 (.cons _ _ _ _ _ checked5481.1 (.cons _ _ _ _ _ checked5482.1 (.cons _ _ _ _ _ checked5483.1 (.cons _ _ _ _ _ checked5484.1 (.cons _ _ _ _ _ checked5485.1 (.cons _ _ _ _ _ checked5486.1 (.cons _ _ _ _ _ checked5487.1 (.cons _ _ _ _ _ checked5488.1 (.cons _ _ _ _ _ checked5489.1 (.cons _ _ _ _ _ checked5490.1 (.cons _ _ _ _ _ checked5491.1 (.cons _ _ _ _ _ checked5492.1 (.cons _ _ _ _ _ checked5493.1 (.cons _ _ _ _ _ checked5494.1 (.cons _ _ _ _ _ checked5495.1 (.cons _ _ _ _ _ checked5496.1 (.cons _ _ _ _ _ checked5497.1 (.cons _ _ _ _ _ checked5498.1 (.cons _ _ _ _ _ checked5499.1 (.cons _ _ _ _ _ checked5500.1 (.cons _ _ _ _ _ checked5501.1 (.cons _ _ _ _ _ checked5502.1 (.cons _ _ _ _ _ checked5503.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5483 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2948 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5440.2,checked5441.2,checked5442.2,checked5443.2,checked5444.2,checked5445.2,checked5446.2,checked5447.2,checked5448.2,checked5449.2,checked5450.2,checked5451.2,checked5452.2,checked5453.2,checked5454.2,checked5455.2,checked5456.2,checked5457.2,checked5458.2,checked5459.2,checked5460.2,checked5461.2,checked5462.2,checked5463.2,checked5464.2,checked5465.2,checked5466.2,checked5467.2,checked5468.2,checked5469.2,checked5470.2,checked5471.2,checked5472.2,checked5473.2,checked5474.2,checked5475.2,checked5476.2,checked5477.2,checked5478.2,checked5479.2,checked5480.2,checked5481.2,checked5482.2,checked5483.2,checked5484.2,checked5485.2,checked5486.2,checked5487.2,checked5488.2,checked5489.2,checked5490.2,checked5491.2,checked5492.2,checked5493.2,checked5494.2,checked5495.2,checked5496.2,checked5497.2,checked5498.2,checked5499.2,checked5500.2,checked5501.2,checked5502.2,checked5503.2]
  decide
end ArtifactFrameHashControllerGroup85
