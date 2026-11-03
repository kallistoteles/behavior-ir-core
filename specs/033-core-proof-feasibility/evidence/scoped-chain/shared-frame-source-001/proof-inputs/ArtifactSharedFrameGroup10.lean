import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup10
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op640 : List WordIR.Op := [.band 643 482]
def bytes640 : Bytes := ("    let r000002ab: u32 = r00000283 & r000001e2;\n" : String).toByteArray.data.toList
theorem checked640 : bytes640=statementBytes 683 (op640.map lower) ∧ bytes640.length=48 := by core033_kernel_decide
def op641 : List WordIR.Op := [.band 645 380]
def bytes641 : Bytes := ("    let r000002ac: u32 = r00000285 & r0000017c;\n" : String).toByteArray.data.toList
theorem checked641 : bytes641=statementBytes 684 (op641.map lower) ∧ bytes641.length=48 := by core033_kernel_decide
def op642 : List WordIR.Op := [.bxor 683 684]
def bytes642 : Bytes := ("    let r000002ad: u32 = r000002ab ^ r000002ac;\n" : String).toByteArray.data.toList
theorem checked642 : bytes642=statementBytes 685 (op642.map lower) ∧ bytes642.length=48 := by core033_kernel_decide
def op643 : List WordIR.Op := [.band 643 484]
def bytes643 : Bytes := ("    let r000002ae: u32 = r00000283 & r000001e4;\n" : String).toByteArray.data.toList
theorem checked643 : bytes643=statementBytes 686 (op643.map lower) ∧ bytes643.length=48 := by core033_kernel_decide
def op644 : List WordIR.Op := [.band 645 381]
def bytes644 : Bytes := ("    let r000002af: u32 = r00000285 & r0000017d;\n" : String).toByteArray.data.toList
theorem checked644 : bytes644=statementBytes 687 (op644.map lower) ∧ bytes644.length=48 := by core033_kernel_decide
def op645 : List WordIR.Op := [.bxor 686 687]
def bytes645 : Bytes := ("    let r000002b0: u32 = r000002ae ^ r000002af;\n" : String).toByteArray.data.toList
theorem checked645 : bytes645=statementBytes 688 (op645.map lower) ∧ bytes645.length=48 := by core033_kernel_decide
def op646 : List WordIR.Op := [.band 643 486]
def bytes646 : Bytes := ("    let r000002b1: u32 = r00000283 & r000001e6;\n" : String).toByteArray.data.toList
theorem checked646 : bytes646=statementBytes 689 (op646.map lower) ∧ bytes646.length=48 := by core033_kernel_decide
def op647 : List WordIR.Op := [.band 645 382]
def bytes647 : Bytes := ("    let r000002b2: u32 = r00000285 & r0000017e;\n" : String).toByteArray.data.toList
theorem checked647 : bytes647=statementBytes 690 (op647.map lower) ∧ bytes647.length=48 := by core033_kernel_decide
def op648 : List WordIR.Op := [.bxor 689 690]
def bytes648 : Bytes := ("    let r000002b3: u32 = r000002b1 ^ r000002b2;\n" : String).toByteArray.data.toList
theorem checked648 : bytes648=statementBytes 691 (op648.map lower) ∧ bytes648.length=48 := by core033_kernel_decide
def op649 : List WordIR.Op := [.band 643 488]
def bytes649 : Bytes := ("    let r000002b4: u32 = r00000283 & r000001e8;\n" : String).toByteArray.data.toList
theorem checked649 : bytes649=statementBytes 692 (op649.map lower) ∧ bytes649.length=48 := by core033_kernel_decide
def op650 : List WordIR.Op := [.band 645 383]
def bytes650 : Bytes := ("    let r000002b5: u32 = r00000285 & r0000017f;\n" : String).toByteArray.data.toList
theorem checked650 : bytes650=statementBytes 693 (op650.map lower) ∧ bytes650.length=48 := by core033_kernel_decide
def op651 : List WordIR.Op := [.bxor 692 693]
def bytes651 : Bytes := ("    let r000002b6: u32 = r000002b4 ^ r000002b5;\n" : String).toByteArray.data.toList
theorem checked651 : bytes651=statementBytes 694 (op651.map lower) ∧ bytes651.length=48 := by core033_kernel_decide
def op652 : List WordIR.Op := [.band 643 490]
def bytes652 : Bytes := ("    let r000002b7: u32 = r00000283 & r000001ea;\n" : String).toByteArray.data.toList
theorem checked652 : bytes652=statementBytes 695 (op652.map lower) ∧ bytes652.length=48 := by core033_kernel_decide
def op653 : List WordIR.Op := [.bxor 695 693]
def bytes653 : Bytes := ("    let r000002b8: u32 = r000002b7 ^ r000002b5;\n" : String).toByteArray.data.toList
theorem checked653 : bytes653=statementBytes 696 (op653.map lower) ∧ bytes653.length=48 := by core033_kernel_decide
def op654 : List WordIR.Op := [.band 643 492]
def bytes654 : Bytes := ("    let r000002b9: u32 = r00000283 & r000001ec;\n" : String).toByteArray.data.toList
theorem checked654 : bytes654=statementBytes 697 (op654.map lower) ∧ bytes654.length=48 := by core033_kernel_decide
def op655 : List WordIR.Op := [.band 645 384]
def bytes655 : Bytes := ("    let r000002ba: u32 = r00000285 & r00000180;\n" : String).toByteArray.data.toList
theorem checked655 : bytes655=statementBytes 698 (op655.map lower) ∧ bytes655.length=48 := by core033_kernel_decide
def op656 : List WordIR.Op := [.bxor 697 698]
def bytes656 : Bytes := ("    let r000002bb: u32 = r000002b9 ^ r000002ba;\n" : String).toByteArray.data.toList
theorem checked656 : bytes656=statementBytes 699 (op656.map lower) ∧ bytes656.length=48 := by core033_kernel_decide
def op657 : List WordIR.Op := [.band 643 494]
def bytes657 : Bytes := ("    let r000002bc: u32 = r00000283 & r000001ee;\n" : String).toByteArray.data.toList
theorem checked657 : bytes657=statementBytes 700 (op657.map lower) ∧ bytes657.length=48 := by core033_kernel_decide
def op658 : List WordIR.Op := [.band 645 385]
def bytes658 : Bytes := ("    let r000002bd: u32 = r00000285 & r00000181;\n" : String).toByteArray.data.toList
theorem checked658 : bytes658=statementBytes 701 (op658.map lower) ∧ bytes658.length=48 := by core033_kernel_decide
def op659 : List WordIR.Op := [.bxor 700 701]
def bytes659 : Bytes := ("    let r000002be: u32 = r000002bc ^ r000002bd;\n" : String).toByteArray.data.toList
theorem checked659 : bytes659=statementBytes 702 (op659.map lower) ∧ bytes659.length=48 := by core033_kernel_decide
def op660 : List WordIR.Op := [.band 643 496]
def bytes660 : Bytes := ("    let r000002bf: u32 = r00000283 & r000001f0;\n" : String).toByteArray.data.toList
theorem checked660 : bytes660=statementBytes 703 (op660.map lower) ∧ bytes660.length=48 := by core033_kernel_decide
def op661 : List WordIR.Op := [.bxor 703 687]
def bytes661 : Bytes := ("    let r000002c0: u32 = r000002bf ^ r000002af;\n" : String).toByteArray.data.toList
theorem checked661 : bytes661=statementBytes 704 (op661.map lower) ∧ bytes661.length=48 := by core033_kernel_decide
def op662 : List WordIR.Op := [.band 643 498]
def bytes662 : Bytes := ("    let r000002c1: u32 = r00000283 & r000001f2;\n" : String).toByteArray.data.toList
theorem checked662 : bytes662=statementBytes 705 (op662.map lower) ∧ bytes662.length=48 := by core033_kernel_decide
def op663 : List WordIR.Op := [.band 645 386]
def bytes663 : Bytes := ("    let r000002c2: u32 = r00000285 & r00000182;\n" : String).toByteArray.data.toList
theorem checked663 : bytes663=statementBytes 706 (op663.map lower) ∧ bytes663.length=48 := by core033_kernel_decide
def op664 : List WordIR.Op := [.bxor 705 706]
def bytes664 : Bytes := ("    let r000002c3: u32 = r000002c1 ^ r000002c2;\n" : String).toByteArray.data.toList
theorem checked664 : bytes664=statementBytes 707 (op664.map lower) ∧ bytes664.length=48 := by core033_kernel_decide
def op665 : List WordIR.Op := [.band 643 500]
def bytes665 : Bytes := ("    let r000002c4: u32 = r00000283 & r000001f4;\n" : String).toByteArray.data.toList
theorem checked665 : bytes665=statementBytes 708 (op665.map lower) ∧ bytes665.length=48 := by core033_kernel_decide
def op666 : List WordIR.Op := [.band 645 387]
def bytes666 : Bytes := ("    let r000002c5: u32 = r00000285 & r00000183;\n" : String).toByteArray.data.toList
theorem checked666 : bytes666=statementBytes 709 (op666.map lower) ∧ bytes666.length=48 := by core033_kernel_decide
def op667 : List WordIR.Op := [.bxor 708 709]
def bytes667 : Bytes := ("    let r000002c6: u32 = r000002c4 ^ r000002c5;\n" : String).toByteArray.data.toList
theorem checked667 : bytes667=statementBytes 710 (op667.map lower) ∧ bytes667.length=48 := by core033_kernel_decide
def op668 : List WordIR.Op := [.band 643 502]
def bytes668 : Bytes := ("    let r000002c7: u32 = r00000283 & r000001f6;\n" : String).toByteArray.data.toList
theorem checked668 : bytes668=statementBytes 711 (op668.map lower) ∧ bytes668.length=48 := by core033_kernel_decide
def op669 : List WordIR.Op := [.band 645 388]
def bytes669 : Bytes := ("    let r000002c8: u32 = r00000285 & r00000184;\n" : String).toByteArray.data.toList
theorem checked669 : bytes669=statementBytes 712 (op669.map lower) ∧ bytes669.length=48 := by core033_kernel_decide
def op670 : List WordIR.Op := [.bxor 711 712]
def bytes670 : Bytes := ("    let r000002c9: u32 = r000002c7 ^ r000002c8;\n" : String).toByteArray.data.toList
theorem checked670 : bytes670=statementBytes 713 (op670.map lower) ∧ bytes670.length=48 := by core033_kernel_decide
def op671 : List WordIR.Op := [.band 643 504]
def bytes671 : Bytes := ("    let r000002ca: u32 = r00000283 & r000001f8;\n" : String).toByteArray.data.toList
theorem checked671 : bytes671=statementBytes 714 (op671.map lower) ∧ bytes671.length=48 := by core033_kernel_decide
def op672 : List WordIR.Op := [.band 645 389]
def bytes672 : Bytes := ("    let r000002cb: u32 = r00000285 & r00000185;\n" : String).toByteArray.data.toList
theorem checked672 : bytes672=statementBytes 715 (op672.map lower) ∧ bytes672.length=48 := by core033_kernel_decide
def op673 : List WordIR.Op := [.bxor 714 715]
def bytes673 : Bytes := ("    let r000002cc: u32 = r000002ca ^ r000002cb;\n" : String).toByteArray.data.toList
theorem checked673 : bytes673=statementBytes 716 (op673.map lower) ∧ bytes673.length=48 := by core033_kernel_decide
def op674 : List WordIR.Op := [.band 643 506]
def bytes674 : Bytes := ("    let r000002cd: u32 = r00000283 & r000001fa;\n" : String).toByteArray.data.toList
theorem checked674 : bytes674=statementBytes 717 (op674.map lower) ∧ bytes674.length=48 := by core033_kernel_decide
def op675 : List WordIR.Op := [.band 645 390]
def bytes675 : Bytes := ("    let r000002ce: u32 = r00000285 & r00000186;\n" : String).toByteArray.data.toList
theorem checked675 : bytes675=statementBytes 718 (op675.map lower) ∧ bytes675.length=48 := by core033_kernel_decide
def op676 : List WordIR.Op := [.bxor 717 718]
def bytes676 : Bytes := ("    let r000002cf: u32 = r000002cd ^ r000002ce;\n" : String).toByteArray.data.toList
theorem checked676 : bytes676=statementBytes 719 (op676.map lower) ∧ bytes676.length=48 := by core033_kernel_decide
def op677 : List WordIR.Op := [.band 643 508]
def bytes677 : Bytes := ("    let r000002d0: u32 = r00000283 & r000001fc;\n" : String).toByteArray.data.toList
theorem checked677 : bytes677=statementBytes 720 (op677.map lower) ∧ bytes677.length=48 := by core033_kernel_decide
def op678 : List WordIR.Op := [.bxor 720 678]
def bytes678 : Bytes := ("    let r000002d1: u32 = r000002d0 ^ r000002a6;\n" : String).toByteArray.data.toList
theorem checked678 : bytes678=statementBytes 721 (op678.map lower) ∧ bytes678.length=48 := by core033_kernel_decide
def op679 : List WordIR.Op := [.band 643 510]
def bytes679 : Bytes := ("    let r000002d2: u32 = r00000283 & r000001fe;\n" : String).toByteArray.data.toList
theorem checked679 : bytes679=statementBytes 722 (op679.map lower) ∧ bytes679.length=48 := by core033_kernel_decide
def op680 : List WordIR.Op := [.bxor 722 698]
def bytes680 : Bytes := ("    let r000002d3: u32 = r000002d2 ^ r000002ba;\n" : String).toByteArray.data.toList
theorem checked680 : bytes680=statementBytes 723 (op680.map lower) ∧ bytes680.length=48 := by core033_kernel_decide
def op681 : List WordIR.Op := [.band 643 512]
def bytes681 : Bytes := ("    let r000002d4: u32 = r00000283 & r00000200;\n" : String).toByteArray.data.toList
theorem checked681 : bytes681=statementBytes 724 (op681.map lower) ∧ bytes681.length=48 := by core033_kernel_decide
def op682 : List WordIR.Op := [.band 645 391]
def bytes682 : Bytes := ("    let r000002d5: u32 = r00000285 & r00000187;\n" : String).toByteArray.data.toList
theorem checked682 : bytes682=statementBytes 725 (op682.map lower) ∧ bytes682.length=48 := by core033_kernel_decide
def op683 : List WordIR.Op := [.bxor 724 725]
def bytes683 : Bytes := ("    let r000002d6: u32 = r000002d4 ^ r000002d5;\n" : String).toByteArray.data.toList
theorem checked683 : bytes683=statementBytes 726 (op683.map lower) ∧ bytes683.length=48 := by core033_kernel_decide
def op684 : List WordIR.Op := [.band 643 514]
def bytes684 : Bytes := ("    let r000002d7: u32 = r00000283 & r00000202;\n" : String).toByteArray.data.toList
theorem checked684 : bytes684=statementBytes 727 (op684.map lower) ∧ bytes684.length=48 := by core033_kernel_decide
def op685 : List WordIR.Op := [.band 645 392]
def bytes685 : Bytes := ("    let r000002d8: u32 = r00000285 & r00000188;\n" : String).toByteArray.data.toList
theorem checked685 : bytes685=statementBytes 728 (op685.map lower) ∧ bytes685.length=48 := by core033_kernel_decide
def op686 : List WordIR.Op := [.bxor 727 728]
def bytes686 : Bytes := ("    let r000002d9: u32 = r000002d7 ^ r000002d8;\n" : String).toByteArray.data.toList
theorem checked686 : bytes686=statementBytes 729 (op686.map lower) ∧ bytes686.length=48 := by core033_kernel_decide
def op687 : List WordIR.Op := [.band 643 516]
def bytes687 : Bytes := ("    let r000002da: u32 = r00000283 & r00000204;\n" : String).toByteArray.data.toList
theorem checked687 : bytes687=statementBytes 730 (op687.map lower) ∧ bytes687.length=48 := by core033_kernel_decide
def op688 : List WordIR.Op := [.band 645 49]
def bytes688 : Bytes := ("    let r000002db: u32 = r00000285 & r00000031;\n" : String).toByteArray.data.toList
theorem checked688 : bytes688=statementBytes 731 (op688.map lower) ∧ bytes688.length=48 := by core033_kernel_decide
def op689 : List WordIR.Op := [.bxor 730 731]
def bytes689 : Bytes := ("    let r000002dc: u32 = r000002da ^ r000002db;\n" : String).toByteArray.data.toList
theorem checked689 : bytes689=statementBytes 732 (op689.map lower) ∧ bytes689.length=48 := by core033_kernel_decide
def op690 : List WordIR.Op := [.band 643 518]
def bytes690 : Bytes := ("    let r000002dd: u32 = r00000283 & r00000206;\n" : String).toByteArray.data.toList
theorem checked690 : bytes690=statementBytes 733 (op690.map lower) ∧ bytes690.length=48 := by core033_kernel_decide
def op691 : List WordIR.Op := [.band 645 393]
def bytes691 : Bytes := ("    let r000002de: u32 = r00000285 & r00000189;\n" : String).toByteArray.data.toList
theorem checked691 : bytes691=statementBytes 734 (op691.map lower) ∧ bytes691.length=48 := by core033_kernel_decide
def op692 : List WordIR.Op := [.bxor 733 734]
def bytes692 : Bytes := ("    let r000002df: u32 = r000002dd ^ r000002de;\n" : String).toByteArray.data.toList
theorem checked692 : bytes692=statementBytes 735 (op692.map lower) ∧ bytes692.length=48 := by core033_kernel_decide
def op693 : List WordIR.Op := [.band 643 520]
def bytes693 : Bytes := ("    let r000002e0: u32 = r00000283 & r00000208;\n" : String).toByteArray.data.toList
theorem checked693 : bytes693=statementBytes 736 (op693.map lower) ∧ bytes693.length=48 := by core033_kernel_decide
def op694 : List WordIR.Op := [.bxor 736 731]
def bytes694 : Bytes := ("    let r000002e1: u32 = r000002e0 ^ r000002db;\n" : String).toByteArray.data.toList
theorem checked694 : bytes694=statementBytes 737 (op694.map lower) ∧ bytes694.length=48 := by core033_kernel_decide
def op695 : List WordIR.Op := [.band 643 522]
def bytes695 : Bytes := ("    let r000002e2: u32 = r00000283 & r0000020a;\n" : String).toByteArray.data.toList
theorem checked695 : bytes695=statementBytes 738 (op695.map lower) ∧ bytes695.length=48 := by core033_kernel_decide
def op696 : List WordIR.Op := [.band 645 395]
def bytes696 : Bytes := ("    let r000002e3: u32 = r00000285 & r0000018b;\n" : String).toByteArray.data.toList
theorem checked696 : bytes696=statementBytes 739 (op696.map lower) ∧ bytes696.length=48 := by core033_kernel_decide
def op697 : List WordIR.Op := [.bxor 738 739]
def bytes697 : Bytes := ("    let r000002e4: u32 = r000002e2 ^ r000002e3;\n" : String).toByteArray.data.toList
theorem checked697 : bytes697=statementBytes 740 (op697.map lower) ∧ bytes697.length=48 := by core033_kernel_decide
def op698 : List WordIR.Op := [.band 643 524]
def bytes698 : Bytes := ("    let r000002e5: u32 = r00000283 & r0000020c;\n" : String).toByteArray.data.toList
theorem checked698 : bytes698=statementBytes 741 (op698.map lower) ∧ bytes698.length=48 := by core033_kernel_decide
def op699 : List WordIR.Op := [.band 645 397]
def bytes699 : Bytes := ("    let r000002e6: u32 = r00000285 & r0000018d;\n" : String).toByteArray.data.toList
theorem checked699 : bytes699=statementBytes 742 (op699.map lower) ∧ bytes699.length=48 := by core033_kernel_decide
def op700 : List WordIR.Op := [.bxor 741 742]
def bytes700 : Bytes := ("    let r000002e7: u32 = r000002e5 ^ r000002e6;\n" : String).toByteArray.data.toList
theorem checked700 : bytes700=statementBytes 743 (op700.map lower) ∧ bytes700.length=48 := by core033_kernel_decide
def op701 : List WordIR.Op := [.band 643 526]
def bytes701 : Bytes := ("    let r000002e8: u32 = r00000283 & r0000020e;\n" : String).toByteArray.data.toList
theorem checked701 : bytes701=statementBytes 744 (op701.map lower) ∧ bytes701.length=48 := by core033_kernel_decide
def op702 : List WordIR.Op := [.band 645 398]
def bytes702 : Bytes := ("    let r000002e9: u32 = r00000285 & r0000018e;\n" : String).toByteArray.data.toList
theorem checked702 : bytes702=statementBytes 745 (op702.map lower) ∧ bytes702.length=48 := by core033_kernel_decide
def op703 : List WordIR.Op := [.bxor 744 745]
def bytes703 : Bytes := ("    let r000002ea: u32 = r000002e8 ^ r000002e9;\n" : String).toByteArray.data.toList
theorem checked703 : bytes703=statementBytes 746 (op703.map lower) ∧ bytes703.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op640,op641,op642,op643,op644,op645,op646,op647,op648,op649,op650,op651,op652,op653,op654,op655,op656,op657,op658,op659,op660,op661,op662,op663,op664,op665,op666,op667,op668,op669,op670,op671,op672,op673,op674,op675,op676,op677,op678,op679,op680,op681,op682,op683,op684,op685,op686,op687,op688,op689,op690,op691,op692,op693,op694,op695,op696,op697,op698,op699,op700,op701,op702,op703]
def chunks : List Bytes := [bytes640,bytes641,bytes642,bytes643,bytes644,bytes645,bytes646,bytes647,bytes648,bytes649,bytes650,bytes651,bytes652,bytes653,bytes654,bytes655,bytes656,bytes657,bytes658,bytes659,bytes660,bytes661,bytes662,bytes663,bytes664,bytes665,bytes666,bytes667,bytes668,bytes669,bytes670,bytes671,bytes672,bytes673,bytes674,bytes675,bytes676,bytes677,bytes678,bytes679,bytes680,bytes681,bytes682,bytes683,bytes684,bytes685,bytes686,bytes687,bytes688,bytes689,bytes690,bytes691,bytes692,bytes693,bytes694,bytes695,bytes696,bytes697,bytes698,bytes699,bytes700,bytes701,bytes702,bytes703]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 683 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked640.1 (.cons _ _ _ _ _ checked641.1 (.cons _ _ _ _ _ checked642.1 (.cons _ _ _ _ _ checked643.1 (.cons _ _ _ _ _ checked644.1 (.cons _ _ _ _ _ checked645.1 (.cons _ _ _ _ _ checked646.1 (.cons _ _ _ _ _ checked647.1 (.cons _ _ _ _ _ checked648.1 (.cons _ _ _ _ _ checked649.1 (.cons _ _ _ _ _ checked650.1 (.cons _ _ _ _ _ checked651.1 (.cons _ _ _ _ _ checked652.1 (.cons _ _ _ _ _ checked653.1 (.cons _ _ _ _ _ checked654.1 (.cons _ _ _ _ _ checked655.1 (.cons _ _ _ _ _ checked656.1 (.cons _ _ _ _ _ checked657.1 (.cons _ _ _ _ _ checked658.1 (.cons _ _ _ _ _ checked659.1 (.cons _ _ _ _ _ checked660.1 (.cons _ _ _ _ _ checked661.1 (.cons _ _ _ _ _ checked662.1 (.cons _ _ _ _ _ checked663.1 (.cons _ _ _ _ _ checked664.1 (.cons _ _ _ _ _ checked665.1 (.cons _ _ _ _ _ checked666.1 (.cons _ _ _ _ _ checked667.1 (.cons _ _ _ _ _ checked668.1 (.cons _ _ _ _ _ checked669.1 (.cons _ _ _ _ _ checked670.1 (.cons _ _ _ _ _ checked671.1 (.cons _ _ _ _ _ checked672.1 (.cons _ _ _ _ _ checked673.1 (.cons _ _ _ _ _ checked674.1 (.cons _ _ _ _ _ checked675.1 (.cons _ _ _ _ _ checked676.1 (.cons _ _ _ _ _ checked677.1 (.cons _ _ _ _ _ checked678.1 (.cons _ _ _ _ _ checked679.1 (.cons _ _ _ _ _ checked680.1 (.cons _ _ _ _ _ checked681.1 (.cons _ _ _ _ _ checked682.1 (.cons _ _ _ _ _ checked683.1 (.cons _ _ _ _ _ checked684.1 (.cons _ _ _ _ _ checked685.1 (.cons _ _ _ _ _ checked686.1 (.cons _ _ _ _ _ checked687.1 (.cons _ _ _ _ _ checked688.1 (.cons _ _ _ _ _ checked689.1 (.cons _ _ _ _ _ checked690.1 (.cons _ _ _ _ _ checked691.1 (.cons _ _ _ _ _ checked692.1 (.cons _ _ _ _ _ checked693.1 (.cons _ _ _ _ _ checked694.1 (.cons _ _ _ _ _ checked695.1 (.cons _ _ _ _ _ checked696.1 (.cons _ _ _ _ _ checked697.1 (.cons _ _ _ _ _ checked698.1 (.cons _ _ _ _ _ checked699.1 (.cons _ _ _ _ _ checked700.1 (.cons _ _ _ _ _ checked701.1 (.cons _ _ _ _ _ checked702.1 (.cons _ _ _ _ _ checked703.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 683 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3072 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked640.2,checked641.2,checked642.2,checked643.2,checked644.2,checked645.2,checked646.2,checked647.2,checked648.2,checked649.2,checked650.2,checked651.2,checked652.2,checked653.2,checked654.2,checked655.2,checked656.2,checked657.2,checked658.2,checked659.2,checked660.2,checked661.2,checked662.2,checked663.2,checked664.2,checked665.2,checked666.2,checked667.2,checked668.2,checked669.2,checked670.2,checked671.2,checked672.2,checked673.2,checked674.2,checked675.2,checked676.2,checked677.2,checked678.2,checked679.2,checked680.2,checked681.2,checked682.2,checked683.2,checked684.2,checked685.2,checked686.2,checked687.2,checked688.2,checked689.2,checked690.2,checked691.2,checked692.2,checked693.2,checked694.2,checked695.2,checked696.2,checked697.2,checked698.2,checked699.2,checked700.2,checked701.2,checked702.2,checked703.2]
  decide
end ArtifactSharedFrameGroup10
