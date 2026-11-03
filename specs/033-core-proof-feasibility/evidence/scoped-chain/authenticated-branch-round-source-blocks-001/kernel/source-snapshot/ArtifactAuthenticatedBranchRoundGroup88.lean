import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup88
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5632 : List WordIR.Op := [.badd 5748 5749]
def bytes5632 : Bytes := ("    let r00001676: u32 = r00001674.wrapping_add(r00001675);\n" : String).toByteArray.data.toList
theorem checked5632 : bytes5632=statementBytes 5750 (op5632.map lower) ∧ bytes5632.length=60 := by core033_kernel_decide
def op5633 : List WordIR.Op := [.band 5750 2822]
def bytes5633 : Bytes := ("    let r00001677: u32 = r00001676 & r00000b06;\n" : String).toByteArray.data.toList
theorem checked5633 : bytes5633=statementBytes 5751 (op5633.map lower) ∧ bytes5633.length=48 := by core033_kernel_decide
def op5634 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5634 : Bytes := ("    let r00001678: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5634 : bytes5634=statementBytes 5752 (op5634.map lower) ∧ bytes5634.length=41 := by core033_kernel_decide
def op5635 : List WordIR.Op := [.bxor 1299 5752]
def bytes5635 : Bytes := ("    let r00001679: u32 = r00000513 ^ r00001678;\n" : String).toByteArray.data.toList
theorem checked5635 : bytes5635=statementBytes 5753 (op5635.map lower) ∧ bytes5635.length=48 := by core033_kernel_decide
def op5636 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5636 : Bytes := ("    let r0000167a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5636 : bytes5636=statementBytes 5754 (op5636.map lower) ∧ bytes5636.length=41 := by core033_kernel_decide
def op5637 : List WordIR.Op := [.bnot 5754]
def bytes5637 : Bytes := ("    let r0000167b: u32 = !r0000167a;\n" : String).toByteArray.data.toList
theorem checked5637 : bytes5637=statementBytes 5755 (op5637.map lower) ∧ bytes5637.length=37 := by core033_kernel_decide
def op5638 : List WordIR.Op := [.band 5753 5755]
def bytes5638 : Bytes := ("    let r0000167c: u32 = r00001679 & r0000167b;\n" : String).toByteArray.data.toList
theorem checked5638 : bytes5638=statementBytes 5756 (op5638.map lower) ∧ bytes5638.length=48 := by core033_kernel_decide
def op5639 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5639 : Bytes := ("    let r0000167d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5639 : bytes5639=statementBytes 5757 (op5639.map lower) ∧ bytes5639.length=41 := by core033_kernel_decide
def op5640 : List WordIR.Op := [.bxor 1299 5757]
def bytes5640 : Bytes := ("    let r0000167e: u32 = r00000513 ^ r0000167d;\n" : String).toByteArray.data.toList
theorem checked5640 : bytes5640=statementBytes 5758 (op5640.map lower) ∧ bytes5640.length=48 := by core033_kernel_decide
def op5641 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5641 : Bytes := ("    let r0000167f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5641 : bytes5641=statementBytes 5759 (op5641.map lower) ∧ bytes5641.length=41 := by core033_kernel_decide
def op5642 : List WordIR.Op := [.bnot 5759]
def bytes5642 : Bytes := ("    let r00001680: u32 = !r0000167f;\n" : String).toByteArray.data.toList
theorem checked5642 : bytes5642=statementBytes 5760 (op5642.map lower) ∧ bytes5642.length=37 := by core033_kernel_decide
def op5643 : List WordIR.Op := [.bxor 5758 5760]
def bytes5643 : Bytes := ("    let r00001681: u32 = r0000167e ^ r00001680;\n" : String).toByteArray.data.toList
theorem checked5643 : bytes5643=statementBytes 5761 (op5643.map lower) ∧ bytes5643.length=48 := by core033_kernel_decide
def op5644 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5644 : Bytes := ("    let r00001682: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5644 : bytes5644=statementBytes 5762 (op5644.map lower) ∧ bytes5644.length=41 := by core033_kernel_decide
def op5645 : List WordIR.Op := [.bxor 1299 5762]
def bytes5645 : Bytes := ("    let r00001683: u32 = r00000513 ^ r00001682;\n" : String).toByteArray.data.toList
theorem checked5645 : bytes5645=statementBytes 5763 (op5645.map lower) ∧ bytes5645.length=48 := by core033_kernel_decide
def op5646 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5646 : Bytes := ("    let r00001684: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5646 : bytes5646=statementBytes 5764 (op5646.map lower) ∧ bytes5646.length=41 := by core033_kernel_decide
def op5647 : List WordIR.Op := [.bnot 5764]
def bytes5647 : Bytes := ("    let r00001685: u32 = !r00001684;\n" : String).toByteArray.data.toList
theorem checked5647 : bytes5647=statementBytes 5765 (op5647.map lower) ∧ bytes5647.length=37 := by core033_kernel_decide
def op5648 : List WordIR.Op := [.badd 5763 5765]
def bytes5648 : Bytes := ("    let r00001686: u32 = r00001683.wrapping_add(r00001685);\n" : String).toByteArray.data.toList
theorem checked5648 : bytes5648=statementBytes 5766 (op5648.map lower) ∧ bytes5648.length=60 := by core033_kernel_decide
def op5649 : List WordIR.Op := [.bnot 5766]
def bytes5649 : Bytes := ("    let r00001687: u32 = !r00001686;\n" : String).toByteArray.data.toList
theorem checked5649 : bytes5649=statementBytes 5767 (op5649.map lower) ∧ bytes5649.length=37 := by core033_kernel_decide
def op5650 : List WordIR.Op := [.band 5761 5767]
def bytes5650 : Bytes := ("    let r00001688: u32 = r00001681 & r00001687;\n" : String).toByteArray.data.toList
theorem checked5650 : bytes5650=statementBytes 5768 (op5650.map lower) ∧ bytes5650.length=48 := by core033_kernel_decide
def op5651 : List WordIR.Op := [.bxor 5756 5768]
def bytes5651 : Bytes := ("    let r00001689: u32 = r0000167c ^ r00001688;\n" : String).toByteArray.data.toList
theorem checked5651 : bytes5651=statementBytes 5769 (op5651.map lower) ∧ bytes5651.length=48 := by core033_kernel_decide
def op5652 : List WordIR.Op := [.shr 5769 31]
def bytes5652 : Bytes := ("    let r0000168a: u32 = r00001689 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5652 : bytes5652=statementBytes 5770 (op5652.map lower) ∧ bytes5652.length=54 := by core033_kernel_decide
def op5653 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5653 : Bytes := ("    let r0000168b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5653 : bytes5653=statementBytes 5771 (op5653.map lower) ∧ bytes5653.length=41 := by core033_kernel_decide
def op5654 : List WordIR.Op := [.bxor 5770 5771]
def bytes5654 : Bytes := ("    let r0000168c: u32 = r0000168a ^ r0000168b;\n" : String).toByteArray.data.toList
theorem checked5654 : bytes5654=statementBytes 5772 (op5654.map lower) ∧ bytes5654.length=48 := by core033_kernel_decide
def op5655 : List WordIR.Op := [.bnot 5772]
def bytes5655 : Bytes := ("    let r0000168d: u32 = !r0000168c;\n" : String).toByteArray.data.toList
theorem checked5655 : bytes5655=statementBytes 5773 (op5655.map lower) ∧ bytes5655.length=37 := by core033_kernel_decide
def op5656 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5656 : Bytes := ("    let r0000168e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5656 : bytes5656=statementBytes 5774 (op5656.map lower) ∧ bytes5656.length=41 := by core033_kernel_decide
def op5657 : List WordIR.Op := [.badd 5773 5774]
def bytes5657 : Bytes := ("    let r0000168f: u32 = r0000168d.wrapping_add(r0000168e);\n" : String).toByteArray.data.toList
theorem checked5657 : bytes5657=statementBytes 5775 (op5657.map lower) ∧ bytes5657.length=60 := by core033_kernel_decide
def op5658 : List WordIR.Op := [.bnot 5775]
def bytes5658 : Bytes := ("    let r00001690: u32 = !r0000168f;\n" : String).toByteArray.data.toList
theorem checked5658 : bytes5658=statementBytes 5776 (op5658.map lower) ∧ bytes5658.length=37 := by core033_kernel_decide
def op5659 : List WordIR.Op := [.band 5776 2630]
def bytes5659 : Bytes := ("    let r00001691: u32 = r00001690 & r00000a46;\n" : String).toByteArray.data.toList
theorem checked5659 : bytes5659=statementBytes 5777 (op5659.map lower) ∧ bytes5659.length=48 := by core033_kernel_decide
def op5660 : List WordIR.Op := [.bxor 5751 5777]
def bytes5660 : Bytes := ("    let r00001692: u32 = r00001677 ^ r00001691;\n" : String).toByteArray.data.toList
theorem checked5660 : bytes5660=statementBytes 5778 (op5660.map lower) ∧ bytes5660.length=48 := by core033_kernel_decide
def op5661 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5661 : Bytes := ("    let r00001693: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5661 : bytes5661=statementBytes 5779 (op5661.map lower) ∧ bytes5661.length=41 := by core033_kernel_decide
def op5662 : List WordIR.Op := [.bxor 1299 5779]
def bytes5662 : Bytes := ("    let r00001694: u32 = r00000513 ^ r00001693;\n" : String).toByteArray.data.toList
theorem checked5662 : bytes5662=statementBytes 5780 (op5662.map lower) ∧ bytes5662.length=48 := by core033_kernel_decide
def op5663 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5663 : Bytes := ("    let r00001695: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5663 : bytes5663=statementBytes 5781 (op5663.map lower) ∧ bytes5663.length=41 := by core033_kernel_decide
def op5664 : List WordIR.Op := [.bnot 5781]
def bytes5664 : Bytes := ("    let r00001696: u32 = !r00001695;\n" : String).toByteArray.data.toList
theorem checked5664 : bytes5664=statementBytes 5782 (op5664.map lower) ∧ bytes5664.length=37 := by core033_kernel_decide
def op5665 : List WordIR.Op := [.band 5780 5782]
def bytes5665 : Bytes := ("    let r00001697: u32 = r00001694 & r00001696;\n" : String).toByteArray.data.toList
theorem checked5665 : bytes5665=statementBytes 5783 (op5665.map lower) ∧ bytes5665.length=48 := by core033_kernel_decide
def op5666 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5666 : Bytes := ("    let r00001698: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5666 : bytes5666=statementBytes 5784 (op5666.map lower) ∧ bytes5666.length=41 := by core033_kernel_decide
def op5667 : List WordIR.Op := [.bxor 1299 5784]
def bytes5667 : Bytes := ("    let r00001699: u32 = r00000513 ^ r00001698;\n" : String).toByteArray.data.toList
theorem checked5667 : bytes5667=statementBytes 5785 (op5667.map lower) ∧ bytes5667.length=48 := by core033_kernel_decide
def op5668 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5668 : Bytes := ("    let r0000169a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5668 : bytes5668=statementBytes 5786 (op5668.map lower) ∧ bytes5668.length=41 := by core033_kernel_decide
def op5669 : List WordIR.Op := [.bnot 5786]
def bytes5669 : Bytes := ("    let r0000169b: u32 = !r0000169a;\n" : String).toByteArray.data.toList
theorem checked5669 : bytes5669=statementBytes 5787 (op5669.map lower) ∧ bytes5669.length=37 := by core033_kernel_decide
def op5670 : List WordIR.Op := [.bxor 5785 5787]
def bytes5670 : Bytes := ("    let r0000169c: u32 = r00001699 ^ r0000169b;\n" : String).toByteArray.data.toList
theorem checked5670 : bytes5670=statementBytes 5788 (op5670.map lower) ∧ bytes5670.length=48 := by core033_kernel_decide
def op5671 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5671 : Bytes := ("    let r0000169d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5671 : bytes5671=statementBytes 5789 (op5671.map lower) ∧ bytes5671.length=41 := by core033_kernel_decide
def op5672 : List WordIR.Op := [.bxor 1299 5789]
def bytes5672 : Bytes := ("    let r0000169e: u32 = r00000513 ^ r0000169d;\n" : String).toByteArray.data.toList
theorem checked5672 : bytes5672=statementBytes 5790 (op5672.map lower) ∧ bytes5672.length=48 := by core033_kernel_decide
def op5673 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5673 : Bytes := ("    let r0000169f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5673 : bytes5673=statementBytes 5791 (op5673.map lower) ∧ bytes5673.length=41 := by core033_kernel_decide
def op5674 : List WordIR.Op := [.bnot 5791]
def bytes5674 : Bytes := ("    let r000016a0: u32 = !r0000169f;\n" : String).toByteArray.data.toList
theorem checked5674 : bytes5674=statementBytes 5792 (op5674.map lower) ∧ bytes5674.length=37 := by core033_kernel_decide
def op5675 : List WordIR.Op := [.badd 5790 5792]
def bytes5675 : Bytes := ("    let r000016a1: u32 = r0000169e.wrapping_add(r000016a0);\n" : String).toByteArray.data.toList
theorem checked5675 : bytes5675=statementBytes 5793 (op5675.map lower) ∧ bytes5675.length=60 := by core033_kernel_decide
def op5676 : List WordIR.Op := [.bnot 5793]
def bytes5676 : Bytes := ("    let r000016a2: u32 = !r000016a1;\n" : String).toByteArray.data.toList
theorem checked5676 : bytes5676=statementBytes 5794 (op5676.map lower) ∧ bytes5676.length=37 := by core033_kernel_decide
def op5677 : List WordIR.Op := [.band 5788 5794]
def bytes5677 : Bytes := ("    let r000016a3: u32 = r0000169c & r000016a2;\n" : String).toByteArray.data.toList
theorem checked5677 : bytes5677=statementBytes 5795 (op5677.map lower) ∧ bytes5677.length=48 := by core033_kernel_decide
def op5678 : List WordIR.Op := [.bxor 5783 5795]
def bytes5678 : Bytes := ("    let r000016a4: u32 = r00001697 ^ r000016a3;\n" : String).toByteArray.data.toList
theorem checked5678 : bytes5678=statementBytes 5796 (op5678.map lower) ∧ bytes5678.length=48 := by core033_kernel_decide
def op5679 : List WordIR.Op := [.shr 5796 31]
def bytes5679 : Bytes := ("    let r000016a5: u32 = r000016a4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5679 : bytes5679=statementBytes 5797 (op5679.map lower) ∧ bytes5679.length=54 := by core033_kernel_decide
def op5680 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5680 : Bytes := ("    let r000016a6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5680 : bytes5680=statementBytes 5798 (op5680.map lower) ∧ bytes5680.length=41 := by core033_kernel_decide
def op5681 : List WordIR.Op := [.bxor 5797 5798]
def bytes5681 : Bytes := ("    let r000016a7: u32 = r000016a5 ^ r000016a6;\n" : String).toByteArray.data.toList
theorem checked5681 : bytes5681=statementBytes 5799 (op5681.map lower) ∧ bytes5681.length=48 := by core033_kernel_decide
def op5682 : List WordIR.Op := [.bnot 5799]
def bytes5682 : Bytes := ("    let r000016a8: u32 = !r000016a7;\n" : String).toByteArray.data.toList
theorem checked5682 : bytes5682=statementBytes 5800 (op5682.map lower) ∧ bytes5682.length=37 := by core033_kernel_decide
def op5683 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5683 : Bytes := ("    let r000016a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5683 : bytes5683=statementBytes 5801 (op5683.map lower) ∧ bytes5683.length=41 := by core033_kernel_decide
def op5684 : List WordIR.Op := [.badd 5800 5801]
def bytes5684 : Bytes := ("    let r000016aa: u32 = r000016a8.wrapping_add(r000016a9);\n" : String).toByteArray.data.toList
theorem checked5684 : bytes5684=statementBytes 5802 (op5684.map lower) ∧ bytes5684.length=60 := by core033_kernel_decide
def op5685 : List WordIR.Op := [.band 5802 2825]
def bytes5685 : Bytes := ("    let r000016ab: u32 = r000016aa & r00000b09;\n" : String).toByteArray.data.toList
theorem checked5685 : bytes5685=statementBytes 5803 (op5685.map lower) ∧ bytes5685.length=48 := by core033_kernel_decide
def op5686 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5686 : Bytes := ("    let r000016ac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5686 : bytes5686=statementBytes 5804 (op5686.map lower) ∧ bytes5686.length=41 := by core033_kernel_decide
def op5687 : List WordIR.Op := [.bxor 1299 5804]
def bytes5687 : Bytes := ("    let r000016ad: u32 = r00000513 ^ r000016ac;\n" : String).toByteArray.data.toList
theorem checked5687 : bytes5687=statementBytes 5805 (op5687.map lower) ∧ bytes5687.length=48 := by core033_kernel_decide
def op5688 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5688 : Bytes := ("    let r000016ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5688 : bytes5688=statementBytes 5806 (op5688.map lower) ∧ bytes5688.length=41 := by core033_kernel_decide
def op5689 : List WordIR.Op := [.bnot 5806]
def bytes5689 : Bytes := ("    let r000016af: u32 = !r000016ae;\n" : String).toByteArray.data.toList
theorem checked5689 : bytes5689=statementBytes 5807 (op5689.map lower) ∧ bytes5689.length=37 := by core033_kernel_decide
def op5690 : List WordIR.Op := [.band 5805 5807]
def bytes5690 : Bytes := ("    let r000016b0: u32 = r000016ad & r000016af;\n" : String).toByteArray.data.toList
theorem checked5690 : bytes5690=statementBytes 5808 (op5690.map lower) ∧ bytes5690.length=48 := by core033_kernel_decide
def op5691 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5691 : Bytes := ("    let r000016b1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5691 : bytes5691=statementBytes 5809 (op5691.map lower) ∧ bytes5691.length=41 := by core033_kernel_decide
def op5692 : List WordIR.Op := [.bxor 1299 5809]
def bytes5692 : Bytes := ("    let r000016b2: u32 = r00000513 ^ r000016b1;\n" : String).toByteArray.data.toList
theorem checked5692 : bytes5692=statementBytes 5810 (op5692.map lower) ∧ bytes5692.length=48 := by core033_kernel_decide
def op5693 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5693 : Bytes := ("    let r000016b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5693 : bytes5693=statementBytes 5811 (op5693.map lower) ∧ bytes5693.length=41 := by core033_kernel_decide
def op5694 : List WordIR.Op := [.bnot 5811]
def bytes5694 : Bytes := ("    let r000016b4: u32 = !r000016b3;\n" : String).toByteArray.data.toList
theorem checked5694 : bytes5694=statementBytes 5812 (op5694.map lower) ∧ bytes5694.length=37 := by core033_kernel_decide
def op5695 : List WordIR.Op := [.bxor 5810 5812]
def bytes5695 : Bytes := ("    let r000016b5: u32 = r000016b2 ^ r000016b4;\n" : String).toByteArray.data.toList
theorem checked5695 : bytes5695=statementBytes 5813 (op5695.map lower) ∧ bytes5695.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5632,op5633,op5634,op5635,op5636,op5637,op5638,op5639,op5640,op5641,op5642,op5643,op5644,op5645,op5646,op5647,op5648,op5649,op5650,op5651,op5652,op5653,op5654,op5655,op5656,op5657,op5658,op5659,op5660,op5661,op5662,op5663,op5664,op5665,op5666,op5667,op5668,op5669,op5670,op5671,op5672,op5673,op5674,op5675,op5676,op5677,op5678,op5679,op5680,op5681,op5682,op5683,op5684,op5685,op5686,op5687,op5688,op5689,op5690,op5691,op5692,op5693,op5694,op5695]
def chunks : List Bytes := [bytes5632,bytes5633,bytes5634,bytes5635,bytes5636,bytes5637,bytes5638,bytes5639,bytes5640,bytes5641,bytes5642,bytes5643,bytes5644,bytes5645,bytes5646,bytes5647,bytes5648,bytes5649,bytes5650,bytes5651,bytes5652,bytes5653,bytes5654,bytes5655,bytes5656,bytes5657,bytes5658,bytes5659,bytes5660,bytes5661,bytes5662,bytes5663,bytes5664,bytes5665,bytes5666,bytes5667,bytes5668,bytes5669,bytes5670,bytes5671,bytes5672,bytes5673,bytes5674,bytes5675,bytes5676,bytes5677,bytes5678,bytes5679,bytes5680,bytes5681,bytes5682,bytes5683,bytes5684,bytes5685,bytes5686,bytes5687,bytes5688,bytes5689,bytes5690,bytes5691,bytes5692,bytes5693,bytes5694,bytes5695]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5750 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5632.1 (.cons _ _ _ _ _ checked5633.1 (.cons _ _ _ _ _ checked5634.1 (.cons _ _ _ _ _ checked5635.1 (.cons _ _ _ _ _ checked5636.1 (.cons _ _ _ _ _ checked5637.1 (.cons _ _ _ _ _ checked5638.1 (.cons _ _ _ _ _ checked5639.1 (.cons _ _ _ _ _ checked5640.1 (.cons _ _ _ _ _ checked5641.1 (.cons _ _ _ _ _ checked5642.1 (.cons _ _ _ _ _ checked5643.1 (.cons _ _ _ _ _ checked5644.1 (.cons _ _ _ _ _ checked5645.1 (.cons _ _ _ _ _ checked5646.1 (.cons _ _ _ _ _ checked5647.1 (.cons _ _ _ _ _ checked5648.1 (.cons _ _ _ _ _ checked5649.1 (.cons _ _ _ _ _ checked5650.1 (.cons _ _ _ _ _ checked5651.1 (.cons _ _ _ _ _ checked5652.1 (.cons _ _ _ _ _ checked5653.1 (.cons _ _ _ _ _ checked5654.1 (.cons _ _ _ _ _ checked5655.1 (.cons _ _ _ _ _ checked5656.1 (.cons _ _ _ _ _ checked5657.1 (.cons _ _ _ _ _ checked5658.1 (.cons _ _ _ _ _ checked5659.1 (.cons _ _ _ _ _ checked5660.1 (.cons _ _ _ _ _ checked5661.1 (.cons _ _ _ _ _ checked5662.1 (.cons _ _ _ _ _ checked5663.1 (.cons _ _ _ _ _ checked5664.1 (.cons _ _ _ _ _ checked5665.1 (.cons _ _ _ _ _ checked5666.1 (.cons _ _ _ _ _ checked5667.1 (.cons _ _ _ _ _ checked5668.1 (.cons _ _ _ _ _ checked5669.1 (.cons _ _ _ _ _ checked5670.1 (.cons _ _ _ _ _ checked5671.1 (.cons _ _ _ _ _ checked5672.1 (.cons _ _ _ _ _ checked5673.1 (.cons _ _ _ _ _ checked5674.1 (.cons _ _ _ _ _ checked5675.1 (.cons _ _ _ _ _ checked5676.1 (.cons _ _ _ _ _ checked5677.1 (.cons _ _ _ _ _ checked5678.1 (.cons _ _ _ _ _ checked5679.1 (.cons _ _ _ _ _ checked5680.1 (.cons _ _ _ _ _ checked5681.1 (.cons _ _ _ _ _ checked5682.1 (.cons _ _ _ _ _ checked5683.1 (.cons _ _ _ _ _ checked5684.1 (.cons _ _ _ _ _ checked5685.1 (.cons _ _ _ _ _ checked5686.1 (.cons _ _ _ _ _ checked5687.1 (.cons _ _ _ _ _ checked5688.1 (.cons _ _ _ _ _ checked5689.1 (.cons _ _ _ _ _ checked5690.1 (.cons _ _ _ _ _ checked5691.1 (.cons _ _ _ _ _ checked5692.1 (.cons _ _ _ _ _ checked5693.1 (.cons _ _ _ _ _ checked5694.1 (.cons _ _ _ _ _ checked5695.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5750 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5632.2,checked5633.2,checked5634.2,checked5635.2,checked5636.2,checked5637.2,checked5638.2,checked5639.2,checked5640.2,checked5641.2,checked5642.2,checked5643.2,checked5644.2,checked5645.2,checked5646.2,checked5647.2,checked5648.2,checked5649.2,checked5650.2,checked5651.2,checked5652.2,checked5653.2,checked5654.2,checked5655.2,checked5656.2,checked5657.2,checked5658.2,checked5659.2,checked5660.2,checked5661.2,checked5662.2,checked5663.2,checked5664.2,checked5665.2,checked5666.2,checked5667.2,checked5668.2,checked5669.2,checked5670.2,checked5671.2,checked5672.2,checked5673.2,checked5674.2,checked5675.2,checked5676.2,checked5677.2,checked5678.2,checked5679.2,checked5680.2,checked5681.2,checked5682.2,checked5683.2,checked5684.2,checked5685.2,checked5686.2,checked5687.2,checked5688.2,checked5689.2,checked5690.2,checked5691.2,checked5692.2,checked5693.2,checked5694.2,checked5695.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup88
