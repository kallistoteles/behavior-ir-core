import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup104
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6656 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6656 : Bytes := ("    let r00001a60: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6656 : bytes6656=statementBytes 6752 (op6656.map lower) ∧ bytes6656.length=41 := by core033_kernel_decide
def op6657 : List WordIR.Op := [.bnot 6752]
def bytes6657 : Bytes := ("    let r00001a61: u32 = !r00001a60;\n" : String).toByteArray.data.toList
theorem checked6657 : bytes6657=statementBytes 6753 (op6657.map lower) ∧ bytes6657.length=37 := by core033_kernel_decide
def op6658 : List WordIR.Op := [.bxor 6751 6753]
def bytes6658 : Bytes := ("    let r00001a62: u32 = r00001a5f ^ r00001a61;\n" : String).toByteArray.data.toList
theorem checked6658 : bytes6658=statementBytes 6754 (op6658.map lower) ∧ bytes6658.length=48 := by core033_kernel_decide
def op6659 : List WordIR.Op := [.shr 4211 8]
def bytes6659 : Bytes := ("    let r00001a63: u32 = r00001073 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6659 : bytes6659=statementBytes 6755 (op6659.map lower) ∧ bytes6659.length=54 := by core033_kernel_decide
def op6660 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6660 : Bytes := ("    let r00001a64: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6660 : bytes6660=statementBytes 6756 (op6660.map lower) ∧ bytes6660.length=41 := by core033_kernel_decide
def op6661 : List WordIR.Op := [.bnot 6756]
def bytes6661 : Bytes := ("    let r00001a65: u32 = !r00001a64;\n" : String).toByteArray.data.toList
theorem checked6661 : bytes6661=statementBytes 6757 (op6661.map lower) ∧ bytes6661.length=37 := by core033_kernel_decide
def op6662 : List WordIR.Op := [.badd 6755 6757]
def bytes6662 : Bytes := ("    let r00001a66: u32 = r00001a63.wrapping_add(r00001a65);\n" : String).toByteArray.data.toList
theorem checked6662 : bytes6662=statementBytes 6758 (op6662.map lower) ∧ bytes6662.length=60 := by core033_kernel_decide
def op6663 : List WordIR.Op := [.bnot 6758]
def bytes6663 : Bytes := ("    let r00001a67: u32 = !r00001a66;\n" : String).toByteArray.data.toList
theorem checked6663 : bytes6663=statementBytes 6759 (op6663.map lower) ∧ bytes6663.length=37 := by core033_kernel_decide
def op6664 : List WordIR.Op := [.band 6754 6759]
def bytes6664 : Bytes := ("    let r00001a68: u32 = r00001a62 & r00001a67;\n" : String).toByteArray.data.toList
theorem checked6664 : bytes6664=statementBytes 6760 (op6664.map lower) ∧ bytes6664.length=48 := by core033_kernel_decide
def op6665 : List WordIR.Op := [.bxor 6750 6760]
def bytes6665 : Bytes := ("    let r00001a69: u32 = r00001a5e ^ r00001a68;\n" : String).toByteArray.data.toList
theorem checked6665 : bytes6665=statementBytes 6761 (op6665.map lower) ∧ bytes6665.length=48 := by core033_kernel_decide
def op6666 : List WordIR.Op := [.shr 6761 31]
def bytes6666 : Bytes := ("    let r00001a6a: u32 = r00001a69 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6666 : bytes6666=statementBytes 6762 (op6666.map lower) ∧ bytes6666.length=54 := by core033_kernel_decide
def op6667 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6667 : Bytes := ("    let r00001a6b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6667 : bytes6667=statementBytes 6763 (op6667.map lower) ∧ bytes6667.length=41 := by core033_kernel_decide
def op6668 : List WordIR.Op := [.bxor 6762 6763]
def bytes6668 : Bytes := ("    let r00001a6c: u32 = r00001a6a ^ r00001a6b;\n" : String).toByteArray.data.toList
theorem checked6668 : bytes6668=statementBytes 6764 (op6668.map lower) ∧ bytes6668.length=48 := by core033_kernel_decide
def op6669 : List WordIR.Op := [.shr 4263 8]
def bytes6669 : Bytes := ("    let r00001a6d: u32 = r000010a7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6669 : bytes6669=statementBytes 6765 (op6669.map lower) ∧ bytes6669.length=54 := by core033_kernel_decide
def op6670 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6670 : Bytes := ("    let r00001a6e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6670 : bytes6670=statementBytes 6766 (op6670.map lower) ∧ bytes6670.length=41 := by core033_kernel_decide
def op6671 : List WordIR.Op := [.bnot 6766]
def bytes6671 : Bytes := ("    let r00001a6f: u32 = !r00001a6e;\n" : String).toByteArray.data.toList
theorem checked6671 : bytes6671=statementBytes 6767 (op6671.map lower) ∧ bytes6671.length=37 := by core033_kernel_decide
def op6672 : List WordIR.Op := [.band 6765 6767]
def bytes6672 : Bytes := ("    let r00001a70: u32 = r00001a6d & r00001a6f;\n" : String).toByteArray.data.toList
theorem checked6672 : bytes6672=statementBytes 6768 (op6672.map lower) ∧ bytes6672.length=48 := by core033_kernel_decide
def op6673 : List WordIR.Op := [.shr 4263 8]
def bytes6673 : Bytes := ("    let r00001a71: u32 = r000010a7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6673 : bytes6673=statementBytes 6769 (op6673.map lower) ∧ bytes6673.length=54 := by core033_kernel_decide
def op6674 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6674 : Bytes := ("    let r00001a72: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6674 : bytes6674=statementBytes 6770 (op6674.map lower) ∧ bytes6674.length=41 := by core033_kernel_decide
def op6675 : List WordIR.Op := [.bnot 6770]
def bytes6675 : Bytes := ("    let r00001a73: u32 = !r00001a72;\n" : String).toByteArray.data.toList
theorem checked6675 : bytes6675=statementBytes 6771 (op6675.map lower) ∧ bytes6675.length=37 := by core033_kernel_decide
def op6676 : List WordIR.Op := [.bxor 6769 6771]
def bytes6676 : Bytes := ("    let r00001a74: u32 = r00001a71 ^ r00001a73;\n" : String).toByteArray.data.toList
theorem checked6676 : bytes6676=statementBytes 6772 (op6676.map lower) ∧ bytes6676.length=48 := by core033_kernel_decide
def op6677 : List WordIR.Op := [.shr 4263 8]
def bytes6677 : Bytes := ("    let r00001a75: u32 = r000010a7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6677 : bytes6677=statementBytes 6773 (op6677.map lower) ∧ bytes6677.length=54 := by core033_kernel_decide
def op6678 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6678 : Bytes := ("    let r00001a76: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6678 : bytes6678=statementBytes 6774 (op6678.map lower) ∧ bytes6678.length=41 := by core033_kernel_decide
def op6679 : List WordIR.Op := [.bnot 6774]
def bytes6679 : Bytes := ("    let r00001a77: u32 = !r00001a76;\n" : String).toByteArray.data.toList
theorem checked6679 : bytes6679=statementBytes 6775 (op6679.map lower) ∧ bytes6679.length=37 := by core033_kernel_decide
def op6680 : List WordIR.Op := [.badd 6773 6775]
def bytes6680 : Bytes := ("    let r00001a78: u32 = r00001a75.wrapping_add(r00001a77);\n" : String).toByteArray.data.toList
theorem checked6680 : bytes6680=statementBytes 6776 (op6680.map lower) ∧ bytes6680.length=60 := by core033_kernel_decide
def op6681 : List WordIR.Op := [.bnot 6776]
def bytes6681 : Bytes := ("    let r00001a79: u32 = !r00001a78;\n" : String).toByteArray.data.toList
theorem checked6681 : bytes6681=statementBytes 6777 (op6681.map lower) ∧ bytes6681.length=37 := by core033_kernel_decide
def op6682 : List WordIR.Op := [.band 6772 6777]
def bytes6682 : Bytes := ("    let r00001a7a: u32 = r00001a74 & r00001a79;\n" : String).toByteArray.data.toList
theorem checked6682 : bytes6682=statementBytes 6778 (op6682.map lower) ∧ bytes6682.length=48 := by core033_kernel_decide
def op6683 : List WordIR.Op := [.bxor 6768 6778]
def bytes6683 : Bytes := ("    let r00001a7b: u32 = r00001a70 ^ r00001a7a;\n" : String).toByteArray.data.toList
theorem checked6683 : bytes6683=statementBytes 6779 (op6683.map lower) ∧ bytes6683.length=48 := by core033_kernel_decide
def op6684 : List WordIR.Op := [.shr 6779 31]
def bytes6684 : Bytes := ("    let r00001a7c: u32 = r00001a7b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6684 : bytes6684=statementBytes 6780 (op6684.map lower) ∧ bytes6684.length=54 := by core033_kernel_decide
def op6685 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6685 : Bytes := ("    let r00001a7d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6685 : bytes6685=statementBytes 6781 (op6685.map lower) ∧ bytes6685.length=41 := by core033_kernel_decide
def op6686 : List WordIR.Op := [.bxor 6780 6781]
def bytes6686 : Bytes := ("    let r00001a7e: u32 = r00001a7c ^ r00001a7d;\n" : String).toByteArray.data.toList
theorem checked6686 : bytes6686=statementBytes 6782 (op6686.map lower) ∧ bytes6686.length=48 := by core033_kernel_decide
def op6687 : List WordIR.Op := [.shr 4315 8]
def bytes6687 : Bytes := ("    let r00001a7f: u32 = r000010db >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6687 : bytes6687=statementBytes 6783 (op6687.map lower) ∧ bytes6687.length=54 := by core033_kernel_decide
def op6688 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6688 : Bytes := ("    let r00001a80: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6688 : bytes6688=statementBytes 6784 (op6688.map lower) ∧ bytes6688.length=41 := by core033_kernel_decide
def op6689 : List WordIR.Op := [.bnot 6784]
def bytes6689 : Bytes := ("    let r00001a81: u32 = !r00001a80;\n" : String).toByteArray.data.toList
theorem checked6689 : bytes6689=statementBytes 6785 (op6689.map lower) ∧ bytes6689.length=37 := by core033_kernel_decide
def op6690 : List WordIR.Op := [.band 6783 6785]
def bytes6690 : Bytes := ("    let r00001a82: u32 = r00001a7f & r00001a81;\n" : String).toByteArray.data.toList
theorem checked6690 : bytes6690=statementBytes 6786 (op6690.map lower) ∧ bytes6690.length=48 := by core033_kernel_decide
def op6691 : List WordIR.Op := [.shr 4315 8]
def bytes6691 : Bytes := ("    let r00001a83: u32 = r000010db >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6691 : bytes6691=statementBytes 6787 (op6691.map lower) ∧ bytes6691.length=54 := by core033_kernel_decide
def op6692 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6692 : Bytes := ("    let r00001a84: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6692 : bytes6692=statementBytes 6788 (op6692.map lower) ∧ bytes6692.length=41 := by core033_kernel_decide
def op6693 : List WordIR.Op := [.bnot 6788]
def bytes6693 : Bytes := ("    let r00001a85: u32 = !r00001a84;\n" : String).toByteArray.data.toList
theorem checked6693 : bytes6693=statementBytes 6789 (op6693.map lower) ∧ bytes6693.length=37 := by core033_kernel_decide
def op6694 : List WordIR.Op := [.bxor 6787 6789]
def bytes6694 : Bytes := ("    let r00001a86: u32 = r00001a83 ^ r00001a85;\n" : String).toByteArray.data.toList
theorem checked6694 : bytes6694=statementBytes 6790 (op6694.map lower) ∧ bytes6694.length=48 := by core033_kernel_decide
def op6695 : List WordIR.Op := [.shr 4315 8]
def bytes6695 : Bytes := ("    let r00001a87: u32 = r000010db >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6695 : bytes6695=statementBytes 6791 (op6695.map lower) ∧ bytes6695.length=54 := by core033_kernel_decide
def op6696 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6696 : Bytes := ("    let r00001a88: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6696 : bytes6696=statementBytes 6792 (op6696.map lower) ∧ bytes6696.length=41 := by core033_kernel_decide
def op6697 : List WordIR.Op := [.bnot 6792]
def bytes6697 : Bytes := ("    let r00001a89: u32 = !r00001a88;\n" : String).toByteArray.data.toList
theorem checked6697 : bytes6697=statementBytes 6793 (op6697.map lower) ∧ bytes6697.length=37 := by core033_kernel_decide
def op6698 : List WordIR.Op := [.badd 6791 6793]
def bytes6698 : Bytes := ("    let r00001a8a: u32 = r00001a87.wrapping_add(r00001a89);\n" : String).toByteArray.data.toList
theorem checked6698 : bytes6698=statementBytes 6794 (op6698.map lower) ∧ bytes6698.length=60 := by core033_kernel_decide
def op6699 : List WordIR.Op := [.bnot 6794]
def bytes6699 : Bytes := ("    let r00001a8b: u32 = !r00001a8a;\n" : String).toByteArray.data.toList
theorem checked6699 : bytes6699=statementBytes 6795 (op6699.map lower) ∧ bytes6699.length=37 := by core033_kernel_decide
def op6700 : List WordIR.Op := [.band 6790 6795]
def bytes6700 : Bytes := ("    let r00001a8c: u32 = r00001a86 & r00001a8b;\n" : String).toByteArray.data.toList
theorem checked6700 : bytes6700=statementBytes 6796 (op6700.map lower) ∧ bytes6700.length=48 := by core033_kernel_decide
def op6701 : List WordIR.Op := [.bxor 6786 6796]
def bytes6701 : Bytes := ("    let r00001a8d: u32 = r00001a82 ^ r00001a8c;\n" : String).toByteArray.data.toList
theorem checked6701 : bytes6701=statementBytes 6797 (op6701.map lower) ∧ bytes6701.length=48 := by core033_kernel_decide
def op6702 : List WordIR.Op := [.shr 6797 31]
def bytes6702 : Bytes := ("    let r00001a8e: u32 = r00001a8d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6702 : bytes6702=statementBytes 6798 (op6702.map lower) ∧ bytes6702.length=54 := by core033_kernel_decide
def op6703 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6703 : Bytes := ("    let r00001a8f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6703 : bytes6703=statementBytes 6799 (op6703.map lower) ∧ bytes6703.length=41 := by core033_kernel_decide
def op6704 : List WordIR.Op := [.bxor 6798 6799]
def bytes6704 : Bytes := ("    let r00001a90: u32 = r00001a8e ^ r00001a8f;\n" : String).toByteArray.data.toList
theorem checked6704 : bytes6704=statementBytes 6800 (op6704.map lower) ∧ bytes6704.length=48 := by core033_kernel_decide
def op6705 : List WordIR.Op := [.shr 4367 8]
def bytes6705 : Bytes := ("    let r00001a91: u32 = r0000110f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6705 : bytes6705=statementBytes 6801 (op6705.map lower) ∧ bytes6705.length=54 := by core033_kernel_decide
def op6706 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6706 : Bytes := ("    let r00001a92: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6706 : bytes6706=statementBytes 6802 (op6706.map lower) ∧ bytes6706.length=41 := by core033_kernel_decide
def op6707 : List WordIR.Op := [.bnot 6802]
def bytes6707 : Bytes := ("    let r00001a93: u32 = !r00001a92;\n" : String).toByteArray.data.toList
theorem checked6707 : bytes6707=statementBytes 6803 (op6707.map lower) ∧ bytes6707.length=37 := by core033_kernel_decide
def op6708 : List WordIR.Op := [.band 6801 6803]
def bytes6708 : Bytes := ("    let r00001a94: u32 = r00001a91 & r00001a93;\n" : String).toByteArray.data.toList
theorem checked6708 : bytes6708=statementBytes 6804 (op6708.map lower) ∧ bytes6708.length=48 := by core033_kernel_decide
def op6709 : List WordIR.Op := [.shr 4367 8]
def bytes6709 : Bytes := ("    let r00001a95: u32 = r0000110f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6709 : bytes6709=statementBytes 6805 (op6709.map lower) ∧ bytes6709.length=54 := by core033_kernel_decide
def op6710 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6710 : Bytes := ("    let r00001a96: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6710 : bytes6710=statementBytes 6806 (op6710.map lower) ∧ bytes6710.length=41 := by core033_kernel_decide
def op6711 : List WordIR.Op := [.bnot 6806]
def bytes6711 : Bytes := ("    let r00001a97: u32 = !r00001a96;\n" : String).toByteArray.data.toList
theorem checked6711 : bytes6711=statementBytes 6807 (op6711.map lower) ∧ bytes6711.length=37 := by core033_kernel_decide
def op6712 : List WordIR.Op := [.bxor 6805 6807]
def bytes6712 : Bytes := ("    let r00001a98: u32 = r00001a95 ^ r00001a97;\n" : String).toByteArray.data.toList
theorem checked6712 : bytes6712=statementBytes 6808 (op6712.map lower) ∧ bytes6712.length=48 := by core033_kernel_decide
def op6713 : List WordIR.Op := [.shr 4367 8]
def bytes6713 : Bytes := ("    let r00001a99: u32 = r0000110f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6713 : bytes6713=statementBytes 6809 (op6713.map lower) ∧ bytes6713.length=54 := by core033_kernel_decide
def op6714 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6714 : Bytes := ("    let r00001a9a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6714 : bytes6714=statementBytes 6810 (op6714.map lower) ∧ bytes6714.length=41 := by core033_kernel_decide
def op6715 : List WordIR.Op := [.bnot 6810]
def bytes6715 : Bytes := ("    let r00001a9b: u32 = !r00001a9a;\n" : String).toByteArray.data.toList
theorem checked6715 : bytes6715=statementBytes 6811 (op6715.map lower) ∧ bytes6715.length=37 := by core033_kernel_decide
def op6716 : List WordIR.Op := [.badd 6809 6811]
def bytes6716 : Bytes := ("    let r00001a9c: u32 = r00001a99.wrapping_add(r00001a9b);\n" : String).toByteArray.data.toList
theorem checked6716 : bytes6716=statementBytes 6812 (op6716.map lower) ∧ bytes6716.length=60 := by core033_kernel_decide
def op6717 : List WordIR.Op := [.bnot 6812]
def bytes6717 : Bytes := ("    let r00001a9d: u32 = !r00001a9c;\n" : String).toByteArray.data.toList
theorem checked6717 : bytes6717=statementBytes 6813 (op6717.map lower) ∧ bytes6717.length=37 := by core033_kernel_decide
def op6718 : List WordIR.Op := [.band 6808 6813]
def bytes6718 : Bytes := ("    let r00001a9e: u32 = r00001a98 & r00001a9d;\n" : String).toByteArray.data.toList
theorem checked6718 : bytes6718=statementBytes 6814 (op6718.map lower) ∧ bytes6718.length=48 := by core033_kernel_decide
def op6719 : List WordIR.Op := [.bxor 6804 6814]
def bytes6719 : Bytes := ("    let r00001a9f: u32 = r00001a94 ^ r00001a9e;\n" : String).toByteArray.data.toList
theorem checked6719 : bytes6719=statementBytes 6815 (op6719.map lower) ∧ bytes6719.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6656,op6657,op6658,op6659,op6660,op6661,op6662,op6663,op6664,op6665,op6666,op6667,op6668,op6669,op6670,op6671,op6672,op6673,op6674,op6675,op6676,op6677,op6678,op6679,op6680,op6681,op6682,op6683,op6684,op6685,op6686,op6687,op6688,op6689,op6690,op6691,op6692,op6693,op6694,op6695,op6696,op6697,op6698,op6699,op6700,op6701,op6702,op6703,op6704,op6705,op6706,op6707,op6708,op6709,op6710,op6711,op6712,op6713,op6714,op6715,op6716,op6717,op6718,op6719]
def chunks : List Bytes := [bytes6656,bytes6657,bytes6658,bytes6659,bytes6660,bytes6661,bytes6662,bytes6663,bytes6664,bytes6665,bytes6666,bytes6667,bytes6668,bytes6669,bytes6670,bytes6671,bytes6672,bytes6673,bytes6674,bytes6675,bytes6676,bytes6677,bytes6678,bytes6679,bytes6680,bytes6681,bytes6682,bytes6683,bytes6684,bytes6685,bytes6686,bytes6687,bytes6688,bytes6689,bytes6690,bytes6691,bytes6692,bytes6693,bytes6694,bytes6695,bytes6696,bytes6697,bytes6698,bytes6699,bytes6700,bytes6701,bytes6702,bytes6703,bytes6704,bytes6705,bytes6706,bytes6707,bytes6708,bytes6709,bytes6710,bytes6711,bytes6712,bytes6713,bytes6714,bytes6715,bytes6716,bytes6717,bytes6718,bytes6719]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6752 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6656.1 (.cons _ _ _ _ _ checked6657.1 (.cons _ _ _ _ _ checked6658.1 (.cons _ _ _ _ _ checked6659.1 (.cons _ _ _ _ _ checked6660.1 (.cons _ _ _ _ _ checked6661.1 (.cons _ _ _ _ _ checked6662.1 (.cons _ _ _ _ _ checked6663.1 (.cons _ _ _ _ _ checked6664.1 (.cons _ _ _ _ _ checked6665.1 (.cons _ _ _ _ _ checked6666.1 (.cons _ _ _ _ _ checked6667.1 (.cons _ _ _ _ _ checked6668.1 (.cons _ _ _ _ _ checked6669.1 (.cons _ _ _ _ _ checked6670.1 (.cons _ _ _ _ _ checked6671.1 (.cons _ _ _ _ _ checked6672.1 (.cons _ _ _ _ _ checked6673.1 (.cons _ _ _ _ _ checked6674.1 (.cons _ _ _ _ _ checked6675.1 (.cons _ _ _ _ _ checked6676.1 (.cons _ _ _ _ _ checked6677.1 (.cons _ _ _ _ _ checked6678.1 (.cons _ _ _ _ _ checked6679.1 (.cons _ _ _ _ _ checked6680.1 (.cons _ _ _ _ _ checked6681.1 (.cons _ _ _ _ _ checked6682.1 (.cons _ _ _ _ _ checked6683.1 (.cons _ _ _ _ _ checked6684.1 (.cons _ _ _ _ _ checked6685.1 (.cons _ _ _ _ _ checked6686.1 (.cons _ _ _ _ _ checked6687.1 (.cons _ _ _ _ _ checked6688.1 (.cons _ _ _ _ _ checked6689.1 (.cons _ _ _ _ _ checked6690.1 (.cons _ _ _ _ _ checked6691.1 (.cons _ _ _ _ _ checked6692.1 (.cons _ _ _ _ _ checked6693.1 (.cons _ _ _ _ _ checked6694.1 (.cons _ _ _ _ _ checked6695.1 (.cons _ _ _ _ _ checked6696.1 (.cons _ _ _ _ _ checked6697.1 (.cons _ _ _ _ _ checked6698.1 (.cons _ _ _ _ _ checked6699.1 (.cons _ _ _ _ _ checked6700.1 (.cons _ _ _ _ _ checked6701.1 (.cons _ _ _ _ _ checked6702.1 (.cons _ _ _ _ _ checked6703.1 (.cons _ _ _ _ _ checked6704.1 (.cons _ _ _ _ _ checked6705.1 (.cons _ _ _ _ _ checked6706.1 (.cons _ _ _ _ _ checked6707.1 (.cons _ _ _ _ _ checked6708.1 (.cons _ _ _ _ _ checked6709.1 (.cons _ _ _ _ _ checked6710.1 (.cons _ _ _ _ _ checked6711.1 (.cons _ _ _ _ _ checked6712.1 (.cons _ _ _ _ _ checked6713.1 (.cons _ _ _ _ _ checked6714.1 (.cons _ _ _ _ _ checked6715.1 (.cons _ _ _ _ _ checked6716.1 (.cons _ _ _ _ _ checked6717.1 (.cons _ _ _ _ _ checked6718.1 (.cons _ _ _ _ _ checked6719.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6752 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2935 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6656.2,checked6657.2,checked6658.2,checked6659.2,checked6660.2,checked6661.2,checked6662.2,checked6663.2,checked6664.2,checked6665.2,checked6666.2,checked6667.2,checked6668.2,checked6669.2,checked6670.2,checked6671.2,checked6672.2,checked6673.2,checked6674.2,checked6675.2,checked6676.2,checked6677.2,checked6678.2,checked6679.2,checked6680.2,checked6681.2,checked6682.2,checked6683.2,checked6684.2,checked6685.2,checked6686.2,checked6687.2,checked6688.2,checked6689.2,checked6690.2,checked6691.2,checked6692.2,checked6693.2,checked6694.2,checked6695.2,checked6696.2,checked6697.2,checked6698.2,checked6699.2,checked6700.2,checked6701.2,checked6702.2,checked6703.2,checked6704.2,checked6705.2,checked6706.2,checked6707.2,checked6708.2,checked6709.2,checked6710.2,checked6711.2,checked6712.2,checked6713.2,checked6714.2,checked6715.2,checked6716.2,checked6717.2,checked6718.2,checked6719.2]
  decide
end ArtifactPairedPathRoundGroup104
