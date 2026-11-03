import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup103
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6592 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6592 : Bytes := ("    let r00001a36: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6592 : bytes6592=statementBytes 6710 (op6592.map lower) ∧ bytes6592.length=41 := by core033_kernel_decide
def op6593 : List WordIR.Op := [.bnot 6710]
def bytes6593 : Bytes := ("    let r00001a37: u32 = !r00001a36;\n" : String).toByteArray.data.toList
theorem checked6593 : bytes6593=statementBytes 6711 (op6593.map lower) ∧ bytes6593.length=37 := by core033_kernel_decide
def op6594 : List WordIR.Op := [.badd 6709 6711]
def bytes6594 : Bytes := ("    let r00001a38: u32 = r00001a35.wrapping_add(r00001a37);\n" : String).toByteArray.data.toList
theorem checked6594 : bytes6594=statementBytes 6712 (op6594.map lower) ∧ bytes6594.length=60 := by core033_kernel_decide
def op6595 : List WordIR.Op := [.bnot 6712]
def bytes6595 : Bytes := ("    let r00001a39: u32 = !r00001a38;\n" : String).toByteArray.data.toList
theorem checked6595 : bytes6595=statementBytes 6713 (op6595.map lower) ∧ bytes6595.length=37 := by core033_kernel_decide
def op6596 : List WordIR.Op := [.band 6707 6713]
def bytes6596 : Bytes := ("    let r00001a3a: u32 = r00001a33 & r00001a39;\n" : String).toByteArray.data.toList
theorem checked6596 : bytes6596=statementBytes 6714 (op6596.map lower) ∧ bytes6596.length=48 := by core033_kernel_decide
def op6597 : List WordIR.Op := [.bxor 6702 6714]
def bytes6597 : Bytes := ("    let r00001a3b: u32 = r00001a2e ^ r00001a3a;\n" : String).toByteArray.data.toList
theorem checked6597 : bytes6597=statementBytes 6715 (op6597.map lower) ∧ bytes6597.length=48 := by core033_kernel_decide
def op6598 : List WordIR.Op := [.shr 6715 31]
def bytes6598 : Bytes := ("    let r00001a3c: u32 = r00001a3b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6598 : bytes6598=statementBytes 6716 (op6598.map lower) ∧ bytes6598.length=54 := by core033_kernel_decide
def op6599 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6599 : Bytes := ("    let r00001a3d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6599 : bytes6599=statementBytes 6717 (op6599.map lower) ∧ bytes6599.length=41 := by core033_kernel_decide
def op6600 : List WordIR.Op := [.bxor 6716 6717]
def bytes6600 : Bytes := ("    let r00001a3e: u32 = r00001a3c ^ r00001a3d;\n" : String).toByteArray.data.toList
theorem checked6600 : bytes6600=statementBytes 6718 (op6600.map lower) ∧ bytes6600.length=48 := by core033_kernel_decide
def op6601 : List WordIR.Op := [.bnot 6718]
def bytes6601 : Bytes := ("    let r00001a3f: u32 = !r00001a3e;\n" : String).toByteArray.data.toList
theorem checked6601 : bytes6601=statementBytes 6719 (op6601.map lower) ∧ bytes6601.length=37 := by core033_kernel_decide
def op6602 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6602 : Bytes := ("    let r00001a40: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6602 : bytes6602=statementBytes 6720 (op6602.map lower) ∧ bytes6602.length=41 := by core033_kernel_decide
def op6603 : List WordIR.Op := [.badd 6719 6720]
def bytes6603 : Bytes := ("    let r00001a41: u32 = r00001a3f.wrapping_add(r00001a40);\n" : String).toByteArray.data.toList
theorem checked6603 : bytes6603=statementBytes 6721 (op6603.map lower) ∧ bytes6603.length=60 := by core033_kernel_decide
def op6604 : List WordIR.Op := [.bnot 6721]
def bytes6604 : Bytes := ("    let r00001a42: u32 = !r00001a41;\n" : String).toByteArray.data.toList
theorem checked6604 : bytes6604=statementBytes 6722 (op6604.map lower) ∧ bytes6604.length=37 := by core033_kernel_decide
def op6605 : List WordIR.Op := [.band 6722 2684]
def bytes6605 : Bytes := ("    let r00001a43: u32 = r00001a42 & r00000a7c;\n" : String).toByteArray.data.toList
theorem checked6605 : bytes6605=statementBytes 6723 (op6605.map lower) ∧ bytes6605.length=48 := by core033_kernel_decide
def op6606 : List WordIR.Op := [.bxor 6697 6723]
def bytes6606 : Bytes := ("    let r00001a44: u32 = r00001a29 ^ r00001a43;\n" : String).toByteArray.data.toList
theorem checked6606 : bytes6606=statementBytes 6724 (op6606.map lower) ∧ bytes6606.length=48 := by core033_kernel_decide
def op6607 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6607 : Bytes := ("    let r00001a45: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6607 : bytes6607=statementBytes 6725 (op6607.map lower) ∧ bytes6607.length=41 := by core033_kernel_decide
def op6608 : List WordIR.Op := [.bxor 1299 6725]
def bytes6608 : Bytes := ("    let r00001a46: u32 = r00000513 ^ r00001a45;\n" : String).toByteArray.data.toList
theorem checked6608 : bytes6608=statementBytes 6726 (op6608.map lower) ∧ bytes6608.length=48 := by core033_kernel_decide
def op6609 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6609 : Bytes := ("    let r00001a47: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6609 : bytes6609=statementBytes 6727 (op6609.map lower) ∧ bytes6609.length=41 := by core033_kernel_decide
def op6610 : List WordIR.Op := [.bnot 6727]
def bytes6610 : Bytes := ("    let r00001a48: u32 = !r00001a47;\n" : String).toByteArray.data.toList
theorem checked6610 : bytes6610=statementBytes 6728 (op6610.map lower) ∧ bytes6610.length=37 := by core033_kernel_decide
def op6611 : List WordIR.Op := [.band 6726 6728]
def bytes6611 : Bytes := ("    let r00001a49: u32 = r00001a46 & r00001a48;\n" : String).toByteArray.data.toList
theorem checked6611 : bytes6611=statementBytes 6729 (op6611.map lower) ∧ bytes6611.length=48 := by core033_kernel_decide
def op6612 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6612 : Bytes := ("    let r00001a4a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6612 : bytes6612=statementBytes 6730 (op6612.map lower) ∧ bytes6612.length=41 := by core033_kernel_decide
def op6613 : List WordIR.Op := [.bxor 1299 6730]
def bytes6613 : Bytes := ("    let r00001a4b: u32 = r00000513 ^ r00001a4a;\n" : String).toByteArray.data.toList
theorem checked6613 : bytes6613=statementBytes 6731 (op6613.map lower) ∧ bytes6613.length=48 := by core033_kernel_decide
def op6614 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6614 : Bytes := ("    let r00001a4c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6614 : bytes6614=statementBytes 6732 (op6614.map lower) ∧ bytes6614.length=41 := by core033_kernel_decide
def op6615 : List WordIR.Op := [.bnot 6732]
def bytes6615 : Bytes := ("    let r00001a4d: u32 = !r00001a4c;\n" : String).toByteArray.data.toList
theorem checked6615 : bytes6615=statementBytes 6733 (op6615.map lower) ∧ bytes6615.length=37 := by core033_kernel_decide
def op6616 : List WordIR.Op := [.bxor 6731 6733]
def bytes6616 : Bytes := ("    let r00001a4e: u32 = r00001a4b ^ r00001a4d;\n" : String).toByteArray.data.toList
theorem checked6616 : bytes6616=statementBytes 6734 (op6616.map lower) ∧ bytes6616.length=48 := by core033_kernel_decide
def op6617 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6617 : Bytes := ("    let r00001a4f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6617 : bytes6617=statementBytes 6735 (op6617.map lower) ∧ bytes6617.length=41 := by core033_kernel_decide
def op6618 : List WordIR.Op := [.bxor 1299 6735]
def bytes6618 : Bytes := ("    let r00001a50: u32 = r00000513 ^ r00001a4f;\n" : String).toByteArray.data.toList
theorem checked6618 : bytes6618=statementBytes 6736 (op6618.map lower) ∧ bytes6618.length=48 := by core033_kernel_decide
def op6619 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6619 : Bytes := ("    let r00001a51: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6619 : bytes6619=statementBytes 6737 (op6619.map lower) ∧ bytes6619.length=41 := by core033_kernel_decide
def op6620 : List WordIR.Op := [.bnot 6737]
def bytes6620 : Bytes := ("    let r00001a52: u32 = !r00001a51;\n" : String).toByteArray.data.toList
theorem checked6620 : bytes6620=statementBytes 6738 (op6620.map lower) ∧ bytes6620.length=37 := by core033_kernel_decide
def op6621 : List WordIR.Op := [.badd 6736 6738]
def bytes6621 : Bytes := ("    let r00001a53: u32 = r00001a50.wrapping_add(r00001a52);\n" : String).toByteArray.data.toList
theorem checked6621 : bytes6621=statementBytes 6739 (op6621.map lower) ∧ bytes6621.length=60 := by core033_kernel_decide
def op6622 : List WordIR.Op := [.bnot 6739]
def bytes6622 : Bytes := ("    let r00001a54: u32 = !r00001a53;\n" : String).toByteArray.data.toList
theorem checked6622 : bytes6622=statementBytes 6740 (op6622.map lower) ∧ bytes6622.length=37 := by core033_kernel_decide
def op6623 : List WordIR.Op := [.band 6734 6740]
def bytes6623 : Bytes := ("    let r00001a55: u32 = r00001a4e & r00001a54;\n" : String).toByteArray.data.toList
theorem checked6623 : bytes6623=statementBytes 6741 (op6623.map lower) ∧ bytes6623.length=48 := by core033_kernel_decide
def op6624 : List WordIR.Op := [.bxor 6729 6741]
def bytes6624 : Bytes := ("    let r00001a56: u32 = r00001a49 ^ r00001a55;\n" : String).toByteArray.data.toList
theorem checked6624 : bytes6624=statementBytes 6742 (op6624.map lower) ∧ bytes6624.length=48 := by core033_kernel_decide
def op6625 : List WordIR.Op := [.shr 6742 31]
def bytes6625 : Bytes := ("    let r00001a57: u32 = r00001a56 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6625 : bytes6625=statementBytes 6743 (op6625.map lower) ∧ bytes6625.length=54 := by core033_kernel_decide
def op6626 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6626 : Bytes := ("    let r00001a58: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6626 : bytes6626=statementBytes 6744 (op6626.map lower) ∧ bytes6626.length=41 := by core033_kernel_decide
def op6627 : List WordIR.Op := [.bxor 6743 6744]
def bytes6627 : Bytes := ("    let r00001a59: u32 = r00001a57 ^ r00001a58;\n" : String).toByteArray.data.toList
theorem checked6627 : bytes6627=statementBytes 6745 (op6627.map lower) ∧ bytes6627.length=48 := by core033_kernel_decide
def op6628 : List WordIR.Op := [.bnot 6745]
def bytes6628 : Bytes := ("    let r00001a5a: u32 = !r00001a59;\n" : String).toByteArray.data.toList
theorem checked6628 : bytes6628=statementBytes 6746 (op6628.map lower) ∧ bytes6628.length=37 := by core033_kernel_decide
def op6629 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6629 : Bytes := ("    let r00001a5b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6629 : bytes6629=statementBytes 6747 (op6629.map lower) ∧ bytes6629.length=41 := by core033_kernel_decide
def op6630 : List WordIR.Op := [.badd 6746 6747]
def bytes6630 : Bytes := ("    let r00001a5c: u32 = r00001a5a.wrapping_add(r00001a5b);\n" : String).toByteArray.data.toList
theorem checked6630 : bytes6630=statementBytes 6748 (op6630.map lower) ∧ bytes6630.length=60 := by core033_kernel_decide
def op6631 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6631 : Bytes := ("    let r00001a5d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6631 : bytes6631=statementBytes 6749 (op6631.map lower) ∧ bytes6631.length=41 := by core033_kernel_decide
def op6632 : List WordIR.Op := [.band 6748 6749]
def bytes6632 : Bytes := ("    let r00001a5e: u32 = r00001a5c & r00001a5d;\n" : String).toByteArray.data.toList
theorem checked6632 : bytes6632=statementBytes 6750 (op6632.map lower) ∧ bytes6632.length=48 := by core033_kernel_decide
def op6633 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6633 : Bytes := ("    let r00001a5f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6633 : bytes6633=statementBytes 6751 (op6633.map lower) ∧ bytes6633.length=41 := by core033_kernel_decide
def op6634 : List WordIR.Op := [.bxor 1299 6751]
def bytes6634 : Bytes := ("    let r00001a60: u32 = r00000513 ^ r00001a5f;\n" : String).toByteArray.data.toList
theorem checked6634 : bytes6634=statementBytes 6752 (op6634.map lower) ∧ bytes6634.length=48 := by core033_kernel_decide
def op6635 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6635 : Bytes := ("    let r00001a61: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6635 : bytes6635=statementBytes 6753 (op6635.map lower) ∧ bytes6635.length=41 := by core033_kernel_decide
def op6636 : List WordIR.Op := [.bnot 6753]
def bytes6636 : Bytes := ("    let r00001a62: u32 = !r00001a61;\n" : String).toByteArray.data.toList
theorem checked6636 : bytes6636=statementBytes 6754 (op6636.map lower) ∧ bytes6636.length=37 := by core033_kernel_decide
def op6637 : List WordIR.Op := [.band 6752 6754]
def bytes6637 : Bytes := ("    let r00001a63: u32 = r00001a60 & r00001a62;\n" : String).toByteArray.data.toList
theorem checked6637 : bytes6637=statementBytes 6755 (op6637.map lower) ∧ bytes6637.length=48 := by core033_kernel_decide
def op6638 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6638 : Bytes := ("    let r00001a64: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6638 : bytes6638=statementBytes 6756 (op6638.map lower) ∧ bytes6638.length=41 := by core033_kernel_decide
def op6639 : List WordIR.Op := [.bxor 1299 6756]
def bytes6639 : Bytes := ("    let r00001a65: u32 = r00000513 ^ r00001a64;\n" : String).toByteArray.data.toList
theorem checked6639 : bytes6639=statementBytes 6757 (op6639.map lower) ∧ bytes6639.length=48 := by core033_kernel_decide
def op6640 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6640 : Bytes := ("    let r00001a66: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6640 : bytes6640=statementBytes 6758 (op6640.map lower) ∧ bytes6640.length=41 := by core033_kernel_decide
def op6641 : List WordIR.Op := [.bnot 6758]
def bytes6641 : Bytes := ("    let r00001a67: u32 = !r00001a66;\n" : String).toByteArray.data.toList
theorem checked6641 : bytes6641=statementBytes 6759 (op6641.map lower) ∧ bytes6641.length=37 := by core033_kernel_decide
def op6642 : List WordIR.Op := [.bxor 6757 6759]
def bytes6642 : Bytes := ("    let r00001a68: u32 = r00001a65 ^ r00001a67;\n" : String).toByteArray.data.toList
theorem checked6642 : bytes6642=statementBytes 6760 (op6642.map lower) ∧ bytes6642.length=48 := by core033_kernel_decide
def op6643 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6643 : Bytes := ("    let r00001a69: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6643 : bytes6643=statementBytes 6761 (op6643.map lower) ∧ bytes6643.length=41 := by core033_kernel_decide
def op6644 : List WordIR.Op := [.bxor 1299 6761]
def bytes6644 : Bytes := ("    let r00001a6a: u32 = r00000513 ^ r00001a69;\n" : String).toByteArray.data.toList
theorem checked6644 : bytes6644=statementBytes 6762 (op6644.map lower) ∧ bytes6644.length=48 := by core033_kernel_decide
def op6645 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6645 : Bytes := ("    let r00001a6b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6645 : bytes6645=statementBytes 6763 (op6645.map lower) ∧ bytes6645.length=41 := by core033_kernel_decide
def op6646 : List WordIR.Op := [.bnot 6763]
def bytes6646 : Bytes := ("    let r00001a6c: u32 = !r00001a6b;\n" : String).toByteArray.data.toList
theorem checked6646 : bytes6646=statementBytes 6764 (op6646.map lower) ∧ bytes6646.length=37 := by core033_kernel_decide
def op6647 : List WordIR.Op := [.badd 6762 6764]
def bytes6647 : Bytes := ("    let r00001a6d: u32 = r00001a6a.wrapping_add(r00001a6c);\n" : String).toByteArray.data.toList
theorem checked6647 : bytes6647=statementBytes 6765 (op6647.map lower) ∧ bytes6647.length=60 := by core033_kernel_decide
def op6648 : List WordIR.Op := [.bnot 6765]
def bytes6648 : Bytes := ("    let r00001a6e: u32 = !r00001a6d;\n" : String).toByteArray.data.toList
theorem checked6648 : bytes6648=statementBytes 6766 (op6648.map lower) ∧ bytes6648.length=37 := by core033_kernel_decide
def op6649 : List WordIR.Op := [.band 6760 6766]
def bytes6649 : Bytes := ("    let r00001a6f: u32 = r00001a68 & r00001a6e;\n" : String).toByteArray.data.toList
theorem checked6649 : bytes6649=statementBytes 6767 (op6649.map lower) ∧ bytes6649.length=48 := by core033_kernel_decide
def op6650 : List WordIR.Op := [.bxor 6755 6767]
def bytes6650 : Bytes := ("    let r00001a70: u32 = r00001a63 ^ r00001a6f;\n" : String).toByteArray.data.toList
theorem checked6650 : bytes6650=statementBytes 6768 (op6650.map lower) ∧ bytes6650.length=48 := by core033_kernel_decide
def op6651 : List WordIR.Op := [.shr 6768 31]
def bytes6651 : Bytes := ("    let r00001a71: u32 = r00001a70 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6651 : bytes6651=statementBytes 6769 (op6651.map lower) ∧ bytes6651.length=54 := by core033_kernel_decide
def op6652 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6652 : Bytes := ("    let r00001a72: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6652 : bytes6652=statementBytes 6770 (op6652.map lower) ∧ bytes6652.length=41 := by core033_kernel_decide
def op6653 : List WordIR.Op := [.bxor 6769 6770]
def bytes6653 : Bytes := ("    let r00001a73: u32 = r00001a71 ^ r00001a72;\n" : String).toByteArray.data.toList
theorem checked6653 : bytes6653=statementBytes 6771 (op6653.map lower) ∧ bytes6653.length=48 := by core033_kernel_decide
def op6654 : List WordIR.Op := [.bnot 6771]
def bytes6654 : Bytes := ("    let r00001a74: u32 = !r00001a73;\n" : String).toByteArray.data.toList
theorem checked6654 : bytes6654=statementBytes 6772 (op6654.map lower) ∧ bytes6654.length=37 := by core033_kernel_decide
def op6655 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6655 : Bytes := ("    let r00001a75: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6655 : bytes6655=statementBytes 6773 (op6655.map lower) ∧ bytes6655.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6592,op6593,op6594,op6595,op6596,op6597,op6598,op6599,op6600,op6601,op6602,op6603,op6604,op6605,op6606,op6607,op6608,op6609,op6610,op6611,op6612,op6613,op6614,op6615,op6616,op6617,op6618,op6619,op6620,op6621,op6622,op6623,op6624,op6625,op6626,op6627,op6628,op6629,op6630,op6631,op6632,op6633,op6634,op6635,op6636,op6637,op6638,op6639,op6640,op6641,op6642,op6643,op6644,op6645,op6646,op6647,op6648,op6649,op6650,op6651,op6652,op6653,op6654,op6655]
def chunks : List Bytes := [bytes6592,bytes6593,bytes6594,bytes6595,bytes6596,bytes6597,bytes6598,bytes6599,bytes6600,bytes6601,bytes6602,bytes6603,bytes6604,bytes6605,bytes6606,bytes6607,bytes6608,bytes6609,bytes6610,bytes6611,bytes6612,bytes6613,bytes6614,bytes6615,bytes6616,bytes6617,bytes6618,bytes6619,bytes6620,bytes6621,bytes6622,bytes6623,bytes6624,bytes6625,bytes6626,bytes6627,bytes6628,bytes6629,bytes6630,bytes6631,bytes6632,bytes6633,bytes6634,bytes6635,bytes6636,bytes6637,bytes6638,bytes6639,bytes6640,bytes6641,bytes6642,bytes6643,bytes6644,bytes6645,bytes6646,bytes6647,bytes6648,bytes6649,bytes6650,bytes6651,bytes6652,bytes6653,bytes6654,bytes6655]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6710 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6592.1 (.cons _ _ _ _ _ checked6593.1 (.cons _ _ _ _ _ checked6594.1 (.cons _ _ _ _ _ checked6595.1 (.cons _ _ _ _ _ checked6596.1 (.cons _ _ _ _ _ checked6597.1 (.cons _ _ _ _ _ checked6598.1 (.cons _ _ _ _ _ checked6599.1 (.cons _ _ _ _ _ checked6600.1 (.cons _ _ _ _ _ checked6601.1 (.cons _ _ _ _ _ checked6602.1 (.cons _ _ _ _ _ checked6603.1 (.cons _ _ _ _ _ checked6604.1 (.cons _ _ _ _ _ checked6605.1 (.cons _ _ _ _ _ checked6606.1 (.cons _ _ _ _ _ checked6607.1 (.cons _ _ _ _ _ checked6608.1 (.cons _ _ _ _ _ checked6609.1 (.cons _ _ _ _ _ checked6610.1 (.cons _ _ _ _ _ checked6611.1 (.cons _ _ _ _ _ checked6612.1 (.cons _ _ _ _ _ checked6613.1 (.cons _ _ _ _ _ checked6614.1 (.cons _ _ _ _ _ checked6615.1 (.cons _ _ _ _ _ checked6616.1 (.cons _ _ _ _ _ checked6617.1 (.cons _ _ _ _ _ checked6618.1 (.cons _ _ _ _ _ checked6619.1 (.cons _ _ _ _ _ checked6620.1 (.cons _ _ _ _ _ checked6621.1 (.cons _ _ _ _ _ checked6622.1 (.cons _ _ _ _ _ checked6623.1 (.cons _ _ _ _ _ checked6624.1 (.cons _ _ _ _ _ checked6625.1 (.cons _ _ _ _ _ checked6626.1 (.cons _ _ _ _ _ checked6627.1 (.cons _ _ _ _ _ checked6628.1 (.cons _ _ _ _ _ checked6629.1 (.cons _ _ _ _ _ checked6630.1 (.cons _ _ _ _ _ checked6631.1 (.cons _ _ _ _ _ checked6632.1 (.cons _ _ _ _ _ checked6633.1 (.cons _ _ _ _ _ checked6634.1 (.cons _ _ _ _ _ checked6635.1 (.cons _ _ _ _ _ checked6636.1 (.cons _ _ _ _ _ checked6637.1 (.cons _ _ _ _ _ checked6638.1 (.cons _ _ _ _ _ checked6639.1 (.cons _ _ _ _ _ checked6640.1 (.cons _ _ _ _ _ checked6641.1 (.cons _ _ _ _ _ checked6642.1 (.cons _ _ _ _ _ checked6643.1 (.cons _ _ _ _ _ checked6644.1 (.cons _ _ _ _ _ checked6645.1 (.cons _ _ _ _ _ checked6646.1 (.cons _ _ _ _ _ checked6647.1 (.cons _ _ _ _ _ checked6648.1 (.cons _ _ _ _ _ checked6649.1 (.cons _ _ _ _ _ checked6650.1 (.cons _ _ _ _ _ checked6651.1 (.cons _ _ _ _ _ checked6652.1 (.cons _ _ _ _ _ checked6653.1 (.cons _ _ _ _ _ checked6654.1 (.cons _ _ _ _ _ checked6655.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6710 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2856 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6592.2,checked6593.2,checked6594.2,checked6595.2,checked6596.2,checked6597.2,checked6598.2,checked6599.2,checked6600.2,checked6601.2,checked6602.2,checked6603.2,checked6604.2,checked6605.2,checked6606.2,checked6607.2,checked6608.2,checked6609.2,checked6610.2,checked6611.2,checked6612.2,checked6613.2,checked6614.2,checked6615.2,checked6616.2,checked6617.2,checked6618.2,checked6619.2,checked6620.2,checked6621.2,checked6622.2,checked6623.2,checked6624.2,checked6625.2,checked6626.2,checked6627.2,checked6628.2,checked6629.2,checked6630.2,checked6631.2,checked6632.2,checked6633.2,checked6634.2,checked6635.2,checked6636.2,checked6637.2,checked6638.2,checked6639.2,checked6640.2,checked6641.2,checked6642.2,checked6643.2,checked6644.2,checked6645.2,checked6646.2,checked6647.2,checked6648.2,checked6649.2,checked6650.2,checked6651.2,checked6652.2,checked6653.2,checked6654.2,checked6655.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup103
