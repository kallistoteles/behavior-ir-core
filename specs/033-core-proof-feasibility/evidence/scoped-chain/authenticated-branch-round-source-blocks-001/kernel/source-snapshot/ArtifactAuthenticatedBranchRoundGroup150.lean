import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup150
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9600 : List WordIR.Op := [.rotr 9699 22]
def bytes9600 : Bytes := ("    let r000025f6: u32 = r000025e3.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9600 : bytes9600=statementBytes 9718 (op9600.map lower) ∧ bytes9600.length=65 := by core033_kernel_decide
def op9601 : List WordIR.Op := [.bxor 9717 9718]
def bytes9601 : Bytes := ("    let r000025f7: u32 = r000025f5 ^ r000025f6;\n" : String).toByteArray.data.toList
theorem checked9601 : bytes9601=statementBytes 9719 (op9601.map lower) ∧ bytes9601.length=48 := by core033_kernel_decide
def op9602 : List WordIR.Op := [.band 9699 9672]
def bytes9602 : Bytes := ("    let r000025f8: u32 = r000025e3 & r000025c8;\n" : String).toByteArray.data.toList
theorem checked9602 : bytes9602=statementBytes 9720 (op9602.map lower) ∧ bytes9602.length=48 := by core033_kernel_decide
def op9603 : List WordIR.Op := [.band 9699 9645]
def bytes9603 : Bytes := ("    let r000025f9: u32 = r000025e3 & r000025ad;\n" : String).toByteArray.data.toList
theorem checked9603 : bytes9603=statementBytes 9721 (op9603.map lower) ∧ bytes9603.length=48 := by core033_kernel_decide
def op9604 : List WordIR.Op := [.bxor 9720 9721]
def bytes9604 : Bytes := ("    let r000025fa: u32 = r000025f8 ^ r000025f9;\n" : String).toByteArray.data.toList
theorem checked9604 : bytes9604=statementBytes 9722 (op9604.map lower) ∧ bytes9604.length=48 := by core033_kernel_decide
def op9605 : List WordIR.Op := [.band 9672 9645]
def bytes9605 : Bytes := ("    let r000025fb: u32 = r000025c8 & r000025ad;\n" : String).toByteArray.data.toList
theorem checked9605 : bytes9605=statementBytes 9723 (op9605.map lower) ∧ bytes9605.length=48 := by core033_kernel_decide
def op9606 : List WordIR.Op := [.bxor 9722 9723]
def bytes9606 : Bytes := ("    let r000025fc: u32 = r000025fa ^ r000025fb;\n" : String).toByteArray.data.toList
theorem checked9606 : bytes9606=statementBytes 9724 (op9606.map lower) ∧ bytes9606.length=48 := by core033_kernel_decide
def op9607 : List WordIR.Op := [.badd 9719 9724]
def bytes9607 : Bytes := ("    let r000025fd: u32 = r000025f7.wrapping_add(r000025fc);\n" : String).toByteArray.data.toList
theorem checked9607 : bytes9607=statementBytes 9725 (op9607.map lower) ∧ bytes9607.length=60 := by core033_kernel_decide
def op9608 : List WordIR.Op := [.badd 9714 9725]
def bytes9608 : Bytes := ("    let r000025fe: u32 = r000025f2.wrapping_add(r000025fd);\n" : String).toByteArray.data.toList
theorem checked9608 : bytes9608=statementBytes 9726 (op9608.map lower) ∧ bytes9608.length=60 := by core033_kernel_decide
def op9609 : List WordIR.Op := [.badd 9618 9714]
def bytes9609 : Bytes := ("    let r000025ff: u32 = r00002592.wrapping_add(r000025f2);\n" : String).toByteArray.data.toList
theorem checked9609 : bytes9609=statementBytes 9727 (op9609.map lower) ∧ bytes9609.length=60 := by core033_kernel_decide
def op9610 : List WordIR.Op := [.rotr 9727 6]
def bytes9610 : Bytes := ("    let r00002600: u32 = r000025ff.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9610 : bytes9610=statementBytes 9728 (op9610.map lower) ∧ bytes9610.length=65 := by core033_kernel_decide
def op9611 : List WordIR.Op := [.rotr 9727 11]
def bytes9611 : Bytes := ("    let r00002601: u32 = r000025ff.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9611 : bytes9611=statementBytes 9729 (op9611.map lower) ∧ bytes9611.length=65 := by core033_kernel_decide
def op9612 : List WordIR.Op := [.bxor 9728 9729]
def bytes9612 : Bytes := ("    let r00002602: u32 = r00002600 ^ r00002601;\n" : String).toByteArray.data.toList
theorem checked9612 : bytes9612=statementBytes 9730 (op9612.map lower) ∧ bytes9612.length=48 := by core033_kernel_decide
def op9613 : List WordIR.Op := [.rotr 9727 25]
def bytes9613 : Bytes := ("    let r00002603: u32 = r000025ff.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9613 : bytes9613=statementBytes 9731 (op9613.map lower) ∧ bytes9613.length=65 := by core033_kernel_decide
def op9614 : List WordIR.Op := [.bxor 9730 9731]
def bytes9614 : Bytes := ("    let r00002604: u32 = r00002602 ^ r00002603;\n" : String).toByteArray.data.toList
theorem checked9614 : bytes9614=statementBytes 9732 (op9614.map lower) ∧ bytes9614.length=48 := by core033_kernel_decide
def op9615 : List WordIR.Op := [.badd 9646 9732]
def bytes9615 : Bytes := ("    let r00002605: u32 = r000025ae.wrapping_add(r00002604);\n" : String).toByteArray.data.toList
theorem checked9615 : bytes9615=statementBytes 9733 (op9615.map lower) ∧ bytes9615.length=60 := by core033_kernel_decide
def op9616 : List WordIR.Op := [.band 9727 9700]
def bytes9616 : Bytes := ("    let r00002606: u32 = r000025ff & r000025e4;\n" : String).toByteArray.data.toList
theorem checked9616 : bytes9616=statementBytes 9734 (op9616.map lower) ∧ bytes9616.length=48 := by core033_kernel_decide
def op9617 : List WordIR.Op := [.bnot 9727]
def bytes9617 : Bytes := ("    let r00002607: u32 = !r000025ff;\n" : String).toByteArray.data.toList
theorem checked9617 : bytes9617=statementBytes 9735 (op9617.map lower) ∧ bytes9617.length=37 := by core033_kernel_decide
def op9618 : List WordIR.Op := [.band 9735 9673]
def bytes9618 : Bytes := ("    let r00002608: u32 = r00002607 & r000025c9;\n" : String).toByteArray.data.toList
theorem checked9618 : bytes9618=statementBytes 9736 (op9618.map lower) ∧ bytes9618.length=48 := by core033_kernel_decide
def op9619 : List WordIR.Op := [.bxor 9734 9736]
def bytes9619 : Bytes := ("    let r00002609: u32 = r00002606 ^ r00002608;\n" : String).toByteArray.data.toList
theorem checked9619 : bytes9619=statementBytes 9737 (op9619.map lower) ∧ bytes9619.length=48 := by core033_kernel_decide
def op9620 : List WordIR.Op := [.badd 9733 9737]
def bytes9620 : Bytes := ("    let r0000260a: u32 = r00002605.wrapping_add(r00002609);\n" : String).toByteArray.data.toList
theorem checked9620 : bytes9620=statementBytes 9738 (op9620.map lower) ∧ bytes9620.length=60 := by core033_kernel_decide
def op9621 : List WordIR.Op := [.literal (BitVec.ofNat 32 1695183700)]
def bytes9621 : Bytes := ("    let r0000260b: u32 = 0x650a7354_u32;\n" : String).toByteArray.data.toList
theorem checked9621 : bytes9621=statementBytes 9739 (op9621.map lower) ∧ bytes9621.length=41 := by core033_kernel_decide
def op9622 : List WordIR.Op := [.badd 9738 9739]
def bytes9622 : Bytes := ("    let r0000260c: u32 = r0000260a.wrapping_add(r0000260b);\n" : String).toByteArray.data.toList
theorem checked9622 : bytes9622=statementBytes 9740 (op9622.map lower) ∧ bytes9622.length=60 := by core033_kernel_decide
def op9623 : List WordIR.Op := [.badd 9740 8404]
def bytes9623 : Bytes := ("    let r0000260d: u32 = r0000260c.wrapping_add(r000020d4);\n" : String).toByteArray.data.toList
theorem checked9623 : bytes9623=statementBytes 9741 (op9623.map lower) ∧ bytes9623.length=60 := by core033_kernel_decide
def op9624 : List WordIR.Op := [.rotr 9726 2]
def bytes9624 : Bytes := ("    let r0000260e: u32 = r000025fe.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9624 : bytes9624=statementBytes 9742 (op9624.map lower) ∧ bytes9624.length=65 := by core033_kernel_decide
def op9625 : List WordIR.Op := [.rotr 9726 13]
def bytes9625 : Bytes := ("    let r0000260f: u32 = r000025fe.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9625 : bytes9625=statementBytes 9743 (op9625.map lower) ∧ bytes9625.length=65 := by core033_kernel_decide
def op9626 : List WordIR.Op := [.bxor 9742 9743]
def bytes9626 : Bytes := ("    let r00002610: u32 = r0000260e ^ r0000260f;\n" : String).toByteArray.data.toList
theorem checked9626 : bytes9626=statementBytes 9744 (op9626.map lower) ∧ bytes9626.length=48 := by core033_kernel_decide
def op9627 : List WordIR.Op := [.rotr 9726 22]
def bytes9627 : Bytes := ("    let r00002611: u32 = r000025fe.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9627 : bytes9627=statementBytes 9745 (op9627.map lower) ∧ bytes9627.length=65 := by core033_kernel_decide
def op9628 : List WordIR.Op := [.bxor 9744 9745]
def bytes9628 : Bytes := ("    let r00002612: u32 = r00002610 ^ r00002611;\n" : String).toByteArray.data.toList
theorem checked9628 : bytes9628=statementBytes 9746 (op9628.map lower) ∧ bytes9628.length=48 := by core033_kernel_decide
def op9629 : List WordIR.Op := [.band 9726 9699]
def bytes9629 : Bytes := ("    let r00002613: u32 = r000025fe & r000025e3;\n" : String).toByteArray.data.toList
theorem checked9629 : bytes9629=statementBytes 9747 (op9629.map lower) ∧ bytes9629.length=48 := by core033_kernel_decide
def op9630 : List WordIR.Op := [.band 9726 9672]
def bytes9630 : Bytes := ("    let r00002614: u32 = r000025fe & r000025c8;\n" : String).toByteArray.data.toList
theorem checked9630 : bytes9630=statementBytes 9748 (op9630.map lower) ∧ bytes9630.length=48 := by core033_kernel_decide
def op9631 : List WordIR.Op := [.bxor 9747 9748]
def bytes9631 : Bytes := ("    let r00002615: u32 = r00002613 ^ r00002614;\n" : String).toByteArray.data.toList
theorem checked9631 : bytes9631=statementBytes 9749 (op9631.map lower) ∧ bytes9631.length=48 := by core033_kernel_decide
def op9632 : List WordIR.Op := [.band 9699 9672]
def bytes9632 : Bytes := ("    let r00002616: u32 = r000025e3 & r000025c8;\n" : String).toByteArray.data.toList
theorem checked9632 : bytes9632=statementBytes 9750 (op9632.map lower) ∧ bytes9632.length=48 := by core033_kernel_decide
def op9633 : List WordIR.Op := [.bxor 9749 9750]
def bytes9633 : Bytes := ("    let r00002617: u32 = r00002615 ^ r00002616;\n" : String).toByteArray.data.toList
theorem checked9633 : bytes9633=statementBytes 9751 (op9633.map lower) ∧ bytes9633.length=48 := by core033_kernel_decide
def op9634 : List WordIR.Op := [.badd 9746 9751]
def bytes9634 : Bytes := ("    let r00002618: u32 = r00002612.wrapping_add(r00002617);\n" : String).toByteArray.data.toList
theorem checked9634 : bytes9634=statementBytes 9752 (op9634.map lower) ∧ bytes9634.length=60 := by core033_kernel_decide
def op9635 : List WordIR.Op := [.badd 9741 9752]
def bytes9635 : Bytes := ("    let r00002619: u32 = r0000260d.wrapping_add(r00002618);\n" : String).toByteArray.data.toList
theorem checked9635 : bytes9635=statementBytes 9753 (op9635.map lower) ∧ bytes9635.length=60 := by core033_kernel_decide
def op9636 : List WordIR.Op := [.badd 9645 9741]
def bytes9636 : Bytes := ("    let r0000261a: u32 = r000025ad.wrapping_add(r0000260d);\n" : String).toByteArray.data.toList
theorem checked9636 : bytes9636=statementBytes 9754 (op9636.map lower) ∧ bytes9636.length=60 := by core033_kernel_decide
def op9637 : List WordIR.Op := [.rotr 9754 6]
def bytes9637 : Bytes := ("    let r0000261b: u32 = r0000261a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9637 : bytes9637=statementBytes 9755 (op9637.map lower) ∧ bytes9637.length=65 := by core033_kernel_decide
def op9638 : List WordIR.Op := [.rotr 9754 11]
def bytes9638 : Bytes := ("    let r0000261c: u32 = r0000261a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9638 : bytes9638=statementBytes 9756 (op9638.map lower) ∧ bytes9638.length=65 := by core033_kernel_decide
def op9639 : List WordIR.Op := [.bxor 9755 9756]
def bytes9639 : Bytes := ("    let r0000261d: u32 = r0000261b ^ r0000261c;\n" : String).toByteArray.data.toList
theorem checked9639 : bytes9639=statementBytes 9757 (op9639.map lower) ∧ bytes9639.length=48 := by core033_kernel_decide
def op9640 : List WordIR.Op := [.rotr 9754 25]
def bytes9640 : Bytes := ("    let r0000261e: u32 = r0000261a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9640 : bytes9640=statementBytes 9758 (op9640.map lower) ∧ bytes9640.length=65 := by core033_kernel_decide
def op9641 : List WordIR.Op := [.bxor 9757 9758]
def bytes9641 : Bytes := ("    let r0000261f: u32 = r0000261d ^ r0000261e;\n" : String).toByteArray.data.toList
theorem checked9641 : bytes9641=statementBytes 9759 (op9641.map lower) ∧ bytes9641.length=48 := by core033_kernel_decide
def op9642 : List WordIR.Op := [.badd 9673 9759]
def bytes9642 : Bytes := ("    let r00002620: u32 = r000025c9.wrapping_add(r0000261f);\n" : String).toByteArray.data.toList
theorem checked9642 : bytes9642=statementBytes 9760 (op9642.map lower) ∧ bytes9642.length=60 := by core033_kernel_decide
def op9643 : List WordIR.Op := [.band 9754 9727]
def bytes9643 : Bytes := ("    let r00002621: u32 = r0000261a & r000025ff;\n" : String).toByteArray.data.toList
theorem checked9643 : bytes9643=statementBytes 9761 (op9643.map lower) ∧ bytes9643.length=48 := by core033_kernel_decide
def op9644 : List WordIR.Op := [.bnot 9754]
def bytes9644 : Bytes := ("    let r00002622: u32 = !r0000261a;\n" : String).toByteArray.data.toList
theorem checked9644 : bytes9644=statementBytes 9762 (op9644.map lower) ∧ bytes9644.length=37 := by core033_kernel_decide
def op9645 : List WordIR.Op := [.band 9762 9700]
def bytes9645 : Bytes := ("    let r00002623: u32 = r00002622 & r000025e4;\n" : String).toByteArray.data.toList
theorem checked9645 : bytes9645=statementBytes 9763 (op9645.map lower) ∧ bytes9645.length=48 := by core033_kernel_decide
def op9646 : List WordIR.Op := [.bxor 9761 9763]
def bytes9646 : Bytes := ("    let r00002624: u32 = r00002621 ^ r00002623;\n" : String).toByteArray.data.toList
theorem checked9646 : bytes9646=statementBytes 9764 (op9646.map lower) ∧ bytes9646.length=48 := by core033_kernel_decide
def op9647 : List WordIR.Op := [.badd 9760 9764]
def bytes9647 : Bytes := ("    let r00002625: u32 = r00002620.wrapping_add(r00002624);\n" : String).toByteArray.data.toList
theorem checked9647 : bytes9647=statementBytes 9765 (op9647.map lower) ∧ bytes9647.length=60 := by core033_kernel_decide
def op9648 : List WordIR.Op := [.literal (BitVec.ofNat 32 1986661051)]
def bytes9648 : Bytes := ("    let r00002626: u32 = 0x766a0abb_u32;\n" : String).toByteArray.data.toList
theorem checked9648 : bytes9648=statementBytes 9766 (op9648.map lower) ∧ bytes9648.length=41 := by core033_kernel_decide
def op9649 : List WordIR.Op := [.badd 9765 9766]
def bytes9649 : Bytes := ("    let r00002627: u32 = r00002625.wrapping_add(r00002626);\n" : String).toByteArray.data.toList
theorem checked9649 : bytes9649=statementBytes 9767 (op9649.map lower) ∧ bytes9649.length=60 := by core033_kernel_decide
def op9650 : List WordIR.Op := [.badd 9767 8417]
def bytes9650 : Bytes := ("    let r00002628: u32 = r00002627.wrapping_add(r000020e1);\n" : String).toByteArray.data.toList
theorem checked9650 : bytes9650=statementBytes 9768 (op9650.map lower) ∧ bytes9650.length=60 := by core033_kernel_decide
def op9651 : List WordIR.Op := [.rotr 9753 2]
def bytes9651 : Bytes := ("    let r00002629: u32 = r00002619.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9651 : bytes9651=statementBytes 9769 (op9651.map lower) ∧ bytes9651.length=65 := by core033_kernel_decide
def op9652 : List WordIR.Op := [.rotr 9753 13]
def bytes9652 : Bytes := ("    let r0000262a: u32 = r00002619.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9652 : bytes9652=statementBytes 9770 (op9652.map lower) ∧ bytes9652.length=65 := by core033_kernel_decide
def op9653 : List WordIR.Op := [.bxor 9769 9770]
def bytes9653 : Bytes := ("    let r0000262b: u32 = r00002629 ^ r0000262a;\n" : String).toByteArray.data.toList
theorem checked9653 : bytes9653=statementBytes 9771 (op9653.map lower) ∧ bytes9653.length=48 := by core033_kernel_decide
def op9654 : List WordIR.Op := [.rotr 9753 22]
def bytes9654 : Bytes := ("    let r0000262c: u32 = r00002619.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9654 : bytes9654=statementBytes 9772 (op9654.map lower) ∧ bytes9654.length=65 := by core033_kernel_decide
def op9655 : List WordIR.Op := [.bxor 9771 9772]
def bytes9655 : Bytes := ("    let r0000262d: u32 = r0000262b ^ r0000262c;\n" : String).toByteArray.data.toList
theorem checked9655 : bytes9655=statementBytes 9773 (op9655.map lower) ∧ bytes9655.length=48 := by core033_kernel_decide
def op9656 : List WordIR.Op := [.band 9753 9726]
def bytes9656 : Bytes := ("    let r0000262e: u32 = r00002619 & r000025fe;\n" : String).toByteArray.data.toList
theorem checked9656 : bytes9656=statementBytes 9774 (op9656.map lower) ∧ bytes9656.length=48 := by core033_kernel_decide
def op9657 : List WordIR.Op := [.band 9753 9699]
def bytes9657 : Bytes := ("    let r0000262f: u32 = r00002619 & r000025e3;\n" : String).toByteArray.data.toList
theorem checked9657 : bytes9657=statementBytes 9775 (op9657.map lower) ∧ bytes9657.length=48 := by core033_kernel_decide
def op9658 : List WordIR.Op := [.bxor 9774 9775]
def bytes9658 : Bytes := ("    let r00002630: u32 = r0000262e ^ r0000262f;\n" : String).toByteArray.data.toList
theorem checked9658 : bytes9658=statementBytes 9776 (op9658.map lower) ∧ bytes9658.length=48 := by core033_kernel_decide
def op9659 : List WordIR.Op := [.band 9726 9699]
def bytes9659 : Bytes := ("    let r00002631: u32 = r000025fe & r000025e3;\n" : String).toByteArray.data.toList
theorem checked9659 : bytes9659=statementBytes 9777 (op9659.map lower) ∧ bytes9659.length=48 := by core033_kernel_decide
def op9660 : List WordIR.Op := [.bxor 9776 9777]
def bytes9660 : Bytes := ("    let r00002632: u32 = r00002630 ^ r00002631;\n" : String).toByteArray.data.toList
theorem checked9660 : bytes9660=statementBytes 9778 (op9660.map lower) ∧ bytes9660.length=48 := by core033_kernel_decide
def op9661 : List WordIR.Op := [.badd 9773 9778]
def bytes9661 : Bytes := ("    let r00002633: u32 = r0000262d.wrapping_add(r00002632);\n" : String).toByteArray.data.toList
theorem checked9661 : bytes9661=statementBytes 9779 (op9661.map lower) ∧ bytes9661.length=60 := by core033_kernel_decide
def op9662 : List WordIR.Op := [.badd 9768 9779]
def bytes9662 : Bytes := ("    let r00002634: u32 = r00002628.wrapping_add(r00002633);\n" : String).toByteArray.data.toList
theorem checked9662 : bytes9662=statementBytes 9780 (op9662.map lower) ∧ bytes9662.length=60 := by core033_kernel_decide
def op9663 : List WordIR.Op := [.badd 9672 9768]
def bytes9663 : Bytes := ("    let r00002635: u32 = r000025c8.wrapping_add(r00002628);\n" : String).toByteArray.data.toList
theorem checked9663 : bytes9663=statementBytes 9781 (op9663.map lower) ∧ bytes9663.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9600,op9601,op9602,op9603,op9604,op9605,op9606,op9607,op9608,op9609,op9610,op9611,op9612,op9613,op9614,op9615,op9616,op9617,op9618,op9619,op9620,op9621,op9622,op9623,op9624,op9625,op9626,op9627,op9628,op9629,op9630,op9631,op9632,op9633,op9634,op9635,op9636,op9637,op9638,op9639,op9640,op9641,op9642,op9643,op9644,op9645,op9646,op9647,op9648,op9649,op9650,op9651,op9652,op9653,op9654,op9655,op9656,op9657,op9658,op9659,op9660,op9661,op9662,op9663]
def chunks : List Bytes := [bytes9600,bytes9601,bytes9602,bytes9603,bytes9604,bytes9605,bytes9606,bytes9607,bytes9608,bytes9609,bytes9610,bytes9611,bytes9612,bytes9613,bytes9614,bytes9615,bytes9616,bytes9617,bytes9618,bytes9619,bytes9620,bytes9621,bytes9622,bytes9623,bytes9624,bytes9625,bytes9626,bytes9627,bytes9628,bytes9629,bytes9630,bytes9631,bytes9632,bytes9633,bytes9634,bytes9635,bytes9636,bytes9637,bytes9638,bytes9639,bytes9640,bytes9641,bytes9642,bytes9643,bytes9644,bytes9645,bytes9646,bytes9647,bytes9648,bytes9649,bytes9650,bytes9651,bytes9652,bytes9653,bytes9654,bytes9655,bytes9656,bytes9657,bytes9658,bytes9659,bytes9660,bytes9661,bytes9662,bytes9663]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9718 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9600.1 (.cons _ _ _ _ _ checked9601.1 (.cons _ _ _ _ _ checked9602.1 (.cons _ _ _ _ _ checked9603.1 (.cons _ _ _ _ _ checked9604.1 (.cons _ _ _ _ _ checked9605.1 (.cons _ _ _ _ _ checked9606.1 (.cons _ _ _ _ _ checked9607.1 (.cons _ _ _ _ _ checked9608.1 (.cons _ _ _ _ _ checked9609.1 (.cons _ _ _ _ _ checked9610.1 (.cons _ _ _ _ _ checked9611.1 (.cons _ _ _ _ _ checked9612.1 (.cons _ _ _ _ _ checked9613.1 (.cons _ _ _ _ _ checked9614.1 (.cons _ _ _ _ _ checked9615.1 (.cons _ _ _ _ _ checked9616.1 (.cons _ _ _ _ _ checked9617.1 (.cons _ _ _ _ _ checked9618.1 (.cons _ _ _ _ _ checked9619.1 (.cons _ _ _ _ _ checked9620.1 (.cons _ _ _ _ _ checked9621.1 (.cons _ _ _ _ _ checked9622.1 (.cons _ _ _ _ _ checked9623.1 (.cons _ _ _ _ _ checked9624.1 (.cons _ _ _ _ _ checked9625.1 (.cons _ _ _ _ _ checked9626.1 (.cons _ _ _ _ _ checked9627.1 (.cons _ _ _ _ _ checked9628.1 (.cons _ _ _ _ _ checked9629.1 (.cons _ _ _ _ _ checked9630.1 (.cons _ _ _ _ _ checked9631.1 (.cons _ _ _ _ _ checked9632.1 (.cons _ _ _ _ _ checked9633.1 (.cons _ _ _ _ _ checked9634.1 (.cons _ _ _ _ _ checked9635.1 (.cons _ _ _ _ _ checked9636.1 (.cons _ _ _ _ _ checked9637.1 (.cons _ _ _ _ _ checked9638.1 (.cons _ _ _ _ _ checked9639.1 (.cons _ _ _ _ _ checked9640.1 (.cons _ _ _ _ _ checked9641.1 (.cons _ _ _ _ _ checked9642.1 (.cons _ _ _ _ _ checked9643.1 (.cons _ _ _ _ _ checked9644.1 (.cons _ _ _ _ _ checked9645.1 (.cons _ _ _ _ _ checked9646.1 (.cons _ _ _ _ _ checked9647.1 (.cons _ _ _ _ _ checked9648.1 (.cons _ _ _ _ _ checked9649.1 (.cons _ _ _ _ _ checked9650.1 (.cons _ _ _ _ _ checked9651.1 (.cons _ _ _ _ _ checked9652.1 (.cons _ _ _ _ _ checked9653.1 (.cons _ _ _ _ _ checked9654.1 (.cons _ _ _ _ _ checked9655.1 (.cons _ _ _ _ _ checked9656.1 (.cons _ _ _ _ _ checked9657.1 (.cons _ _ _ _ _ checked9658.1 (.cons _ _ _ _ _ checked9659.1 (.cons _ _ _ _ _ checked9660.1 (.cons _ _ _ _ _ checked9661.1 (.cons _ _ _ _ _ checked9662.1 (.cons _ _ _ _ _ checked9663.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9718 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3461 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9600.2,checked9601.2,checked9602.2,checked9603.2,checked9604.2,checked9605.2,checked9606.2,checked9607.2,checked9608.2,checked9609.2,checked9610.2,checked9611.2,checked9612.2,checked9613.2,checked9614.2,checked9615.2,checked9616.2,checked9617.2,checked9618.2,checked9619.2,checked9620.2,checked9621.2,checked9622.2,checked9623.2,checked9624.2,checked9625.2,checked9626.2,checked9627.2,checked9628.2,checked9629.2,checked9630.2,checked9631.2,checked9632.2,checked9633.2,checked9634.2,checked9635.2,checked9636.2,checked9637.2,checked9638.2,checked9639.2,checked9640.2,checked9641.2,checked9642.2,checked9643.2,checked9644.2,checked9645.2,checked9646.2,checked9647.2,checked9648.2,checked9649.2,checked9650.2,checked9651.2,checked9652.2,checked9653.2,checked9654.2,checked9655.2,checked9656.2,checked9657.2,checked9658.2,checked9659.2,checked9660.2,checked9661.2,checked9662.2,checked9663.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup150
