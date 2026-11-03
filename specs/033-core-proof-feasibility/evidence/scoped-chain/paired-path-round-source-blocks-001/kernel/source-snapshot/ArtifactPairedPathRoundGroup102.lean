import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup102
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6528 : List WordIR.Op := [.band 6621 6623]
def bytes6528 : Bytes := ("    let r000019e0: u32 = r000019dd & r000019df;\n" : String).toByteArray.data.toList
theorem checked6528 : bytes6528=statementBytes 6624 (op6528.map lower) ∧ bytes6528.length=48 := by core033_kernel_decide
def op6529 : List WordIR.Op := [.shr 3847 8]
def bytes6529 : Bytes := ("    let r000019e1: u32 = r00000f07 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6529 : bytes6529=statementBytes 6625 (op6529.map lower) ∧ bytes6529.length=54 := by core033_kernel_decide
def op6530 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6530 : Bytes := ("    let r000019e2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6530 : bytes6530=statementBytes 6626 (op6530.map lower) ∧ bytes6530.length=41 := by core033_kernel_decide
def op6531 : List WordIR.Op := [.bnot 6626]
def bytes6531 : Bytes := ("    let r000019e3: u32 = !r000019e2;\n" : String).toByteArray.data.toList
theorem checked6531 : bytes6531=statementBytes 6627 (op6531.map lower) ∧ bytes6531.length=37 := by core033_kernel_decide
def op6532 : List WordIR.Op := [.bxor 6625 6627]
def bytes6532 : Bytes := ("    let r000019e4: u32 = r000019e1 ^ r000019e3;\n" : String).toByteArray.data.toList
theorem checked6532 : bytes6532=statementBytes 6628 (op6532.map lower) ∧ bytes6532.length=48 := by core033_kernel_decide
def op6533 : List WordIR.Op := [.shr 3847 8]
def bytes6533 : Bytes := ("    let r000019e5: u32 = r00000f07 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6533 : bytes6533=statementBytes 6629 (op6533.map lower) ∧ bytes6533.length=54 := by core033_kernel_decide
def op6534 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6534 : Bytes := ("    let r000019e6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6534 : bytes6534=statementBytes 6630 (op6534.map lower) ∧ bytes6534.length=41 := by core033_kernel_decide
def op6535 : List WordIR.Op := [.bnot 6630]
def bytes6535 : Bytes := ("    let r000019e7: u32 = !r000019e6;\n" : String).toByteArray.data.toList
theorem checked6535 : bytes6535=statementBytes 6631 (op6535.map lower) ∧ bytes6535.length=37 := by core033_kernel_decide
def op6536 : List WordIR.Op := [.badd 6629 6631]
def bytes6536 : Bytes := ("    let r000019e8: u32 = r000019e5.wrapping_add(r000019e7);\n" : String).toByteArray.data.toList
theorem checked6536 : bytes6536=statementBytes 6632 (op6536.map lower) ∧ bytes6536.length=60 := by core033_kernel_decide
def op6537 : List WordIR.Op := [.bnot 6632]
def bytes6537 : Bytes := ("    let r000019e9: u32 = !r000019e8;\n" : String).toByteArray.data.toList
theorem checked6537 : bytes6537=statementBytes 6633 (op6537.map lower) ∧ bytes6537.length=37 := by core033_kernel_decide
def op6538 : List WordIR.Op := [.band 6628 6633]
def bytes6538 : Bytes := ("    let r000019ea: u32 = r000019e4 & r000019e9;\n" : String).toByteArray.data.toList
theorem checked6538 : bytes6538=statementBytes 6634 (op6538.map lower) ∧ bytes6538.length=48 := by core033_kernel_decide
def op6539 : List WordIR.Op := [.bxor 6624 6634]
def bytes6539 : Bytes := ("    let r000019eb: u32 = r000019e0 ^ r000019ea;\n" : String).toByteArray.data.toList
theorem checked6539 : bytes6539=statementBytes 6635 (op6539.map lower) ∧ bytes6539.length=48 := by core033_kernel_decide
def op6540 : List WordIR.Op := [.shr 6635 31]
def bytes6540 : Bytes := ("    let r000019ec: u32 = r000019eb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6540 : bytes6540=statementBytes 6636 (op6540.map lower) ∧ bytes6540.length=54 := by core033_kernel_decide
def op6541 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6541 : Bytes := ("    let r000019ed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6541 : bytes6541=statementBytes 6637 (op6541.map lower) ∧ bytes6541.length=41 := by core033_kernel_decide
def op6542 : List WordIR.Op := [.bxor 6636 6637]
def bytes6542 : Bytes := ("    let r000019ee: u32 = r000019ec ^ r000019ed;\n" : String).toByteArray.data.toList
theorem checked6542 : bytes6542=statementBytes 6638 (op6542.map lower) ∧ bytes6542.length=48 := by core033_kernel_decide
def op6543 : List WordIR.Op := [.shr 3899 8]
def bytes6543 : Bytes := ("    let r000019ef: u32 = r00000f3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6543 : bytes6543=statementBytes 6639 (op6543.map lower) ∧ bytes6543.length=54 := by core033_kernel_decide
def op6544 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6544 : Bytes := ("    let r000019f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6544 : bytes6544=statementBytes 6640 (op6544.map lower) ∧ bytes6544.length=41 := by core033_kernel_decide
def op6545 : List WordIR.Op := [.bnot 6640]
def bytes6545 : Bytes := ("    let r000019f1: u32 = !r000019f0;\n" : String).toByteArray.data.toList
theorem checked6545 : bytes6545=statementBytes 6641 (op6545.map lower) ∧ bytes6545.length=37 := by core033_kernel_decide
def op6546 : List WordIR.Op := [.band 6639 6641]
def bytes6546 : Bytes := ("    let r000019f2: u32 = r000019ef & r000019f1;\n" : String).toByteArray.data.toList
theorem checked6546 : bytes6546=statementBytes 6642 (op6546.map lower) ∧ bytes6546.length=48 := by core033_kernel_decide
def op6547 : List WordIR.Op := [.shr 3899 8]
def bytes6547 : Bytes := ("    let r000019f3: u32 = r00000f3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6547 : bytes6547=statementBytes 6643 (op6547.map lower) ∧ bytes6547.length=54 := by core033_kernel_decide
def op6548 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6548 : Bytes := ("    let r000019f4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6548 : bytes6548=statementBytes 6644 (op6548.map lower) ∧ bytes6548.length=41 := by core033_kernel_decide
def op6549 : List WordIR.Op := [.bnot 6644]
def bytes6549 : Bytes := ("    let r000019f5: u32 = !r000019f4;\n" : String).toByteArray.data.toList
theorem checked6549 : bytes6549=statementBytes 6645 (op6549.map lower) ∧ bytes6549.length=37 := by core033_kernel_decide
def op6550 : List WordIR.Op := [.bxor 6643 6645]
def bytes6550 : Bytes := ("    let r000019f6: u32 = r000019f3 ^ r000019f5;\n" : String).toByteArray.data.toList
theorem checked6550 : bytes6550=statementBytes 6646 (op6550.map lower) ∧ bytes6550.length=48 := by core033_kernel_decide
def op6551 : List WordIR.Op := [.shr 3899 8]
def bytes6551 : Bytes := ("    let r000019f7: u32 = r00000f3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6551 : bytes6551=statementBytes 6647 (op6551.map lower) ∧ bytes6551.length=54 := by core033_kernel_decide
def op6552 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6552 : Bytes := ("    let r000019f8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6552 : bytes6552=statementBytes 6648 (op6552.map lower) ∧ bytes6552.length=41 := by core033_kernel_decide
def op6553 : List WordIR.Op := [.bnot 6648]
def bytes6553 : Bytes := ("    let r000019f9: u32 = !r000019f8;\n" : String).toByteArray.data.toList
theorem checked6553 : bytes6553=statementBytes 6649 (op6553.map lower) ∧ bytes6553.length=37 := by core033_kernel_decide
def op6554 : List WordIR.Op := [.badd 6647 6649]
def bytes6554 : Bytes := ("    let r000019fa: u32 = r000019f7.wrapping_add(r000019f9);\n" : String).toByteArray.data.toList
theorem checked6554 : bytes6554=statementBytes 6650 (op6554.map lower) ∧ bytes6554.length=60 := by core033_kernel_decide
def op6555 : List WordIR.Op := [.bnot 6650]
def bytes6555 : Bytes := ("    let r000019fb: u32 = !r000019fa;\n" : String).toByteArray.data.toList
theorem checked6555 : bytes6555=statementBytes 6651 (op6555.map lower) ∧ bytes6555.length=37 := by core033_kernel_decide
def op6556 : List WordIR.Op := [.band 6646 6651]
def bytes6556 : Bytes := ("    let r000019fc: u32 = r000019f6 & r000019fb;\n" : String).toByteArray.data.toList
theorem checked6556 : bytes6556=statementBytes 6652 (op6556.map lower) ∧ bytes6556.length=48 := by core033_kernel_decide
def op6557 : List WordIR.Op := [.bxor 6642 6652]
def bytes6557 : Bytes := ("    let r000019fd: u32 = r000019f2 ^ r000019fc;\n" : String).toByteArray.data.toList
theorem checked6557 : bytes6557=statementBytes 6653 (op6557.map lower) ∧ bytes6557.length=48 := by core033_kernel_decide
def op6558 : List WordIR.Op := [.shr 6653 31]
def bytes6558 : Bytes := ("    let r000019fe: u32 = r000019fd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6558 : bytes6558=statementBytes 6654 (op6558.map lower) ∧ bytes6558.length=54 := by core033_kernel_decide
def op6559 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6559 : Bytes := ("    let r000019ff: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6559 : bytes6559=statementBytes 6655 (op6559.map lower) ∧ bytes6559.length=41 := by core033_kernel_decide
def op6560 : List WordIR.Op := [.bxor 6654 6655]
def bytes6560 : Bytes := ("    let r00001a00: u32 = r000019fe ^ r000019ff;\n" : String).toByteArray.data.toList
theorem checked6560 : bytes6560=statementBytes 6656 (op6560.map lower) ∧ bytes6560.length=48 := by core033_kernel_decide
def op6561 : List WordIR.Op := [.shr 3951 8]
def bytes6561 : Bytes := ("    let r00001a01: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6561 : bytes6561=statementBytes 6657 (op6561.map lower) ∧ bytes6561.length=54 := by core033_kernel_decide
def op6562 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6562 : Bytes := ("    let r00001a02: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6562 : bytes6562=statementBytes 6658 (op6562.map lower) ∧ bytes6562.length=41 := by core033_kernel_decide
def op6563 : List WordIR.Op := [.bnot 6658]
def bytes6563 : Bytes := ("    let r00001a03: u32 = !r00001a02;\n" : String).toByteArray.data.toList
theorem checked6563 : bytes6563=statementBytes 6659 (op6563.map lower) ∧ bytes6563.length=37 := by core033_kernel_decide
def op6564 : List WordIR.Op := [.band 6657 6659]
def bytes6564 : Bytes := ("    let r00001a04: u32 = r00001a01 & r00001a03;\n" : String).toByteArray.data.toList
theorem checked6564 : bytes6564=statementBytes 6660 (op6564.map lower) ∧ bytes6564.length=48 := by core033_kernel_decide
def op6565 : List WordIR.Op := [.shr 3951 8]
def bytes6565 : Bytes := ("    let r00001a05: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6565 : bytes6565=statementBytes 6661 (op6565.map lower) ∧ bytes6565.length=54 := by core033_kernel_decide
def op6566 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6566 : Bytes := ("    let r00001a06: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6566 : bytes6566=statementBytes 6662 (op6566.map lower) ∧ bytes6566.length=41 := by core033_kernel_decide
def op6567 : List WordIR.Op := [.bnot 6662]
def bytes6567 : Bytes := ("    let r00001a07: u32 = !r00001a06;\n" : String).toByteArray.data.toList
theorem checked6567 : bytes6567=statementBytes 6663 (op6567.map lower) ∧ bytes6567.length=37 := by core033_kernel_decide
def op6568 : List WordIR.Op := [.bxor 6661 6663]
def bytes6568 : Bytes := ("    let r00001a08: u32 = r00001a05 ^ r00001a07;\n" : String).toByteArray.data.toList
theorem checked6568 : bytes6568=statementBytes 6664 (op6568.map lower) ∧ bytes6568.length=48 := by core033_kernel_decide
def op6569 : List WordIR.Op := [.shr 3951 8]
def bytes6569 : Bytes := ("    let r00001a09: u32 = r00000f6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6569 : bytes6569=statementBytes 6665 (op6569.map lower) ∧ bytes6569.length=54 := by core033_kernel_decide
def op6570 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6570 : Bytes := ("    let r00001a0a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6570 : bytes6570=statementBytes 6666 (op6570.map lower) ∧ bytes6570.length=41 := by core033_kernel_decide
def op6571 : List WordIR.Op := [.bnot 6666]
def bytes6571 : Bytes := ("    let r00001a0b: u32 = !r00001a0a;\n" : String).toByteArray.data.toList
theorem checked6571 : bytes6571=statementBytes 6667 (op6571.map lower) ∧ bytes6571.length=37 := by core033_kernel_decide
def op6572 : List WordIR.Op := [.badd 6665 6667]
def bytes6572 : Bytes := ("    let r00001a0c: u32 = r00001a09.wrapping_add(r00001a0b);\n" : String).toByteArray.data.toList
theorem checked6572 : bytes6572=statementBytes 6668 (op6572.map lower) ∧ bytes6572.length=60 := by core033_kernel_decide
def op6573 : List WordIR.Op := [.bnot 6668]
def bytes6573 : Bytes := ("    let r00001a0d: u32 = !r00001a0c;\n" : String).toByteArray.data.toList
theorem checked6573 : bytes6573=statementBytes 6669 (op6573.map lower) ∧ bytes6573.length=37 := by core033_kernel_decide
def op6574 : List WordIR.Op := [.band 6664 6669]
def bytes6574 : Bytes := ("    let r00001a0e: u32 = r00001a08 & r00001a0d;\n" : String).toByteArray.data.toList
theorem checked6574 : bytes6574=statementBytes 6670 (op6574.map lower) ∧ bytes6574.length=48 := by core033_kernel_decide
def op6575 : List WordIR.Op := [.bxor 6660 6670]
def bytes6575 : Bytes := ("    let r00001a0f: u32 = r00001a04 ^ r00001a0e;\n" : String).toByteArray.data.toList
theorem checked6575 : bytes6575=statementBytes 6671 (op6575.map lower) ∧ bytes6575.length=48 := by core033_kernel_decide
def op6576 : List WordIR.Op := [.shr 6671 31]
def bytes6576 : Bytes := ("    let r00001a10: u32 = r00001a0f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6576 : bytes6576=statementBytes 6672 (op6576.map lower) ∧ bytes6576.length=54 := by core033_kernel_decide
def op6577 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6577 : Bytes := ("    let r00001a11: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6577 : bytes6577=statementBytes 6673 (op6577.map lower) ∧ bytes6577.length=41 := by core033_kernel_decide
def op6578 : List WordIR.Op := [.bxor 6672 6673]
def bytes6578 : Bytes := ("    let r00001a12: u32 = r00001a10 ^ r00001a11;\n" : String).toByteArray.data.toList
theorem checked6578 : bytes6578=statementBytes 6674 (op6578.map lower) ∧ bytes6578.length=48 := by core033_kernel_decide
def op6579 : List WordIR.Op := [.shr 4003 8]
def bytes6579 : Bytes := ("    let r00001a13: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6579 : bytes6579=statementBytes 6675 (op6579.map lower) ∧ bytes6579.length=54 := by core033_kernel_decide
def op6580 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6580 : Bytes := ("    let r00001a14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6580 : bytes6580=statementBytes 6676 (op6580.map lower) ∧ bytes6580.length=41 := by core033_kernel_decide
def op6581 : List WordIR.Op := [.bnot 6676]
def bytes6581 : Bytes := ("    let r00001a15: u32 = !r00001a14;\n" : String).toByteArray.data.toList
theorem checked6581 : bytes6581=statementBytes 6677 (op6581.map lower) ∧ bytes6581.length=37 := by core033_kernel_decide
def op6582 : List WordIR.Op := [.band 6675 6677]
def bytes6582 : Bytes := ("    let r00001a16: u32 = r00001a13 & r00001a15;\n" : String).toByteArray.data.toList
theorem checked6582 : bytes6582=statementBytes 6678 (op6582.map lower) ∧ bytes6582.length=48 := by core033_kernel_decide
def op6583 : List WordIR.Op := [.shr 4003 8]
def bytes6583 : Bytes := ("    let r00001a17: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6583 : bytes6583=statementBytes 6679 (op6583.map lower) ∧ bytes6583.length=54 := by core033_kernel_decide
def op6584 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6584 : Bytes := ("    let r00001a18: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6584 : bytes6584=statementBytes 6680 (op6584.map lower) ∧ bytes6584.length=41 := by core033_kernel_decide
def op6585 : List WordIR.Op := [.bnot 6680]
def bytes6585 : Bytes := ("    let r00001a19: u32 = !r00001a18;\n" : String).toByteArray.data.toList
theorem checked6585 : bytes6585=statementBytes 6681 (op6585.map lower) ∧ bytes6585.length=37 := by core033_kernel_decide
def op6586 : List WordIR.Op := [.bxor 6679 6681]
def bytes6586 : Bytes := ("    let r00001a1a: u32 = r00001a17 ^ r00001a19;\n" : String).toByteArray.data.toList
theorem checked6586 : bytes6586=statementBytes 6682 (op6586.map lower) ∧ bytes6586.length=48 := by core033_kernel_decide
def op6587 : List WordIR.Op := [.shr 4003 8]
def bytes6587 : Bytes := ("    let r00001a1b: u32 = r00000fa3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6587 : bytes6587=statementBytes 6683 (op6587.map lower) ∧ bytes6587.length=54 := by core033_kernel_decide
def op6588 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6588 : Bytes := ("    let r00001a1c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6588 : bytes6588=statementBytes 6684 (op6588.map lower) ∧ bytes6588.length=41 := by core033_kernel_decide
def op6589 : List WordIR.Op := [.bnot 6684]
def bytes6589 : Bytes := ("    let r00001a1d: u32 = !r00001a1c;\n" : String).toByteArray.data.toList
theorem checked6589 : bytes6589=statementBytes 6685 (op6589.map lower) ∧ bytes6589.length=37 := by core033_kernel_decide
def op6590 : List WordIR.Op := [.badd 6683 6685]
def bytes6590 : Bytes := ("    let r00001a1e: u32 = r00001a1b.wrapping_add(r00001a1d);\n" : String).toByteArray.data.toList
theorem checked6590 : bytes6590=statementBytes 6686 (op6590.map lower) ∧ bytes6590.length=60 := by core033_kernel_decide
def op6591 : List WordIR.Op := [.bnot 6686]
def bytes6591 : Bytes := ("    let r00001a1f: u32 = !r00001a1e;\n" : String).toByteArray.data.toList
theorem checked6591 : bytes6591=statementBytes 6687 (op6591.map lower) ∧ bytes6591.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6528,op6529,op6530,op6531,op6532,op6533,op6534,op6535,op6536,op6537,op6538,op6539,op6540,op6541,op6542,op6543,op6544,op6545,op6546,op6547,op6548,op6549,op6550,op6551,op6552,op6553,op6554,op6555,op6556,op6557,op6558,op6559,op6560,op6561,op6562,op6563,op6564,op6565,op6566,op6567,op6568,op6569,op6570,op6571,op6572,op6573,op6574,op6575,op6576,op6577,op6578,op6579,op6580,op6581,op6582,op6583,op6584,op6585,op6586,op6587,op6588,op6589,op6590,op6591]
def chunks : List Bytes := [bytes6528,bytes6529,bytes6530,bytes6531,bytes6532,bytes6533,bytes6534,bytes6535,bytes6536,bytes6537,bytes6538,bytes6539,bytes6540,bytes6541,bytes6542,bytes6543,bytes6544,bytes6545,bytes6546,bytes6547,bytes6548,bytes6549,bytes6550,bytes6551,bytes6552,bytes6553,bytes6554,bytes6555,bytes6556,bytes6557,bytes6558,bytes6559,bytes6560,bytes6561,bytes6562,bytes6563,bytes6564,bytes6565,bytes6566,bytes6567,bytes6568,bytes6569,bytes6570,bytes6571,bytes6572,bytes6573,bytes6574,bytes6575,bytes6576,bytes6577,bytes6578,bytes6579,bytes6580,bytes6581,bytes6582,bytes6583,bytes6584,bytes6585,bytes6586,bytes6587,bytes6588,bytes6589,bytes6590,bytes6591]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6624 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6528.1 (.cons _ _ _ _ _ checked6529.1 (.cons _ _ _ _ _ checked6530.1 (.cons _ _ _ _ _ checked6531.1 (.cons _ _ _ _ _ checked6532.1 (.cons _ _ _ _ _ checked6533.1 (.cons _ _ _ _ _ checked6534.1 (.cons _ _ _ _ _ checked6535.1 (.cons _ _ _ _ _ checked6536.1 (.cons _ _ _ _ _ checked6537.1 (.cons _ _ _ _ _ checked6538.1 (.cons _ _ _ _ _ checked6539.1 (.cons _ _ _ _ _ checked6540.1 (.cons _ _ _ _ _ checked6541.1 (.cons _ _ _ _ _ checked6542.1 (.cons _ _ _ _ _ checked6543.1 (.cons _ _ _ _ _ checked6544.1 (.cons _ _ _ _ _ checked6545.1 (.cons _ _ _ _ _ checked6546.1 (.cons _ _ _ _ _ checked6547.1 (.cons _ _ _ _ _ checked6548.1 (.cons _ _ _ _ _ checked6549.1 (.cons _ _ _ _ _ checked6550.1 (.cons _ _ _ _ _ checked6551.1 (.cons _ _ _ _ _ checked6552.1 (.cons _ _ _ _ _ checked6553.1 (.cons _ _ _ _ _ checked6554.1 (.cons _ _ _ _ _ checked6555.1 (.cons _ _ _ _ _ checked6556.1 (.cons _ _ _ _ _ checked6557.1 (.cons _ _ _ _ _ checked6558.1 (.cons _ _ _ _ _ checked6559.1 (.cons _ _ _ _ _ checked6560.1 (.cons _ _ _ _ _ checked6561.1 (.cons _ _ _ _ _ checked6562.1 (.cons _ _ _ _ _ checked6563.1 (.cons _ _ _ _ _ checked6564.1 (.cons _ _ _ _ _ checked6565.1 (.cons _ _ _ _ _ checked6566.1 (.cons _ _ _ _ _ checked6567.1 (.cons _ _ _ _ _ checked6568.1 (.cons _ _ _ _ _ checked6569.1 (.cons _ _ _ _ _ checked6570.1 (.cons _ _ _ _ _ checked6571.1 (.cons _ _ _ _ _ checked6572.1 (.cons _ _ _ _ _ checked6573.1 (.cons _ _ _ _ _ checked6574.1 (.cons _ _ _ _ _ checked6575.1 (.cons _ _ _ _ _ checked6576.1 (.cons _ _ _ _ _ checked6577.1 (.cons _ _ _ _ _ checked6578.1 (.cons _ _ _ _ _ checked6579.1 (.cons _ _ _ _ _ checked6580.1 (.cons _ _ _ _ _ checked6581.1 (.cons _ _ _ _ _ checked6582.1 (.cons _ _ _ _ _ checked6583.1 (.cons _ _ _ _ _ checked6584.1 (.cons _ _ _ _ _ checked6585.1 (.cons _ _ _ _ _ checked6586.1 (.cons _ _ _ _ _ checked6587.1 (.cons _ _ _ _ _ checked6588.1 (.cons _ _ _ _ _ checked6589.1 (.cons _ _ _ _ _ checked6590.1 (.cons _ _ _ _ _ checked6591.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6624 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2941 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6528.2,checked6529.2,checked6530.2,checked6531.2,checked6532.2,checked6533.2,checked6534.2,checked6535.2,checked6536.2,checked6537.2,checked6538.2,checked6539.2,checked6540.2,checked6541.2,checked6542.2,checked6543.2,checked6544.2,checked6545.2,checked6546.2,checked6547.2,checked6548.2,checked6549.2,checked6550.2,checked6551.2,checked6552.2,checked6553.2,checked6554.2,checked6555.2,checked6556.2,checked6557.2,checked6558.2,checked6559.2,checked6560.2,checked6561.2,checked6562.2,checked6563.2,checked6564.2,checked6565.2,checked6566.2,checked6567.2,checked6568.2,checked6569.2,checked6570.2,checked6571.2,checked6572.2,checked6573.2,checked6574.2,checked6575.2,checked6576.2,checked6577.2,checked6578.2,checked6579.2,checked6580.2,checked6581.2,checked6582.2,checked6583.2,checked6584.2,checked6585.2,checked6586.2,checked6587.2,checked6588.2,checked6589.2,checked6590.2,checked6591.2]
  decide
end ArtifactPairedPathRoundGroup102
