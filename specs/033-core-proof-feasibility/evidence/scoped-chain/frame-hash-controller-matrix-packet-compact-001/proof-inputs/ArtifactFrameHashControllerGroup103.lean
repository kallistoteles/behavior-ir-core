import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup103
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6592 : List WordIR.Op := [.rotr 6620 19]
def bytes6592 : Bytes := ("    let r000019eb: u32 = r000019dc.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6592 : bytes6592=statementBytes 6635 (op6592.map lower) ∧ bytes6592.length=65 := by core033_kernel_decide
def op6593 : List WordIR.Op := [.bxor 6634 6635]
def bytes6593 : Bytes := ("    let r000019ec: u32 = r000019ea ^ r000019eb;\n" : String).toByteArray.data.toList
theorem checked6593 : bytes6593=statementBytes 6636 (op6593.map lower) ∧ bytes6593.length=48 := by core033_kernel_decide
def op6594 : List WordIR.Op := [.shr 6620 10]
def bytes6594 : Bytes := ("    let r000019ed: u32 = r000019dc >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6594 : bytes6594=statementBytes 6637 (op6594.map lower) ∧ bytes6594.length=54 := by core033_kernel_decide
def op6595 : List WordIR.Op := [.bxor 6636 6637]
def bytes6595 : Bytes := ("    let r000019ee: u32 = r000019ec ^ r000019ed;\n" : String).toByteArray.data.toList
theorem checked6595 : bytes6595=statementBytes 6638 (op6595.map lower) ∧ bytes6595.length=48 := by core033_kernel_decide
def op6596 : List WordIR.Op := [.badd 6638 6555]
def bytes6596 : Bytes := ("    let r000019ef: u32 = r000019ee.wrapping_add(r0000199b);\n" : String).toByteArray.data.toList
theorem checked6596 : bytes6596=statementBytes 6639 (op6596.map lower) ∧ bytes6596.length=60 := by core033_kernel_decide
def op6597 : List WordIR.Op := [.rotr 6451 7]
def bytes6597 : Bytes := ("    let r000019f0: u32 = r00001933.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6597 : bytes6597=statementBytes 6640 (op6597.map lower) ∧ bytes6597.length=65 := by core033_kernel_decide
def op6598 : List WordIR.Op := [.rotr 6451 18]
def bytes6598 : Bytes := ("    let r000019f1: u32 = r00001933.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6598 : bytes6598=statementBytes 6641 (op6598.map lower) ∧ bytes6598.length=65 := by core033_kernel_decide
def op6599 : List WordIR.Op := [.bxor 6640 6641]
def bytes6599 : Bytes := ("    let r000019f2: u32 = r000019f0 ^ r000019f1;\n" : String).toByteArray.data.toList
theorem checked6599 : bytes6599=statementBytes 6642 (op6599.map lower) ∧ bytes6599.length=48 := by core033_kernel_decide
def op6600 : List WordIR.Op := [.shr 6451 3]
def bytes6600 : Bytes := ("    let r000019f3: u32 = r00001933 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6600 : bytes6600=statementBytes 6643 (op6600.map lower) ∧ bytes6600.length=54 := by core033_kernel_decide
def op6601 : List WordIR.Op := [.bxor 6642 6643]
def bytes6601 : Bytes := ("    let r000019f4: u32 = r000019f2 ^ r000019f3;\n" : String).toByteArray.data.toList
theorem checked6601 : bytes6601=statementBytes 6644 (op6601.map lower) ∧ bytes6601.length=48 := by core033_kernel_decide
def op6602 : List WordIR.Op := [.badd 6639 6644]
def bytes6602 : Bytes := ("    let r000019f5: u32 = r000019ef.wrapping_add(r000019f4);\n" : String).toByteArray.data.toList
theorem checked6602 : bytes6602=statementBytes 6645 (op6602.map lower) ∧ bytes6602.length=60 := by core033_kernel_decide
def op6603 : List WordIR.Op := [.badd 6645 6438]
def bytes6603 : Bytes := ("    let r000019f6: u32 = r000019f5.wrapping_add(r00001926);\n" : String).toByteArray.data.toList
theorem checked6603 : bytes6603=statementBytes 6646 (op6603.map lower) ∧ bytes6603.length=60 := by core033_kernel_decide
def op6604 : List WordIR.Op := [.rotr 6633 17]
def bytes6604 : Bytes := ("    let r000019f7: u32 = r000019e9.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6604 : bytes6604=statementBytes 6647 (op6604.map lower) ∧ bytes6604.length=65 := by core033_kernel_decide
def op6605 : List WordIR.Op := [.rotr 6633 19]
def bytes6605 : Bytes := ("    let r000019f8: u32 = r000019e9.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6605 : bytes6605=statementBytes 6648 (op6605.map lower) ∧ bytes6605.length=65 := by core033_kernel_decide
def op6606 : List WordIR.Op := [.bxor 6647 6648]
def bytes6606 : Bytes := ("    let r000019f9: u32 = r000019f7 ^ r000019f8;\n" : String).toByteArray.data.toList
theorem checked6606 : bytes6606=statementBytes 6649 (op6606.map lower) ∧ bytes6606.length=48 := by core033_kernel_decide
def op6607 : List WordIR.Op := [.shr 6633 10]
def bytes6607 : Bytes := ("    let r000019fa: u32 = r000019e9 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6607 : bytes6607=statementBytes 6650 (op6607.map lower) ∧ bytes6607.length=54 := by core033_kernel_decide
def op6608 : List WordIR.Op := [.bxor 6649 6650]
def bytes6608 : Bytes := ("    let r000019fb: u32 = r000019f9 ^ r000019fa;\n" : String).toByteArray.data.toList
theorem checked6608 : bytes6608=statementBytes 6651 (op6608.map lower) ∧ bytes6608.length=48 := by core033_kernel_decide
def op6609 : List WordIR.Op := [.badd 6651 6568]
def bytes6609 : Bytes := ("    let r000019fc: u32 = r000019fb.wrapping_add(r000019a8);\n" : String).toByteArray.data.toList
theorem checked6609 : bytes6609=statementBytes 6652 (op6609.map lower) ∧ bytes6609.length=60 := by core033_kernel_decide
def op6610 : List WordIR.Op := [.rotr 6464 7]
def bytes6610 : Bytes := ("    let r000019fd: u32 = r00001940.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6610 : bytes6610=statementBytes 6653 (op6610.map lower) ∧ bytes6610.length=65 := by core033_kernel_decide
def op6611 : List WordIR.Op := [.rotr 6464 18]
def bytes6611 : Bytes := ("    let r000019fe: u32 = r00001940.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6611 : bytes6611=statementBytes 6654 (op6611.map lower) ∧ bytes6611.length=65 := by core033_kernel_decide
def op6612 : List WordIR.Op := [.bxor 6653 6654]
def bytes6612 : Bytes := ("    let r000019ff: u32 = r000019fd ^ r000019fe;\n" : String).toByteArray.data.toList
theorem checked6612 : bytes6612=statementBytes 6655 (op6612.map lower) ∧ bytes6612.length=48 := by core033_kernel_decide
def op6613 : List WordIR.Op := [.shr 6464 3]
def bytes6613 : Bytes := ("    let r00001a00: u32 = r00001940 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6613 : bytes6613=statementBytes 6656 (op6613.map lower) ∧ bytes6613.length=54 := by core033_kernel_decide
def op6614 : List WordIR.Op := [.bxor 6655 6656]
def bytes6614 : Bytes := ("    let r00001a01: u32 = r000019ff ^ r00001a00;\n" : String).toByteArray.data.toList
theorem checked6614 : bytes6614=statementBytes 6657 (op6614.map lower) ∧ bytes6614.length=48 := by core033_kernel_decide
def op6615 : List WordIR.Op := [.badd 6652 6657]
def bytes6615 : Bytes := ("    let r00001a02: u32 = r000019fc.wrapping_add(r00001a01);\n" : String).toByteArray.data.toList
theorem checked6615 : bytes6615=statementBytes 6658 (op6615.map lower) ∧ bytes6615.length=60 := by core033_kernel_decide
def op6616 : List WordIR.Op := [.badd 6658 6451]
def bytes6616 : Bytes := ("    let r00001a03: u32 = r00001a02.wrapping_add(r00001933);\n" : String).toByteArray.data.toList
theorem checked6616 : bytes6616=statementBytes 6659 (op6616.map lower) ∧ bytes6616.length=60 := by core033_kernel_decide
def op6617 : List WordIR.Op := [.rotr 6646 17]
def bytes6617 : Bytes := ("    let r00001a04: u32 = r000019f6.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6617 : bytes6617=statementBytes 6660 (op6617.map lower) ∧ bytes6617.length=65 := by core033_kernel_decide
def op6618 : List WordIR.Op := [.rotr 6646 19]
def bytes6618 : Bytes := ("    let r00001a05: u32 = r000019f6.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6618 : bytes6618=statementBytes 6661 (op6618.map lower) ∧ bytes6618.length=65 := by core033_kernel_decide
def op6619 : List WordIR.Op := [.bxor 6660 6661]
def bytes6619 : Bytes := ("    let r00001a06: u32 = r00001a04 ^ r00001a05;\n" : String).toByteArray.data.toList
theorem checked6619 : bytes6619=statementBytes 6662 (op6619.map lower) ∧ bytes6619.length=48 := by core033_kernel_decide
def op6620 : List WordIR.Op := [.shr 6646 10]
def bytes6620 : Bytes := ("    let r00001a07: u32 = r000019f6 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6620 : bytes6620=statementBytes 6663 (op6620.map lower) ∧ bytes6620.length=54 := by core033_kernel_decide
def op6621 : List WordIR.Op := [.bxor 6662 6663]
def bytes6621 : Bytes := ("    let r00001a08: u32 = r00001a06 ^ r00001a07;\n" : String).toByteArray.data.toList
theorem checked6621 : bytes6621=statementBytes 6664 (op6621.map lower) ∧ bytes6621.length=48 := by core033_kernel_decide
def op6622 : List WordIR.Op := [.badd 6664 6581]
def bytes6622 : Bytes := ("    let r00001a09: u32 = r00001a08.wrapping_add(r000019b5);\n" : String).toByteArray.data.toList
theorem checked6622 : bytes6622=statementBytes 6665 (op6622.map lower) ∧ bytes6622.length=60 := by core033_kernel_decide
def op6623 : List WordIR.Op := [.rotr 6477 7]
def bytes6623 : Bytes := ("    let r00001a0a: u32 = r0000194d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6623 : bytes6623=statementBytes 6666 (op6623.map lower) ∧ bytes6623.length=65 := by core033_kernel_decide
def op6624 : List WordIR.Op := [.rotr 6477 18]
def bytes6624 : Bytes := ("    let r00001a0b: u32 = r0000194d.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6624 : bytes6624=statementBytes 6667 (op6624.map lower) ∧ bytes6624.length=65 := by core033_kernel_decide
def op6625 : List WordIR.Op := [.bxor 6666 6667]
def bytes6625 : Bytes := ("    let r00001a0c: u32 = r00001a0a ^ r00001a0b;\n" : String).toByteArray.data.toList
theorem checked6625 : bytes6625=statementBytes 6668 (op6625.map lower) ∧ bytes6625.length=48 := by core033_kernel_decide
def op6626 : List WordIR.Op := [.shr 6477 3]
def bytes6626 : Bytes := ("    let r00001a0d: u32 = r0000194d >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6626 : bytes6626=statementBytes 6669 (op6626.map lower) ∧ bytes6626.length=54 := by core033_kernel_decide
def op6627 : List WordIR.Op := [.bxor 6668 6669]
def bytes6627 : Bytes := ("    let r00001a0e: u32 = r00001a0c ^ r00001a0d;\n" : String).toByteArray.data.toList
theorem checked6627 : bytes6627=statementBytes 6670 (op6627.map lower) ∧ bytes6627.length=48 := by core033_kernel_decide
def op6628 : List WordIR.Op := [.badd 6665 6670]
def bytes6628 : Bytes := ("    let r00001a0f: u32 = r00001a09.wrapping_add(r00001a0e);\n" : String).toByteArray.data.toList
theorem checked6628 : bytes6628=statementBytes 6671 (op6628.map lower) ∧ bytes6628.length=60 := by core033_kernel_decide
def op6629 : List WordIR.Op := [.badd 6671 6464]
def bytes6629 : Bytes := ("    let r00001a10: u32 = r00001a0f.wrapping_add(r00001940);\n" : String).toByteArray.data.toList
theorem checked6629 : bytes6629=statementBytes 6672 (op6629.map lower) ∧ bytes6629.length=60 := by core033_kernel_decide
def op6630 : List WordIR.Op := [.rotr 6659 17]
def bytes6630 : Bytes := ("    let r00001a11: u32 = r00001a03.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6630 : bytes6630=statementBytes 6673 (op6630.map lower) ∧ bytes6630.length=65 := by core033_kernel_decide
def op6631 : List WordIR.Op := [.rotr 6659 19]
def bytes6631 : Bytes := ("    let r00001a12: u32 = r00001a03.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6631 : bytes6631=statementBytes 6674 (op6631.map lower) ∧ bytes6631.length=65 := by core033_kernel_decide
def op6632 : List WordIR.Op := [.bxor 6673 6674]
def bytes6632 : Bytes := ("    let r00001a13: u32 = r00001a11 ^ r00001a12;\n" : String).toByteArray.data.toList
theorem checked6632 : bytes6632=statementBytes 6675 (op6632.map lower) ∧ bytes6632.length=48 := by core033_kernel_decide
def op6633 : List WordIR.Op := [.shr 6659 10]
def bytes6633 : Bytes := ("    let r00001a14: u32 = r00001a03 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6633 : bytes6633=statementBytes 6676 (op6633.map lower) ∧ bytes6633.length=54 := by core033_kernel_decide
def op6634 : List WordIR.Op := [.bxor 6675 6676]
def bytes6634 : Bytes := ("    let r00001a15: u32 = r00001a13 ^ r00001a14;\n" : String).toByteArray.data.toList
theorem checked6634 : bytes6634=statementBytes 6677 (op6634.map lower) ∧ bytes6634.length=48 := by core033_kernel_decide
def op6635 : List WordIR.Op := [.badd 6677 6594]
def bytes6635 : Bytes := ("    let r00001a16: u32 = r00001a15.wrapping_add(r000019c2);\n" : String).toByteArray.data.toList
theorem checked6635 : bytes6635=statementBytes 6678 (op6635.map lower) ∧ bytes6635.length=60 := by core033_kernel_decide
def op6636 : List WordIR.Op := [.rotr 6490 7]
def bytes6636 : Bytes := ("    let r00001a17: u32 = r0000195a.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6636 : bytes6636=statementBytes 6679 (op6636.map lower) ∧ bytes6636.length=65 := by core033_kernel_decide
def op6637 : List WordIR.Op := [.rotr 6490 18]
def bytes6637 : Bytes := ("    let r00001a18: u32 = r0000195a.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6637 : bytes6637=statementBytes 6680 (op6637.map lower) ∧ bytes6637.length=65 := by core033_kernel_decide
def op6638 : List WordIR.Op := [.bxor 6679 6680]
def bytes6638 : Bytes := ("    let r00001a19: u32 = r00001a17 ^ r00001a18;\n" : String).toByteArray.data.toList
theorem checked6638 : bytes6638=statementBytes 6681 (op6638.map lower) ∧ bytes6638.length=48 := by core033_kernel_decide
def op6639 : List WordIR.Op := [.shr 6490 3]
def bytes6639 : Bytes := ("    let r00001a1a: u32 = r0000195a >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6639 : bytes6639=statementBytes 6682 (op6639.map lower) ∧ bytes6639.length=54 := by core033_kernel_decide
def op6640 : List WordIR.Op := [.bxor 6681 6682]
def bytes6640 : Bytes := ("    let r00001a1b: u32 = r00001a19 ^ r00001a1a;\n" : String).toByteArray.data.toList
theorem checked6640 : bytes6640=statementBytes 6683 (op6640.map lower) ∧ bytes6640.length=48 := by core033_kernel_decide
def op6641 : List WordIR.Op := [.badd 6678 6683]
def bytes6641 : Bytes := ("    let r00001a1c: u32 = r00001a16.wrapping_add(r00001a1b);\n" : String).toByteArray.data.toList
theorem checked6641 : bytes6641=statementBytes 6684 (op6641.map lower) ∧ bytes6641.length=60 := by core033_kernel_decide
def op6642 : List WordIR.Op := [.badd 6684 6477]
def bytes6642 : Bytes := ("    let r00001a1d: u32 = r00001a1c.wrapping_add(r0000194d);\n" : String).toByteArray.data.toList
theorem checked6642 : bytes6642=statementBytes 6685 (op6642.map lower) ∧ bytes6642.length=60 := by core033_kernel_decide
def op6643 : List WordIR.Op := [.rotr 6672 17]
def bytes6643 : Bytes := ("    let r00001a1e: u32 = r00001a10.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6643 : bytes6643=statementBytes 6686 (op6643.map lower) ∧ bytes6643.length=65 := by core033_kernel_decide
def op6644 : List WordIR.Op := [.rotr 6672 19]
def bytes6644 : Bytes := ("    let r00001a1f: u32 = r00001a10.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6644 : bytes6644=statementBytes 6687 (op6644.map lower) ∧ bytes6644.length=65 := by core033_kernel_decide
def op6645 : List WordIR.Op := [.bxor 6686 6687]
def bytes6645 : Bytes := ("    let r00001a20: u32 = r00001a1e ^ r00001a1f;\n" : String).toByteArray.data.toList
theorem checked6645 : bytes6645=statementBytes 6688 (op6645.map lower) ∧ bytes6645.length=48 := by core033_kernel_decide
def op6646 : List WordIR.Op := [.shr 6672 10]
def bytes6646 : Bytes := ("    let r00001a21: u32 = r00001a10 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6646 : bytes6646=statementBytes 6689 (op6646.map lower) ∧ bytes6646.length=54 := by core033_kernel_decide
def op6647 : List WordIR.Op := [.bxor 6688 6689]
def bytes6647 : Bytes := ("    let r00001a22: u32 = r00001a20 ^ r00001a21;\n" : String).toByteArray.data.toList
theorem checked6647 : bytes6647=statementBytes 6690 (op6647.map lower) ∧ bytes6647.length=48 := by core033_kernel_decide
def op6648 : List WordIR.Op := [.badd 6690 6607]
def bytes6648 : Bytes := ("    let r00001a23: u32 = r00001a22.wrapping_add(r000019cf);\n" : String).toByteArray.data.toList
theorem checked6648 : bytes6648=statementBytes 6691 (op6648.map lower) ∧ bytes6648.length=60 := by core033_kernel_decide
def op6649 : List WordIR.Op := [.rotr 6503 7]
def bytes6649 : Bytes := ("    let r00001a24: u32 = r00001967.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6649 : bytes6649=statementBytes 6692 (op6649.map lower) ∧ bytes6649.length=65 := by core033_kernel_decide
def op6650 : List WordIR.Op := [.rotr 6503 18]
def bytes6650 : Bytes := ("    let r00001a25: u32 = r00001967.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6650 : bytes6650=statementBytes 6693 (op6650.map lower) ∧ bytes6650.length=65 := by core033_kernel_decide
def op6651 : List WordIR.Op := [.bxor 6692 6693]
def bytes6651 : Bytes := ("    let r00001a26: u32 = r00001a24 ^ r00001a25;\n" : String).toByteArray.data.toList
theorem checked6651 : bytes6651=statementBytes 6694 (op6651.map lower) ∧ bytes6651.length=48 := by core033_kernel_decide
def op6652 : List WordIR.Op := [.shr 6503 3]
def bytes6652 : Bytes := ("    let r00001a27: u32 = r00001967 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6652 : bytes6652=statementBytes 6695 (op6652.map lower) ∧ bytes6652.length=54 := by core033_kernel_decide
def op6653 : List WordIR.Op := [.bxor 6694 6695]
def bytes6653 : Bytes := ("    let r00001a28: u32 = r00001a26 ^ r00001a27;\n" : String).toByteArray.data.toList
theorem checked6653 : bytes6653=statementBytes 6696 (op6653.map lower) ∧ bytes6653.length=48 := by core033_kernel_decide
def op6654 : List WordIR.Op := [.badd 6691 6696]
def bytes6654 : Bytes := ("    let r00001a29: u32 = r00001a23.wrapping_add(r00001a28);\n" : String).toByteArray.data.toList
theorem checked6654 : bytes6654=statementBytes 6697 (op6654.map lower) ∧ bytes6654.length=60 := by core033_kernel_decide
def op6655 : List WordIR.Op := [.badd 6697 6490]
def bytes6655 : Bytes := ("    let r00001a2a: u32 = r00001a29.wrapping_add(r0000195a);\n" : String).toByteArray.data.toList
theorem checked6655 : bytes6655=statementBytes 6698 (op6655.map lower) ∧ bytes6655.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6592,op6593,op6594,op6595,op6596,op6597,op6598,op6599,op6600,op6601,op6602,op6603,op6604,op6605,op6606,op6607,op6608,op6609,op6610,op6611,op6612,op6613,op6614,op6615,op6616,op6617,op6618,op6619,op6620,op6621,op6622,op6623,op6624,op6625,op6626,op6627,op6628,op6629,op6630,op6631,op6632,op6633,op6634,op6635,op6636,op6637,op6638,op6639,op6640,op6641,op6642,op6643,op6644,op6645,op6646,op6647,op6648,op6649,op6650,op6651,op6652,op6653,op6654,op6655]
def chunks : List Bytes := [bytes6592,bytes6593,bytes6594,bytes6595,bytes6596,bytes6597,bytes6598,bytes6599,bytes6600,bytes6601,bytes6602,bytes6603,bytes6604,bytes6605,bytes6606,bytes6607,bytes6608,bytes6609,bytes6610,bytes6611,bytes6612,bytes6613,bytes6614,bytes6615,bytes6616,bytes6617,bytes6618,bytes6619,bytes6620,bytes6621,bytes6622,bytes6623,bytes6624,bytes6625,bytes6626,bytes6627,bytes6628,bytes6629,bytes6630,bytes6631,bytes6632,bytes6633,bytes6634,bytes6635,bytes6636,bytes6637,bytes6638,bytes6639,bytes6640,bytes6641,bytes6642,bytes6643,bytes6644,bytes6645,bytes6646,bytes6647,bytes6648,bytes6649,bytes6650,bytes6651,bytes6652,bytes6653,bytes6654,bytes6655]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6635 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6592.1 (.cons _ _ _ _ _ checked6593.1 (.cons _ _ _ _ _ checked6594.1 (.cons _ _ _ _ _ checked6595.1 (.cons _ _ _ _ _ checked6596.1 (.cons _ _ _ _ _ checked6597.1 (.cons _ _ _ _ _ checked6598.1 (.cons _ _ _ _ _ checked6599.1 (.cons _ _ _ _ _ checked6600.1 (.cons _ _ _ _ _ checked6601.1 (.cons _ _ _ _ _ checked6602.1 (.cons _ _ _ _ _ checked6603.1 (.cons _ _ _ _ _ checked6604.1 (.cons _ _ _ _ _ checked6605.1 (.cons _ _ _ _ _ checked6606.1 (.cons _ _ _ _ _ checked6607.1 (.cons _ _ _ _ _ checked6608.1 (.cons _ _ _ _ _ checked6609.1 (.cons _ _ _ _ _ checked6610.1 (.cons _ _ _ _ _ checked6611.1 (.cons _ _ _ _ _ checked6612.1 (.cons _ _ _ _ _ checked6613.1 (.cons _ _ _ _ _ checked6614.1 (.cons _ _ _ _ _ checked6615.1 (.cons _ _ _ _ _ checked6616.1 (.cons _ _ _ _ _ checked6617.1 (.cons _ _ _ _ _ checked6618.1 (.cons _ _ _ _ _ checked6619.1 (.cons _ _ _ _ _ checked6620.1 (.cons _ _ _ _ _ checked6621.1 (.cons _ _ _ _ _ checked6622.1 (.cons _ _ _ _ _ checked6623.1 (.cons _ _ _ _ _ checked6624.1 (.cons _ _ _ _ _ checked6625.1 (.cons _ _ _ _ _ checked6626.1 (.cons _ _ _ _ _ checked6627.1 (.cons _ _ _ _ _ checked6628.1 (.cons _ _ _ _ _ checked6629.1 (.cons _ _ _ _ _ checked6630.1 (.cons _ _ _ _ _ checked6631.1 (.cons _ _ _ _ _ checked6632.1 (.cons _ _ _ _ _ checked6633.1 (.cons _ _ _ _ _ checked6634.1 (.cons _ _ _ _ _ checked6635.1 (.cons _ _ _ _ _ checked6636.1 (.cons _ _ _ _ _ checked6637.1 (.cons _ _ _ _ _ checked6638.1 (.cons _ _ _ _ _ checked6639.1 (.cons _ _ _ _ _ checked6640.1 (.cons _ _ _ _ _ checked6641.1 (.cons _ _ _ _ _ checked6642.1 (.cons _ _ _ _ _ checked6643.1 (.cons _ _ _ _ _ checked6644.1 (.cons _ _ _ _ _ checked6645.1 (.cons _ _ _ _ _ checked6646.1 (.cons _ _ _ _ _ checked6647.1 (.cons _ _ _ _ _ checked6648.1 (.cons _ _ _ _ _ checked6649.1 (.cons _ _ _ _ _ checked6650.1 (.cons _ _ _ _ _ checked6651.1 (.cons _ _ _ _ _ checked6652.1 (.cons _ _ _ _ _ checked6653.1 (.cons _ _ _ _ _ checked6654.1 (.cons _ _ _ _ _ checked6655.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6635 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6592.2,checked6593.2,checked6594.2,checked6595.2,checked6596.2,checked6597.2,checked6598.2,checked6599.2,checked6600.2,checked6601.2,checked6602.2,checked6603.2,checked6604.2,checked6605.2,checked6606.2,checked6607.2,checked6608.2,checked6609.2,checked6610.2,checked6611.2,checked6612.2,checked6613.2,checked6614.2,checked6615.2,checked6616.2,checked6617.2,checked6618.2,checked6619.2,checked6620.2,checked6621.2,checked6622.2,checked6623.2,checked6624.2,checked6625.2,checked6626.2,checked6627.2,checked6628.2,checked6629.2,checked6630.2,checked6631.2,checked6632.2,checked6633.2,checked6634.2,checked6635.2,checked6636.2,checked6637.2,checked6638.2,checked6639.2,checked6640.2,checked6641.2,checked6642.2,checked6643.2,checked6644.2,checked6645.2,checked6646.2,checked6647.2,checked6648.2,checked6649.2,checked6650.2,checked6651.2,checked6652.2,checked6653.2,checked6654.2,checked6655.2]
  decide
end ArtifactFrameHashControllerGroup103
