import ActualPadByteIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPadByteGroup10
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op640 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes640 : Bytes := ("    let r00000283: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked640 : bytes640=statementBytes 643 (op640.map lower) ∧ bytes640.length=41 := by core033_kernel_decide
def op641 : List WordIR.Op := [.band 642 643]
def bytes641 : Bytes := ("    let r00000284: u32 = r00000282 & r00000283;\n" : String).toByteArray.data.toList
theorem checked641 : bytes641=statementBytes 644 (op641.map lower) ∧ bytes641.length=48 := by core033_kernel_decide
def op642 : List WordIR.Op := [.badd 635 644]
def bytes642 : Bytes := ("    let r00000285: u32 = r0000027b.wrapping_add(r00000284);\n" : String).toByteArray.data.toList
theorem checked642 : bytes642=statementBytes 645 (op642.map lower) ∧ bytes642.length=60 := by core033_kernel_decide
def op643 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes643 : Bytes := ("    let r00000286: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked643 : bytes643=statementBytes 646 (op643.map lower) ∧ bytes643.length=41 := by core033_kernel_decide
def op644 : List WordIR.Op := [.badd 645 646]
def bytes644 : Bytes := ("    let r00000287: u32 = r00000285.wrapping_add(r00000286);\n" : String).toByteArray.data.toList
theorem checked644 : bytes644=statementBytes 647 (op644.map lower) ∧ bytes644.length=60 := by core033_kernel_decide
def op645 : List WordIR.Op := [.bxor 1 647]
def bytes645 : Bytes := ("    let r00000288: u32 = r00000001 ^ r00000287;\n" : String).toByteArray.data.toList
theorem checked645 : bytes645=statementBytes 648 (op645.map lower) ∧ bytes645.length=48 := by core033_kernel_decide
def op646 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes646 : Bytes := ("    let r00000289: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked646 : bytes646=statementBytes 649 (op646.map lower) ∧ bytes646.length=41 := by core033_kernel_decide
def op647 : List WordIR.Op := [.bnot 649]
def bytes647 : Bytes := ("    let r0000028a: u32 = !r00000289;\n" : String).toByteArray.data.toList
theorem checked647 : bytes647=statementBytes 650 (op647.map lower) ∧ bytes647.length=37 := by core033_kernel_decide
def op648 : List WordIR.Op := [.badd 648 650]
def bytes648 : Bytes := ("    let r0000028b: u32 = r00000288.wrapping_add(r0000028a);\n" : String).toByteArray.data.toList
theorem checked648 : bytes648=statementBytes 651 (op648.map lower) ∧ bytes648.length=60 := by core033_kernel_decide
def op649 : List WordIR.Op := [.bnot 651]
def bytes649 : Bytes := ("    let r0000028c: u32 = !r0000028b;\n" : String).toByteArray.data.toList
theorem checked649 : bytes649=statementBytes 652 (op649.map lower) ∧ bytes649.length=37 := by core033_kernel_decide
def op650 : List WordIR.Op := [.band 633 652]
def bytes650 : Bytes := ("    let r0000028d: u32 = r00000279 & r0000028c;\n" : String).toByteArray.data.toList
theorem checked650 : bytes650=statementBytes 653 (op650.map lower) ∧ bytes650.length=48 := by core033_kernel_decide
def op651 : List WordIR.Op := [.bxor 615 653]
def bytes651 : Bytes := ("    let r0000028e: u32 = r00000267 ^ r0000028d;\n" : String).toByteArray.data.toList
theorem checked651 : bytes651=statementBytes 654 (op651.map lower) ∧ bytes651.length=48 := by core033_kernel_decide
def op652 : List WordIR.Op := [.shr 654 31]
def bytes652 : Bytes := ("    let r0000028f: u32 = r0000028e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked652 : bytes652=statementBytes 655 (op652.map lower) ∧ bytes652.length=54 := by core033_kernel_decide
def op653 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes653 : Bytes := ("    let r00000290: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked653 : bytes653=statementBytes 656 (op653.map lower) ∧ bytes653.length=41 := by core033_kernel_decide
def op654 : List WordIR.Op := [.bxor 655 656]
def bytes654 : Bytes := ("    let r00000291: u32 = r0000028f ^ r00000290;\n" : String).toByteArray.data.toList
theorem checked654 : bytes654=statementBytes 657 (op654.map lower) ∧ bytes654.length=48 := by core033_kernel_decide
def op655 : List WordIR.Op := [.bnot 657]
def bytes655 : Bytes := ("    let r00000292: u32 = !r00000291;\n" : String).toByteArray.data.toList
theorem checked655 : bytes655=statementBytes 658 (op655.map lower) ∧ bytes655.length=37 := by core033_kernel_decide
def op656 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes656 : Bytes := ("    let r00000293: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked656 : bytes656=statementBytes 659 (op656.map lower) ∧ bytes656.length=41 := by core033_kernel_decide
def op657 : List WordIR.Op := [.badd 658 659]
def bytes657 : Bytes := ("    let r00000294: u32 = r00000292.wrapping_add(r00000293);\n" : String).toByteArray.data.toList
theorem checked657 : bytes657=statementBytes 660 (op657.map lower) ∧ bytes657.length=60 := by core033_kernel_decide
def op658 : List WordIR.Op := [.rotr 0 29]
def bytes658 : Bytes := ("    let r00000295: u32 = r00000000.rotate_right(0x0000001d_u32);\n" : String).toByteArray.data.toList
theorem checked658 : bytes658=statementBytes 661 (op658.map lower) ∧ bytes658.length=65 := by core033_kernel_decide
def op659 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967288)]
def bytes659 : Bytes := ("    let r00000296: u32 = 0xfffffff8_u32;\n" : String).toByteArray.data.toList
theorem checked659 : bytes659=statementBytes 662 (op659.map lower) ∧ bytes659.length=41 := by core033_kernel_decide
def op660 : List WordIR.Op := [.band 661 662]
def bytes660 : Bytes := ("    let r00000297: u32 = r00000295 & r00000296;\n" : String).toByteArray.data.toList
theorem checked660 : bytes660=statementBytes 663 (op660.map lower) ∧ bytes660.length=48 := by core033_kernel_decide
def op661 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes661 : Bytes := ("    let r00000298: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked661 : bytes661=statementBytes 664 (op661.map lower) ∧ bytes661.length=41 := by core033_kernel_decide
def op662 : List WordIR.Op := [.band 663 664]
def bytes662 : Bytes := ("    let r00000299: u32 = r00000297 & r00000298;\n" : String).toByteArray.data.toList
theorem checked662 : bytes662=statementBytes 665 (op662.map lower) ∧ bytes662.length=48 := by core033_kernel_decide
def op663 : List WordIR.Op := [.band 660 665]
def bytes663 : Bytes := ("    let r0000029a: u32 = r00000294 & r00000299;\n" : String).toByteArray.data.toList
theorem checked663 : bytes663=statementBytes 666 (op663.map lower) ∧ bytes663.length=48 := by core033_kernel_decide
def op664 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes664 : Bytes := ("    let r0000029b: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked664 : bytes664=statementBytes 667 (op664.map lower) ∧ bytes664.length=41 := by core033_kernel_decide
def op665 : List WordIR.Op := [.badd 0 667]
def bytes665 : Bytes := ("    let r0000029c: u32 = r00000000.wrapping_add(r0000029b);\n" : String).toByteArray.data.toList
theorem checked665 : bytes665=statementBytes 668 (op665.map lower) ∧ bytes665.length=60 := by core033_kernel_decide
def op666 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes666 : Bytes := ("    let r0000029d: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked666 : bytes666=statementBytes 669 (op666.map lower) ∧ bytes666.length=41 := by core033_kernel_decide
def op667 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes667 : Bytes := ("    let r0000029e: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked667 : bytes667=statementBytes 670 (op667.map lower) ∧ bytes667.length=41 := by core033_kernel_decide
def op668 : List WordIR.Op := [.band 0 670]
def bytes668 : Bytes := ("    let r0000029f: u32 = r00000000 & r0000029e;\n" : String).toByteArray.data.toList
theorem checked668 : bytes668=statementBytes 671 (op668.map lower) ∧ bytes668.length=48 := by core033_kernel_decide
def op669 : List WordIR.Op := [.bnot 671]
def bytes669 : Bytes := ("    let r000002a0: u32 = !r0000029f;\n" : String).toByteArray.data.toList
theorem checked669 : bytes669=statementBytes 672 (op669.map lower) ∧ bytes669.length=37 := by core033_kernel_decide
def op670 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes670 : Bytes := ("    let r000002a1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked670 : bytes670=statementBytes 673 (op670.map lower) ∧ bytes670.length=41 := by core033_kernel_decide
def op671 : List WordIR.Op := [.badd 672 673]
def bytes671 : Bytes := ("    let r000002a2: u32 = r000002a0.wrapping_add(r000002a1);\n" : String).toByteArray.data.toList
theorem checked671 : bytes671=statementBytes 674 (op671.map lower) ∧ bytes671.length=60 := by core033_kernel_decide
def op672 : List WordIR.Op := [.badd 669 674]
def bytes672 : Bytes := ("    let r000002a3: u32 = r0000029d.wrapping_add(r000002a2);\n" : String).toByteArray.data.toList
theorem checked672 : bytes672=statementBytes 675 (op672.map lower) ∧ bytes672.length=60 := by core033_kernel_decide
def op673 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes673 : Bytes := ("    let r000002a4: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked673 : bytes673=statementBytes 676 (op673.map lower) ∧ bytes673.length=41 := by core033_kernel_decide
def op674 : List WordIR.Op := [.band 675 676]
def bytes674 : Bytes := ("    let r000002a5: u32 = r000002a3 & r000002a4;\n" : String).toByteArray.data.toList
theorem checked674 : bytes674=statementBytes 677 (op674.map lower) ∧ bytes674.length=48 := by core033_kernel_decide
def op675 : List WordIR.Op := [.badd 668 677]
def bytes675 : Bytes := ("    let r000002a6: u32 = r0000029c.wrapping_add(r000002a5);\n" : String).toByteArray.data.toList
theorem checked675 : bytes675=statementBytes 678 (op675.map lower) ∧ bytes675.length=60 := by core033_kernel_decide
def op676 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes676 : Bytes := ("    let r000002a7: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked676 : bytes676=statementBytes 679 (op676.map lower) ∧ bytes676.length=41 := by core033_kernel_decide
def op677 : List WordIR.Op := [.badd 678 679]
def bytes677 : Bytes := ("    let r000002a8: u32 = r000002a6.wrapping_add(r000002a7);\n" : String).toByteArray.data.toList
theorem checked677 : bytes677=statementBytes 680 (op677.map lower) ∧ bytes677.length=60 := by core033_kernel_decide
def op678 : List WordIR.Op := [.bxor 1 680]
def bytes678 : Bytes := ("    let r000002a9: u32 = r00000001 ^ r000002a8;\n" : String).toByteArray.data.toList
theorem checked678 : bytes678=statementBytes 681 (op678.map lower) ∧ bytes678.length=48 := by core033_kernel_decide
def op679 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes679 : Bytes := ("    let r000002aa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked679 : bytes679=statementBytes 682 (op679.map lower) ∧ bytes679.length=41 := by core033_kernel_decide
def op680 : List WordIR.Op := [.bnot 682]
def bytes680 : Bytes := ("    let r000002ab: u32 = !r000002aa;\n" : String).toByteArray.data.toList
theorem checked680 : bytes680=statementBytes 683 (op680.map lower) ∧ bytes680.length=37 := by core033_kernel_decide
def op681 : List WordIR.Op := [.band 681 683]
def bytes681 : Bytes := ("    let r000002ac: u32 = r000002a9 & r000002ab;\n" : String).toByteArray.data.toList
theorem checked681 : bytes681=statementBytes 684 (op681.map lower) ∧ bytes681.length=48 := by core033_kernel_decide
def op682 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes682 : Bytes := ("    let r000002ad: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked682 : bytes682=statementBytes 685 (op682.map lower) ∧ bytes682.length=41 := by core033_kernel_decide
def op683 : List WordIR.Op := [.badd 0 685]
def bytes683 : Bytes := ("    let r000002ae: u32 = r00000000.wrapping_add(r000002ad);\n" : String).toByteArray.data.toList
theorem checked683 : bytes683=statementBytes 686 (op683.map lower) ∧ bytes683.length=60 := by core033_kernel_decide
def op684 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes684 : Bytes := ("    let r000002af: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked684 : bytes684=statementBytes 687 (op684.map lower) ∧ bytes684.length=41 := by core033_kernel_decide
def op685 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes685 : Bytes := ("    let r000002b0: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked685 : bytes685=statementBytes 688 (op685.map lower) ∧ bytes685.length=41 := by core033_kernel_decide
def op686 : List WordIR.Op := [.band 0 688]
def bytes686 : Bytes := ("    let r000002b1: u32 = r00000000 & r000002b0;\n" : String).toByteArray.data.toList
theorem checked686 : bytes686=statementBytes 689 (op686.map lower) ∧ bytes686.length=48 := by core033_kernel_decide
def op687 : List WordIR.Op := [.bnot 689]
def bytes687 : Bytes := ("    let r000002b2: u32 = !r000002b1;\n" : String).toByteArray.data.toList
theorem checked687 : bytes687=statementBytes 690 (op687.map lower) ∧ bytes687.length=37 := by core033_kernel_decide
def op688 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes688 : Bytes := ("    let r000002b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked688 : bytes688=statementBytes 691 (op688.map lower) ∧ bytes688.length=41 := by core033_kernel_decide
def op689 : List WordIR.Op := [.badd 690 691]
def bytes689 : Bytes := ("    let r000002b4: u32 = r000002b2.wrapping_add(r000002b3);\n" : String).toByteArray.data.toList
theorem checked689 : bytes689=statementBytes 692 (op689.map lower) ∧ bytes689.length=60 := by core033_kernel_decide
def op690 : List WordIR.Op := [.badd 687 692]
def bytes690 : Bytes := ("    let r000002b5: u32 = r000002af.wrapping_add(r000002b4);\n" : String).toByteArray.data.toList
theorem checked690 : bytes690=statementBytes 693 (op690.map lower) ∧ bytes690.length=60 := by core033_kernel_decide
def op691 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes691 : Bytes := ("    let r000002b6: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked691 : bytes691=statementBytes 694 (op691.map lower) ∧ bytes691.length=41 := by core033_kernel_decide
def op692 : List WordIR.Op := [.band 693 694]
def bytes692 : Bytes := ("    let r000002b7: u32 = r000002b5 & r000002b6;\n" : String).toByteArray.data.toList
theorem checked692 : bytes692=statementBytes 695 (op692.map lower) ∧ bytes692.length=48 := by core033_kernel_decide
def op693 : List WordIR.Op := [.badd 686 695]
def bytes693 : Bytes := ("    let r000002b8: u32 = r000002ae.wrapping_add(r000002b7);\n" : String).toByteArray.data.toList
theorem checked693 : bytes693=statementBytes 696 (op693.map lower) ∧ bytes693.length=60 := by core033_kernel_decide
def op694 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes694 : Bytes := ("    let r000002b9: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked694 : bytes694=statementBytes 697 (op694.map lower) ∧ bytes694.length=41 := by core033_kernel_decide
def op695 : List WordIR.Op := [.badd 696 697]
def bytes695 : Bytes := ("    let r000002ba: u32 = r000002b8.wrapping_add(r000002b9);\n" : String).toByteArray.data.toList
theorem checked695 : bytes695=statementBytes 698 (op695.map lower) ∧ bytes695.length=60 := by core033_kernel_decide
def op696 : List WordIR.Op := [.bxor 1 698]
def bytes696 : Bytes := ("    let r000002bb: u32 = r00000001 ^ r000002ba;\n" : String).toByteArray.data.toList
theorem checked696 : bytes696=statementBytes 699 (op696.map lower) ∧ bytes696.length=48 := by core033_kernel_decide
def op697 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes697 : Bytes := ("    let r000002bc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked697 : bytes697=statementBytes 700 (op697.map lower) ∧ bytes697.length=41 := by core033_kernel_decide
def op698 : List WordIR.Op := [.bnot 700]
def bytes698 : Bytes := ("    let r000002bd: u32 = !r000002bc;\n" : String).toByteArray.data.toList
theorem checked698 : bytes698=statementBytes 701 (op698.map lower) ∧ bytes698.length=37 := by core033_kernel_decide
def op699 : List WordIR.Op := [.bxor 699 701]
def bytes699 : Bytes := ("    let r000002be: u32 = r000002bb ^ r000002bd;\n" : String).toByteArray.data.toList
theorem checked699 : bytes699=statementBytes 702 (op699.map lower) ∧ bytes699.length=48 := by core033_kernel_decide
def op700 : List WordIR.Op := [.literal (BitVec.ofNat 32 9)]
def bytes700 : Bytes := ("    let r000002bf: u32 = 0x00000009_u32;\n" : String).toByteArray.data.toList
theorem checked700 : bytes700=statementBytes 703 (op700.map lower) ∧ bytes700.length=41 := by core033_kernel_decide
def op701 : List WordIR.Op := [.badd 0 703]
def bytes701 : Bytes := ("    let r000002c0: u32 = r00000000.wrapping_add(r000002bf);\n" : String).toByteArray.data.toList
theorem checked701 : bytes701=statementBytes 704 (op701.map lower) ∧ bytes701.length=60 := by core033_kernel_decide
def op702 : List WordIR.Op := [.literal (BitVec.ofNat 32 119)]
def bytes702 : Bytes := ("    let r000002c1: u32 = 0x00000077_u32;\n" : String).toByteArray.data.toList
theorem checked702 : bytes702=statementBytes 705 (op702.map lower) ∧ bytes702.length=41 := by core033_kernel_decide
def op703 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes703 : Bytes := ("    let r000002c2: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked703 : bytes703=statementBytes 706 (op703.map lower) ∧ bytes703.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op640,op641,op642,op643,op644,op645,op646,op647,op648,op649,op650,op651,op652,op653,op654,op655,op656,op657,op658,op659,op660,op661,op662,op663,op664,op665,op666,op667,op668,op669,op670,op671,op672,op673,op674,op675,op676,op677,op678,op679,op680,op681,op682,op683,op684,op685,op686,op687,op688,op689,op690,op691,op692,op693,op694,op695,op696,op697,op698,op699,op700,op701,op702,op703]
def chunks : List Bytes := [bytes640,bytes641,bytes642,bytes643,bytes644,bytes645,bytes646,bytes647,bytes648,bytes649,bytes650,bytes651,bytes652,bytes653,bytes654,bytes655,bytes656,bytes657,bytes658,bytes659,bytes660,bytes661,bytes662,bytes663,bytes664,bytes665,bytes666,bytes667,bytes668,bytes669,bytes670,bytes671,bytes672,bytes673,bytes674,bytes675,bytes676,bytes677,bytes678,bytes679,bytes680,bytes681,bytes682,bytes683,bytes684,bytes685,bytes686,bytes687,bytes688,bytes689,bytes690,bytes691,bytes692,bytes693,bytes694,bytes695,bytes696,bytes697,bytes698,bytes699,bytes700,bytes701,bytes702,bytes703]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 643 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked640.1 (.cons _ _ _ _ _ checked641.1 (.cons _ _ _ _ _ checked642.1 (.cons _ _ _ _ _ checked643.1 (.cons _ _ _ _ _ checked644.1 (.cons _ _ _ _ _ checked645.1 (.cons _ _ _ _ _ checked646.1 (.cons _ _ _ _ _ checked647.1 (.cons _ _ _ _ _ checked648.1 (.cons _ _ _ _ _ checked649.1 (.cons _ _ _ _ _ checked650.1 (.cons _ _ _ _ _ checked651.1 (.cons _ _ _ _ _ checked652.1 (.cons _ _ _ _ _ checked653.1 (.cons _ _ _ _ _ checked654.1 (.cons _ _ _ _ _ checked655.1 (.cons _ _ _ _ _ checked656.1 (.cons _ _ _ _ _ checked657.1 (.cons _ _ _ _ _ checked658.1 (.cons _ _ _ _ _ checked659.1 (.cons _ _ _ _ _ checked660.1 (.cons _ _ _ _ _ checked661.1 (.cons _ _ _ _ _ checked662.1 (.cons _ _ _ _ _ checked663.1 (.cons _ _ _ _ _ checked664.1 (.cons _ _ _ _ _ checked665.1 (.cons _ _ _ _ _ checked666.1 (.cons _ _ _ _ _ checked667.1 (.cons _ _ _ _ _ checked668.1 (.cons _ _ _ _ _ checked669.1 (.cons _ _ _ _ _ checked670.1 (.cons _ _ _ _ _ checked671.1 (.cons _ _ _ _ _ checked672.1 (.cons _ _ _ _ _ checked673.1 (.cons _ _ _ _ _ checked674.1 (.cons _ _ _ _ _ checked675.1 (.cons _ _ _ _ _ checked676.1 (.cons _ _ _ _ _ checked677.1 (.cons _ _ _ _ _ checked678.1 (.cons _ _ _ _ _ checked679.1 (.cons _ _ _ _ _ checked680.1 (.cons _ _ _ _ _ checked681.1 (.cons _ _ _ _ _ checked682.1 (.cons _ _ _ _ _ checked683.1 (.cons _ _ _ _ _ checked684.1 (.cons _ _ _ _ _ checked685.1 (.cons _ _ _ _ _ checked686.1 (.cons _ _ _ _ _ checked687.1 (.cons _ _ _ _ _ checked688.1 (.cons _ _ _ _ _ checked689.1 (.cons _ _ _ _ _ checked690.1 (.cons _ _ _ _ _ checked691.1 (.cons _ _ _ _ _ checked692.1 (.cons _ _ _ _ _ checked693.1 (.cons _ _ _ _ _ checked694.1 (.cons _ _ _ _ _ checked695.1 (.cons _ _ _ _ _ checked696.1 (.cons _ _ _ _ _ checked697.1 (.cons _ _ _ _ _ checked698.1 (.cons _ _ _ _ _ checked699.1 (.cons _ _ _ _ _ checked700.1 (.cons _ _ _ _ _ checked701.1 (.cons _ _ _ _ _ checked702.1 (.cons _ _ _ _ _ checked703.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 643 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3030 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked640.2,checked641.2,checked642.2,checked643.2,checked644.2,checked645.2,checked646.2,checked647.2,checked648.2,checked649.2,checked650.2,checked651.2,checked652.2,checked653.2,checked654.2,checked655.2,checked656.2,checked657.2,checked658.2,checked659.2,checked660.2,checked661.2,checked662.2,checked663.2,checked664.2,checked665.2,checked666.2,checked667.2,checked668.2,checked669.2,checked670.2,checked671.2,checked672.2,checked673.2,checked674.2,checked675.2,checked676.2,checked677.2,checked678.2,checked679.2,checked680.2,checked681.2,checked682.2,checked683.2,checked684.2,checked685.2,checked686.2,checked687.2,checked688.2,checked689.2,checked690.2,checked691.2,checked692.2,checked693.2,checked694.2,checked695.2,checked696.2,checked697.2,checked698.2,checked699.2,checked700.2,checked701.2,checked702.2,checked703.2]
  decide
end ArtifactPadByteGroup10
