import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup196
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12544 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12544 : Bytes := ("    let r00003160: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12544 : bytes12544=statementBytes 12640 (op12544.map lower) ∧ bytes12544.length=41 := by core033_kernel_decide
def op12545 : List WordIR.Op := [.badd 12639 12640]
def bytes12545 : Bytes := ("    let r00003161: u32 = r0000315f.wrapping_add(r00003160);\n" : String).toByteArray.data.toList
theorem checked12545 : bytes12545=statementBytes 12641 (op12545.map lower) ∧ bytes12545.length=60 := by core033_kernel_decide
def op12546 : List WordIR.Op := [.band 12641 10333]
def bytes12546 : Bytes := ("    let r00003162: u32 = r00003161 & r0000285d;\n" : String).toByteArray.data.toList
theorem checked12546 : bytes12546=statementBytes 12642 (op12546.map lower) ∧ bytes12546.length=48 := by core033_kernel_decide
def op12547 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12547 : Bytes := ("    let r00003163: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12547 : bytes12547=statementBytes 12643 (op12547.map lower) ∧ bytes12547.length=41 := by core033_kernel_decide
def op12548 : List WordIR.Op := [.bxor 442 12643]
def bytes12548 : Bytes := ("    let r00003164: u32 = r000001ba ^ r00003163;\n" : String).toByteArray.data.toList
theorem checked12548 : bytes12548=statementBytes 12644 (op12548.map lower) ∧ bytes12548.length=48 := by core033_kernel_decide
def op12549 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12549 : Bytes := ("    let r00003165: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12549 : bytes12549=statementBytes 12645 (op12549.map lower) ∧ bytes12549.length=41 := by core033_kernel_decide
def op12550 : List WordIR.Op := [.bnot 12645]
def bytes12550 : Bytes := ("    let r00003166: u32 = !r00003165;\n" : String).toByteArray.data.toList
theorem checked12550 : bytes12550=statementBytes 12646 (op12550.map lower) ∧ bytes12550.length=37 := by core033_kernel_decide
def op12551 : List WordIR.Op := [.band 12644 12646]
def bytes12551 : Bytes := ("    let r00003167: u32 = r00003164 & r00003166;\n" : String).toByteArray.data.toList
theorem checked12551 : bytes12551=statementBytes 12647 (op12551.map lower) ∧ bytes12551.length=48 := by core033_kernel_decide
def op12552 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12552 : Bytes := ("    let r00003168: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12552 : bytes12552=statementBytes 12648 (op12552.map lower) ∧ bytes12552.length=41 := by core033_kernel_decide
def op12553 : List WordIR.Op := [.bxor 442 12648]
def bytes12553 : Bytes := ("    let r00003169: u32 = r000001ba ^ r00003168;\n" : String).toByteArray.data.toList
theorem checked12553 : bytes12553=statementBytes 12649 (op12553.map lower) ∧ bytes12553.length=48 := by core033_kernel_decide
def op12554 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12554 : Bytes := ("    let r0000316a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12554 : bytes12554=statementBytes 12650 (op12554.map lower) ∧ bytes12554.length=41 := by core033_kernel_decide
def op12555 : List WordIR.Op := [.bnot 12650]
def bytes12555 : Bytes := ("    let r0000316b: u32 = !r0000316a;\n" : String).toByteArray.data.toList
theorem checked12555 : bytes12555=statementBytes 12651 (op12555.map lower) ∧ bytes12555.length=37 := by core033_kernel_decide
def op12556 : List WordIR.Op := [.bxor 12649 12651]
def bytes12556 : Bytes := ("    let r0000316c: u32 = r00003169 ^ r0000316b;\n" : String).toByteArray.data.toList
theorem checked12556 : bytes12556=statementBytes 12652 (op12556.map lower) ∧ bytes12556.length=48 := by core033_kernel_decide
def op12557 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12557 : Bytes := ("    let r0000316d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12557 : bytes12557=statementBytes 12653 (op12557.map lower) ∧ bytes12557.length=41 := by core033_kernel_decide
def op12558 : List WordIR.Op := [.bxor 442 12653]
def bytes12558 : Bytes := ("    let r0000316e: u32 = r000001ba ^ r0000316d;\n" : String).toByteArray.data.toList
theorem checked12558 : bytes12558=statementBytes 12654 (op12558.map lower) ∧ bytes12558.length=48 := by core033_kernel_decide
def op12559 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12559 : Bytes := ("    let r0000316f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12559 : bytes12559=statementBytes 12655 (op12559.map lower) ∧ bytes12559.length=41 := by core033_kernel_decide
def op12560 : List WordIR.Op := [.bnot 12655]
def bytes12560 : Bytes := ("    let r00003170: u32 = !r0000316f;\n" : String).toByteArray.data.toList
theorem checked12560 : bytes12560=statementBytes 12656 (op12560.map lower) ∧ bytes12560.length=37 := by core033_kernel_decide
def op12561 : List WordIR.Op := [.badd 12654 12656]
def bytes12561 : Bytes := ("    let r00003171: u32 = r0000316e.wrapping_add(r00003170);\n" : String).toByteArray.data.toList
theorem checked12561 : bytes12561=statementBytes 12657 (op12561.map lower) ∧ bytes12561.length=60 := by core033_kernel_decide
def op12562 : List WordIR.Op := [.bnot 12657]
def bytes12562 : Bytes := ("    let r00003172: u32 = !r00003171;\n" : String).toByteArray.data.toList
theorem checked12562 : bytes12562=statementBytes 12658 (op12562.map lower) ∧ bytes12562.length=37 := by core033_kernel_decide
def op12563 : List WordIR.Op := [.band 12652 12658]
def bytes12563 : Bytes := ("    let r00003173: u32 = r0000316c & r00003172;\n" : String).toByteArray.data.toList
theorem checked12563 : bytes12563=statementBytes 12659 (op12563.map lower) ∧ bytes12563.length=48 := by core033_kernel_decide
def op12564 : List WordIR.Op := [.bxor 12647 12659]
def bytes12564 : Bytes := ("    let r00003174: u32 = r00003167 ^ r00003173;\n" : String).toByteArray.data.toList
theorem checked12564 : bytes12564=statementBytes 12660 (op12564.map lower) ∧ bytes12564.length=48 := by core033_kernel_decide
def op12565 : List WordIR.Op := [.shr 12660 31]
def bytes12565 : Bytes := ("    let r00003175: u32 = r00003174 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12565 : bytes12565=statementBytes 12661 (op12565.map lower) ∧ bytes12565.length=54 := by core033_kernel_decide
def op12566 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12566 : Bytes := ("    let r00003176: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12566 : bytes12566=statementBytes 12662 (op12566.map lower) ∧ bytes12566.length=41 := by core033_kernel_decide
def op12567 : List WordIR.Op := [.bxor 12661 12662]
def bytes12567 : Bytes := ("    let r00003177: u32 = r00003175 ^ r00003176;\n" : String).toByteArray.data.toList
theorem checked12567 : bytes12567=statementBytes 12663 (op12567.map lower) ∧ bytes12567.length=48 := by core033_kernel_decide
def op12568 : List WordIR.Op := [.bnot 12663]
def bytes12568 : Bytes := ("    let r00003178: u32 = !r00003177;\n" : String).toByteArray.data.toList
theorem checked12568 : bytes12568=statementBytes 12664 (op12568.map lower) ∧ bytes12568.length=37 := by core033_kernel_decide
def op12569 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12569 : Bytes := ("    let r00003179: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12569 : bytes12569=statementBytes 12665 (op12569.map lower) ∧ bytes12569.length=41 := by core033_kernel_decide
def op12570 : List WordIR.Op := [.badd 12664 12665]
def bytes12570 : Bytes := ("    let r0000317a: u32 = r00003178.wrapping_add(r00003179);\n" : String).toByteArray.data.toList
theorem checked12570 : bytes12570=statementBytes 12666 (op12570.map lower) ∧ bytes12570.length=60 := by core033_kernel_decide
def op12571 : List WordIR.Op := [.bnot 12666]
def bytes12571 : Bytes := ("    let r0000317b: u32 = !r0000317a;\n" : String).toByteArray.data.toList
theorem checked12571 : bytes12571=statementBytes 12667 (op12571.map lower) ∧ bytes12571.length=37 := by core033_kernel_decide
def op12572 : List WordIR.Op := [.band 12667 9802]
def bytes12572 : Bytes := ("    let r0000317c: u32 = r0000317b & r0000264a;\n" : String).toByteArray.data.toList
theorem checked12572 : bytes12572=statementBytes 12668 (op12572.map lower) ∧ bytes12572.length=48 := by core033_kernel_decide
def op12573 : List WordIR.Op := [.bxor 12642 12668]
def bytes12573 : Bytes := ("    let r0000317d: u32 = r00003162 ^ r0000317c;\n" : String).toByteArray.data.toList
theorem checked12573 : bytes12573=statementBytes 12669 (op12573.map lower) ∧ bytes12573.length=48 := by core033_kernel_decide
def op12574 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12574 : Bytes := ("    let r0000317e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12574 : bytes12574=statementBytes 12670 (op12574.map lower) ∧ bytes12574.length=41 := by core033_kernel_decide
def op12575 : List WordIR.Op := [.bxor 442 12670]
def bytes12575 : Bytes := ("    let r0000317f: u32 = r000001ba ^ r0000317e;\n" : String).toByteArray.data.toList
theorem checked12575 : bytes12575=statementBytes 12671 (op12575.map lower) ∧ bytes12575.length=48 := by core033_kernel_decide
def op12576 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12576 : Bytes := ("    let r00003180: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12576 : bytes12576=statementBytes 12672 (op12576.map lower) ∧ bytes12576.length=41 := by core033_kernel_decide
def op12577 : List WordIR.Op := [.bnot 12672]
def bytes12577 : Bytes := ("    let r00003181: u32 = !r00003180;\n" : String).toByteArray.data.toList
theorem checked12577 : bytes12577=statementBytes 12673 (op12577.map lower) ∧ bytes12577.length=37 := by core033_kernel_decide
def op12578 : List WordIR.Op := [.band 12671 12673]
def bytes12578 : Bytes := ("    let r00003182: u32 = r0000317f & r00003181;\n" : String).toByteArray.data.toList
theorem checked12578 : bytes12578=statementBytes 12674 (op12578.map lower) ∧ bytes12578.length=48 := by core033_kernel_decide
def op12579 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12579 : Bytes := ("    let r00003183: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12579 : bytes12579=statementBytes 12675 (op12579.map lower) ∧ bytes12579.length=41 := by core033_kernel_decide
def op12580 : List WordIR.Op := [.bxor 442 12675]
def bytes12580 : Bytes := ("    let r00003184: u32 = r000001ba ^ r00003183;\n" : String).toByteArray.data.toList
theorem checked12580 : bytes12580=statementBytes 12676 (op12580.map lower) ∧ bytes12580.length=48 := by core033_kernel_decide
def op12581 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12581 : Bytes := ("    let r00003185: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12581 : bytes12581=statementBytes 12677 (op12581.map lower) ∧ bytes12581.length=41 := by core033_kernel_decide
def op12582 : List WordIR.Op := [.bnot 12677]
def bytes12582 : Bytes := ("    let r00003186: u32 = !r00003185;\n" : String).toByteArray.data.toList
theorem checked12582 : bytes12582=statementBytes 12678 (op12582.map lower) ∧ bytes12582.length=37 := by core033_kernel_decide
def op12583 : List WordIR.Op := [.bxor 12676 12678]
def bytes12583 : Bytes := ("    let r00003187: u32 = r00003184 ^ r00003186;\n" : String).toByteArray.data.toList
theorem checked12583 : bytes12583=statementBytes 12679 (op12583.map lower) ∧ bytes12583.length=48 := by core033_kernel_decide
def op12584 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12584 : Bytes := ("    let r00003188: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12584 : bytes12584=statementBytes 12680 (op12584.map lower) ∧ bytes12584.length=41 := by core033_kernel_decide
def op12585 : List WordIR.Op := [.bxor 442 12680]
def bytes12585 : Bytes := ("    let r00003189: u32 = r000001ba ^ r00003188;\n" : String).toByteArray.data.toList
theorem checked12585 : bytes12585=statementBytes 12681 (op12585.map lower) ∧ bytes12585.length=48 := by core033_kernel_decide
def op12586 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12586 : Bytes := ("    let r0000318a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12586 : bytes12586=statementBytes 12682 (op12586.map lower) ∧ bytes12586.length=41 := by core033_kernel_decide
def op12587 : List WordIR.Op := [.bnot 12682]
def bytes12587 : Bytes := ("    let r0000318b: u32 = !r0000318a;\n" : String).toByteArray.data.toList
theorem checked12587 : bytes12587=statementBytes 12683 (op12587.map lower) ∧ bytes12587.length=37 := by core033_kernel_decide
def op12588 : List WordIR.Op := [.badd 12681 12683]
def bytes12588 : Bytes := ("    let r0000318c: u32 = r00003189.wrapping_add(r0000318b);\n" : String).toByteArray.data.toList
theorem checked12588 : bytes12588=statementBytes 12684 (op12588.map lower) ∧ bytes12588.length=60 := by core033_kernel_decide
def op12589 : List WordIR.Op := [.bnot 12684]
def bytes12589 : Bytes := ("    let r0000318d: u32 = !r0000318c;\n" : String).toByteArray.data.toList
theorem checked12589 : bytes12589=statementBytes 12685 (op12589.map lower) ∧ bytes12589.length=37 := by core033_kernel_decide
def op12590 : List WordIR.Op := [.band 12679 12685]
def bytes12590 : Bytes := ("    let r0000318e: u32 = r00003187 & r0000318d;\n" : String).toByteArray.data.toList
theorem checked12590 : bytes12590=statementBytes 12686 (op12590.map lower) ∧ bytes12590.length=48 := by core033_kernel_decide
def op12591 : List WordIR.Op := [.bxor 12674 12686]
def bytes12591 : Bytes := ("    let r0000318f: u32 = r00003182 ^ r0000318e;\n" : String).toByteArray.data.toList
theorem checked12591 : bytes12591=statementBytes 12687 (op12591.map lower) ∧ bytes12591.length=48 := by core033_kernel_decide
def op12592 : List WordIR.Op := [.shr 12687 31]
def bytes12592 : Bytes := ("    let r00003190: u32 = r0000318f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12592 : bytes12592=statementBytes 12688 (op12592.map lower) ∧ bytes12592.length=54 := by core033_kernel_decide
def op12593 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12593 : Bytes := ("    let r00003191: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12593 : bytes12593=statementBytes 12689 (op12593.map lower) ∧ bytes12593.length=41 := by core033_kernel_decide
def op12594 : List WordIR.Op := [.bxor 12688 12689]
def bytes12594 : Bytes := ("    let r00003192: u32 = r00003190 ^ r00003191;\n" : String).toByteArray.data.toList
theorem checked12594 : bytes12594=statementBytes 12690 (op12594.map lower) ∧ bytes12594.length=48 := by core033_kernel_decide
def op12595 : List WordIR.Op := [.bnot 12690]
def bytes12595 : Bytes := ("    let r00003193: u32 = !r00003192;\n" : String).toByteArray.data.toList
theorem checked12595 : bytes12595=statementBytes 12691 (op12595.map lower) ∧ bytes12595.length=37 := by core033_kernel_decide
def op12596 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12596 : Bytes := ("    let r00003194: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12596 : bytes12596=statementBytes 12692 (op12596.map lower) ∧ bytes12596.length=41 := by core033_kernel_decide
def op12597 : List WordIR.Op := [.badd 12691 12692]
def bytes12597 : Bytes := ("    let r00003195: u32 = r00003193.wrapping_add(r00003194);\n" : String).toByteArray.data.toList
theorem checked12597 : bytes12597=statementBytes 12693 (op12597.map lower) ∧ bytes12597.length=60 := by core033_kernel_decide
def op12598 : List WordIR.Op := [.band 12693 10344]
def bytes12598 : Bytes := ("    let r00003196: u32 = r00003195 & r00002868;\n" : String).toByteArray.data.toList
theorem checked12598 : bytes12598=statementBytes 12694 (op12598.map lower) ∧ bytes12598.length=48 := by core033_kernel_decide
def op12599 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12599 : Bytes := ("    let r00003197: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12599 : bytes12599=statementBytes 12695 (op12599.map lower) ∧ bytes12599.length=41 := by core033_kernel_decide
def op12600 : List WordIR.Op := [.bxor 442 12695]
def bytes12600 : Bytes := ("    let r00003198: u32 = r000001ba ^ r00003197;\n" : String).toByteArray.data.toList
theorem checked12600 : bytes12600=statementBytes 12696 (op12600.map lower) ∧ bytes12600.length=48 := by core033_kernel_decide
def op12601 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12601 : Bytes := ("    let r00003199: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12601 : bytes12601=statementBytes 12697 (op12601.map lower) ∧ bytes12601.length=41 := by core033_kernel_decide
def op12602 : List WordIR.Op := [.bnot 12697]
def bytes12602 : Bytes := ("    let r0000319a: u32 = !r00003199;\n" : String).toByteArray.data.toList
theorem checked12602 : bytes12602=statementBytes 12698 (op12602.map lower) ∧ bytes12602.length=37 := by core033_kernel_decide
def op12603 : List WordIR.Op := [.band 12696 12698]
def bytes12603 : Bytes := ("    let r0000319b: u32 = r00003198 & r0000319a;\n" : String).toByteArray.data.toList
theorem checked12603 : bytes12603=statementBytes 12699 (op12603.map lower) ∧ bytes12603.length=48 := by core033_kernel_decide
def op12604 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12604 : Bytes := ("    let r0000319c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12604 : bytes12604=statementBytes 12700 (op12604.map lower) ∧ bytes12604.length=41 := by core033_kernel_decide
def op12605 : List WordIR.Op := [.bxor 442 12700]
def bytes12605 : Bytes := ("    let r0000319d: u32 = r000001ba ^ r0000319c;\n" : String).toByteArray.data.toList
theorem checked12605 : bytes12605=statementBytes 12701 (op12605.map lower) ∧ bytes12605.length=48 := by core033_kernel_decide
def op12606 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12606 : Bytes := ("    let r0000319e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12606 : bytes12606=statementBytes 12702 (op12606.map lower) ∧ bytes12606.length=41 := by core033_kernel_decide
def op12607 : List WordIR.Op := [.bnot 12702]
def bytes12607 : Bytes := ("    let r0000319f: u32 = !r0000319e;\n" : String).toByteArray.data.toList
theorem checked12607 : bytes12607=statementBytes 12703 (op12607.map lower) ∧ bytes12607.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12544,op12545,op12546,op12547,op12548,op12549,op12550,op12551,op12552,op12553,op12554,op12555,op12556,op12557,op12558,op12559,op12560,op12561,op12562,op12563,op12564,op12565,op12566,op12567,op12568,op12569,op12570,op12571,op12572,op12573,op12574,op12575,op12576,op12577,op12578,op12579,op12580,op12581,op12582,op12583,op12584,op12585,op12586,op12587,op12588,op12589,op12590,op12591,op12592,op12593,op12594,op12595,op12596,op12597,op12598,op12599,op12600,op12601,op12602,op12603,op12604,op12605,op12606,op12607]
def chunks : List Bytes := [bytes12544,bytes12545,bytes12546,bytes12547,bytes12548,bytes12549,bytes12550,bytes12551,bytes12552,bytes12553,bytes12554,bytes12555,bytes12556,bytes12557,bytes12558,bytes12559,bytes12560,bytes12561,bytes12562,bytes12563,bytes12564,bytes12565,bytes12566,bytes12567,bytes12568,bytes12569,bytes12570,bytes12571,bytes12572,bytes12573,bytes12574,bytes12575,bytes12576,bytes12577,bytes12578,bytes12579,bytes12580,bytes12581,bytes12582,bytes12583,bytes12584,bytes12585,bytes12586,bytes12587,bytes12588,bytes12589,bytes12590,bytes12591,bytes12592,bytes12593,bytes12594,bytes12595,bytes12596,bytes12597,bytes12598,bytes12599,bytes12600,bytes12601,bytes12602,bytes12603,bytes12604,bytes12605,bytes12606,bytes12607]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12640 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12544.1 (.cons _ _ _ _ _ checked12545.1 (.cons _ _ _ _ _ checked12546.1 (.cons _ _ _ _ _ checked12547.1 (.cons _ _ _ _ _ checked12548.1 (.cons _ _ _ _ _ checked12549.1 (.cons _ _ _ _ _ checked12550.1 (.cons _ _ _ _ _ checked12551.1 (.cons _ _ _ _ _ checked12552.1 (.cons _ _ _ _ _ checked12553.1 (.cons _ _ _ _ _ checked12554.1 (.cons _ _ _ _ _ checked12555.1 (.cons _ _ _ _ _ checked12556.1 (.cons _ _ _ _ _ checked12557.1 (.cons _ _ _ _ _ checked12558.1 (.cons _ _ _ _ _ checked12559.1 (.cons _ _ _ _ _ checked12560.1 (.cons _ _ _ _ _ checked12561.1 (.cons _ _ _ _ _ checked12562.1 (.cons _ _ _ _ _ checked12563.1 (.cons _ _ _ _ _ checked12564.1 (.cons _ _ _ _ _ checked12565.1 (.cons _ _ _ _ _ checked12566.1 (.cons _ _ _ _ _ checked12567.1 (.cons _ _ _ _ _ checked12568.1 (.cons _ _ _ _ _ checked12569.1 (.cons _ _ _ _ _ checked12570.1 (.cons _ _ _ _ _ checked12571.1 (.cons _ _ _ _ _ checked12572.1 (.cons _ _ _ _ _ checked12573.1 (.cons _ _ _ _ _ checked12574.1 (.cons _ _ _ _ _ checked12575.1 (.cons _ _ _ _ _ checked12576.1 (.cons _ _ _ _ _ checked12577.1 (.cons _ _ _ _ _ checked12578.1 (.cons _ _ _ _ _ checked12579.1 (.cons _ _ _ _ _ checked12580.1 (.cons _ _ _ _ _ checked12581.1 (.cons _ _ _ _ _ checked12582.1 (.cons _ _ _ _ _ checked12583.1 (.cons _ _ _ _ _ checked12584.1 (.cons _ _ _ _ _ checked12585.1 (.cons _ _ _ _ _ checked12586.1 (.cons _ _ _ _ _ checked12587.1 (.cons _ _ _ _ _ checked12588.1 (.cons _ _ _ _ _ checked12589.1 (.cons _ _ _ _ _ checked12590.1 (.cons _ _ _ _ _ checked12591.1 (.cons _ _ _ _ _ checked12592.1 (.cons _ _ _ _ _ checked12593.1 (.cons _ _ _ _ _ checked12594.1 (.cons _ _ _ _ _ checked12595.1 (.cons _ _ _ _ _ checked12596.1 (.cons _ _ _ _ _ checked12597.1 (.cons _ _ _ _ _ checked12598.1 (.cons _ _ _ _ _ checked12599.1 (.cons _ _ _ _ _ checked12600.1 (.cons _ _ _ _ _ checked12601.1 (.cons _ _ _ _ _ checked12602.1 (.cons _ _ _ _ _ checked12603.1 (.cons _ _ _ _ _ checked12604.1 (.cons _ _ _ _ _ checked12605.1 (.cons _ _ _ _ _ checked12606.1 (.cons _ _ _ _ _ checked12607.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12640 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12544.2,checked12545.2,checked12546.2,checked12547.2,checked12548.2,checked12549.2,checked12550.2,checked12551.2,checked12552.2,checked12553.2,checked12554.2,checked12555.2,checked12556.2,checked12557.2,checked12558.2,checked12559.2,checked12560.2,checked12561.2,checked12562.2,checked12563.2,checked12564.2,checked12565.2,checked12566.2,checked12567.2,checked12568.2,checked12569.2,checked12570.2,checked12571.2,checked12572.2,checked12573.2,checked12574.2,checked12575.2,checked12576.2,checked12577.2,checked12578.2,checked12579.2,checked12580.2,checked12581.2,checked12582.2,checked12583.2,checked12584.2,checked12585.2,checked12586.2,checked12587.2,checked12588.2,checked12589.2,checked12590.2,checked12591.2,checked12592.2,checked12593.2,checked12594.2,checked12595.2,checked12596.2,checked12597.2,checked12598.2,checked12599.2,checked12600.2,checked12601.2,checked12602.2,checked12603.2,checked12604.2,checked12605.2,checked12606.2,checked12607.2]
  decide
end ArtifactPairedPathRoundGroup196
