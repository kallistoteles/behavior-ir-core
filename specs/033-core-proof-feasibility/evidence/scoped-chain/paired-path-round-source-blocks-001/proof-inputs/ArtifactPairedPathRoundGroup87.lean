import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup87
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5568 : List WordIR.Op := [.bxor 5662 5663]
def bytes5568 : Bytes := ("    let r00001620: u32 = r0000161e ^ r0000161f;\n" : String).toByteArray.data.toList
theorem checked5568 : bytes5568=statementBytes 5664 (op5568.map lower) ∧ bytes5568.length=48 := by core033_kernel_decide
def op5569 : List WordIR.Op := [.bnot 5664]
def bytes5569 : Bytes := ("    let r00001621: u32 = !r00001620;\n" : String).toByteArray.data.toList
theorem checked5569 : bytes5569=statementBytes 5665 (op5569.map lower) ∧ bytes5569.length=37 := by core033_kernel_decide
def op5570 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5570 : Bytes := ("    let r00001622: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5570 : bytes5570=statementBytes 5666 (op5570.map lower) ∧ bytes5570.length=41 := by core033_kernel_decide
def op5571 : List WordIR.Op := [.badd 5665 5666]
def bytes5571 : Bytes := ("    let r00001623: u32 = r00001621.wrapping_add(r00001622);\n" : String).toByteArray.data.toList
theorem checked5571 : bytes5571=statementBytes 5667 (op5571.map lower) ∧ bytes5571.length=60 := by core033_kernel_decide
def op5572 : List WordIR.Op := [.bnot 5667]
def bytes5572 : Bytes := ("    let r00001624: u32 = !r00001623;\n" : String).toByteArray.data.toList
theorem checked5572 : bytes5572=statementBytes 5668 (op5572.map lower) ∧ bytes5572.length=37 := by core033_kernel_decide
def op5573 : List WordIR.Op := [.band 5668 1980]
def bytes5573 : Bytes := ("    let r00001625: u32 = r00001624 & r000007bc;\n" : String).toByteArray.data.toList
theorem checked5573 : bytes5573=statementBytes 5669 (op5573.map lower) ∧ bytes5573.length=48 := by core033_kernel_decide
def op5574 : List WordIR.Op := [.bxor 5643 5669]
def bytes5574 : Bytes := ("    let r00001626: u32 = r0000160b ^ r00001625;\n" : String).toByteArray.data.toList
theorem checked5574 : bytes5574=statementBytes 5670 (op5574.map lower) ∧ bytes5574.length=48 := by core033_kernel_decide
def op5575 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5575 : Bytes := ("    let r00001627: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5575 : bytes5575=statementBytes 5671 (op5575.map lower) ∧ bytes5575.length=41 := by core033_kernel_decide
def op5576 : List WordIR.Op := [.bxor 616 5671]
def bytes5576 : Bytes := ("    let r00001628: u32 = r00000268 ^ r00001627;\n" : String).toByteArray.data.toList
theorem checked5576 : bytes5576=statementBytes 5672 (op5576.map lower) ∧ bytes5576.length=48 := by core033_kernel_decide
def op5577 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5577 : Bytes := ("    let r00001629: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5577 : bytes5577=statementBytes 5673 (op5577.map lower) ∧ bytes5577.length=41 := by core033_kernel_decide
def op5578 : List WordIR.Op := [.bnot 5673]
def bytes5578 : Bytes := ("    let r0000162a: u32 = !r00001629;\n" : String).toByteArray.data.toList
theorem checked5578 : bytes5578=statementBytes 5674 (op5578.map lower) ∧ bytes5578.length=37 := by core033_kernel_decide
def op5579 : List WordIR.Op := [.band 5672 5674]
def bytes5579 : Bytes := ("    let r0000162b: u32 = r00001628 & r0000162a;\n" : String).toByteArray.data.toList
theorem checked5579 : bytes5579=statementBytes 5675 (op5579.map lower) ∧ bytes5579.length=48 := by core033_kernel_decide
def op5580 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5580 : Bytes := ("    let r0000162c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5580 : bytes5580=statementBytes 5676 (op5580.map lower) ∧ bytes5580.length=41 := by core033_kernel_decide
def op5581 : List WordIR.Op := [.bxor 616 5676]
def bytes5581 : Bytes := ("    let r0000162d: u32 = r00000268 ^ r0000162c;\n" : String).toByteArray.data.toList
theorem checked5581 : bytes5581=statementBytes 5677 (op5581.map lower) ∧ bytes5581.length=48 := by core033_kernel_decide
def op5582 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5582 : Bytes := ("    let r0000162e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5582 : bytes5582=statementBytes 5678 (op5582.map lower) ∧ bytes5582.length=41 := by core033_kernel_decide
def op5583 : List WordIR.Op := [.bnot 5678]
def bytes5583 : Bytes := ("    let r0000162f: u32 = !r0000162e;\n" : String).toByteArray.data.toList
theorem checked5583 : bytes5583=statementBytes 5679 (op5583.map lower) ∧ bytes5583.length=37 := by core033_kernel_decide
def op5584 : List WordIR.Op := [.bxor 5677 5679]
def bytes5584 : Bytes := ("    let r00001630: u32 = r0000162d ^ r0000162f;\n" : String).toByteArray.data.toList
theorem checked5584 : bytes5584=statementBytes 5680 (op5584.map lower) ∧ bytes5584.length=48 := by core033_kernel_decide
def op5585 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5585 : Bytes := ("    let r00001631: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5585 : bytes5585=statementBytes 5681 (op5585.map lower) ∧ bytes5585.length=41 := by core033_kernel_decide
def op5586 : List WordIR.Op := [.bxor 616 5681]
def bytes5586 : Bytes := ("    let r00001632: u32 = r00000268 ^ r00001631;\n" : String).toByteArray.data.toList
theorem checked5586 : bytes5586=statementBytes 5682 (op5586.map lower) ∧ bytes5586.length=48 := by core033_kernel_decide
def op5587 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5587 : Bytes := ("    let r00001633: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5587 : bytes5587=statementBytes 5683 (op5587.map lower) ∧ bytes5587.length=41 := by core033_kernel_decide
def op5588 : List WordIR.Op := [.bnot 5683]
def bytes5588 : Bytes := ("    let r00001634: u32 = !r00001633;\n" : String).toByteArray.data.toList
theorem checked5588 : bytes5588=statementBytes 5684 (op5588.map lower) ∧ bytes5588.length=37 := by core033_kernel_decide
def op5589 : List WordIR.Op := [.badd 5682 5684]
def bytes5589 : Bytes := ("    let r00001635: u32 = r00001632.wrapping_add(r00001634);\n" : String).toByteArray.data.toList
theorem checked5589 : bytes5589=statementBytes 5685 (op5589.map lower) ∧ bytes5589.length=60 := by core033_kernel_decide
def op5590 : List WordIR.Op := [.bnot 5685]
def bytes5590 : Bytes := ("    let r00001636: u32 = !r00001635;\n" : String).toByteArray.data.toList
theorem checked5590 : bytes5590=statementBytes 5686 (op5590.map lower) ∧ bytes5590.length=37 := by core033_kernel_decide
def op5591 : List WordIR.Op := [.band 5680 5686]
def bytes5591 : Bytes := ("    let r00001637: u32 = r00001630 & r00001636;\n" : String).toByteArray.data.toList
theorem checked5591 : bytes5591=statementBytes 5687 (op5591.map lower) ∧ bytes5591.length=48 := by core033_kernel_decide
def op5592 : List WordIR.Op := [.bxor 5675 5687]
def bytes5592 : Bytes := ("    let r00001638: u32 = r0000162b ^ r00001637;\n" : String).toByteArray.data.toList
theorem checked5592 : bytes5592=statementBytes 5688 (op5592.map lower) ∧ bytes5592.length=48 := by core033_kernel_decide
def op5593 : List WordIR.Op := [.shr 5688 31]
def bytes5593 : Bytes := ("    let r00001639: u32 = r00001638 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5593 : bytes5593=statementBytes 5689 (op5593.map lower) ∧ bytes5593.length=54 := by core033_kernel_decide
def op5594 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5594 : Bytes := ("    let r0000163a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5594 : bytes5594=statementBytes 5690 (op5594.map lower) ∧ bytes5594.length=41 := by core033_kernel_decide
def op5595 : List WordIR.Op := [.bxor 5689 5690]
def bytes5595 : Bytes := ("    let r0000163b: u32 = r00001639 ^ r0000163a;\n" : String).toByteArray.data.toList
theorem checked5595 : bytes5595=statementBytes 5691 (op5595.map lower) ∧ bytes5595.length=48 := by core033_kernel_decide
def op5596 : List WordIR.Op := [.bnot 5691]
def bytes5596 : Bytes := ("    let r0000163c: u32 = !r0000163b;\n" : String).toByteArray.data.toList
theorem checked5596 : bytes5596=statementBytes 5692 (op5596.map lower) ∧ bytes5596.length=37 := by core033_kernel_decide
def op5597 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5597 : Bytes := ("    let r0000163d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5597 : bytes5597=statementBytes 5693 (op5597.map lower) ∧ bytes5597.length=41 := by core033_kernel_decide
def op5598 : List WordIR.Op := [.badd 5692 5693]
def bytes5598 : Bytes := ("    let r0000163e: u32 = r0000163c.wrapping_add(r0000163d);\n" : String).toByteArray.data.toList
theorem checked5598 : bytes5598=statementBytes 5694 (op5598.map lower) ∧ bytes5598.length=60 := by core033_kernel_decide
def op5599 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5599 : Bytes := ("    let r0000163f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5599 : bytes5599=statementBytes 5695 (op5599.map lower) ∧ bytes5599.length=41 := by core033_kernel_decide
def op5600 : List WordIR.Op := [.band 5694 5695]
def bytes5600 : Bytes := ("    let r00001640: u32 = r0000163e & r0000163f;\n" : String).toByteArray.data.toList
theorem checked5600 : bytes5600=statementBytes 5696 (op5600.map lower) ∧ bytes5600.length=48 := by core033_kernel_decide
def op5601 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5601 : Bytes := ("    let r00001641: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5601 : bytes5601=statementBytes 5697 (op5601.map lower) ∧ bytes5601.length=41 := by core033_kernel_decide
def op5602 : List WordIR.Op := [.bxor 616 5697]
def bytes5602 : Bytes := ("    let r00001642: u32 = r00000268 ^ r00001641;\n" : String).toByteArray.data.toList
theorem checked5602 : bytes5602=statementBytes 5698 (op5602.map lower) ∧ bytes5602.length=48 := by core033_kernel_decide
def op5603 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5603 : Bytes := ("    let r00001643: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5603 : bytes5603=statementBytes 5699 (op5603.map lower) ∧ bytes5603.length=41 := by core033_kernel_decide
def op5604 : List WordIR.Op := [.bnot 5699]
def bytes5604 : Bytes := ("    let r00001644: u32 = !r00001643;\n" : String).toByteArray.data.toList
theorem checked5604 : bytes5604=statementBytes 5700 (op5604.map lower) ∧ bytes5604.length=37 := by core033_kernel_decide
def op5605 : List WordIR.Op := [.band 5698 5700]
def bytes5605 : Bytes := ("    let r00001645: u32 = r00001642 & r00001644;\n" : String).toByteArray.data.toList
theorem checked5605 : bytes5605=statementBytes 5701 (op5605.map lower) ∧ bytes5605.length=48 := by core033_kernel_decide
def op5606 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5606 : Bytes := ("    let r00001646: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5606 : bytes5606=statementBytes 5702 (op5606.map lower) ∧ bytes5606.length=41 := by core033_kernel_decide
def op5607 : List WordIR.Op := [.bxor 616 5702]
def bytes5607 : Bytes := ("    let r00001647: u32 = r00000268 ^ r00001646;\n" : String).toByteArray.data.toList
theorem checked5607 : bytes5607=statementBytes 5703 (op5607.map lower) ∧ bytes5607.length=48 := by core033_kernel_decide
def op5608 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5608 : Bytes := ("    let r00001648: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5608 : bytes5608=statementBytes 5704 (op5608.map lower) ∧ bytes5608.length=41 := by core033_kernel_decide
def op5609 : List WordIR.Op := [.bnot 5704]
def bytes5609 : Bytes := ("    let r00001649: u32 = !r00001648;\n" : String).toByteArray.data.toList
theorem checked5609 : bytes5609=statementBytes 5705 (op5609.map lower) ∧ bytes5609.length=37 := by core033_kernel_decide
def op5610 : List WordIR.Op := [.bxor 5703 5705]
def bytes5610 : Bytes := ("    let r0000164a: u32 = r00001647 ^ r00001649;\n" : String).toByteArray.data.toList
theorem checked5610 : bytes5610=statementBytes 5706 (op5610.map lower) ∧ bytes5610.length=48 := by core033_kernel_decide
def op5611 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5611 : Bytes := ("    let r0000164b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5611 : bytes5611=statementBytes 5707 (op5611.map lower) ∧ bytes5611.length=41 := by core033_kernel_decide
def op5612 : List WordIR.Op := [.bxor 616 5707]
def bytes5612 : Bytes := ("    let r0000164c: u32 = r00000268 ^ r0000164b;\n" : String).toByteArray.data.toList
theorem checked5612 : bytes5612=statementBytes 5708 (op5612.map lower) ∧ bytes5612.length=48 := by core033_kernel_decide
def op5613 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5613 : Bytes := ("    let r0000164d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5613 : bytes5613=statementBytes 5709 (op5613.map lower) ∧ bytes5613.length=41 := by core033_kernel_decide
def op5614 : List WordIR.Op := [.bnot 5709]
def bytes5614 : Bytes := ("    let r0000164e: u32 = !r0000164d;\n" : String).toByteArray.data.toList
theorem checked5614 : bytes5614=statementBytes 5710 (op5614.map lower) ∧ bytes5614.length=37 := by core033_kernel_decide
def op5615 : List WordIR.Op := [.badd 5708 5710]
def bytes5615 : Bytes := ("    let r0000164f: u32 = r0000164c.wrapping_add(r0000164e);\n" : String).toByteArray.data.toList
theorem checked5615 : bytes5615=statementBytes 5711 (op5615.map lower) ∧ bytes5615.length=60 := by core033_kernel_decide
def op5616 : List WordIR.Op := [.bnot 5711]
def bytes5616 : Bytes := ("    let r00001650: u32 = !r0000164f;\n" : String).toByteArray.data.toList
theorem checked5616 : bytes5616=statementBytes 5712 (op5616.map lower) ∧ bytes5616.length=37 := by core033_kernel_decide
def op5617 : List WordIR.Op := [.band 5706 5712]
def bytes5617 : Bytes := ("    let r00001651: u32 = r0000164a & r00001650;\n" : String).toByteArray.data.toList
theorem checked5617 : bytes5617=statementBytes 5713 (op5617.map lower) ∧ bytes5617.length=48 := by core033_kernel_decide
def op5618 : List WordIR.Op := [.bxor 5701 5713]
def bytes5618 : Bytes := ("    let r00001652: u32 = r00001645 ^ r00001651;\n" : String).toByteArray.data.toList
theorem checked5618 : bytes5618=statementBytes 5714 (op5618.map lower) ∧ bytes5618.length=48 := by core033_kernel_decide
def op5619 : List WordIR.Op := [.shr 5714 31]
def bytes5619 : Bytes := ("    let r00001653: u32 = r00001652 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5619 : bytes5619=statementBytes 5715 (op5619.map lower) ∧ bytes5619.length=54 := by core033_kernel_decide
def op5620 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5620 : Bytes := ("    let r00001654: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5620 : bytes5620=statementBytes 5716 (op5620.map lower) ∧ bytes5620.length=41 := by core033_kernel_decide
def op5621 : List WordIR.Op := [.bxor 5715 5716]
def bytes5621 : Bytes := ("    let r00001655: u32 = r00001653 ^ r00001654;\n" : String).toByteArray.data.toList
theorem checked5621 : bytes5621=statementBytes 5717 (op5621.map lower) ∧ bytes5621.length=48 := by core033_kernel_decide
def op5622 : List WordIR.Op := [.bnot 5717]
def bytes5622 : Bytes := ("    let r00001656: u32 = !r00001655;\n" : String).toByteArray.data.toList
theorem checked5622 : bytes5622=statementBytes 5718 (op5622.map lower) ∧ bytes5622.length=37 := by core033_kernel_decide
def op5623 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5623 : Bytes := ("    let r00001657: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5623 : bytes5623=statementBytes 5719 (op5623.map lower) ∧ bytes5623.length=41 := by core033_kernel_decide
def op5624 : List WordIR.Op := [.badd 5718 5719]
def bytes5624 : Bytes := ("    let r00001658: u32 = r00001656.wrapping_add(r00001657);\n" : String).toByteArray.data.toList
theorem checked5624 : bytes5624=statementBytes 5720 (op5624.map lower) ∧ bytes5624.length=60 := by core033_kernel_decide
def op5625 : List WordIR.Op := [.bnot 5720]
def bytes5625 : Bytes := ("    let r00001659: u32 = !r00001658;\n" : String).toByteArray.data.toList
theorem checked5625 : bytes5625=statementBytes 5721 (op5625.map lower) ∧ bytes5625.length=37 := by core033_kernel_decide
def op5626 : List WordIR.Op := [.band 5721 1983]
def bytes5626 : Bytes := ("    let r0000165a: u32 = r00001659 & r000007bf;\n" : String).toByteArray.data.toList
theorem checked5626 : bytes5626=statementBytes 5722 (op5626.map lower) ∧ bytes5626.length=48 := by core033_kernel_decide
def op5627 : List WordIR.Op := [.bxor 5696 5722]
def bytes5627 : Bytes := ("    let r0000165b: u32 = r00001640 ^ r0000165a;\n" : String).toByteArray.data.toList
theorem checked5627 : bytes5627=statementBytes 5723 (op5627.map lower) ∧ bytes5627.length=48 := by core033_kernel_decide
def op5628 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5628 : Bytes := ("    let r0000165c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5628 : bytes5628=statementBytes 5724 (op5628.map lower) ∧ bytes5628.length=41 := by core033_kernel_decide
def op5629 : List WordIR.Op := [.bxor 616 5724]
def bytes5629 : Bytes := ("    let r0000165d: u32 = r00000268 ^ r0000165c;\n" : String).toByteArray.data.toList
theorem checked5629 : bytes5629=statementBytes 5725 (op5629.map lower) ∧ bytes5629.length=48 := by core033_kernel_decide
def op5630 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5630 : Bytes := ("    let r0000165e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5630 : bytes5630=statementBytes 5726 (op5630.map lower) ∧ bytes5630.length=41 := by core033_kernel_decide
def op5631 : List WordIR.Op := [.bnot 5726]
def bytes5631 : Bytes := ("    let r0000165f: u32 = !r0000165e;\n" : String).toByteArray.data.toList
theorem checked5631 : bytes5631=statementBytes 5727 (op5631.map lower) ∧ bytes5631.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5568,op5569,op5570,op5571,op5572,op5573,op5574,op5575,op5576,op5577,op5578,op5579,op5580,op5581,op5582,op5583,op5584,op5585,op5586,op5587,op5588,op5589,op5590,op5591,op5592,op5593,op5594,op5595,op5596,op5597,op5598,op5599,op5600,op5601,op5602,op5603,op5604,op5605,op5606,op5607,op5608,op5609,op5610,op5611,op5612,op5613,op5614,op5615,op5616,op5617,op5618,op5619,op5620,op5621,op5622,op5623,op5624,op5625,op5626,op5627,op5628,op5629,op5630,op5631]
def chunks : List Bytes := [bytes5568,bytes5569,bytes5570,bytes5571,bytes5572,bytes5573,bytes5574,bytes5575,bytes5576,bytes5577,bytes5578,bytes5579,bytes5580,bytes5581,bytes5582,bytes5583,bytes5584,bytes5585,bytes5586,bytes5587,bytes5588,bytes5589,bytes5590,bytes5591,bytes5592,bytes5593,bytes5594,bytes5595,bytes5596,bytes5597,bytes5598,bytes5599,bytes5600,bytes5601,bytes5602,bytes5603,bytes5604,bytes5605,bytes5606,bytes5607,bytes5608,bytes5609,bytes5610,bytes5611,bytes5612,bytes5613,bytes5614,bytes5615,bytes5616,bytes5617,bytes5618,bytes5619,bytes5620,bytes5621,bytes5622,bytes5623,bytes5624,bytes5625,bytes5626,bytes5627,bytes5628,bytes5629,bytes5630,bytes5631]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5664 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5568.1 (.cons _ _ _ _ _ checked5569.1 (.cons _ _ _ _ _ checked5570.1 (.cons _ _ _ _ _ checked5571.1 (.cons _ _ _ _ _ checked5572.1 (.cons _ _ _ _ _ checked5573.1 (.cons _ _ _ _ _ checked5574.1 (.cons _ _ _ _ _ checked5575.1 (.cons _ _ _ _ _ checked5576.1 (.cons _ _ _ _ _ checked5577.1 (.cons _ _ _ _ _ checked5578.1 (.cons _ _ _ _ _ checked5579.1 (.cons _ _ _ _ _ checked5580.1 (.cons _ _ _ _ _ checked5581.1 (.cons _ _ _ _ _ checked5582.1 (.cons _ _ _ _ _ checked5583.1 (.cons _ _ _ _ _ checked5584.1 (.cons _ _ _ _ _ checked5585.1 (.cons _ _ _ _ _ checked5586.1 (.cons _ _ _ _ _ checked5587.1 (.cons _ _ _ _ _ checked5588.1 (.cons _ _ _ _ _ checked5589.1 (.cons _ _ _ _ _ checked5590.1 (.cons _ _ _ _ _ checked5591.1 (.cons _ _ _ _ _ checked5592.1 (.cons _ _ _ _ _ checked5593.1 (.cons _ _ _ _ _ checked5594.1 (.cons _ _ _ _ _ checked5595.1 (.cons _ _ _ _ _ checked5596.1 (.cons _ _ _ _ _ checked5597.1 (.cons _ _ _ _ _ checked5598.1 (.cons _ _ _ _ _ checked5599.1 (.cons _ _ _ _ _ checked5600.1 (.cons _ _ _ _ _ checked5601.1 (.cons _ _ _ _ _ checked5602.1 (.cons _ _ _ _ _ checked5603.1 (.cons _ _ _ _ _ checked5604.1 (.cons _ _ _ _ _ checked5605.1 (.cons _ _ _ _ _ checked5606.1 (.cons _ _ _ _ _ checked5607.1 (.cons _ _ _ _ _ checked5608.1 (.cons _ _ _ _ _ checked5609.1 (.cons _ _ _ _ _ checked5610.1 (.cons _ _ _ _ _ checked5611.1 (.cons _ _ _ _ _ checked5612.1 (.cons _ _ _ _ _ checked5613.1 (.cons _ _ _ _ _ checked5614.1 (.cons _ _ _ _ _ checked5615.1 (.cons _ _ _ _ _ checked5616.1 (.cons _ _ _ _ _ checked5617.1 (.cons _ _ _ _ _ checked5618.1 (.cons _ _ _ _ _ checked5619.1 (.cons _ _ _ _ _ checked5620.1 (.cons _ _ _ _ _ checked5621.1 (.cons _ _ _ _ _ checked5622.1 (.cons _ _ _ _ _ checked5623.1 (.cons _ _ _ _ _ checked5624.1 (.cons _ _ _ _ _ checked5625.1 (.cons _ _ _ _ _ checked5626.1 (.cons _ _ _ _ _ checked5627.1 (.cons _ _ _ _ _ checked5628.1 (.cons _ _ _ _ _ checked5629.1 (.cons _ _ _ _ _ checked5630.1 (.cons _ _ _ _ _ checked5631.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5664 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5568.2,checked5569.2,checked5570.2,checked5571.2,checked5572.2,checked5573.2,checked5574.2,checked5575.2,checked5576.2,checked5577.2,checked5578.2,checked5579.2,checked5580.2,checked5581.2,checked5582.2,checked5583.2,checked5584.2,checked5585.2,checked5586.2,checked5587.2,checked5588.2,checked5589.2,checked5590.2,checked5591.2,checked5592.2,checked5593.2,checked5594.2,checked5595.2,checked5596.2,checked5597.2,checked5598.2,checked5599.2,checked5600.2,checked5601.2,checked5602.2,checked5603.2,checked5604.2,checked5605.2,checked5606.2,checked5607.2,checked5608.2,checked5609.2,checked5610.2,checked5611.2,checked5612.2,checked5613.2,checked5614.2,checked5615.2,checked5616.2,checked5617.2,checked5618.2,checked5619.2,checked5620.2,checked5621.2,checked5622.2,checked5623.2,checked5624.2,checked5625.2,checked5626.2,checked5627.2,checked5628.2,checked5629.2,checked5630.2,checked5631.2]
  decide
end ArtifactPairedPathRoundGroup87
