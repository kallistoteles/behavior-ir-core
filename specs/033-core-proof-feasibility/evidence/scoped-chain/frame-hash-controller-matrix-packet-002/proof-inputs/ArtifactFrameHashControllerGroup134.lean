import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup134
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8576 : List WordIR.Op := [.bxor 8617 8618]
def bytes8576 : Bytes := ("    let r000021ab: u32 = r000021a9 ^ r000021aa;\n" : String).toByteArray.data.toList
theorem checked8576 : bytes8576=statementBytes 8619 (op8576.map lower) ∧ bytes8576.length=48 := by core033_kernel_decide
def op8577 : List WordIR.Op := [.rotr 8601 22]
def bytes8577 : Bytes := ("    let r000021ac: u32 = r00002199.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8577 : bytes8577=statementBytes 8620 (op8577.map lower) ∧ bytes8577.length=65 := by core033_kernel_decide
def op8578 : List WordIR.Op := [.bxor 8619 8620]
def bytes8578 : Bytes := ("    let r000021ad: u32 = r000021ab ^ r000021ac;\n" : String).toByteArray.data.toList
theorem checked8578 : bytes8578=statementBytes 8621 (op8578.map lower) ∧ bytes8578.length=48 := by core033_kernel_decide
def op8579 : List WordIR.Op := [.band 8601 8574]
def bytes8579 : Bytes := ("    let r000021ae: u32 = r00002199 & r0000217e;\n" : String).toByteArray.data.toList
theorem checked8579 : bytes8579=statementBytes 8622 (op8579.map lower) ∧ bytes8579.length=48 := by core033_kernel_decide
def op8580 : List WordIR.Op := [.band 8601 8547]
def bytes8580 : Bytes := ("    let r000021af: u32 = r00002199 & r00002163;\n" : String).toByteArray.data.toList
theorem checked8580 : bytes8580=statementBytes 8623 (op8580.map lower) ∧ bytes8580.length=48 := by core033_kernel_decide
def op8581 : List WordIR.Op := [.bxor 8622 8623]
def bytes8581 : Bytes := ("    let r000021b0: u32 = r000021ae ^ r000021af;\n" : String).toByteArray.data.toList
theorem checked8581 : bytes8581=statementBytes 8624 (op8581.map lower) ∧ bytes8581.length=48 := by core033_kernel_decide
def op8582 : List WordIR.Op := [.band 8574 8547]
def bytes8582 : Bytes := ("    let r000021b1: u32 = r0000217e & r00002163;\n" : String).toByteArray.data.toList
theorem checked8582 : bytes8582=statementBytes 8625 (op8582.map lower) ∧ bytes8582.length=48 := by core033_kernel_decide
def op8583 : List WordIR.Op := [.bxor 8624 8625]
def bytes8583 : Bytes := ("    let r000021b2: u32 = r000021b0 ^ r000021b1;\n" : String).toByteArray.data.toList
theorem checked8583 : bytes8583=statementBytes 8626 (op8583.map lower) ∧ bytes8583.length=48 := by core033_kernel_decide
def op8584 : List WordIR.Op := [.badd 8621 8626]
def bytes8584 : Bytes := ("    let r000021b3: u32 = r000021ad.wrapping_add(r000021b2);\n" : String).toByteArray.data.toList
theorem checked8584 : bytes8584=statementBytes 8627 (op8584.map lower) ∧ bytes8584.length=60 := by core033_kernel_decide
def op8585 : List WordIR.Op := [.badd 8616 8627]
def bytes8585 : Bytes := ("    let r000021b4: u32 = r000021a8.wrapping_add(r000021b3);\n" : String).toByteArray.data.toList
theorem checked8585 : bytes8585=statementBytes 8628 (op8585.map lower) ∧ bytes8585.length=60 := by core033_kernel_decide
def op8586 : List WordIR.Op := [.badd 8520 8616]
def bytes8586 : Bytes := ("    let r000021b5: u32 = r00002148.wrapping_add(r000021a8);\n" : String).toByteArray.data.toList
theorem checked8586 : bytes8586=statementBytes 8629 (op8586.map lower) ∧ bytes8586.length=60 := by core033_kernel_decide
def op8587 : List WordIR.Op := [.rotr 8629 6]
def bytes8587 : Bytes := ("    let r000021b6: u32 = r000021b5.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8587 : bytes8587=statementBytes 8630 (op8587.map lower) ∧ bytes8587.length=65 := by core033_kernel_decide
def op8588 : List WordIR.Op := [.rotr 8629 11]
def bytes8588 : Bytes := ("    let r000021b7: u32 = r000021b5.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8588 : bytes8588=statementBytes 8631 (op8588.map lower) ∧ bytes8588.length=65 := by core033_kernel_decide
def op8589 : List WordIR.Op := [.bxor 8630 8631]
def bytes8589 : Bytes := ("    let r000021b8: u32 = r000021b6 ^ r000021b7;\n" : String).toByteArray.data.toList
theorem checked8589 : bytes8589=statementBytes 8632 (op8589.map lower) ∧ bytes8589.length=48 := by core033_kernel_decide
def op8590 : List WordIR.Op := [.rotr 8629 25]
def bytes8590 : Bytes := ("    let r000021b9: u32 = r000021b5.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8590 : bytes8590=statementBytes 8633 (op8590.map lower) ∧ bytes8590.length=65 := by core033_kernel_decide
def op8591 : List WordIR.Op := [.bxor 8632 8633]
def bytes8591 : Bytes := ("    let r000021ba: u32 = r000021b8 ^ r000021b9;\n" : String).toByteArray.data.toList
theorem checked8591 : bytes8591=statementBytes 8634 (op8591.map lower) ∧ bytes8591.length=48 := by core033_kernel_decide
def op8592 : List WordIR.Op := [.badd 8548 8634]
def bytes8592 : Bytes := ("    let r000021bb: u32 = r00002164.wrapping_add(r000021ba);\n" : String).toByteArray.data.toList
theorem checked8592 : bytes8592=statementBytes 8635 (op8592.map lower) ∧ bytes8592.length=60 := by core033_kernel_decide
def op8593 : List WordIR.Op := [.band 8629 8602]
def bytes8593 : Bytes := ("    let r000021bc: u32 = r000021b5 & r0000219a;\n" : String).toByteArray.data.toList
theorem checked8593 : bytes8593=statementBytes 8636 (op8593.map lower) ∧ bytes8593.length=48 := by core033_kernel_decide
def op8594 : List WordIR.Op := [.bnot 8629]
def bytes8594 : Bytes := ("    let r000021bd: u32 = !r000021b5;\n" : String).toByteArray.data.toList
theorem checked8594 : bytes8594=statementBytes 8637 (op8594.map lower) ∧ bytes8594.length=37 := by core033_kernel_decide
def op8595 : List WordIR.Op := [.band 8637 8575]
def bytes8595 : Bytes := ("    let r000021be: u32 = r000021bd & r0000217f;\n" : String).toByteArray.data.toList
theorem checked8595 : bytes8595=statementBytes 8638 (op8595.map lower) ∧ bytes8595.length=48 := by core033_kernel_decide
def op8596 : List WordIR.Op := [.bxor 8636 8638]
def bytes8596 : Bytes := ("    let r000021bf: u32 = r000021bc ^ r000021be;\n" : String).toByteArray.data.toList
theorem checked8596 : bytes8596=statementBytes 8639 (op8596.map lower) ∧ bytes8596.length=48 := by core033_kernel_decide
def op8597 : List WordIR.Op := [.badd 8635 8639]
def bytes8597 : Bytes := ("    let r000021c0: u32 = r000021bb.wrapping_add(r000021bf);\n" : String).toByteArray.data.toList
theorem checked8597 : bytes8597=statementBytes 8640 (op8597.map lower) ∧ bytes8597.length=60 := by core033_kernel_decide
def op8598 : List WordIR.Op := [.literal (BitVec.ofNat 32 2361852424)]
def bytes8598 : Bytes := ("    let r000021c1: u32 = 0x8cc70208_u32;\n" : String).toByteArray.data.toList
theorem checked8598 : bytes8598=statementBytes 8641 (op8598.map lower) ∧ bytes8598.length=41 := by core033_kernel_decide
def op8599 : List WordIR.Op := [.badd 8640 8641]
def bytes8599 : Bytes := ("    let r000021c2: u32 = r000021c0.wrapping_add(r000021c1);\n" : String).toByteArray.data.toList
theorem checked8599 : bytes8599=statementBytes 8642 (op8599.map lower) ∧ bytes8599.length=60 := by core033_kernel_decide
def op8600 : List WordIR.Op := [.badd 8642 6984]
def bytes8600 : Bytes := ("    let r000021c3: u32 = r000021c2.wrapping_add(r00001b48);\n" : String).toByteArray.data.toList
theorem checked8600 : bytes8600=statementBytes 8643 (op8600.map lower) ∧ bytes8600.length=60 := by core033_kernel_decide
def op8601 : List WordIR.Op := [.rotr 8628 2]
def bytes8601 : Bytes := ("    let r000021c4: u32 = r000021b4.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8601 : bytes8601=statementBytes 8644 (op8601.map lower) ∧ bytes8601.length=65 := by core033_kernel_decide
def op8602 : List WordIR.Op := [.rotr 8628 13]
def bytes8602 : Bytes := ("    let r000021c5: u32 = r000021b4.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8602 : bytes8602=statementBytes 8645 (op8602.map lower) ∧ bytes8602.length=65 := by core033_kernel_decide
def op8603 : List WordIR.Op := [.bxor 8644 8645]
def bytes8603 : Bytes := ("    let r000021c6: u32 = r000021c4 ^ r000021c5;\n" : String).toByteArray.data.toList
theorem checked8603 : bytes8603=statementBytes 8646 (op8603.map lower) ∧ bytes8603.length=48 := by core033_kernel_decide
def op8604 : List WordIR.Op := [.rotr 8628 22]
def bytes8604 : Bytes := ("    let r000021c7: u32 = r000021b4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8604 : bytes8604=statementBytes 8647 (op8604.map lower) ∧ bytes8604.length=65 := by core033_kernel_decide
def op8605 : List WordIR.Op := [.bxor 8646 8647]
def bytes8605 : Bytes := ("    let r000021c8: u32 = r000021c6 ^ r000021c7;\n" : String).toByteArray.data.toList
theorem checked8605 : bytes8605=statementBytes 8648 (op8605.map lower) ∧ bytes8605.length=48 := by core033_kernel_decide
def op8606 : List WordIR.Op := [.band 8628 8601]
def bytes8606 : Bytes := ("    let r000021c9: u32 = r000021b4 & r00002199;\n" : String).toByteArray.data.toList
theorem checked8606 : bytes8606=statementBytes 8649 (op8606.map lower) ∧ bytes8606.length=48 := by core033_kernel_decide
def op8607 : List WordIR.Op := [.band 8628 8574]
def bytes8607 : Bytes := ("    let r000021ca: u32 = r000021b4 & r0000217e;\n" : String).toByteArray.data.toList
theorem checked8607 : bytes8607=statementBytes 8650 (op8607.map lower) ∧ bytes8607.length=48 := by core033_kernel_decide
def op8608 : List WordIR.Op := [.bxor 8649 8650]
def bytes8608 : Bytes := ("    let r000021cb: u32 = r000021c9 ^ r000021ca;\n" : String).toByteArray.data.toList
theorem checked8608 : bytes8608=statementBytes 8651 (op8608.map lower) ∧ bytes8608.length=48 := by core033_kernel_decide
def op8609 : List WordIR.Op := [.band 8601 8574]
def bytes8609 : Bytes := ("    let r000021cc: u32 = r00002199 & r0000217e;\n" : String).toByteArray.data.toList
theorem checked8609 : bytes8609=statementBytes 8652 (op8609.map lower) ∧ bytes8609.length=48 := by core033_kernel_decide
def op8610 : List WordIR.Op := [.bxor 8651 8652]
def bytes8610 : Bytes := ("    let r000021cd: u32 = r000021cb ^ r000021cc;\n" : String).toByteArray.data.toList
theorem checked8610 : bytes8610=statementBytes 8653 (op8610.map lower) ∧ bytes8610.length=48 := by core033_kernel_decide
def op8611 : List WordIR.Op := [.badd 8648 8653]
def bytes8611 : Bytes := ("    let r000021ce: u32 = r000021c8.wrapping_add(r000021cd);\n" : String).toByteArray.data.toList
theorem checked8611 : bytes8611=statementBytes 8654 (op8611.map lower) ∧ bytes8611.length=60 := by core033_kernel_decide
def op8612 : List WordIR.Op := [.badd 8643 8654]
def bytes8612 : Bytes := ("    let r000021cf: u32 = r000021c3.wrapping_add(r000021ce);\n" : String).toByteArray.data.toList
theorem checked8612 : bytes8612=statementBytes 8655 (op8612.map lower) ∧ bytes8612.length=60 := by core033_kernel_decide
def op8613 : List WordIR.Op := [.badd 8547 8643]
def bytes8613 : Bytes := ("    let r000021d0: u32 = r00002163.wrapping_add(r000021c3);\n" : String).toByteArray.data.toList
theorem checked8613 : bytes8613=statementBytes 8656 (op8613.map lower) ∧ bytes8613.length=60 := by core033_kernel_decide
def op8614 : List WordIR.Op := [.rotr 8656 6]
def bytes8614 : Bytes := ("    let r000021d1: u32 = r000021d0.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8614 : bytes8614=statementBytes 8657 (op8614.map lower) ∧ bytes8614.length=65 := by core033_kernel_decide
def op8615 : List WordIR.Op := [.rotr 8656 11]
def bytes8615 : Bytes := ("    let r000021d2: u32 = r000021d0.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8615 : bytes8615=statementBytes 8658 (op8615.map lower) ∧ bytes8615.length=65 := by core033_kernel_decide
def op8616 : List WordIR.Op := [.bxor 8657 8658]
def bytes8616 : Bytes := ("    let r000021d3: u32 = r000021d1 ^ r000021d2;\n" : String).toByteArray.data.toList
theorem checked8616 : bytes8616=statementBytes 8659 (op8616.map lower) ∧ bytes8616.length=48 := by core033_kernel_decide
def op8617 : List WordIR.Op := [.rotr 8656 25]
def bytes8617 : Bytes := ("    let r000021d4: u32 = r000021d0.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8617 : bytes8617=statementBytes 8660 (op8617.map lower) ∧ bytes8617.length=65 := by core033_kernel_decide
def op8618 : List WordIR.Op := [.bxor 8659 8660]
def bytes8618 : Bytes := ("    let r000021d5: u32 = r000021d3 ^ r000021d4;\n" : String).toByteArray.data.toList
theorem checked8618 : bytes8618=statementBytes 8661 (op8618.map lower) ∧ bytes8618.length=48 := by core033_kernel_decide
def op8619 : List WordIR.Op := [.badd 8575 8661]
def bytes8619 : Bytes := ("    let r000021d6: u32 = r0000217f.wrapping_add(r000021d5);\n" : String).toByteArray.data.toList
theorem checked8619 : bytes8619=statementBytes 8662 (op8619.map lower) ∧ bytes8619.length=60 := by core033_kernel_decide
def op8620 : List WordIR.Op := [.band 8656 8629]
def bytes8620 : Bytes := ("    let r000021d7: u32 = r000021d0 & r000021b5;\n" : String).toByteArray.data.toList
theorem checked8620 : bytes8620=statementBytes 8663 (op8620.map lower) ∧ bytes8620.length=48 := by core033_kernel_decide
def op8621 : List WordIR.Op := [.bnot 8656]
def bytes8621 : Bytes := ("    let r000021d8: u32 = !r000021d0;\n" : String).toByteArray.data.toList
theorem checked8621 : bytes8621=statementBytes 8664 (op8621.map lower) ∧ bytes8621.length=37 := by core033_kernel_decide
def op8622 : List WordIR.Op := [.band 8664 8602]
def bytes8622 : Bytes := ("    let r000021d9: u32 = r000021d8 & r0000219a;\n" : String).toByteArray.data.toList
theorem checked8622 : bytes8622=statementBytes 8665 (op8622.map lower) ∧ bytes8622.length=48 := by core033_kernel_decide
def op8623 : List WordIR.Op := [.bxor 8663 8665]
def bytes8623 : Bytes := ("    let r000021da: u32 = r000021d7 ^ r000021d9;\n" : String).toByteArray.data.toList
theorem checked8623 : bytes8623=statementBytes 8666 (op8623.map lower) ∧ bytes8623.length=48 := by core033_kernel_decide
def op8624 : List WordIR.Op := [.badd 8662 8666]
def bytes8624 : Bytes := ("    let r000021db: u32 = r000021d6.wrapping_add(r000021da);\n" : String).toByteArray.data.toList
theorem checked8624 : bytes8624=statementBytes 8667 (op8624.map lower) ∧ bytes8624.length=60 := by core033_kernel_decide
def op8625 : List WordIR.Op := [.literal (BitVec.ofNat 32 2428436474)]
def bytes8625 : Bytes := ("    let r000021dc: u32 = 0x90befffa_u32;\n" : String).toByteArray.data.toList
theorem checked8625 : bytes8625=statementBytes 8668 (op8625.map lower) ∧ bytes8625.length=41 := by core033_kernel_decide
def op8626 : List WordIR.Op := [.badd 8667 8668]
def bytes8626 : Bytes := ("    let r000021dd: u32 = r000021db.wrapping_add(r000021dc);\n" : String).toByteArray.data.toList
theorem checked8626 : bytes8626=statementBytes 8669 (op8626.map lower) ∧ bytes8626.length=60 := by core033_kernel_decide
def op8627 : List WordIR.Op := [.badd 8669 6997]
def bytes8627 : Bytes := ("    let r000021de: u32 = r000021dd.wrapping_add(r00001b55);\n" : String).toByteArray.data.toList
theorem checked8627 : bytes8627=statementBytes 8670 (op8627.map lower) ∧ bytes8627.length=60 := by core033_kernel_decide
def op8628 : List WordIR.Op := [.rotr 8655 2]
def bytes8628 : Bytes := ("    let r000021df: u32 = r000021cf.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8628 : bytes8628=statementBytes 8671 (op8628.map lower) ∧ bytes8628.length=65 := by core033_kernel_decide
def op8629 : List WordIR.Op := [.rotr 8655 13]
def bytes8629 : Bytes := ("    let r000021e0: u32 = r000021cf.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8629 : bytes8629=statementBytes 8672 (op8629.map lower) ∧ bytes8629.length=65 := by core033_kernel_decide
def op8630 : List WordIR.Op := [.bxor 8671 8672]
def bytes8630 : Bytes := ("    let r000021e1: u32 = r000021df ^ r000021e0;\n" : String).toByteArray.data.toList
theorem checked8630 : bytes8630=statementBytes 8673 (op8630.map lower) ∧ bytes8630.length=48 := by core033_kernel_decide
def op8631 : List WordIR.Op := [.rotr 8655 22]
def bytes8631 : Bytes := ("    let r000021e2: u32 = r000021cf.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8631 : bytes8631=statementBytes 8674 (op8631.map lower) ∧ bytes8631.length=65 := by core033_kernel_decide
def op8632 : List WordIR.Op := [.bxor 8673 8674]
def bytes8632 : Bytes := ("    let r000021e3: u32 = r000021e1 ^ r000021e2;\n" : String).toByteArray.data.toList
theorem checked8632 : bytes8632=statementBytes 8675 (op8632.map lower) ∧ bytes8632.length=48 := by core033_kernel_decide
def op8633 : List WordIR.Op := [.band 8655 8628]
def bytes8633 : Bytes := ("    let r000021e4: u32 = r000021cf & r000021b4;\n" : String).toByteArray.data.toList
theorem checked8633 : bytes8633=statementBytes 8676 (op8633.map lower) ∧ bytes8633.length=48 := by core033_kernel_decide
def op8634 : List WordIR.Op := [.band 8655 8601]
def bytes8634 : Bytes := ("    let r000021e5: u32 = r000021cf & r00002199;\n" : String).toByteArray.data.toList
theorem checked8634 : bytes8634=statementBytes 8677 (op8634.map lower) ∧ bytes8634.length=48 := by core033_kernel_decide
def op8635 : List WordIR.Op := [.bxor 8676 8677]
def bytes8635 : Bytes := ("    let r000021e6: u32 = r000021e4 ^ r000021e5;\n" : String).toByteArray.data.toList
theorem checked8635 : bytes8635=statementBytes 8678 (op8635.map lower) ∧ bytes8635.length=48 := by core033_kernel_decide
def op8636 : List WordIR.Op := [.band 8628 8601]
def bytes8636 : Bytes := ("    let r000021e7: u32 = r000021b4 & r00002199;\n" : String).toByteArray.data.toList
theorem checked8636 : bytes8636=statementBytes 8679 (op8636.map lower) ∧ bytes8636.length=48 := by core033_kernel_decide
def op8637 : List WordIR.Op := [.bxor 8678 8679]
def bytes8637 : Bytes := ("    let r000021e8: u32 = r000021e6 ^ r000021e7;\n" : String).toByteArray.data.toList
theorem checked8637 : bytes8637=statementBytes 8680 (op8637.map lower) ∧ bytes8637.length=48 := by core033_kernel_decide
def op8638 : List WordIR.Op := [.badd 8675 8680]
def bytes8638 : Bytes := ("    let r000021e9: u32 = r000021e3.wrapping_add(r000021e8);\n" : String).toByteArray.data.toList
theorem checked8638 : bytes8638=statementBytes 8681 (op8638.map lower) ∧ bytes8638.length=60 := by core033_kernel_decide
def op8639 : List WordIR.Op := [.badd 8670 8681]
def bytes8639 : Bytes := ("    let r000021ea: u32 = r000021de.wrapping_add(r000021e9);\n" : String).toByteArray.data.toList
theorem checked8639 : bytes8639=statementBytes 8682 (op8639.map lower) ∧ bytes8639.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8576,op8577,op8578,op8579,op8580,op8581,op8582,op8583,op8584,op8585,op8586,op8587,op8588,op8589,op8590,op8591,op8592,op8593,op8594,op8595,op8596,op8597,op8598,op8599,op8600,op8601,op8602,op8603,op8604,op8605,op8606,op8607,op8608,op8609,op8610,op8611,op8612,op8613,op8614,op8615,op8616,op8617,op8618,op8619,op8620,op8621,op8622,op8623,op8624,op8625,op8626,op8627,op8628,op8629,op8630,op8631,op8632,op8633,op8634,op8635,op8636,op8637,op8638,op8639]
def chunks : List Bytes := [bytes8576,bytes8577,bytes8578,bytes8579,bytes8580,bytes8581,bytes8582,bytes8583,bytes8584,bytes8585,bytes8586,bytes8587,bytes8588,bytes8589,bytes8590,bytes8591,bytes8592,bytes8593,bytes8594,bytes8595,bytes8596,bytes8597,bytes8598,bytes8599,bytes8600,bytes8601,bytes8602,bytes8603,bytes8604,bytes8605,bytes8606,bytes8607,bytes8608,bytes8609,bytes8610,bytes8611,bytes8612,bytes8613,bytes8614,bytes8615,bytes8616,bytes8617,bytes8618,bytes8619,bytes8620,bytes8621,bytes8622,bytes8623,bytes8624,bytes8625,bytes8626,bytes8627,bytes8628,bytes8629,bytes8630,bytes8631,bytes8632,bytes8633,bytes8634,bytes8635,bytes8636,bytes8637,bytes8638,bytes8639]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8619 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8576.1 (.cons _ _ _ _ _ checked8577.1 (.cons _ _ _ _ _ checked8578.1 (.cons _ _ _ _ _ checked8579.1 (.cons _ _ _ _ _ checked8580.1 (.cons _ _ _ _ _ checked8581.1 (.cons _ _ _ _ _ checked8582.1 (.cons _ _ _ _ _ checked8583.1 (.cons _ _ _ _ _ checked8584.1 (.cons _ _ _ _ _ checked8585.1 (.cons _ _ _ _ _ checked8586.1 (.cons _ _ _ _ _ checked8587.1 (.cons _ _ _ _ _ checked8588.1 (.cons _ _ _ _ _ checked8589.1 (.cons _ _ _ _ _ checked8590.1 (.cons _ _ _ _ _ checked8591.1 (.cons _ _ _ _ _ checked8592.1 (.cons _ _ _ _ _ checked8593.1 (.cons _ _ _ _ _ checked8594.1 (.cons _ _ _ _ _ checked8595.1 (.cons _ _ _ _ _ checked8596.1 (.cons _ _ _ _ _ checked8597.1 (.cons _ _ _ _ _ checked8598.1 (.cons _ _ _ _ _ checked8599.1 (.cons _ _ _ _ _ checked8600.1 (.cons _ _ _ _ _ checked8601.1 (.cons _ _ _ _ _ checked8602.1 (.cons _ _ _ _ _ checked8603.1 (.cons _ _ _ _ _ checked8604.1 (.cons _ _ _ _ _ checked8605.1 (.cons _ _ _ _ _ checked8606.1 (.cons _ _ _ _ _ checked8607.1 (.cons _ _ _ _ _ checked8608.1 (.cons _ _ _ _ _ checked8609.1 (.cons _ _ _ _ _ checked8610.1 (.cons _ _ _ _ _ checked8611.1 (.cons _ _ _ _ _ checked8612.1 (.cons _ _ _ _ _ checked8613.1 (.cons _ _ _ _ _ checked8614.1 (.cons _ _ _ _ _ checked8615.1 (.cons _ _ _ _ _ checked8616.1 (.cons _ _ _ _ _ checked8617.1 (.cons _ _ _ _ _ checked8618.1 (.cons _ _ _ _ _ checked8619.1 (.cons _ _ _ _ _ checked8620.1 (.cons _ _ _ _ _ checked8621.1 (.cons _ _ _ _ _ checked8622.1 (.cons _ _ _ _ _ checked8623.1 (.cons _ _ _ _ _ checked8624.1 (.cons _ _ _ _ _ checked8625.1 (.cons _ _ _ _ _ checked8626.1 (.cons _ _ _ _ _ checked8627.1 (.cons _ _ _ _ _ checked8628.1 (.cons _ _ _ _ _ checked8629.1 (.cons _ _ _ _ _ checked8630.1 (.cons _ _ _ _ _ checked8631.1 (.cons _ _ _ _ _ checked8632.1 (.cons _ _ _ _ _ checked8633.1 (.cons _ _ _ _ _ checked8634.1 (.cons _ _ _ _ _ checked8635.1 (.cons _ _ _ _ _ checked8636.1 (.cons _ _ _ _ _ checked8637.1 (.cons _ _ _ _ _ checked8638.1 (.cons _ _ _ _ _ checked8639.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8619 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3449 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8576.2,checked8577.2,checked8578.2,checked8579.2,checked8580.2,checked8581.2,checked8582.2,checked8583.2,checked8584.2,checked8585.2,checked8586.2,checked8587.2,checked8588.2,checked8589.2,checked8590.2,checked8591.2,checked8592.2,checked8593.2,checked8594.2,checked8595.2,checked8596.2,checked8597.2,checked8598.2,checked8599.2,checked8600.2,checked8601.2,checked8602.2,checked8603.2,checked8604.2,checked8605.2,checked8606.2,checked8607.2,checked8608.2,checked8609.2,checked8610.2,checked8611.2,checked8612.2,checked8613.2,checked8614.2,checked8615.2,checked8616.2,checked8617.2,checked8618.2,checked8619.2,checked8620.2,checked8621.2,checked8622.2,checked8623.2,checked8624.2,checked8625.2,checked8626.2,checked8627.2,checked8628.2,checked8629.2,checked8630.2,checked8631.2,checked8632.2,checked8633.2,checked8634.2,checked8635.2,checked8636.2,checked8637.2,checked8638.2,checked8639.2]
  decide
end ArtifactFrameHashControllerGroup134
