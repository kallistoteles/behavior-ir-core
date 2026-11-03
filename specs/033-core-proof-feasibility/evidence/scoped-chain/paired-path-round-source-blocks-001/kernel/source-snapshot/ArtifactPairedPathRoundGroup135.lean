import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup135
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8640 : List WordIR.Op := [.rotr 8719 13]
def bytes8640 : Bytes := ("    let r00002220: u32 = r0000220f.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8640 : bytes8640=statementBytes 8736 (op8640.map lower) ∧ bytes8640.length=65 := by core033_kernel_decide
def op8641 : List WordIR.Op := [.bxor 8735 8736]
def bytes8641 : Bytes := ("    let r00002221: u32 = r0000221f ^ r00002220;\n" : String).toByteArray.data.toList
theorem checked8641 : bytes8641=statementBytes 8737 (op8641.map lower) ∧ bytes8641.length=48 := by core033_kernel_decide
def op8642 : List WordIR.Op := [.rotr 8719 22]
def bytes8642 : Bytes := ("    let r00002222: u32 = r0000220f.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8642 : bytes8642=statementBytes 8738 (op8642.map lower) ∧ bytes8642.length=65 := by core033_kernel_decide
def op8643 : List WordIR.Op := [.bxor 8737 8738]
def bytes8643 : Bytes := ("    let r00002223: u32 = r00002221 ^ r00002222;\n" : String).toByteArray.data.toList
theorem checked8643 : bytes8643=statementBytes 8739 (op8643.map lower) ∧ bytes8643.length=48 := by core033_kernel_decide
def op8644 : List WordIR.Op := [.band 8719 8692]
def bytes8644 : Bytes := ("    let r00002224: u32 = r0000220f & r000021f4;\n" : String).toByteArray.data.toList
theorem checked8644 : bytes8644=statementBytes 8740 (op8644.map lower) ∧ bytes8644.length=48 := by core033_kernel_decide
def op8645 : List WordIR.Op := [.band 8719 8665]
def bytes8645 : Bytes := ("    let r00002225: u32 = r0000220f & r000021d9;\n" : String).toByteArray.data.toList
theorem checked8645 : bytes8645=statementBytes 8741 (op8645.map lower) ∧ bytes8645.length=48 := by core033_kernel_decide
def op8646 : List WordIR.Op := [.bxor 8740 8741]
def bytes8646 : Bytes := ("    let r00002226: u32 = r00002224 ^ r00002225;\n" : String).toByteArray.data.toList
theorem checked8646 : bytes8646=statementBytes 8742 (op8646.map lower) ∧ bytes8646.length=48 := by core033_kernel_decide
def op8647 : List WordIR.Op := [.band 8692 8665]
def bytes8647 : Bytes := ("    let r00002227: u32 = r000021f4 & r000021d9;\n" : String).toByteArray.data.toList
theorem checked8647 : bytes8647=statementBytes 8743 (op8647.map lower) ∧ bytes8647.length=48 := by core033_kernel_decide
def op8648 : List WordIR.Op := [.bxor 8742 8743]
def bytes8648 : Bytes := ("    let r00002228: u32 = r00002226 ^ r00002227;\n" : String).toByteArray.data.toList
theorem checked8648 : bytes8648=statementBytes 8744 (op8648.map lower) ∧ bytes8648.length=48 := by core033_kernel_decide
def op8649 : List WordIR.Op := [.badd 8739 8744]
def bytes8649 : Bytes := ("    let r00002229: u32 = r00002223.wrapping_add(r00002228);\n" : String).toByteArray.data.toList
theorem checked8649 : bytes8649=statementBytes 8745 (op8649.map lower) ∧ bytes8649.length=60 := by core033_kernel_decide
def op8650 : List WordIR.Op := [.badd 8734 8745]
def bytes8650 : Bytes := ("    let r0000222a: u32 = r0000221e.wrapping_add(r00002229);\n" : String).toByteArray.data.toList
theorem checked8650 : bytes8650=statementBytes 8746 (op8650.map lower) ∧ bytes8650.length=60 := by core033_kernel_decide
def op8651 : List WordIR.Op := [.badd 8638 8734]
def bytes8651 : Bytes := ("    let r0000222b: u32 = r000021be.wrapping_add(r0000221e);\n" : String).toByteArray.data.toList
theorem checked8651 : bytes8651=statementBytes 8747 (op8651.map lower) ∧ bytes8651.length=60 := by core033_kernel_decide
def op8652 : List WordIR.Op := [.rotr 8747 6]
def bytes8652 : Bytes := ("    let r0000222c: u32 = r0000222b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8652 : bytes8652=statementBytes 8748 (op8652.map lower) ∧ bytes8652.length=65 := by core033_kernel_decide
def op8653 : List WordIR.Op := [.rotr 8747 11]
def bytes8653 : Bytes := ("    let r0000222d: u32 = r0000222b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8653 : bytes8653=statementBytes 8749 (op8653.map lower) ∧ bytes8653.length=65 := by core033_kernel_decide
def op8654 : List WordIR.Op := [.bxor 8748 8749]
def bytes8654 : Bytes := ("    let r0000222e: u32 = r0000222c ^ r0000222d;\n" : String).toByteArray.data.toList
theorem checked8654 : bytes8654=statementBytes 8750 (op8654.map lower) ∧ bytes8654.length=48 := by core033_kernel_decide
def op8655 : List WordIR.Op := [.rotr 8747 25]
def bytes8655 : Bytes := ("    let r0000222f: u32 = r0000222b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8655 : bytes8655=statementBytes 8751 (op8655.map lower) ∧ bytes8655.length=65 := by core033_kernel_decide
def op8656 : List WordIR.Op := [.bxor 8750 8751]
def bytes8656 : Bytes := ("    let r00002230: u32 = r0000222e ^ r0000222f;\n" : String).toByteArray.data.toList
theorem checked8656 : bytes8656=statementBytes 8752 (op8656.map lower) ∧ bytes8656.length=48 := by core033_kernel_decide
def op8657 : List WordIR.Op := [.badd 8666 8752]
def bytes8657 : Bytes := ("    let r00002231: u32 = r000021da.wrapping_add(r00002230);\n" : String).toByteArray.data.toList
theorem checked8657 : bytes8657=statementBytes 8753 (op8657.map lower) ∧ bytes8657.length=60 := by core033_kernel_decide
def op8658 : List WordIR.Op := [.band 8747 8720]
def bytes8658 : Bytes := ("    let r00002232: u32 = r0000222b & r00002210;\n" : String).toByteArray.data.toList
theorem checked8658 : bytes8658=statementBytes 8754 (op8658.map lower) ∧ bytes8658.length=48 := by core033_kernel_decide
def op8659 : List WordIR.Op := [.bnot 8747]
def bytes8659 : Bytes := ("    let r00002233: u32 = !r0000222b;\n" : String).toByteArray.data.toList
theorem checked8659 : bytes8659=statementBytes 8755 (op8659.map lower) ∧ bytes8659.length=37 := by core033_kernel_decide
def op8660 : List WordIR.Op := [.band 8755 8693]
def bytes8660 : Bytes := ("    let r00002234: u32 = r00002233 & r000021f5;\n" : String).toByteArray.data.toList
theorem checked8660 : bytes8660=statementBytes 8756 (op8660.map lower) ∧ bytes8660.length=48 := by core033_kernel_decide
def op8661 : List WordIR.Op := [.bxor 8754 8756]
def bytes8661 : Bytes := ("    let r00002235: u32 = r00002232 ^ r00002234;\n" : String).toByteArray.data.toList
theorem checked8661 : bytes8661=statementBytes 8757 (op8661.map lower) ∧ bytes8661.length=48 := by core033_kernel_decide
def op8662 : List WordIR.Op := [.badd 8753 8757]
def bytes8662 : Bytes := ("    let r00002236: u32 = r00002231.wrapping_add(r00002235);\n" : String).toByteArray.data.toList
theorem checked8662 : bytes8662=statementBytes 8758 (op8662.map lower) ∧ bytes8662.length=60 := by core033_kernel_decide
def op8663 : List WordIR.Op := [.literal (BitVec.ofNat 32 2821834349)]
def bytes8663 : Bytes := ("    let r00002237: u32 = 0xa831c66d_u32;\n" : String).toByteArray.data.toList
theorem checked8663 : bytes8663=statementBytes 8759 (op8663.map lower) ∧ bytes8663.length=41 := by core033_kernel_decide
def op8664 : List WordIR.Op := [.badd 8758 8759]
def bytes8664 : Bytes := ("    let r00002238: u32 = r00002236.wrapping_add(r00002237);\n" : String).toByteArray.data.toList
theorem checked8664 : bytes8664=statementBytes 8760 (op8664.map lower) ∧ bytes8664.length=60 := by core033_kernel_decide
def op8665 : List WordIR.Op := [.badd 8760 7578]
def bytes8665 : Bytes := ("    let r00002239: u32 = r00002238.wrapping_add(r00001d9a);\n" : String).toByteArray.data.toList
theorem checked8665 : bytes8665=statementBytes 8761 (op8665.map lower) ∧ bytes8665.length=60 := by core033_kernel_decide
def op8666 : List WordIR.Op := [.rotr 8746 2]
def bytes8666 : Bytes := ("    let r0000223a: u32 = r0000222a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8666 : bytes8666=statementBytes 8762 (op8666.map lower) ∧ bytes8666.length=65 := by core033_kernel_decide
def op8667 : List WordIR.Op := [.rotr 8746 13]
def bytes8667 : Bytes := ("    let r0000223b: u32 = r0000222a.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8667 : bytes8667=statementBytes 8763 (op8667.map lower) ∧ bytes8667.length=65 := by core033_kernel_decide
def op8668 : List WordIR.Op := [.bxor 8762 8763]
def bytes8668 : Bytes := ("    let r0000223c: u32 = r0000223a ^ r0000223b;\n" : String).toByteArray.data.toList
theorem checked8668 : bytes8668=statementBytes 8764 (op8668.map lower) ∧ bytes8668.length=48 := by core033_kernel_decide
def op8669 : List WordIR.Op := [.rotr 8746 22]
def bytes8669 : Bytes := ("    let r0000223d: u32 = r0000222a.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8669 : bytes8669=statementBytes 8765 (op8669.map lower) ∧ bytes8669.length=65 := by core033_kernel_decide
def op8670 : List WordIR.Op := [.bxor 8764 8765]
def bytes8670 : Bytes := ("    let r0000223e: u32 = r0000223c ^ r0000223d;\n" : String).toByteArray.data.toList
theorem checked8670 : bytes8670=statementBytes 8766 (op8670.map lower) ∧ bytes8670.length=48 := by core033_kernel_decide
def op8671 : List WordIR.Op := [.band 8746 8719]
def bytes8671 : Bytes := ("    let r0000223f: u32 = r0000222a & r0000220f;\n" : String).toByteArray.data.toList
theorem checked8671 : bytes8671=statementBytes 8767 (op8671.map lower) ∧ bytes8671.length=48 := by core033_kernel_decide
def op8672 : List WordIR.Op := [.band 8746 8692]
def bytes8672 : Bytes := ("    let r00002240: u32 = r0000222a & r000021f4;\n" : String).toByteArray.data.toList
theorem checked8672 : bytes8672=statementBytes 8768 (op8672.map lower) ∧ bytes8672.length=48 := by core033_kernel_decide
def op8673 : List WordIR.Op := [.bxor 8767 8768]
def bytes8673 : Bytes := ("    let r00002241: u32 = r0000223f ^ r00002240;\n" : String).toByteArray.data.toList
theorem checked8673 : bytes8673=statementBytes 8769 (op8673.map lower) ∧ bytes8673.length=48 := by core033_kernel_decide
def op8674 : List WordIR.Op := [.band 8719 8692]
def bytes8674 : Bytes := ("    let r00002242: u32 = r0000220f & r000021f4;\n" : String).toByteArray.data.toList
theorem checked8674 : bytes8674=statementBytes 8770 (op8674.map lower) ∧ bytes8674.length=48 := by core033_kernel_decide
def op8675 : List WordIR.Op := [.bxor 8769 8770]
def bytes8675 : Bytes := ("    let r00002243: u32 = r00002241 ^ r00002242;\n" : String).toByteArray.data.toList
theorem checked8675 : bytes8675=statementBytes 8771 (op8675.map lower) ∧ bytes8675.length=48 := by core033_kernel_decide
def op8676 : List WordIR.Op := [.badd 8766 8771]
def bytes8676 : Bytes := ("    let r00002244: u32 = r0000223e.wrapping_add(r00002243);\n" : String).toByteArray.data.toList
theorem checked8676 : bytes8676=statementBytes 8772 (op8676.map lower) ∧ bytes8676.length=60 := by core033_kernel_decide
def op8677 : List WordIR.Op := [.badd 8761 8772]
def bytes8677 : Bytes := ("    let r00002245: u32 = r00002239.wrapping_add(r00002244);\n" : String).toByteArray.data.toList
theorem checked8677 : bytes8677=statementBytes 8773 (op8677.map lower) ∧ bytes8677.length=60 := by core033_kernel_decide
def op8678 : List WordIR.Op := [.badd 8665 8761]
def bytes8678 : Bytes := ("    let r00002246: u32 = r000021d9.wrapping_add(r00002239);\n" : String).toByteArray.data.toList
theorem checked8678 : bytes8678=statementBytes 8774 (op8678.map lower) ∧ bytes8678.length=60 := by core033_kernel_decide
def op8679 : List WordIR.Op := [.rotr 8774 6]
def bytes8679 : Bytes := ("    let r00002247: u32 = r00002246.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8679 : bytes8679=statementBytes 8775 (op8679.map lower) ∧ bytes8679.length=65 := by core033_kernel_decide
def op8680 : List WordIR.Op := [.rotr 8774 11]
def bytes8680 : Bytes := ("    let r00002248: u32 = r00002246.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8680 : bytes8680=statementBytes 8776 (op8680.map lower) ∧ bytes8680.length=65 := by core033_kernel_decide
def op8681 : List WordIR.Op := [.bxor 8775 8776]
def bytes8681 : Bytes := ("    let r00002249: u32 = r00002247 ^ r00002248;\n" : String).toByteArray.data.toList
theorem checked8681 : bytes8681=statementBytes 8777 (op8681.map lower) ∧ bytes8681.length=48 := by core033_kernel_decide
def op8682 : List WordIR.Op := [.rotr 8774 25]
def bytes8682 : Bytes := ("    let r0000224a: u32 = r00002246.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8682 : bytes8682=statementBytes 8778 (op8682.map lower) ∧ bytes8682.length=65 := by core033_kernel_decide
def op8683 : List WordIR.Op := [.bxor 8777 8778]
def bytes8683 : Bytes := ("    let r0000224b: u32 = r00002249 ^ r0000224a;\n" : String).toByteArray.data.toList
theorem checked8683 : bytes8683=statementBytes 8779 (op8683.map lower) ∧ bytes8683.length=48 := by core033_kernel_decide
def op8684 : List WordIR.Op := [.badd 8693 8779]
def bytes8684 : Bytes := ("    let r0000224c: u32 = r000021f5.wrapping_add(r0000224b);\n" : String).toByteArray.data.toList
theorem checked8684 : bytes8684=statementBytes 8780 (op8684.map lower) ∧ bytes8684.length=60 := by core033_kernel_decide
def op8685 : List WordIR.Op := [.band 8774 8747]
def bytes8685 : Bytes := ("    let r0000224d: u32 = r00002246 & r0000222b;\n" : String).toByteArray.data.toList
theorem checked8685 : bytes8685=statementBytes 8781 (op8685.map lower) ∧ bytes8685.length=48 := by core033_kernel_decide
def op8686 : List WordIR.Op := [.bnot 8774]
def bytes8686 : Bytes := ("    let r0000224e: u32 = !r00002246;\n" : String).toByteArray.data.toList
theorem checked8686 : bytes8686=statementBytes 8782 (op8686.map lower) ∧ bytes8686.length=37 := by core033_kernel_decide
def op8687 : List WordIR.Op := [.band 8782 8720]
def bytes8687 : Bytes := ("    let r0000224f: u32 = r0000224e & r00002210;\n" : String).toByteArray.data.toList
theorem checked8687 : bytes8687=statementBytes 8783 (op8687.map lower) ∧ bytes8687.length=48 := by core033_kernel_decide
def op8688 : List WordIR.Op := [.bxor 8781 8783]
def bytes8688 : Bytes := ("    let r00002250: u32 = r0000224d ^ r0000224f;\n" : String).toByteArray.data.toList
theorem checked8688 : bytes8688=statementBytes 8784 (op8688.map lower) ∧ bytes8688.length=48 := by core033_kernel_decide
def op8689 : List WordIR.Op := [.badd 8780 8784]
def bytes8689 : Bytes := ("    let r00002251: u32 = r0000224c.wrapping_add(r00002250);\n" : String).toByteArray.data.toList
theorem checked8689 : bytes8689=statementBytes 8785 (op8689.map lower) ∧ bytes8689.length=60 := by core033_kernel_decide
def op8690 : List WordIR.Op := [.literal (BitVec.ofNat 32 2952996808)]
def bytes8690 : Bytes := ("    let r00002252: u32 = 0xb00327c8_u32;\n" : String).toByteArray.data.toList
theorem checked8690 : bytes8690=statementBytes 8786 (op8690.map lower) ∧ bytes8690.length=41 := by core033_kernel_decide
def op8691 : List WordIR.Op := [.badd 8785 8786]
def bytes8691 : Bytes := ("    let r00002253: u32 = r00002251.wrapping_add(r00002252);\n" : String).toByteArray.data.toList
theorem checked8691 : bytes8691=statementBytes 8787 (op8691.map lower) ∧ bytes8691.length=60 := by core033_kernel_decide
def op8692 : List WordIR.Op := [.badd 8787 7591]
def bytes8692 : Bytes := ("    let r00002254: u32 = r00002253.wrapping_add(r00001da7);\n" : String).toByteArray.data.toList
theorem checked8692 : bytes8692=statementBytes 8788 (op8692.map lower) ∧ bytes8692.length=60 := by core033_kernel_decide
def op8693 : List WordIR.Op := [.rotr 8773 2]
def bytes8693 : Bytes := ("    let r00002255: u32 = r00002245.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8693 : bytes8693=statementBytes 8789 (op8693.map lower) ∧ bytes8693.length=65 := by core033_kernel_decide
def op8694 : List WordIR.Op := [.rotr 8773 13]
def bytes8694 : Bytes := ("    let r00002256: u32 = r00002245.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8694 : bytes8694=statementBytes 8790 (op8694.map lower) ∧ bytes8694.length=65 := by core033_kernel_decide
def op8695 : List WordIR.Op := [.bxor 8789 8790]
def bytes8695 : Bytes := ("    let r00002257: u32 = r00002255 ^ r00002256;\n" : String).toByteArray.data.toList
theorem checked8695 : bytes8695=statementBytes 8791 (op8695.map lower) ∧ bytes8695.length=48 := by core033_kernel_decide
def op8696 : List WordIR.Op := [.rotr 8773 22]
def bytes8696 : Bytes := ("    let r00002258: u32 = r00002245.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8696 : bytes8696=statementBytes 8792 (op8696.map lower) ∧ bytes8696.length=65 := by core033_kernel_decide
def op8697 : List WordIR.Op := [.bxor 8791 8792]
def bytes8697 : Bytes := ("    let r00002259: u32 = r00002257 ^ r00002258;\n" : String).toByteArray.data.toList
theorem checked8697 : bytes8697=statementBytes 8793 (op8697.map lower) ∧ bytes8697.length=48 := by core033_kernel_decide
def op8698 : List WordIR.Op := [.band 8773 8746]
def bytes8698 : Bytes := ("    let r0000225a: u32 = r00002245 & r0000222a;\n" : String).toByteArray.data.toList
theorem checked8698 : bytes8698=statementBytes 8794 (op8698.map lower) ∧ bytes8698.length=48 := by core033_kernel_decide
def op8699 : List WordIR.Op := [.band 8773 8719]
def bytes8699 : Bytes := ("    let r0000225b: u32 = r00002245 & r0000220f;\n" : String).toByteArray.data.toList
theorem checked8699 : bytes8699=statementBytes 8795 (op8699.map lower) ∧ bytes8699.length=48 := by core033_kernel_decide
def op8700 : List WordIR.Op := [.bxor 8794 8795]
def bytes8700 : Bytes := ("    let r0000225c: u32 = r0000225a ^ r0000225b;\n" : String).toByteArray.data.toList
theorem checked8700 : bytes8700=statementBytes 8796 (op8700.map lower) ∧ bytes8700.length=48 := by core033_kernel_decide
def op8701 : List WordIR.Op := [.band 8746 8719]
def bytes8701 : Bytes := ("    let r0000225d: u32 = r0000222a & r0000220f;\n" : String).toByteArray.data.toList
theorem checked8701 : bytes8701=statementBytes 8797 (op8701.map lower) ∧ bytes8701.length=48 := by core033_kernel_decide
def op8702 : List WordIR.Op := [.bxor 8796 8797]
def bytes8702 : Bytes := ("    let r0000225e: u32 = r0000225c ^ r0000225d;\n" : String).toByteArray.data.toList
theorem checked8702 : bytes8702=statementBytes 8798 (op8702.map lower) ∧ bytes8702.length=48 := by core033_kernel_decide
def op8703 : List WordIR.Op := [.badd 8793 8798]
def bytes8703 : Bytes := ("    let r0000225f: u32 = r00002259.wrapping_add(r0000225e);\n" : String).toByteArray.data.toList
theorem checked8703 : bytes8703=statementBytes 8799 (op8703.map lower) ∧ bytes8703.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8640,op8641,op8642,op8643,op8644,op8645,op8646,op8647,op8648,op8649,op8650,op8651,op8652,op8653,op8654,op8655,op8656,op8657,op8658,op8659,op8660,op8661,op8662,op8663,op8664,op8665,op8666,op8667,op8668,op8669,op8670,op8671,op8672,op8673,op8674,op8675,op8676,op8677,op8678,op8679,op8680,op8681,op8682,op8683,op8684,op8685,op8686,op8687,op8688,op8689,op8690,op8691,op8692,op8693,op8694,op8695,op8696,op8697,op8698,op8699,op8700,op8701,op8702,op8703]
def chunks : List Bytes := [bytes8640,bytes8641,bytes8642,bytes8643,bytes8644,bytes8645,bytes8646,bytes8647,bytes8648,bytes8649,bytes8650,bytes8651,bytes8652,bytes8653,bytes8654,bytes8655,bytes8656,bytes8657,bytes8658,bytes8659,bytes8660,bytes8661,bytes8662,bytes8663,bytes8664,bytes8665,bytes8666,bytes8667,bytes8668,bytes8669,bytes8670,bytes8671,bytes8672,bytes8673,bytes8674,bytes8675,bytes8676,bytes8677,bytes8678,bytes8679,bytes8680,bytes8681,bytes8682,bytes8683,bytes8684,bytes8685,bytes8686,bytes8687,bytes8688,bytes8689,bytes8690,bytes8691,bytes8692,bytes8693,bytes8694,bytes8695,bytes8696,bytes8697,bytes8698,bytes8699,bytes8700,bytes8701,bytes8702,bytes8703]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8736 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8640.1 (.cons _ _ _ _ _ checked8641.1 (.cons _ _ _ _ _ checked8642.1 (.cons _ _ _ _ _ checked8643.1 (.cons _ _ _ _ _ checked8644.1 (.cons _ _ _ _ _ checked8645.1 (.cons _ _ _ _ _ checked8646.1 (.cons _ _ _ _ _ checked8647.1 (.cons _ _ _ _ _ checked8648.1 (.cons _ _ _ _ _ checked8649.1 (.cons _ _ _ _ _ checked8650.1 (.cons _ _ _ _ _ checked8651.1 (.cons _ _ _ _ _ checked8652.1 (.cons _ _ _ _ _ checked8653.1 (.cons _ _ _ _ _ checked8654.1 (.cons _ _ _ _ _ checked8655.1 (.cons _ _ _ _ _ checked8656.1 (.cons _ _ _ _ _ checked8657.1 (.cons _ _ _ _ _ checked8658.1 (.cons _ _ _ _ _ checked8659.1 (.cons _ _ _ _ _ checked8660.1 (.cons _ _ _ _ _ checked8661.1 (.cons _ _ _ _ _ checked8662.1 (.cons _ _ _ _ _ checked8663.1 (.cons _ _ _ _ _ checked8664.1 (.cons _ _ _ _ _ checked8665.1 (.cons _ _ _ _ _ checked8666.1 (.cons _ _ _ _ _ checked8667.1 (.cons _ _ _ _ _ checked8668.1 (.cons _ _ _ _ _ checked8669.1 (.cons _ _ _ _ _ checked8670.1 (.cons _ _ _ _ _ checked8671.1 (.cons _ _ _ _ _ checked8672.1 (.cons _ _ _ _ _ checked8673.1 (.cons _ _ _ _ _ checked8674.1 (.cons _ _ _ _ _ checked8675.1 (.cons _ _ _ _ _ checked8676.1 (.cons _ _ _ _ _ checked8677.1 (.cons _ _ _ _ _ checked8678.1 (.cons _ _ _ _ _ checked8679.1 (.cons _ _ _ _ _ checked8680.1 (.cons _ _ _ _ _ checked8681.1 (.cons _ _ _ _ _ checked8682.1 (.cons _ _ _ _ _ checked8683.1 (.cons _ _ _ _ _ checked8684.1 (.cons _ _ _ _ _ checked8685.1 (.cons _ _ _ _ _ checked8686.1 (.cons _ _ _ _ _ checked8687.1 (.cons _ _ _ _ _ checked8688.1 (.cons _ _ _ _ _ checked8689.1 (.cons _ _ _ _ _ checked8690.1 (.cons _ _ _ _ _ checked8691.1 (.cons _ _ _ _ _ checked8692.1 (.cons _ _ _ _ _ checked8693.1 (.cons _ _ _ _ _ checked8694.1 (.cons _ _ _ _ _ checked8695.1 (.cons _ _ _ _ _ checked8696.1 (.cons _ _ _ _ _ checked8697.1 (.cons _ _ _ _ _ checked8698.1 (.cons _ _ _ _ _ checked8699.1 (.cons _ _ _ _ _ checked8700.1 (.cons _ _ _ _ _ checked8701.1 (.cons _ _ _ _ _ checked8702.1 (.cons _ _ _ _ _ checked8703.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8736 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3454 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8640.2,checked8641.2,checked8642.2,checked8643.2,checked8644.2,checked8645.2,checked8646.2,checked8647.2,checked8648.2,checked8649.2,checked8650.2,checked8651.2,checked8652.2,checked8653.2,checked8654.2,checked8655.2,checked8656.2,checked8657.2,checked8658.2,checked8659.2,checked8660.2,checked8661.2,checked8662.2,checked8663.2,checked8664.2,checked8665.2,checked8666.2,checked8667.2,checked8668.2,checked8669.2,checked8670.2,checked8671.2,checked8672.2,checked8673.2,checked8674.2,checked8675.2,checked8676.2,checked8677.2,checked8678.2,checked8679.2,checked8680.2,checked8681.2,checked8682.2,checked8683.2,checked8684.2,checked8685.2,checked8686.2,checked8687.2,checked8688.2,checked8689.2,checked8690.2,checked8691.2,checked8692.2,checked8693.2,checked8694.2,checked8695.2,checked8696.2,checked8697.2,checked8698.2,checked8699.2,checked8700.2,checked8701.2,checked8702.2,checked8703.2]
  decide
end ArtifactPairedPathRoundGroup135
