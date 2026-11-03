import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup134
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8576 : List WordIR.Op := [.badd 8585 8671]
def bytes8576 : Bytes := ("    let r000021e0: u32 = r00002189.wrapping_add(r000021df);\n" : String).toByteArray.data.toList
theorem checked8576 : bytes8576=statementBytes 8672 (op8576.map lower) ∧ bytes8576.length=60 := by core033_kernel_decide
def op8577 : List WordIR.Op := [.band 8666 8639]
def bytes8577 : Bytes := ("    let r000021e1: u32 = r000021da & r000021bf;\n" : String).toByteArray.data.toList
theorem checked8577 : bytes8577=statementBytes 8673 (op8577.map lower) ∧ bytes8577.length=48 := by core033_kernel_decide
def op8578 : List WordIR.Op := [.bnot 8666]
def bytes8578 : Bytes := ("    let r000021e2: u32 = !r000021da;\n" : String).toByteArray.data.toList
theorem checked8578 : bytes8578=statementBytes 8674 (op8578.map lower) ∧ bytes8578.length=37 := by core033_kernel_decide
def op8579 : List WordIR.Op := [.band 8674 8612]
def bytes8579 : Bytes := ("    let r000021e3: u32 = r000021e2 & r000021a4;\n" : String).toByteArray.data.toList
theorem checked8579 : bytes8579=statementBytes 8675 (op8579.map lower) ∧ bytes8579.length=48 := by core033_kernel_decide
def op8580 : List WordIR.Op := [.bxor 8673 8675]
def bytes8580 : Bytes := ("    let r000021e4: u32 = r000021e1 ^ r000021e3;\n" : String).toByteArray.data.toList
theorem checked8580 : bytes8580=statementBytes 8676 (op8580.map lower) ∧ bytes8580.length=48 := by core033_kernel_decide
def op8581 : List WordIR.Op := [.badd 8672 8676]
def bytes8581 : Bytes := ("    let r000021e5: u32 = r000021e0.wrapping_add(r000021e4);\n" : String).toByteArray.data.toList
theorem checked8581 : bytes8581=statementBytes 8677 (op8581.map lower) ∧ bytes8581.length=60 := by core033_kernel_decide
def op8582 : List WordIR.Op := [.literal (BitVec.ofNat 32 1555081692)]
def bytes8582 : Bytes := ("    let r000021e6: u32 = 0x5cb0a9dc_u32;\n" : String).toByteArray.data.toList
theorem checked8582 : bytes8582=statementBytes 8678 (op8582.map lower) ∧ bytes8582.length=41 := by core033_kernel_decide
def op8583 : List WordIR.Op := [.badd 8677 8678]
def bytes8583 : Bytes := ("    let r000021e7: u32 = r000021e5.wrapping_add(r000021e6);\n" : String).toByteArray.data.toList
theorem checked8583 : bytes8583=statementBytes 8679 (op8583.map lower) ∧ bytes8583.length=60 := by core033_kernel_decide
def op8584 : List WordIR.Op := [.badd 8679 7539]
def bytes8584 : Bytes := ("    let r000021e8: u32 = r000021e7.wrapping_add(r00001d73);\n" : String).toByteArray.data.toList
theorem checked8584 : bytes8584=statementBytes 8680 (op8584.map lower) ∧ bytes8584.length=60 := by core033_kernel_decide
def op8585 : List WordIR.Op := [.rotr 8665 2]
def bytes8585 : Bytes := ("    let r000021e9: u32 = r000021d9.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8585 : bytes8585=statementBytes 8681 (op8585.map lower) ∧ bytes8585.length=65 := by core033_kernel_decide
def op8586 : List WordIR.Op := [.rotr 8665 13]
def bytes8586 : Bytes := ("    let r000021ea: u32 = r000021d9.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8586 : bytes8586=statementBytes 8682 (op8586.map lower) ∧ bytes8586.length=65 := by core033_kernel_decide
def op8587 : List WordIR.Op := [.bxor 8681 8682]
def bytes8587 : Bytes := ("    let r000021eb: u32 = r000021e9 ^ r000021ea;\n" : String).toByteArray.data.toList
theorem checked8587 : bytes8587=statementBytes 8683 (op8587.map lower) ∧ bytes8587.length=48 := by core033_kernel_decide
def op8588 : List WordIR.Op := [.rotr 8665 22]
def bytes8588 : Bytes := ("    let r000021ec: u32 = r000021d9.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8588 : bytes8588=statementBytes 8684 (op8588.map lower) ∧ bytes8588.length=65 := by core033_kernel_decide
def op8589 : List WordIR.Op := [.bxor 8683 8684]
def bytes8589 : Bytes := ("    let r000021ed: u32 = r000021eb ^ r000021ec;\n" : String).toByteArray.data.toList
theorem checked8589 : bytes8589=statementBytes 8685 (op8589.map lower) ∧ bytes8589.length=48 := by core033_kernel_decide
def op8590 : List WordIR.Op := [.band 8665 8638]
def bytes8590 : Bytes := ("    let r000021ee: u32 = r000021d9 & r000021be;\n" : String).toByteArray.data.toList
theorem checked8590 : bytes8590=statementBytes 8686 (op8590.map lower) ∧ bytes8590.length=48 := by core033_kernel_decide
def op8591 : List WordIR.Op := [.band 8665 8611]
def bytes8591 : Bytes := ("    let r000021ef: u32 = r000021d9 & r000021a3;\n" : String).toByteArray.data.toList
theorem checked8591 : bytes8591=statementBytes 8687 (op8591.map lower) ∧ bytes8591.length=48 := by core033_kernel_decide
def op8592 : List WordIR.Op := [.bxor 8686 8687]
def bytes8592 : Bytes := ("    let r000021f0: u32 = r000021ee ^ r000021ef;\n" : String).toByteArray.data.toList
theorem checked8592 : bytes8592=statementBytes 8688 (op8592.map lower) ∧ bytes8592.length=48 := by core033_kernel_decide
def op8593 : List WordIR.Op := [.band 8638 8611]
def bytes8593 : Bytes := ("    let r000021f1: u32 = r000021be & r000021a3;\n" : String).toByteArray.data.toList
theorem checked8593 : bytes8593=statementBytes 8689 (op8593.map lower) ∧ bytes8593.length=48 := by core033_kernel_decide
def op8594 : List WordIR.Op := [.bxor 8688 8689]
def bytes8594 : Bytes := ("    let r000021f2: u32 = r000021f0 ^ r000021f1;\n" : String).toByteArray.data.toList
theorem checked8594 : bytes8594=statementBytes 8690 (op8594.map lower) ∧ bytes8594.length=48 := by core033_kernel_decide
def op8595 : List WordIR.Op := [.badd 8685 8690]
def bytes8595 : Bytes := ("    let r000021f3: u32 = r000021ed.wrapping_add(r000021f2);\n" : String).toByteArray.data.toList
theorem checked8595 : bytes8595=statementBytes 8691 (op8595.map lower) ∧ bytes8595.length=60 := by core033_kernel_decide
def op8596 : List WordIR.Op := [.badd 8680 8691]
def bytes8596 : Bytes := ("    let r000021f4: u32 = r000021e8.wrapping_add(r000021f3);\n" : String).toByteArray.data.toList
theorem checked8596 : bytes8596=statementBytes 8692 (op8596.map lower) ∧ bytes8596.length=60 := by core033_kernel_decide
def op8597 : List WordIR.Op := [.badd 8584 8680]
def bytes8597 : Bytes := ("    let r000021f5: u32 = r00002188.wrapping_add(r000021e8);\n" : String).toByteArray.data.toList
theorem checked8597 : bytes8597=statementBytes 8693 (op8597.map lower) ∧ bytes8597.length=60 := by core033_kernel_decide
def op8598 : List WordIR.Op := [.rotr 8693 6]
def bytes8598 : Bytes := ("    let r000021f6: u32 = r000021f5.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8598 : bytes8598=statementBytes 8694 (op8598.map lower) ∧ bytes8598.length=65 := by core033_kernel_decide
def op8599 : List WordIR.Op := [.rotr 8693 11]
def bytes8599 : Bytes := ("    let r000021f7: u32 = r000021f5.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8599 : bytes8599=statementBytes 8695 (op8599.map lower) ∧ bytes8599.length=65 := by core033_kernel_decide
def op8600 : List WordIR.Op := [.bxor 8694 8695]
def bytes8600 : Bytes := ("    let r000021f8: u32 = r000021f6 ^ r000021f7;\n" : String).toByteArray.data.toList
theorem checked8600 : bytes8600=statementBytes 8696 (op8600.map lower) ∧ bytes8600.length=48 := by core033_kernel_decide
def op8601 : List WordIR.Op := [.rotr 8693 25]
def bytes8601 : Bytes := ("    let r000021f9: u32 = r000021f5.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8601 : bytes8601=statementBytes 8697 (op8601.map lower) ∧ bytes8601.length=65 := by core033_kernel_decide
def op8602 : List WordIR.Op := [.bxor 8696 8697]
def bytes8602 : Bytes := ("    let r000021fa: u32 = r000021f8 ^ r000021f9;\n" : String).toByteArray.data.toList
theorem checked8602 : bytes8602=statementBytes 8698 (op8602.map lower) ∧ bytes8602.length=48 := by core033_kernel_decide
def op8603 : List WordIR.Op := [.badd 8612 8698]
def bytes8603 : Bytes := ("    let r000021fb: u32 = r000021a4.wrapping_add(r000021fa);\n" : String).toByteArray.data.toList
theorem checked8603 : bytes8603=statementBytes 8699 (op8603.map lower) ∧ bytes8603.length=60 := by core033_kernel_decide
def op8604 : List WordIR.Op := [.band 8693 8666]
def bytes8604 : Bytes := ("    let r000021fc: u32 = r000021f5 & r000021da;\n" : String).toByteArray.data.toList
theorem checked8604 : bytes8604=statementBytes 8700 (op8604.map lower) ∧ bytes8604.length=48 := by core033_kernel_decide
def op8605 : List WordIR.Op := [.bnot 8693]
def bytes8605 : Bytes := ("    let r000021fd: u32 = !r000021f5;\n" : String).toByteArray.data.toList
theorem checked8605 : bytes8605=statementBytes 8701 (op8605.map lower) ∧ bytes8605.length=37 := by core033_kernel_decide
def op8606 : List WordIR.Op := [.band 8701 8639]
def bytes8606 : Bytes := ("    let r000021fe: u32 = r000021fd & r000021bf;\n" : String).toByteArray.data.toList
theorem checked8606 : bytes8606=statementBytes 8702 (op8606.map lower) ∧ bytes8606.length=48 := by core033_kernel_decide
def op8607 : List WordIR.Op := [.bxor 8700 8702]
def bytes8607 : Bytes := ("    let r000021ff: u32 = r000021fc ^ r000021fe;\n" : String).toByteArray.data.toList
theorem checked8607 : bytes8607=statementBytes 8703 (op8607.map lower) ∧ bytes8607.length=48 := by core033_kernel_decide
def op8608 : List WordIR.Op := [.badd 8699 8703]
def bytes8608 : Bytes := ("    let r00002200: u32 = r000021fb.wrapping_add(r000021ff);\n" : String).toByteArray.data.toList
theorem checked8608 : bytes8608=statementBytes 8704 (op8608.map lower) ∧ bytes8608.length=60 := by core033_kernel_decide
def op8609 : List WordIR.Op := [.literal (BitVec.ofNat 32 1996064986)]
def bytes8609 : Bytes := ("    let r00002201: u32 = 0x76f988da_u32;\n" : String).toByteArray.data.toList
theorem checked8609 : bytes8609=statementBytes 8705 (op8609.map lower) ∧ bytes8609.length=41 := by core033_kernel_decide
def op8610 : List WordIR.Op := [.badd 8704 8705]
def bytes8610 : Bytes := ("    let r00002202: u32 = r00002200.wrapping_add(r00002201);\n" : String).toByteArray.data.toList
theorem checked8610 : bytes8610=statementBytes 8706 (op8610.map lower) ∧ bytes8610.length=60 := by core033_kernel_decide
def op8611 : List WordIR.Op := [.badd 8706 7552]
def bytes8611 : Bytes := ("    let r00002203: u32 = r00002202.wrapping_add(r00001d80);\n" : String).toByteArray.data.toList
theorem checked8611 : bytes8611=statementBytes 8707 (op8611.map lower) ∧ bytes8611.length=60 := by core033_kernel_decide
def op8612 : List WordIR.Op := [.rotr 8692 2]
def bytes8612 : Bytes := ("    let r00002204: u32 = r000021f4.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8612 : bytes8612=statementBytes 8708 (op8612.map lower) ∧ bytes8612.length=65 := by core033_kernel_decide
def op8613 : List WordIR.Op := [.rotr 8692 13]
def bytes8613 : Bytes := ("    let r00002205: u32 = r000021f4.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8613 : bytes8613=statementBytes 8709 (op8613.map lower) ∧ bytes8613.length=65 := by core033_kernel_decide
def op8614 : List WordIR.Op := [.bxor 8708 8709]
def bytes8614 : Bytes := ("    let r00002206: u32 = r00002204 ^ r00002205;\n" : String).toByteArray.data.toList
theorem checked8614 : bytes8614=statementBytes 8710 (op8614.map lower) ∧ bytes8614.length=48 := by core033_kernel_decide
def op8615 : List WordIR.Op := [.rotr 8692 22]
def bytes8615 : Bytes := ("    let r00002207: u32 = r000021f4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8615 : bytes8615=statementBytes 8711 (op8615.map lower) ∧ bytes8615.length=65 := by core033_kernel_decide
def op8616 : List WordIR.Op := [.bxor 8710 8711]
def bytes8616 : Bytes := ("    let r00002208: u32 = r00002206 ^ r00002207;\n" : String).toByteArray.data.toList
theorem checked8616 : bytes8616=statementBytes 8712 (op8616.map lower) ∧ bytes8616.length=48 := by core033_kernel_decide
def op8617 : List WordIR.Op := [.band 8692 8665]
def bytes8617 : Bytes := ("    let r00002209: u32 = r000021f4 & r000021d9;\n" : String).toByteArray.data.toList
theorem checked8617 : bytes8617=statementBytes 8713 (op8617.map lower) ∧ bytes8617.length=48 := by core033_kernel_decide
def op8618 : List WordIR.Op := [.band 8692 8638]
def bytes8618 : Bytes := ("    let r0000220a: u32 = r000021f4 & r000021be;\n" : String).toByteArray.data.toList
theorem checked8618 : bytes8618=statementBytes 8714 (op8618.map lower) ∧ bytes8618.length=48 := by core033_kernel_decide
def op8619 : List WordIR.Op := [.bxor 8713 8714]
def bytes8619 : Bytes := ("    let r0000220b: u32 = r00002209 ^ r0000220a;\n" : String).toByteArray.data.toList
theorem checked8619 : bytes8619=statementBytes 8715 (op8619.map lower) ∧ bytes8619.length=48 := by core033_kernel_decide
def op8620 : List WordIR.Op := [.band 8665 8638]
def bytes8620 : Bytes := ("    let r0000220c: u32 = r000021d9 & r000021be;\n" : String).toByteArray.data.toList
theorem checked8620 : bytes8620=statementBytes 8716 (op8620.map lower) ∧ bytes8620.length=48 := by core033_kernel_decide
def op8621 : List WordIR.Op := [.bxor 8715 8716]
def bytes8621 : Bytes := ("    let r0000220d: u32 = r0000220b ^ r0000220c;\n" : String).toByteArray.data.toList
theorem checked8621 : bytes8621=statementBytes 8717 (op8621.map lower) ∧ bytes8621.length=48 := by core033_kernel_decide
def op8622 : List WordIR.Op := [.badd 8712 8717]
def bytes8622 : Bytes := ("    let r0000220e: u32 = r00002208.wrapping_add(r0000220d);\n" : String).toByteArray.data.toList
theorem checked8622 : bytes8622=statementBytes 8718 (op8622.map lower) ∧ bytes8622.length=60 := by core033_kernel_decide
def op8623 : List WordIR.Op := [.badd 8707 8718]
def bytes8623 : Bytes := ("    let r0000220f: u32 = r00002203.wrapping_add(r0000220e);\n" : String).toByteArray.data.toList
theorem checked8623 : bytes8623=statementBytes 8719 (op8623.map lower) ∧ bytes8623.length=60 := by core033_kernel_decide
def op8624 : List WordIR.Op := [.badd 8611 8707]
def bytes8624 : Bytes := ("    let r00002210: u32 = r000021a3.wrapping_add(r00002203);\n" : String).toByteArray.data.toList
theorem checked8624 : bytes8624=statementBytes 8720 (op8624.map lower) ∧ bytes8624.length=60 := by core033_kernel_decide
def op8625 : List WordIR.Op := [.rotr 8720 6]
def bytes8625 : Bytes := ("    let r00002211: u32 = r00002210.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8625 : bytes8625=statementBytes 8721 (op8625.map lower) ∧ bytes8625.length=65 := by core033_kernel_decide
def op8626 : List WordIR.Op := [.rotr 8720 11]
def bytes8626 : Bytes := ("    let r00002212: u32 = r00002210.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8626 : bytes8626=statementBytes 8722 (op8626.map lower) ∧ bytes8626.length=65 := by core033_kernel_decide
def op8627 : List WordIR.Op := [.bxor 8721 8722]
def bytes8627 : Bytes := ("    let r00002213: u32 = r00002211 ^ r00002212;\n" : String).toByteArray.data.toList
theorem checked8627 : bytes8627=statementBytes 8723 (op8627.map lower) ∧ bytes8627.length=48 := by core033_kernel_decide
def op8628 : List WordIR.Op := [.rotr 8720 25]
def bytes8628 : Bytes := ("    let r00002214: u32 = r00002210.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8628 : bytes8628=statementBytes 8724 (op8628.map lower) ∧ bytes8628.length=65 := by core033_kernel_decide
def op8629 : List WordIR.Op := [.bxor 8723 8724]
def bytes8629 : Bytes := ("    let r00002215: u32 = r00002213 ^ r00002214;\n" : String).toByteArray.data.toList
theorem checked8629 : bytes8629=statementBytes 8725 (op8629.map lower) ∧ bytes8629.length=48 := by core033_kernel_decide
def op8630 : List WordIR.Op := [.badd 8639 8725]
def bytes8630 : Bytes := ("    let r00002216: u32 = r000021bf.wrapping_add(r00002215);\n" : String).toByteArray.data.toList
theorem checked8630 : bytes8630=statementBytes 8726 (op8630.map lower) ∧ bytes8630.length=60 := by core033_kernel_decide
def op8631 : List WordIR.Op := [.band 8720 8693]
def bytes8631 : Bytes := ("    let r00002217: u32 = r00002210 & r000021f5;\n" : String).toByteArray.data.toList
theorem checked8631 : bytes8631=statementBytes 8727 (op8631.map lower) ∧ bytes8631.length=48 := by core033_kernel_decide
def op8632 : List WordIR.Op := [.bnot 8720]
def bytes8632 : Bytes := ("    let r00002218: u32 = !r00002210;\n" : String).toByteArray.data.toList
theorem checked8632 : bytes8632=statementBytes 8728 (op8632.map lower) ∧ bytes8632.length=37 := by core033_kernel_decide
def op8633 : List WordIR.Op := [.band 8728 8666]
def bytes8633 : Bytes := ("    let r00002219: u32 = r00002218 & r000021da;\n" : String).toByteArray.data.toList
theorem checked8633 : bytes8633=statementBytes 8729 (op8633.map lower) ∧ bytes8633.length=48 := by core033_kernel_decide
def op8634 : List WordIR.Op := [.bxor 8727 8729]
def bytes8634 : Bytes := ("    let r0000221a: u32 = r00002217 ^ r00002219;\n" : String).toByteArray.data.toList
theorem checked8634 : bytes8634=statementBytes 8730 (op8634.map lower) ∧ bytes8634.length=48 := by core033_kernel_decide
def op8635 : List WordIR.Op := [.badd 8726 8730]
def bytes8635 : Bytes := ("    let r0000221b: u32 = r00002216.wrapping_add(r0000221a);\n" : String).toByteArray.data.toList
theorem checked8635 : bytes8635=statementBytes 8731 (op8635.map lower) ∧ bytes8635.length=60 := by core033_kernel_decide
def op8636 : List WordIR.Op := [.literal (BitVec.ofNat 32 2554220882)]
def bytes8636 : Bytes := ("    let r0000221c: u32 = 0x983e5152_u32;\n" : String).toByteArray.data.toList
theorem checked8636 : bytes8636=statementBytes 8732 (op8636.map lower) ∧ bytes8636.length=41 := by core033_kernel_decide
def op8637 : List WordIR.Op := [.badd 8731 8732]
def bytes8637 : Bytes := ("    let r0000221d: u32 = r0000221b.wrapping_add(r0000221c);\n" : String).toByteArray.data.toList
theorem checked8637 : bytes8637=statementBytes 8733 (op8637.map lower) ∧ bytes8637.length=60 := by core033_kernel_decide
def op8638 : List WordIR.Op := [.badd 8733 7565]
def bytes8638 : Bytes := ("    let r0000221e: u32 = r0000221d.wrapping_add(r00001d8d);\n" : String).toByteArray.data.toList
theorem checked8638 : bytes8638=statementBytes 8734 (op8638.map lower) ∧ bytes8638.length=60 := by core033_kernel_decide
def op8639 : List WordIR.Op := [.rotr 8719 2]
def bytes8639 : Bytes := ("    let r0000221f: u32 = r0000220f.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8639 : bytes8639=statementBytes 8735 (op8639.map lower) ∧ bytes8639.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8576,op8577,op8578,op8579,op8580,op8581,op8582,op8583,op8584,op8585,op8586,op8587,op8588,op8589,op8590,op8591,op8592,op8593,op8594,op8595,op8596,op8597,op8598,op8599,op8600,op8601,op8602,op8603,op8604,op8605,op8606,op8607,op8608,op8609,op8610,op8611,op8612,op8613,op8614,op8615,op8616,op8617,op8618,op8619,op8620,op8621,op8622,op8623,op8624,op8625,op8626,op8627,op8628,op8629,op8630,op8631,op8632,op8633,op8634,op8635,op8636,op8637,op8638,op8639]
def chunks : List Bytes := [bytes8576,bytes8577,bytes8578,bytes8579,bytes8580,bytes8581,bytes8582,bytes8583,bytes8584,bytes8585,bytes8586,bytes8587,bytes8588,bytes8589,bytes8590,bytes8591,bytes8592,bytes8593,bytes8594,bytes8595,bytes8596,bytes8597,bytes8598,bytes8599,bytes8600,bytes8601,bytes8602,bytes8603,bytes8604,bytes8605,bytes8606,bytes8607,bytes8608,bytes8609,bytes8610,bytes8611,bytes8612,bytes8613,bytes8614,bytes8615,bytes8616,bytes8617,bytes8618,bytes8619,bytes8620,bytes8621,bytes8622,bytes8623,bytes8624,bytes8625,bytes8626,bytes8627,bytes8628,bytes8629,bytes8630,bytes8631,bytes8632,bytes8633,bytes8634,bytes8635,bytes8636,bytes8637,bytes8638,bytes8639]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8672 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8576.1 (.cons _ _ _ _ _ checked8577.1 (.cons _ _ _ _ _ checked8578.1 (.cons _ _ _ _ _ checked8579.1 (.cons _ _ _ _ _ checked8580.1 (.cons _ _ _ _ _ checked8581.1 (.cons _ _ _ _ _ checked8582.1 (.cons _ _ _ _ _ checked8583.1 (.cons _ _ _ _ _ checked8584.1 (.cons _ _ _ _ _ checked8585.1 (.cons _ _ _ _ _ checked8586.1 (.cons _ _ _ _ _ checked8587.1 (.cons _ _ _ _ _ checked8588.1 (.cons _ _ _ _ _ checked8589.1 (.cons _ _ _ _ _ checked8590.1 (.cons _ _ _ _ _ checked8591.1 (.cons _ _ _ _ _ checked8592.1 (.cons _ _ _ _ _ checked8593.1 (.cons _ _ _ _ _ checked8594.1 (.cons _ _ _ _ _ checked8595.1 (.cons _ _ _ _ _ checked8596.1 (.cons _ _ _ _ _ checked8597.1 (.cons _ _ _ _ _ checked8598.1 (.cons _ _ _ _ _ checked8599.1 (.cons _ _ _ _ _ checked8600.1 (.cons _ _ _ _ _ checked8601.1 (.cons _ _ _ _ _ checked8602.1 (.cons _ _ _ _ _ checked8603.1 (.cons _ _ _ _ _ checked8604.1 (.cons _ _ _ _ _ checked8605.1 (.cons _ _ _ _ _ checked8606.1 (.cons _ _ _ _ _ checked8607.1 (.cons _ _ _ _ _ checked8608.1 (.cons _ _ _ _ _ checked8609.1 (.cons _ _ _ _ _ checked8610.1 (.cons _ _ _ _ _ checked8611.1 (.cons _ _ _ _ _ checked8612.1 (.cons _ _ _ _ _ checked8613.1 (.cons _ _ _ _ _ checked8614.1 (.cons _ _ _ _ _ checked8615.1 (.cons _ _ _ _ _ checked8616.1 (.cons _ _ _ _ _ checked8617.1 (.cons _ _ _ _ _ checked8618.1 (.cons _ _ _ _ _ checked8619.1 (.cons _ _ _ _ _ checked8620.1 (.cons _ _ _ _ _ checked8621.1 (.cons _ _ _ _ _ checked8622.1 (.cons _ _ _ _ _ checked8623.1 (.cons _ _ _ _ _ checked8624.1 (.cons _ _ _ _ _ checked8625.1 (.cons _ _ _ _ _ checked8626.1 (.cons _ _ _ _ _ checked8627.1 (.cons _ _ _ _ _ checked8628.1 (.cons _ _ _ _ _ checked8629.1 (.cons _ _ _ _ _ checked8630.1 (.cons _ _ _ _ _ checked8631.1 (.cons _ _ _ _ _ checked8632.1 (.cons _ _ _ _ _ checked8633.1 (.cons _ _ _ _ _ checked8634.1 (.cons _ _ _ _ _ checked8635.1 (.cons _ _ _ _ _ checked8636.1 (.cons _ _ _ _ _ checked8637.1 (.cons _ _ _ _ _ checked8638.1 (.cons _ _ _ _ _ checked8639.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8672 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3455 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8576.2,checked8577.2,checked8578.2,checked8579.2,checked8580.2,checked8581.2,checked8582.2,checked8583.2,checked8584.2,checked8585.2,checked8586.2,checked8587.2,checked8588.2,checked8589.2,checked8590.2,checked8591.2,checked8592.2,checked8593.2,checked8594.2,checked8595.2,checked8596.2,checked8597.2,checked8598.2,checked8599.2,checked8600.2,checked8601.2,checked8602.2,checked8603.2,checked8604.2,checked8605.2,checked8606.2,checked8607.2,checked8608.2,checked8609.2,checked8610.2,checked8611.2,checked8612.2,checked8613.2,checked8614.2,checked8615.2,checked8616.2,checked8617.2,checked8618.2,checked8619.2,checked8620.2,checked8621.2,checked8622.2,checked8623.2,checked8624.2,checked8625.2,checked8626.2,checked8627.2,checked8628.2,checked8629.2,checked8630.2,checked8631.2,checked8632.2,checked8633.2,checked8634.2,checked8635.2,checked8636.2,checked8637.2,checked8638.2,checked8639.2]
  decide
end ArtifactPairedPathRoundGroup134
