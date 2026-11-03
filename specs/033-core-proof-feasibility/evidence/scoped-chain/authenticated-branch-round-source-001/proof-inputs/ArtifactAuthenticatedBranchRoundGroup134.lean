import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup134
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8576 : List WordIR.Op := [.shr 8677 10]
def bytes8576 : Bytes := ("    let r000021f6: u32 = r000021e5 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8576 : bytes8576=statementBytes 8694 (op8576.map lower) ∧ bytes8576.length=54 := by core033_kernel_decide
def op8577 : List WordIR.Op := [.bxor 8693 8694]
def bytes8577 : Bytes := ("    let r000021f7: u32 = r000021f5 ^ r000021f6;\n" : String).toByteArray.data.toList
theorem checked8577 : bytes8577=statementBytes 8695 (op8577.map lower) ∧ bytes8577.length=48 := by core033_kernel_decide
def op8578 : List WordIR.Op := [.badd 8695 8612]
def bytes8578 : Bytes := ("    let r000021f8: u32 = r000021f7.wrapping_add(r000021a4);\n" : String).toByteArray.data.toList
theorem checked8578 : bytes8578=statementBytes 8696 (op8578.map lower) ∧ bytes8578.length=60 := by core033_kernel_decide
def op8579 : List WordIR.Op := [.rotr 8508 7]
def bytes8579 : Bytes := ("    let r000021f9: u32 = r0000213c.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8579 : bytes8579=statementBytes 8697 (op8579.map lower) ∧ bytes8579.length=65 := by core033_kernel_decide
def op8580 : List WordIR.Op := [.rotr 8508 18]
def bytes8580 : Bytes := ("    let r000021fa: u32 = r0000213c.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8580 : bytes8580=statementBytes 8698 (op8580.map lower) ∧ bytes8580.length=65 := by core033_kernel_decide
def op8581 : List WordIR.Op := [.bxor 8697 8698]
def bytes8581 : Bytes := ("    let r000021fb: u32 = r000021f9 ^ r000021fa;\n" : String).toByteArray.data.toList
theorem checked8581 : bytes8581=statementBytes 8699 (op8581.map lower) ∧ bytes8581.length=48 := by core033_kernel_decide
def op8582 : List WordIR.Op := [.shr 8508 3]
def bytes8582 : Bytes := ("    let r000021fc: u32 = r0000213c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8582 : bytes8582=statementBytes 8700 (op8582.map lower) ∧ bytes8582.length=54 := by core033_kernel_decide
def op8583 : List WordIR.Op := [.bxor 8699 8700]
def bytes8583 : Bytes := ("    let r000021fd: u32 = r000021fb ^ r000021fc;\n" : String).toByteArray.data.toList
theorem checked8583 : bytes8583=statementBytes 8701 (op8583.map lower) ∧ bytes8583.length=48 := by core033_kernel_decide
def op8584 : List WordIR.Op := [.badd 8696 8701]
def bytes8584 : Bytes := ("    let r000021fe: u32 = r000021f8.wrapping_add(r000021fd);\n" : String).toByteArray.data.toList
theorem checked8584 : bytes8584=statementBytes 8702 (op8584.map lower) ∧ bytes8584.length=60 := by core033_kernel_decide
def op8585 : List WordIR.Op := [.badd 8702 8495]
def bytes8585 : Bytes := ("    let r000021ff: u32 = r000021fe.wrapping_add(r0000212f);\n" : String).toByteArray.data.toList
theorem checked8585 : bytes8585=statementBytes 8703 (op8585.map lower) ∧ bytes8585.length=60 := by core033_kernel_decide
def op8586 : List WordIR.Op := [.rotr 8690 17]
def bytes8586 : Bytes := ("    let r00002200: u32 = r000021f2.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8586 : bytes8586=statementBytes 8704 (op8586.map lower) ∧ bytes8586.length=65 := by core033_kernel_decide
def op8587 : List WordIR.Op := [.rotr 8690 19]
def bytes8587 : Bytes := ("    let r00002201: u32 = r000021f2.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8587 : bytes8587=statementBytes 8705 (op8587.map lower) ∧ bytes8587.length=65 := by core033_kernel_decide
def op8588 : List WordIR.Op := [.bxor 8704 8705]
def bytes8588 : Bytes := ("    let r00002202: u32 = r00002200 ^ r00002201;\n" : String).toByteArray.data.toList
theorem checked8588 : bytes8588=statementBytes 8706 (op8588.map lower) ∧ bytes8588.length=48 := by core033_kernel_decide
def op8589 : List WordIR.Op := [.shr 8690 10]
def bytes8589 : Bytes := ("    let r00002203: u32 = r000021f2 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8589 : bytes8589=statementBytes 8707 (op8589.map lower) ∧ bytes8589.length=54 := by core033_kernel_decide
def op8590 : List WordIR.Op := [.bxor 8706 8707]
def bytes8590 : Bytes := ("    let r00002204: u32 = r00002202 ^ r00002203;\n" : String).toByteArray.data.toList
theorem checked8590 : bytes8590=statementBytes 8708 (op8590.map lower) ∧ bytes8590.length=48 := by core033_kernel_decide
def op8591 : List WordIR.Op := [.badd 8708 8625]
def bytes8591 : Bytes := ("    let r00002205: u32 = r00002204.wrapping_add(r000021b1);\n" : String).toByteArray.data.toList
theorem checked8591 : bytes8591=statementBytes 8709 (op8591.map lower) ∧ bytes8591.length=60 := by core033_kernel_decide
def op8592 : List WordIR.Op := [.rotr 8521 7]
def bytes8592 : Bytes := ("    let r00002206: u32 = r00002149.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8592 : bytes8592=statementBytes 8710 (op8592.map lower) ∧ bytes8592.length=65 := by core033_kernel_decide
def op8593 : List WordIR.Op := [.rotr 8521 18]
def bytes8593 : Bytes := ("    let r00002207: u32 = r00002149.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8593 : bytes8593=statementBytes 8711 (op8593.map lower) ∧ bytes8593.length=65 := by core033_kernel_decide
def op8594 : List WordIR.Op := [.bxor 8710 8711]
def bytes8594 : Bytes := ("    let r00002208: u32 = r00002206 ^ r00002207;\n" : String).toByteArray.data.toList
theorem checked8594 : bytes8594=statementBytes 8712 (op8594.map lower) ∧ bytes8594.length=48 := by core033_kernel_decide
def op8595 : List WordIR.Op := [.shr 8521 3]
def bytes8595 : Bytes := ("    let r00002209: u32 = r00002149 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8595 : bytes8595=statementBytes 8713 (op8595.map lower) ∧ bytes8595.length=54 := by core033_kernel_decide
def op8596 : List WordIR.Op := [.bxor 8712 8713]
def bytes8596 : Bytes := ("    let r0000220a: u32 = r00002208 ^ r00002209;\n" : String).toByteArray.data.toList
theorem checked8596 : bytes8596=statementBytes 8714 (op8596.map lower) ∧ bytes8596.length=48 := by core033_kernel_decide
def op8597 : List WordIR.Op := [.badd 8709 8714]
def bytes8597 : Bytes := ("    let r0000220b: u32 = r00002205.wrapping_add(r0000220a);\n" : String).toByteArray.data.toList
theorem checked8597 : bytes8597=statementBytes 8715 (op8597.map lower) ∧ bytes8597.length=60 := by core033_kernel_decide
def op8598 : List WordIR.Op := [.badd 8715 8508]
def bytes8598 : Bytes := ("    let r0000220c: u32 = r0000220b.wrapping_add(r0000213c);\n" : String).toByteArray.data.toList
theorem checked8598 : bytes8598=statementBytes 8716 (op8598.map lower) ∧ bytes8598.length=60 := by core033_kernel_decide
def op8599 : List WordIR.Op := [.rotr 8703 17]
def bytes8599 : Bytes := ("    let r0000220d: u32 = r000021ff.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8599 : bytes8599=statementBytes 8717 (op8599.map lower) ∧ bytes8599.length=65 := by core033_kernel_decide
def op8600 : List WordIR.Op := [.rotr 8703 19]
def bytes8600 : Bytes := ("    let r0000220e: u32 = r000021ff.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8600 : bytes8600=statementBytes 8718 (op8600.map lower) ∧ bytes8600.length=65 := by core033_kernel_decide
def op8601 : List WordIR.Op := [.bxor 8717 8718]
def bytes8601 : Bytes := ("    let r0000220f: u32 = r0000220d ^ r0000220e;\n" : String).toByteArray.data.toList
theorem checked8601 : bytes8601=statementBytes 8719 (op8601.map lower) ∧ bytes8601.length=48 := by core033_kernel_decide
def op8602 : List WordIR.Op := [.shr 8703 10]
def bytes8602 : Bytes := ("    let r00002210: u32 = r000021ff >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8602 : bytes8602=statementBytes 8720 (op8602.map lower) ∧ bytes8602.length=54 := by core033_kernel_decide
def op8603 : List WordIR.Op := [.bxor 8719 8720]
def bytes8603 : Bytes := ("    let r00002211: u32 = r0000220f ^ r00002210;\n" : String).toByteArray.data.toList
theorem checked8603 : bytes8603=statementBytes 8721 (op8603.map lower) ∧ bytes8603.length=48 := by core033_kernel_decide
def op8604 : List WordIR.Op := [.badd 8721 8638]
def bytes8604 : Bytes := ("    let r00002212: u32 = r00002211.wrapping_add(r000021be);\n" : String).toByteArray.data.toList
theorem checked8604 : bytes8604=statementBytes 8722 (op8604.map lower) ∧ bytes8604.length=60 := by core033_kernel_decide
def op8605 : List WordIR.Op := [.rotr 8534 7]
def bytes8605 : Bytes := ("    let r00002213: u32 = r00002156.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8605 : bytes8605=statementBytes 8723 (op8605.map lower) ∧ bytes8605.length=65 := by core033_kernel_decide
def op8606 : List WordIR.Op := [.rotr 8534 18]
def bytes8606 : Bytes := ("    let r00002214: u32 = r00002156.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8606 : bytes8606=statementBytes 8724 (op8606.map lower) ∧ bytes8606.length=65 := by core033_kernel_decide
def op8607 : List WordIR.Op := [.bxor 8723 8724]
def bytes8607 : Bytes := ("    let r00002215: u32 = r00002213 ^ r00002214;\n" : String).toByteArray.data.toList
theorem checked8607 : bytes8607=statementBytes 8725 (op8607.map lower) ∧ bytes8607.length=48 := by core033_kernel_decide
def op8608 : List WordIR.Op := [.shr 8534 3]
def bytes8608 : Bytes := ("    let r00002216: u32 = r00002156 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8608 : bytes8608=statementBytes 8726 (op8608.map lower) ∧ bytes8608.length=54 := by core033_kernel_decide
def op8609 : List WordIR.Op := [.bxor 8725 8726]
def bytes8609 : Bytes := ("    let r00002217: u32 = r00002215 ^ r00002216;\n" : String).toByteArray.data.toList
theorem checked8609 : bytes8609=statementBytes 8727 (op8609.map lower) ∧ bytes8609.length=48 := by core033_kernel_decide
def op8610 : List WordIR.Op := [.badd 8722 8727]
def bytes8610 : Bytes := ("    let r00002218: u32 = r00002212.wrapping_add(r00002217);\n" : String).toByteArray.data.toList
theorem checked8610 : bytes8610=statementBytes 8728 (op8610.map lower) ∧ bytes8610.length=60 := by core033_kernel_decide
def op8611 : List WordIR.Op := [.badd 8728 8521]
def bytes8611 : Bytes := ("    let r00002219: u32 = r00002218.wrapping_add(r00002149);\n" : String).toByteArray.data.toList
theorem checked8611 : bytes8611=statementBytes 8729 (op8611.map lower) ∧ bytes8611.length=60 := by core033_kernel_decide
def op8612 : List WordIR.Op := [.rotr 8716 17]
def bytes8612 : Bytes := ("    let r0000221a: u32 = r0000220c.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8612 : bytes8612=statementBytes 8730 (op8612.map lower) ∧ bytes8612.length=65 := by core033_kernel_decide
def op8613 : List WordIR.Op := [.rotr 8716 19]
def bytes8613 : Bytes := ("    let r0000221b: u32 = r0000220c.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8613 : bytes8613=statementBytes 8731 (op8613.map lower) ∧ bytes8613.length=65 := by core033_kernel_decide
def op8614 : List WordIR.Op := [.bxor 8730 8731]
def bytes8614 : Bytes := ("    let r0000221c: u32 = r0000221a ^ r0000221b;\n" : String).toByteArray.data.toList
theorem checked8614 : bytes8614=statementBytes 8732 (op8614.map lower) ∧ bytes8614.length=48 := by core033_kernel_decide
def op8615 : List WordIR.Op := [.shr 8716 10]
def bytes8615 : Bytes := ("    let r0000221d: u32 = r0000220c >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8615 : bytes8615=statementBytes 8733 (op8615.map lower) ∧ bytes8615.length=54 := by core033_kernel_decide
def op8616 : List WordIR.Op := [.bxor 8732 8733]
def bytes8616 : Bytes := ("    let r0000221e: u32 = r0000221c ^ r0000221d;\n" : String).toByteArray.data.toList
theorem checked8616 : bytes8616=statementBytes 8734 (op8616.map lower) ∧ bytes8616.length=48 := by core033_kernel_decide
def op8617 : List WordIR.Op := [.badd 8734 8651]
def bytes8617 : Bytes := ("    let r0000221f: u32 = r0000221e.wrapping_add(r000021cb);\n" : String).toByteArray.data.toList
theorem checked8617 : bytes8617=statementBytes 8735 (op8617.map lower) ∧ bytes8617.length=60 := by core033_kernel_decide
def op8618 : List WordIR.Op := [.rotr 8547 7]
def bytes8618 : Bytes := ("    let r00002220: u32 = r00002163.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8618 : bytes8618=statementBytes 8736 (op8618.map lower) ∧ bytes8618.length=65 := by core033_kernel_decide
def op8619 : List WordIR.Op := [.rotr 8547 18]
def bytes8619 : Bytes := ("    let r00002221: u32 = r00002163.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8619 : bytes8619=statementBytes 8737 (op8619.map lower) ∧ bytes8619.length=65 := by core033_kernel_decide
def op8620 : List WordIR.Op := [.bxor 8736 8737]
def bytes8620 : Bytes := ("    let r00002222: u32 = r00002220 ^ r00002221;\n" : String).toByteArray.data.toList
theorem checked8620 : bytes8620=statementBytes 8738 (op8620.map lower) ∧ bytes8620.length=48 := by core033_kernel_decide
def op8621 : List WordIR.Op := [.shr 8547 3]
def bytes8621 : Bytes := ("    let r00002223: u32 = r00002163 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8621 : bytes8621=statementBytes 8739 (op8621.map lower) ∧ bytes8621.length=54 := by core033_kernel_decide
def op8622 : List WordIR.Op := [.bxor 8738 8739]
def bytes8622 : Bytes := ("    let r00002224: u32 = r00002222 ^ r00002223;\n" : String).toByteArray.data.toList
theorem checked8622 : bytes8622=statementBytes 8740 (op8622.map lower) ∧ bytes8622.length=48 := by core033_kernel_decide
def op8623 : List WordIR.Op := [.badd 8735 8740]
def bytes8623 : Bytes := ("    let r00002225: u32 = r0000221f.wrapping_add(r00002224);\n" : String).toByteArray.data.toList
theorem checked8623 : bytes8623=statementBytes 8741 (op8623.map lower) ∧ bytes8623.length=60 := by core033_kernel_decide
def op8624 : List WordIR.Op := [.badd 8741 8534]
def bytes8624 : Bytes := ("    let r00002226: u32 = r00002225.wrapping_add(r00002156);\n" : String).toByteArray.data.toList
theorem checked8624 : bytes8624=statementBytes 8742 (op8624.map lower) ∧ bytes8624.length=60 := by core033_kernel_decide
def op8625 : List WordIR.Op := [.rotr 8729 17]
def bytes8625 : Bytes := ("    let r00002227: u32 = r00002219.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8625 : bytes8625=statementBytes 8743 (op8625.map lower) ∧ bytes8625.length=65 := by core033_kernel_decide
def op8626 : List WordIR.Op := [.rotr 8729 19]
def bytes8626 : Bytes := ("    let r00002228: u32 = r00002219.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8626 : bytes8626=statementBytes 8744 (op8626.map lower) ∧ bytes8626.length=65 := by core033_kernel_decide
def op8627 : List WordIR.Op := [.bxor 8743 8744]
def bytes8627 : Bytes := ("    let r00002229: u32 = r00002227 ^ r00002228;\n" : String).toByteArray.data.toList
theorem checked8627 : bytes8627=statementBytes 8745 (op8627.map lower) ∧ bytes8627.length=48 := by core033_kernel_decide
def op8628 : List WordIR.Op := [.shr 8729 10]
def bytes8628 : Bytes := ("    let r0000222a: u32 = r00002219 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8628 : bytes8628=statementBytes 8746 (op8628.map lower) ∧ bytes8628.length=54 := by core033_kernel_decide
def op8629 : List WordIR.Op := [.bxor 8745 8746]
def bytes8629 : Bytes := ("    let r0000222b: u32 = r00002229 ^ r0000222a;\n" : String).toByteArray.data.toList
theorem checked8629 : bytes8629=statementBytes 8747 (op8629.map lower) ∧ bytes8629.length=48 := by core033_kernel_decide
def op8630 : List WordIR.Op := [.badd 8747 8664]
def bytes8630 : Bytes := ("    let r0000222c: u32 = r0000222b.wrapping_add(r000021d8);\n" : String).toByteArray.data.toList
theorem checked8630 : bytes8630=statementBytes 8748 (op8630.map lower) ∧ bytes8630.length=60 := by core033_kernel_decide
def op8631 : List WordIR.Op := [.rotr 8560 7]
def bytes8631 : Bytes := ("    let r0000222d: u32 = r00002170.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8631 : bytes8631=statementBytes 8749 (op8631.map lower) ∧ bytes8631.length=65 := by core033_kernel_decide
def op8632 : List WordIR.Op := [.rotr 8560 18]
def bytes8632 : Bytes := ("    let r0000222e: u32 = r00002170.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8632 : bytes8632=statementBytes 8750 (op8632.map lower) ∧ bytes8632.length=65 := by core033_kernel_decide
def op8633 : List WordIR.Op := [.bxor 8749 8750]
def bytes8633 : Bytes := ("    let r0000222f: u32 = r0000222d ^ r0000222e;\n" : String).toByteArray.data.toList
theorem checked8633 : bytes8633=statementBytes 8751 (op8633.map lower) ∧ bytes8633.length=48 := by core033_kernel_decide
def op8634 : List WordIR.Op := [.shr 8560 3]
def bytes8634 : Bytes := ("    let r00002230: u32 = r00002170 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8634 : bytes8634=statementBytes 8752 (op8634.map lower) ∧ bytes8634.length=54 := by core033_kernel_decide
def op8635 : List WordIR.Op := [.bxor 8751 8752]
def bytes8635 : Bytes := ("    let r00002231: u32 = r0000222f ^ r00002230;\n" : String).toByteArray.data.toList
theorem checked8635 : bytes8635=statementBytes 8753 (op8635.map lower) ∧ bytes8635.length=48 := by core033_kernel_decide
def op8636 : List WordIR.Op := [.badd 8748 8753]
def bytes8636 : Bytes := ("    let r00002232: u32 = r0000222c.wrapping_add(r00002231);\n" : String).toByteArray.data.toList
theorem checked8636 : bytes8636=statementBytes 8754 (op8636.map lower) ∧ bytes8636.length=60 := by core033_kernel_decide
def op8637 : List WordIR.Op := [.badd 8754 8547]
def bytes8637 : Bytes := ("    let r00002233: u32 = r00002232.wrapping_add(r00002163);\n" : String).toByteArray.data.toList
theorem checked8637 : bytes8637=statementBytes 8755 (op8637.map lower) ∧ bytes8637.length=60 := by core033_kernel_decide
def op8638 : List WordIR.Op := [.rotr 3383 6]
def bytes8638 : Bytes := ("    let r00002234: u32 = r00000d37.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8638 : bytes8638=statementBytes 8756 (op8638.map lower) ∧ bytes8638.length=65 := by core033_kernel_decide
def op8639 : List WordIR.Op := [.rotr 3383 11]
def bytes8639 : Bytes := ("    let r00002235: u32 = r00000d37.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8639 : bytes8639=statementBytes 8757 (op8639.map lower) ∧ bytes8639.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8576,op8577,op8578,op8579,op8580,op8581,op8582,op8583,op8584,op8585,op8586,op8587,op8588,op8589,op8590,op8591,op8592,op8593,op8594,op8595,op8596,op8597,op8598,op8599,op8600,op8601,op8602,op8603,op8604,op8605,op8606,op8607,op8608,op8609,op8610,op8611,op8612,op8613,op8614,op8615,op8616,op8617,op8618,op8619,op8620,op8621,op8622,op8623,op8624,op8625,op8626,op8627,op8628,op8629,op8630,op8631,op8632,op8633,op8634,op8635,op8636,op8637,op8638,op8639]
def chunks : List Bytes := [bytes8576,bytes8577,bytes8578,bytes8579,bytes8580,bytes8581,bytes8582,bytes8583,bytes8584,bytes8585,bytes8586,bytes8587,bytes8588,bytes8589,bytes8590,bytes8591,bytes8592,bytes8593,bytes8594,bytes8595,bytes8596,bytes8597,bytes8598,bytes8599,bytes8600,bytes8601,bytes8602,bytes8603,bytes8604,bytes8605,bytes8606,bytes8607,bytes8608,bytes8609,bytes8610,bytes8611,bytes8612,bytes8613,bytes8614,bytes8615,bytes8616,bytes8617,bytes8618,bytes8619,bytes8620,bytes8621,bytes8622,bytes8623,bytes8624,bytes8625,bytes8626,bytes8627,bytes8628,bytes8629,bytes8630,bytes8631,bytes8632,bytes8633,bytes8634,bytes8635,bytes8636,bytes8637,bytes8638,bytes8639]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8694 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8576.1 (.cons _ _ _ _ _ checked8577.1 (.cons _ _ _ _ _ checked8578.1 (.cons _ _ _ _ _ checked8579.1 (.cons _ _ _ _ _ checked8580.1 (.cons _ _ _ _ _ checked8581.1 (.cons _ _ _ _ _ checked8582.1 (.cons _ _ _ _ _ checked8583.1 (.cons _ _ _ _ _ checked8584.1 (.cons _ _ _ _ _ checked8585.1 (.cons _ _ _ _ _ checked8586.1 (.cons _ _ _ _ _ checked8587.1 (.cons _ _ _ _ _ checked8588.1 (.cons _ _ _ _ _ checked8589.1 (.cons _ _ _ _ _ checked8590.1 (.cons _ _ _ _ _ checked8591.1 (.cons _ _ _ _ _ checked8592.1 (.cons _ _ _ _ _ checked8593.1 (.cons _ _ _ _ _ checked8594.1 (.cons _ _ _ _ _ checked8595.1 (.cons _ _ _ _ _ checked8596.1 (.cons _ _ _ _ _ checked8597.1 (.cons _ _ _ _ _ checked8598.1 (.cons _ _ _ _ _ checked8599.1 (.cons _ _ _ _ _ checked8600.1 (.cons _ _ _ _ _ checked8601.1 (.cons _ _ _ _ _ checked8602.1 (.cons _ _ _ _ _ checked8603.1 (.cons _ _ _ _ _ checked8604.1 (.cons _ _ _ _ _ checked8605.1 (.cons _ _ _ _ _ checked8606.1 (.cons _ _ _ _ _ checked8607.1 (.cons _ _ _ _ _ checked8608.1 (.cons _ _ _ _ _ checked8609.1 (.cons _ _ _ _ _ checked8610.1 (.cons _ _ _ _ _ checked8611.1 (.cons _ _ _ _ _ checked8612.1 (.cons _ _ _ _ _ checked8613.1 (.cons _ _ _ _ _ checked8614.1 (.cons _ _ _ _ _ checked8615.1 (.cons _ _ _ _ _ checked8616.1 (.cons _ _ _ _ _ checked8617.1 (.cons _ _ _ _ _ checked8618.1 (.cons _ _ _ _ _ checked8619.1 (.cons _ _ _ _ _ checked8620.1 (.cons _ _ _ _ _ checked8621.1 (.cons _ _ _ _ _ checked8622.1 (.cons _ _ _ _ _ checked8623.1 (.cons _ _ _ _ _ checked8624.1 (.cons _ _ _ _ _ checked8625.1 (.cons _ _ _ _ _ checked8626.1 (.cons _ _ _ _ _ checked8627.1 (.cons _ _ _ _ _ checked8628.1 (.cons _ _ _ _ _ checked8629.1 (.cons _ _ _ _ _ checked8630.1 (.cons _ _ _ _ _ checked8631.1 (.cons _ _ _ _ _ checked8632.1 (.cons _ _ _ _ _ checked8633.1 (.cons _ _ _ _ _ checked8634.1 (.cons _ _ _ _ _ checked8635.1 (.cons _ _ _ _ _ checked8636.1 (.cons _ _ _ _ _ checked8637.1 (.cons _ _ _ _ _ checked8638.1 (.cons _ _ _ _ _ checked8639.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8694 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3652 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8576.2,checked8577.2,checked8578.2,checked8579.2,checked8580.2,checked8581.2,checked8582.2,checked8583.2,checked8584.2,checked8585.2,checked8586.2,checked8587.2,checked8588.2,checked8589.2,checked8590.2,checked8591.2,checked8592.2,checked8593.2,checked8594.2,checked8595.2,checked8596.2,checked8597.2,checked8598.2,checked8599.2,checked8600.2,checked8601.2,checked8602.2,checked8603.2,checked8604.2,checked8605.2,checked8606.2,checked8607.2,checked8608.2,checked8609.2,checked8610.2,checked8611.2,checked8612.2,checked8613.2,checked8614.2,checked8615.2,checked8616.2,checked8617.2,checked8618.2,checked8619.2,checked8620.2,checked8621.2,checked8622.2,checked8623.2,checked8624.2,checked8625.2,checked8626.2,checked8627.2,checked8628.2,checked8629.2,checked8630.2,checked8631.2,checked8632.2,checked8633.2,checked8634.2,checked8635.2,checked8636.2,checked8637.2,checked8638.2,checked8639.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup134
