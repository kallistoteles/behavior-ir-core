import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup149
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9536 : List WordIR.Op := [.bnot 9578]
def bytes9536 : Bytes := ("    let r0000256b: u32 = !r0000256a;\n" : String).toByteArray.data.toList
theorem checked9536 : bytes9536=statementBytes 9579 (op9536.map lower) ∧ bytes9536.length=37 := by core033_kernel_decide
def op9537 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9537 : Bytes := ("    let r0000256c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9537 : bytes9537=statementBytes 9580 (op9537.map lower) ∧ bytes9537.length=41 := by core033_kernel_decide
def op9538 : List WordIR.Op := [.band 9579 9580]
def bytes9538 : Bytes := ("    let r0000256d: u32 = r0000256b & r0000256c;\n" : String).toByteArray.data.toList
theorem checked9538 : bytes9538=statementBytes 9581 (op9538.map lower) ∧ bytes9538.length=48 := by core033_kernel_decide
def op9539 : List WordIR.Op := [.bxor 9575 9581]
def bytes9539 : Bytes := ("    let r0000256e: u32 = r00002567 ^ r0000256d;\n" : String).toByteArray.data.toList
theorem checked9539 : bytes9539=statementBytes 9582 (op9539.map lower) ∧ bytes9539.length=48 := by core033_kernel_decide
def op9540 : List WordIR.Op := [.bnot 9406]
def bytes9540 : Bytes := ("    let r0000256f: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9540 : bytes9540=statementBytes 9583 (op9540.map lower) ∧ bytes9540.length=37 := by core033_kernel_decide
def op9541 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9541 : Bytes := ("    let r00002570: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9541 : bytes9541=statementBytes 9584 (op9541.map lower) ∧ bytes9541.length=41 := by core033_kernel_decide
def op9542 : List WordIR.Op := [.badd 9583 9584]
def bytes9542 : Bytes := ("    let r00002571: u32 = r0000256f.wrapping_add(r00002570);\n" : String).toByteArray.data.toList
theorem checked9542 : bytes9542=statementBytes 9585 (op9542.map lower) ∧ bytes9542.length=60 := by core033_kernel_decide
def op9543 : List WordIR.Op := [.band 9585 16]
def bytes9543 : Bytes := ("    let r00002572: u32 = r00002571 & r00000010;\n" : String).toByteArray.data.toList
theorem checked9543 : bytes9543=statementBytes 9586 (op9543.map lower) ∧ bytes9543.length=48 := by core033_kernel_decide
def op9544 : List WordIR.Op := [.bnot 9406]
def bytes9544 : Bytes := ("    let r00002573: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9544 : bytes9544=statementBytes 9587 (op9544.map lower) ∧ bytes9544.length=37 := by core033_kernel_decide
def op9545 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9545 : Bytes := ("    let r00002574: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9545 : bytes9545=statementBytes 9588 (op9545.map lower) ∧ bytes9545.length=41 := by core033_kernel_decide
def op9546 : List WordIR.Op := [.badd 9587 9588]
def bytes9546 : Bytes := ("    let r00002575: u32 = r00002573.wrapping_add(r00002574);\n" : String).toByteArray.data.toList
theorem checked9546 : bytes9546=statementBytes 9589 (op9546.map lower) ∧ bytes9546.length=60 := by core033_kernel_decide
def op9547 : List WordIR.Op := [.bnot 9589]
def bytes9547 : Bytes := ("    let r00002576: u32 = !r00002575;\n" : String).toByteArray.data.toList
theorem checked9547 : bytes9547=statementBytes 9590 (op9547.map lower) ∧ bytes9547.length=37 := by core033_kernel_decide
def op9548 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9548 : Bytes := ("    let r00002577: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9548 : bytes9548=statementBytes 9591 (op9548.map lower) ∧ bytes9548.length=41 := by core033_kernel_decide
def op9549 : List WordIR.Op := [.band 9590 9591]
def bytes9549 : Bytes := ("    let r00002578: u32 = r00002576 & r00002577;\n" : String).toByteArray.data.toList
theorem checked9549 : bytes9549=statementBytes 9592 (op9549.map lower) ∧ bytes9549.length=48 := by core033_kernel_decide
def op9550 : List WordIR.Op := [.bxor 9586 9592]
def bytes9550 : Bytes := ("    let r00002579: u32 = r00002572 ^ r00002578;\n" : String).toByteArray.data.toList
theorem checked9550 : bytes9550=statementBytes 9593 (op9550.map lower) ∧ bytes9550.length=48 := by core033_kernel_decide
def op9551 : List WordIR.Op := [.bnot 9406]
def bytes9551 : Bytes := ("    let r0000257a: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9551 : bytes9551=statementBytes 9594 (op9551.map lower) ∧ bytes9551.length=37 := by core033_kernel_decide
def op9552 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9552 : Bytes := ("    let r0000257b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9552 : bytes9552=statementBytes 9595 (op9552.map lower) ∧ bytes9552.length=41 := by core033_kernel_decide
def op9553 : List WordIR.Op := [.badd 9594 9595]
def bytes9553 : Bytes := ("    let r0000257c: u32 = r0000257a.wrapping_add(r0000257b);\n" : String).toByteArray.data.toList
theorem checked9553 : bytes9553=statementBytes 9596 (op9553.map lower) ∧ bytes9553.length=60 := by core033_kernel_decide
def op9554 : List WordIR.Op := [.band 9596 17]
def bytes9554 : Bytes := ("    let r0000257d: u32 = r0000257c & r00000011;\n" : String).toByteArray.data.toList
theorem checked9554 : bytes9554=statementBytes 9597 (op9554.map lower) ∧ bytes9554.length=48 := by core033_kernel_decide
def op9555 : List WordIR.Op := [.bnot 9406]
def bytes9555 : Bytes := ("    let r0000257e: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9555 : bytes9555=statementBytes 9598 (op9555.map lower) ∧ bytes9555.length=37 := by core033_kernel_decide
def op9556 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9556 : Bytes := ("    let r0000257f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9556 : bytes9556=statementBytes 9599 (op9556.map lower) ∧ bytes9556.length=41 := by core033_kernel_decide
def op9557 : List WordIR.Op := [.badd 9598 9599]
def bytes9557 : Bytes := ("    let r00002580: u32 = r0000257e.wrapping_add(r0000257f);\n" : String).toByteArray.data.toList
theorem checked9557 : bytes9557=statementBytes 9600 (op9557.map lower) ∧ bytes9557.length=60 := by core033_kernel_decide
def op9558 : List WordIR.Op := [.bnot 9600]
def bytes9558 : Bytes := ("    let r00002581: u32 = !r00002580;\n" : String).toByteArray.data.toList
theorem checked9558 : bytes9558=statementBytes 9601 (op9558.map lower) ∧ bytes9558.length=37 := by core033_kernel_decide
def op9559 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9559 : Bytes := ("    let r00002582: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9559 : bytes9559=statementBytes 9602 (op9559.map lower) ∧ bytes9559.length=41 := by core033_kernel_decide
def op9560 : List WordIR.Op := [.band 9601 9602]
def bytes9560 : Bytes := ("    let r00002583: u32 = r00002581 & r00002582;\n" : String).toByteArray.data.toList
theorem checked9560 : bytes9560=statementBytes 9603 (op9560.map lower) ∧ bytes9560.length=48 := by core033_kernel_decide
def op9561 : List WordIR.Op := [.bxor 9597 9603]
def bytes9561 : Bytes := ("    let r00002584: u32 = r0000257d ^ r00002583;\n" : String).toByteArray.data.toList
theorem checked9561 : bytes9561=statementBytes 9604 (op9561.map lower) ∧ bytes9561.length=48 := by core033_kernel_decide
def op9562 : List WordIR.Op := [.bnot 9406]
def bytes9562 : Bytes := ("    let r00002585: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9562 : bytes9562=statementBytes 9605 (op9562.map lower) ∧ bytes9562.length=37 := by core033_kernel_decide
def op9563 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9563 : Bytes := ("    let r00002586: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9563 : bytes9563=statementBytes 9606 (op9563.map lower) ∧ bytes9563.length=41 := by core033_kernel_decide
def op9564 : List WordIR.Op := [.badd 9605 9606]
def bytes9564 : Bytes := ("    let r00002587: u32 = r00002585.wrapping_add(r00002586);\n" : String).toByteArray.data.toList
theorem checked9564 : bytes9564=statementBytes 9607 (op9564.map lower) ∧ bytes9564.length=60 := by core033_kernel_decide
def op9565 : List WordIR.Op := [.band 9607 18]
def bytes9565 : Bytes := ("    let r00002588: u32 = r00002587 & r00000012;\n" : String).toByteArray.data.toList
theorem checked9565 : bytes9565=statementBytes 9608 (op9565.map lower) ∧ bytes9565.length=48 := by core033_kernel_decide
def op9566 : List WordIR.Op := [.bnot 9406]
def bytes9566 : Bytes := ("    let r00002589: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9566 : bytes9566=statementBytes 9609 (op9566.map lower) ∧ bytes9566.length=37 := by core033_kernel_decide
def op9567 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9567 : Bytes := ("    let r0000258a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9567 : bytes9567=statementBytes 9610 (op9567.map lower) ∧ bytes9567.length=41 := by core033_kernel_decide
def op9568 : List WordIR.Op := [.badd 9609 9610]
def bytes9568 : Bytes := ("    let r0000258b: u32 = r00002589.wrapping_add(r0000258a);\n" : String).toByteArray.data.toList
theorem checked9568 : bytes9568=statementBytes 9611 (op9568.map lower) ∧ bytes9568.length=60 := by core033_kernel_decide
def op9569 : List WordIR.Op := [.bnot 9611]
def bytes9569 : Bytes := ("    let r0000258c: u32 = !r0000258b;\n" : String).toByteArray.data.toList
theorem checked9569 : bytes9569=statementBytes 9612 (op9569.map lower) ∧ bytes9569.length=37 := by core033_kernel_decide
def op9570 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9570 : Bytes := ("    let r0000258d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9570 : bytes9570=statementBytes 9613 (op9570.map lower) ∧ bytes9570.length=41 := by core033_kernel_decide
def op9571 : List WordIR.Op := [.band 9612 9613]
def bytes9571 : Bytes := ("    let r0000258e: u32 = r0000258c & r0000258d;\n" : String).toByteArray.data.toList
theorem checked9571 : bytes9571=statementBytes 9614 (op9571.map lower) ∧ bytes9571.length=48 := by core033_kernel_decide
def op9572 : List WordIR.Op := [.bxor 9608 9614]
def bytes9572 : Bytes := ("    let r0000258f: u32 = r00002588 ^ r0000258e;\n" : String).toByteArray.data.toList
theorem checked9572 : bytes9572=statementBytes 9615 (op9572.map lower) ∧ bytes9572.length=48 := by core033_kernel_decide
def op9573 : List WordIR.Op := [.bnot 9406]
def bytes9573 : Bytes := ("    let r00002590: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9573 : bytes9573=statementBytes 9616 (op9573.map lower) ∧ bytes9573.length=37 := by core033_kernel_decide
def op9574 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9574 : Bytes := ("    let r00002591: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9574 : bytes9574=statementBytes 9617 (op9574.map lower) ∧ bytes9574.length=41 := by core033_kernel_decide
def op9575 : List WordIR.Op := [.badd 9616 9617]
def bytes9575 : Bytes := ("    let r00002592: u32 = r00002590.wrapping_add(r00002591);\n" : String).toByteArray.data.toList
theorem checked9575 : bytes9575=statementBytes 9618 (op9575.map lower) ∧ bytes9575.length=60 := by core033_kernel_decide
def op9576 : List WordIR.Op := [.band 9618 19]
def bytes9576 : Bytes := ("    let r00002593: u32 = r00002592 & r00000013;\n" : String).toByteArray.data.toList
theorem checked9576 : bytes9576=statementBytes 9619 (op9576.map lower) ∧ bytes9576.length=48 := by core033_kernel_decide
def op9577 : List WordIR.Op := [.bnot 9406]
def bytes9577 : Bytes := ("    let r00002594: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9577 : bytes9577=statementBytes 9620 (op9577.map lower) ∧ bytes9577.length=37 := by core033_kernel_decide
def op9578 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9578 : Bytes := ("    let r00002595: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9578 : bytes9578=statementBytes 9621 (op9578.map lower) ∧ bytes9578.length=41 := by core033_kernel_decide
def op9579 : List WordIR.Op := [.badd 9620 9621]
def bytes9579 : Bytes := ("    let r00002596: u32 = r00002594.wrapping_add(r00002595);\n" : String).toByteArray.data.toList
theorem checked9579 : bytes9579=statementBytes 9622 (op9579.map lower) ∧ bytes9579.length=60 := by core033_kernel_decide
def op9580 : List WordIR.Op := [.bnot 9622]
def bytes9580 : Bytes := ("    let r00002597: u32 = !r00002596;\n" : String).toByteArray.data.toList
theorem checked9580 : bytes9580=statementBytes 9623 (op9580.map lower) ∧ bytes9580.length=37 := by core033_kernel_decide
def op9581 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9581 : Bytes := ("    let r00002598: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9581 : bytes9581=statementBytes 9624 (op9581.map lower) ∧ bytes9581.length=41 := by core033_kernel_decide
def op9582 : List WordIR.Op := [.band 9623 9624]
def bytes9582 : Bytes := ("    let r00002599: u32 = r00002597 & r00002598;\n" : String).toByteArray.data.toList
theorem checked9582 : bytes9582=statementBytes 9625 (op9582.map lower) ∧ bytes9582.length=48 := by core033_kernel_decide
def op9583 : List WordIR.Op := [.bxor 9619 9625]
def bytes9583 : Bytes := ("    let r0000259a: u32 = r00002593 ^ r00002599;\n" : String).toByteArray.data.toList
theorem checked9583 : bytes9583=statementBytes 9626 (op9583.map lower) ∧ bytes9583.length=48 := by core033_kernel_decide
def op9584 : List WordIR.Op := [.bnot 9406]
def bytes9584 : Bytes := ("    let r0000259b: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9584 : bytes9584=statementBytes 9627 (op9584.map lower) ∧ bytes9584.length=37 := by core033_kernel_decide
def op9585 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9585 : Bytes := ("    let r0000259c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9585 : bytes9585=statementBytes 9628 (op9585.map lower) ∧ bytes9585.length=41 := by core033_kernel_decide
def op9586 : List WordIR.Op := [.badd 9627 9628]
def bytes9586 : Bytes := ("    let r0000259d: u32 = r0000259b.wrapping_add(r0000259c);\n" : String).toByteArray.data.toList
theorem checked9586 : bytes9586=statementBytes 9629 (op9586.map lower) ∧ bytes9586.length=60 := by core033_kernel_decide
def op9587 : List WordIR.Op := [.band 9629 20]
def bytes9587 : Bytes := ("    let r0000259e: u32 = r0000259d & r00000014;\n" : String).toByteArray.data.toList
theorem checked9587 : bytes9587=statementBytes 9630 (op9587.map lower) ∧ bytes9587.length=48 := by core033_kernel_decide
def op9588 : List WordIR.Op := [.bnot 9406]
def bytes9588 : Bytes := ("    let r0000259f: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9588 : bytes9588=statementBytes 9631 (op9588.map lower) ∧ bytes9588.length=37 := by core033_kernel_decide
def op9589 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9589 : Bytes := ("    let r000025a0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9589 : bytes9589=statementBytes 9632 (op9589.map lower) ∧ bytes9589.length=41 := by core033_kernel_decide
def op9590 : List WordIR.Op := [.badd 9631 9632]
def bytes9590 : Bytes := ("    let r000025a1: u32 = r0000259f.wrapping_add(r000025a0);\n" : String).toByteArray.data.toList
theorem checked9590 : bytes9590=statementBytes 9633 (op9590.map lower) ∧ bytes9590.length=60 := by core033_kernel_decide
def op9591 : List WordIR.Op := [.bnot 9633]
def bytes9591 : Bytes := ("    let r000025a2: u32 = !r000025a1;\n" : String).toByteArray.data.toList
theorem checked9591 : bytes9591=statementBytes 9634 (op9591.map lower) ∧ bytes9591.length=37 := by core033_kernel_decide
def op9592 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9592 : Bytes := ("    let r000025a3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9592 : bytes9592=statementBytes 9635 (op9592.map lower) ∧ bytes9592.length=41 := by core033_kernel_decide
def op9593 : List WordIR.Op := [.band 9634 9635]
def bytes9593 : Bytes := ("    let r000025a4: u32 = r000025a2 & r000025a3;\n" : String).toByteArray.data.toList
theorem checked9593 : bytes9593=statementBytes 9636 (op9593.map lower) ∧ bytes9593.length=48 := by core033_kernel_decide
def op9594 : List WordIR.Op := [.bxor 9630 9636]
def bytes9594 : Bytes := ("    let r000025a5: u32 = r0000259e ^ r000025a4;\n" : String).toByteArray.data.toList
theorem checked9594 : bytes9594=statementBytes 9637 (op9594.map lower) ∧ bytes9594.length=48 := by core033_kernel_decide
def op9595 : List WordIR.Op := [.bnot 9406]
def bytes9595 : Bytes := ("    let r000025a6: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9595 : bytes9595=statementBytes 9638 (op9595.map lower) ∧ bytes9595.length=37 := by core033_kernel_decide
def op9596 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9596 : Bytes := ("    let r000025a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9596 : bytes9596=statementBytes 9639 (op9596.map lower) ∧ bytes9596.length=41 := by core033_kernel_decide
def op9597 : List WordIR.Op := [.badd 9638 9639]
def bytes9597 : Bytes := ("    let r000025a8: u32 = r000025a6.wrapping_add(r000025a7);\n" : String).toByteArray.data.toList
theorem checked9597 : bytes9597=statementBytes 9640 (op9597.map lower) ∧ bytes9597.length=60 := by core033_kernel_decide
def op9598 : List WordIR.Op := [.band 9640 21]
def bytes9598 : Bytes := ("    let r000025a9: u32 = r000025a8 & r00000015;\n" : String).toByteArray.data.toList
theorem checked9598 : bytes9598=statementBytes 9641 (op9598.map lower) ∧ bytes9598.length=48 := by core033_kernel_decide
def op9599 : List WordIR.Op := [.bnot 9406]
def bytes9599 : Bytes := ("    let r000025aa: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9599 : bytes9599=statementBytes 9642 (op9599.map lower) ∧ bytes9599.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9536,op9537,op9538,op9539,op9540,op9541,op9542,op9543,op9544,op9545,op9546,op9547,op9548,op9549,op9550,op9551,op9552,op9553,op9554,op9555,op9556,op9557,op9558,op9559,op9560,op9561,op9562,op9563,op9564,op9565,op9566,op9567,op9568,op9569,op9570,op9571,op9572,op9573,op9574,op9575,op9576,op9577,op9578,op9579,op9580,op9581,op9582,op9583,op9584,op9585,op9586,op9587,op9588,op9589,op9590,op9591,op9592,op9593,op9594,op9595,op9596,op9597,op9598,op9599]
def chunks : List Bytes := [bytes9536,bytes9537,bytes9538,bytes9539,bytes9540,bytes9541,bytes9542,bytes9543,bytes9544,bytes9545,bytes9546,bytes9547,bytes9548,bytes9549,bytes9550,bytes9551,bytes9552,bytes9553,bytes9554,bytes9555,bytes9556,bytes9557,bytes9558,bytes9559,bytes9560,bytes9561,bytes9562,bytes9563,bytes9564,bytes9565,bytes9566,bytes9567,bytes9568,bytes9569,bytes9570,bytes9571,bytes9572,bytes9573,bytes9574,bytes9575,bytes9576,bytes9577,bytes9578,bytes9579,bytes9580,bytes9581,bytes9582,bytes9583,bytes9584,bytes9585,bytes9586,bytes9587,bytes9588,bytes9589,bytes9590,bytes9591,bytes9592,bytes9593,bytes9594,bytes9595,bytes9596,bytes9597,bytes9598,bytes9599]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9579 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9536.1 (.cons _ _ _ _ _ checked9537.1 (.cons _ _ _ _ _ checked9538.1 (.cons _ _ _ _ _ checked9539.1 (.cons _ _ _ _ _ checked9540.1 (.cons _ _ _ _ _ checked9541.1 (.cons _ _ _ _ _ checked9542.1 (.cons _ _ _ _ _ checked9543.1 (.cons _ _ _ _ _ checked9544.1 (.cons _ _ _ _ _ checked9545.1 (.cons _ _ _ _ _ checked9546.1 (.cons _ _ _ _ _ checked9547.1 (.cons _ _ _ _ _ checked9548.1 (.cons _ _ _ _ _ checked9549.1 (.cons _ _ _ _ _ checked9550.1 (.cons _ _ _ _ _ checked9551.1 (.cons _ _ _ _ _ checked9552.1 (.cons _ _ _ _ _ checked9553.1 (.cons _ _ _ _ _ checked9554.1 (.cons _ _ _ _ _ checked9555.1 (.cons _ _ _ _ _ checked9556.1 (.cons _ _ _ _ _ checked9557.1 (.cons _ _ _ _ _ checked9558.1 (.cons _ _ _ _ _ checked9559.1 (.cons _ _ _ _ _ checked9560.1 (.cons _ _ _ _ _ checked9561.1 (.cons _ _ _ _ _ checked9562.1 (.cons _ _ _ _ _ checked9563.1 (.cons _ _ _ _ _ checked9564.1 (.cons _ _ _ _ _ checked9565.1 (.cons _ _ _ _ _ checked9566.1 (.cons _ _ _ _ _ checked9567.1 (.cons _ _ _ _ _ checked9568.1 (.cons _ _ _ _ _ checked9569.1 (.cons _ _ _ _ _ checked9570.1 (.cons _ _ _ _ _ checked9571.1 (.cons _ _ _ _ _ checked9572.1 (.cons _ _ _ _ _ checked9573.1 (.cons _ _ _ _ _ checked9574.1 (.cons _ _ _ _ _ checked9575.1 (.cons _ _ _ _ _ checked9576.1 (.cons _ _ _ _ _ checked9577.1 (.cons _ _ _ _ _ checked9578.1 (.cons _ _ _ _ _ checked9579.1 (.cons _ _ _ _ _ checked9580.1 (.cons _ _ _ _ _ checked9581.1 (.cons _ _ _ _ _ checked9582.1 (.cons _ _ _ _ _ checked9583.1 (.cons _ _ _ _ _ checked9584.1 (.cons _ _ _ _ _ checked9585.1 (.cons _ _ _ _ _ checked9586.1 (.cons _ _ _ _ _ checked9587.1 (.cons _ _ _ _ _ checked9588.1 (.cons _ _ _ _ _ checked9589.1 (.cons _ _ _ _ _ checked9590.1 (.cons _ _ _ _ _ checked9591.1 (.cons _ _ _ _ _ checked9592.1 (.cons _ _ _ _ _ checked9593.1 (.cons _ _ _ _ _ checked9594.1 (.cons _ _ _ _ _ checked9595.1 (.cons _ _ _ _ _ checked9596.1 (.cons _ _ _ _ _ checked9597.1 (.cons _ _ _ _ _ checked9598.1 (.cons _ _ _ _ _ checked9599.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9579 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2887 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9536.2,checked9537.2,checked9538.2,checked9539.2,checked9540.2,checked9541.2,checked9542.2,checked9543.2,checked9544.2,checked9545.2,checked9546.2,checked9547.2,checked9548.2,checked9549.2,checked9550.2,checked9551.2,checked9552.2,checked9553.2,checked9554.2,checked9555.2,checked9556.2,checked9557.2,checked9558.2,checked9559.2,checked9560.2,checked9561.2,checked9562.2,checked9563.2,checked9564.2,checked9565.2,checked9566.2,checked9567.2,checked9568.2,checked9569.2,checked9570.2,checked9571.2,checked9572.2,checked9573.2,checked9574.2,checked9575.2,checked9576.2,checked9577.2,checked9578.2,checked9579.2,checked9580.2,checked9581.2,checked9582.2,checked9583.2,checked9584.2,checked9585.2,checked9586.2,checked9587.2,checked9588.2,checked9589.2,checked9590.2,checked9591.2,checked9592.2,checked9593.2,checked9594.2,checked9595.2,checked9596.2,checked9597.2,checked9598.2,checked9599.2]
  decide
end ArtifactPathRoundDispatchGroup149
