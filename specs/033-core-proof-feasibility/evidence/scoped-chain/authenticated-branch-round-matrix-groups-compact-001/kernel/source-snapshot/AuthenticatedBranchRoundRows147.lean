import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData148
import AuthenticatedBranchRoundInstructionMatrixData149
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9526 : actualRows9526=WordField.canonicalRows actualModulus 9526 (.rotr 9510 2) := by core033_kernel_decide
theorem stats9526 : actualRows9526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9526=5124 := by core033_kernel_decide
theorem rows9527 : actualRows9527=WordField.canonicalRows actualModulus 9527 (.rotr 9510 13) := by core033_kernel_decide
theorem stats9527 : actualRows9527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9527=5124 := by core033_kernel_decide
theorem rows9528 : actualRows9528=WordField.canonicalRows actualModulus 9528 (.bxor 9526 9527) := by core033_kernel_decide
theorem stats9528 : actualRows9528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9528=7428 := by core033_kernel_decide
theorem rows9529 : actualRows9529=WordField.canonicalRows actualModulus 9529 (.rotr 9510 22) := by core033_kernel_decide
theorem stats9529 : actualRows9529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9529=5124 := by core033_kernel_decide
theorem rows9530 : actualRows9530=WordField.canonicalRows actualModulus 9530 (.bxor 9528 9529) := by core033_kernel_decide
theorem stats9530 : actualRows9530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9530=7428 := by core033_kernel_decide
theorem rows9531 : actualRows9531=WordField.canonicalRows actualModulus 9531 (.band 9510 9483) := by core033_kernel_decide
theorem stats9531 : actualRows9531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9531=5124 := by core033_kernel_decide
theorem rows9532 : actualRows9532=WordField.canonicalRows actualModulus 9532 (.band 9510 9456) := by core033_kernel_decide
theorem stats9532 : actualRows9532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9532=5124 := by core033_kernel_decide
theorem rows9533 : actualRows9533=WordField.canonicalRows actualModulus 9533 (.bxor 9531 9532) := by core033_kernel_decide
theorem stats9533 : actualRows9533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9533=7428 := by core033_kernel_decide
theorem rows9534 : actualRows9534=WordField.canonicalRows actualModulus 9534 (.band 9483 9456) := by core033_kernel_decide
theorem stats9534 : actualRows9534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9534=5124 := by core033_kernel_decide
theorem rows9535 : actualRows9535=WordField.canonicalRows actualModulus 9535 (.bxor 9533 9534) := by core033_kernel_decide
theorem stats9535 : actualRows9535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9535=7428 := by core033_kernel_decide
theorem rows9536 : actualRows9536=WordField.canonicalRows actualModulus 9536 (.badd 9530 9535) := by core033_kernel_decide
theorem stats9536 : actualRows9536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9536=5388 := by core033_kernel_decide
theorem rows9537 : actualRows9537=WordField.canonicalRows actualModulus 9537 (.badd 9525 9536) := by core033_kernel_decide
theorem stats9537 : actualRows9537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9537=5388 := by core033_kernel_decide
theorem rows9538 : actualRows9538=WordField.canonicalRows actualModulus 9538 (.badd 9429 9525) := by core033_kernel_decide
theorem stats9538 : actualRows9538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9538=5388 := by core033_kernel_decide
theorem rows9539 : actualRows9539=WordField.canonicalRows actualModulus 9539 (.rotr 9538 6) := by core033_kernel_decide
theorem stats9539 : actualRows9539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9539=5124 := by core033_kernel_decide
theorem rows9540 : actualRows9540=WordField.canonicalRows actualModulus 9540 (.rotr 9538 11) := by core033_kernel_decide
theorem stats9540 : actualRows9540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9540=5124 := by core033_kernel_decide
theorem rows9541 : actualRows9541=WordField.canonicalRows actualModulus 9541 (.bxor 9539 9540) := by core033_kernel_decide
theorem stats9541 : actualRows9541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9541=7428 := by core033_kernel_decide
theorem rows9542 : actualRows9542=WordField.canonicalRows actualModulus 9542 (.rotr 9538 25) := by core033_kernel_decide
theorem stats9542 : actualRows9542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9542=5124 := by core033_kernel_decide
theorem rows9543 : actualRows9543=WordField.canonicalRows actualModulus 9543 (.bxor 9541 9542) := by core033_kernel_decide
theorem stats9543 : actualRows9543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9543=7428 := by core033_kernel_decide
theorem rows9544 : actualRows9544=WordField.canonicalRows actualModulus 9544 (.badd 9457 9543) := by core033_kernel_decide
theorem stats9544 : actualRows9544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9544=5388 := by core033_kernel_decide
theorem rows9545 : actualRows9545=WordField.canonicalRows actualModulus 9545 (.band 9538 9511) := by core033_kernel_decide
theorem stats9545 : actualRows9545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9545=5124 := by core033_kernel_decide
theorem rows9546 : actualRows9546=WordField.canonicalRows actualModulus 9546 (.bnot 9538) := by core033_kernel_decide
theorem stats9546 : actualRows9546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9546=6276 := by core033_kernel_decide
theorem rows9547 : actualRows9547=WordField.canonicalRows actualModulus 9547 (.band 9546 9484) := by core033_kernel_decide
theorem stats9547 : actualRows9547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9547=5124 := by core033_kernel_decide
theorem rows9548 : actualRows9548=WordField.canonicalRows actualModulus 9548 (.bxor 9545 9547) := by core033_kernel_decide
theorem stats9548 : actualRows9548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9548=7428 := by core033_kernel_decide
theorem rows9549 : actualRows9549=WordField.canonicalRows actualModulus 9549 (.badd 9544 9548) := by core033_kernel_decide
theorem stats9549 : actualRows9549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9549=5388 := by core033_kernel_decide
theorem rows9550 : actualRows9550=WordField.canonicalRows actualModulus 9550 (.literal (BitVec.ofNat 32 3584528711)) := by core033_kernel_decide
theorem stats9550 : actualRows9550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9550=4044 := by core033_kernel_decide
theorem rows9551 : actualRows9551=WordField.canonicalRows actualModulus 9551 (.badd 9549 9550) := by core033_kernel_decide
theorem stats9551 : actualRows9551.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9551=5388 := by core033_kernel_decide
theorem rows9552 : actualRows9552=WordField.canonicalRows actualModulus 9552 (.badd 9551 8313) := by core033_kernel_decide
theorem stats9552 : actualRows9552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9552=5388 := by core033_kernel_decide
theorem rows9553 : actualRows9553=WordField.canonicalRows actualModulus 9553 (.rotr 9537 2) := by core033_kernel_decide
theorem stats9553 : actualRows9553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9553=5124 := by core033_kernel_decide
theorem rows9554 : actualRows9554=WordField.canonicalRows actualModulus 9554 (.rotr 9537 13) := by core033_kernel_decide
theorem stats9554 : actualRows9554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9554=5124 := by core033_kernel_decide
theorem rows9555 : actualRows9555=WordField.canonicalRows actualModulus 9555 (.bxor 9553 9554) := by core033_kernel_decide
theorem stats9555 : actualRows9555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9555=7428 := by core033_kernel_decide
theorem rows9556 : actualRows9556=WordField.canonicalRows actualModulus 9556 (.rotr 9537 22) := by core033_kernel_decide
theorem stats9556 : actualRows9556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9556=5124 := by core033_kernel_decide
theorem rows9557 : actualRows9557=WordField.canonicalRows actualModulus 9557 (.bxor 9555 9556) := by core033_kernel_decide
theorem stats9557 : actualRows9557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9557=7428 := by core033_kernel_decide
theorem rows9558 : actualRows9558=WordField.canonicalRows actualModulus 9558 (.band 9537 9510) := by core033_kernel_decide
theorem stats9558 : actualRows9558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9558=5124 := by core033_kernel_decide
theorem rows9559 : actualRows9559=WordField.canonicalRows actualModulus 9559 (.band 9537 9483) := by core033_kernel_decide
theorem stats9559 : actualRows9559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9559=5124 := by core033_kernel_decide
theorem rows9560 : actualRows9560=WordField.canonicalRows actualModulus 9560 (.bxor 9558 9559) := by core033_kernel_decide
theorem stats9560 : actualRows9560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9560=7428 := by core033_kernel_decide
theorem rows9561 : actualRows9561=WordField.canonicalRows actualModulus 9561 (.band 9510 9483) := by core033_kernel_decide
theorem stats9561 : actualRows9561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9561=5124 := by core033_kernel_decide
theorem rows9562 : actualRows9562=WordField.canonicalRows actualModulus 9562 (.bxor 9560 9561) := by core033_kernel_decide
theorem stats9562 : actualRows9562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9562=7428 := by core033_kernel_decide
theorem rows9563 : actualRows9563=WordField.canonicalRows actualModulus 9563 (.badd 9557 9562) := by core033_kernel_decide
theorem stats9563 : actualRows9563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9563=5388 := by core033_kernel_decide
theorem rows9564 : actualRows9564=WordField.canonicalRows actualModulus 9564 (.badd 9552 9563) := by core033_kernel_decide
theorem stats9564 : actualRows9564.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9564=5388 := by core033_kernel_decide
theorem rows9565 : actualRows9565=WordField.canonicalRows actualModulus 9565 (.badd 9456 9552) := by core033_kernel_decide
theorem stats9565 : actualRows9565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9565=5388 := by core033_kernel_decide
theorem rows9566 : actualRows9566=WordField.canonicalRows actualModulus 9566 (.rotr 9565 6) := by core033_kernel_decide
theorem stats9566 : actualRows9566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9566=5124 := by core033_kernel_decide
theorem rows9567 : actualRows9567=WordField.canonicalRows actualModulus 9567 (.rotr 9565 11) := by core033_kernel_decide
theorem stats9567 : actualRows9567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9567=5124 := by core033_kernel_decide
theorem rows9568 : actualRows9568=WordField.canonicalRows actualModulus 9568 (.bxor 9566 9567) := by core033_kernel_decide
theorem stats9568 : actualRows9568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9568=7428 := by core033_kernel_decide
theorem rows9569 : actualRows9569=WordField.canonicalRows actualModulus 9569 (.rotr 9565 25) := by core033_kernel_decide
theorem stats9569 : actualRows9569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9569=5124 := by core033_kernel_decide
theorem rows9570 : actualRows9570=WordField.canonicalRows actualModulus 9570 (.bxor 9568 9569) := by core033_kernel_decide
theorem stats9570 : actualRows9570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9570=7428 := by core033_kernel_decide
theorem rows9571 : actualRows9571=WordField.canonicalRows actualModulus 9571 (.badd 9484 9570) := by core033_kernel_decide
theorem stats9571 : actualRows9571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9571=5388 := by core033_kernel_decide
theorem rows9572 : actualRows9572=WordField.canonicalRows actualModulus 9572 (.band 9565 9538) := by core033_kernel_decide
theorem stats9572 : actualRows9572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9572=5124 := by core033_kernel_decide
theorem rows9573 : actualRows9573=WordField.canonicalRows actualModulus 9573 (.bnot 9565) := by core033_kernel_decide
theorem stats9573 : actualRows9573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9573=6276 := by core033_kernel_decide
theorem rows9574 : actualRows9574=WordField.canonicalRows actualModulus 9574 (.band 9573 9511) := by core033_kernel_decide
theorem stats9574 : actualRows9574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9574=5124 := by core033_kernel_decide
theorem rows9575 : actualRows9575=WordField.canonicalRows actualModulus 9575 (.bxor 9572 9574) := by core033_kernel_decide
theorem stats9575 : actualRows9575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9575=7428 := by core033_kernel_decide
theorem rows9576 : actualRows9576=WordField.canonicalRows actualModulus 9576 (.badd 9571 9575) := by core033_kernel_decide
theorem stats9576 : actualRows9576.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9576=5388 := by core033_kernel_decide
theorem rows9577 : actualRows9577=WordField.canonicalRows actualModulus 9577 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats9577 : actualRows9577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9577=3756 := by core033_kernel_decide
theorem rows9578 : actualRows9578=WordField.canonicalRows actualModulus 9578 (.badd 9576 9577) := by core033_kernel_decide
theorem stats9578 : actualRows9578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9578=5388 := by core033_kernel_decide
theorem rows9579 : actualRows9579=WordField.canonicalRows actualModulus 9579 (.badd 9578 8326) := by core033_kernel_decide
theorem stats9579 : actualRows9579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9579=5388 := by core033_kernel_decide
theorem rows9580 : actualRows9580=WordField.canonicalRows actualModulus 9580 (.rotr 9564 2) := by core033_kernel_decide
theorem stats9580 : actualRows9580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9580=5124 := by core033_kernel_decide
theorem rows9581 : actualRows9581=WordField.canonicalRows actualModulus 9581 (.rotr 9564 13) := by core033_kernel_decide
theorem stats9581 : actualRows9581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9581=5124 := by core033_kernel_decide
theorem rows9582 : actualRows9582=WordField.canonicalRows actualModulus 9582 (.bxor 9580 9581) := by core033_kernel_decide
theorem stats9582 : actualRows9582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9582=7428 := by core033_kernel_decide
theorem rows9583 : actualRows9583=WordField.canonicalRows actualModulus 9583 (.rotr 9564 22) := by core033_kernel_decide
theorem stats9583 : actualRows9583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9583=5124 := by core033_kernel_decide
theorem rows9584 : actualRows9584=WordField.canonicalRows actualModulus 9584 (.bxor 9582 9583) := by core033_kernel_decide
theorem stats9584 : actualRows9584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9584=7428 := by core033_kernel_decide
theorem rows9585 : actualRows9585=WordField.canonicalRows actualModulus 9585 (.band 9564 9537) := by core033_kernel_decide
theorem stats9585 : actualRows9585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9585=5124 := by core033_kernel_decide
theorem rows9586 : actualRows9586=WordField.canonicalRows actualModulus 9586 (.band 9564 9510) := by core033_kernel_decide
theorem stats9586 : actualRows9586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9586=5124 := by core033_kernel_decide
theorem rows9587 : actualRows9587=WordField.canonicalRows actualModulus 9587 (.bxor 9585 9586) := by core033_kernel_decide
theorem stats9587 : actualRows9587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9587=7428 := by core033_kernel_decide
theorem rows9588 : actualRows9588=WordField.canonicalRows actualModulus 9588 (.band 9537 9510) := by core033_kernel_decide
theorem stats9588 : actualRows9588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9588=5124 := by core033_kernel_decide
theorem rows9589 : actualRows9589=WordField.canonicalRows actualModulus 9589 (.bxor 9587 9588) := by core033_kernel_decide
theorem stats9589 : actualRows9589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9589=7428 := by core033_kernel_decide
def partRows147 : List R1CS.Row := actualRows9526++actualRows9527++actualRows9528++actualRows9529++actualRows9530++actualRows9531++actualRows9532++actualRows9533++actualRows9534++actualRows9535++actualRows9536++actualRows9537++actualRows9538++actualRows9539++actualRows9540++actualRows9541++actualRows9542++actualRows9543++actualRows9544++actualRows9545++actualRows9546++actualRows9547++actualRows9548++actualRows9549++actualRows9550++actualRows9551++actualRows9552++actualRows9553++actualRows9554++actualRows9555++actualRows9556++actualRows9557++actualRows9558++actualRows9559++actualRows9560++actualRows9561++actualRows9562++actualRows9563++actualRows9564++actualRows9565++actualRows9566++actualRows9567++actualRows9568++actualRows9569++actualRows9570++actualRows9571++actualRows9572++actualRows9573++actualRows9574++actualRows9575++actualRows9576++actualRows9577++actualRows9578++actualRows9579++actualRows9580++actualRows9581++actualRows9582++actualRows9583++actualRows9584++actualRows9585++actualRows9586++actualRows9587++actualRows9588++actualRows9589
def partOps147 : List WordIR.Op := [.rotr 9510 2,.rotr 9510 13,.bxor 9526 9527,.rotr 9510 22,.bxor 9528 9529,.band 9510 9483,.band 9510 9456,.bxor 9531 9532,.band 9483 9456,.bxor 9533 9534,.badd 9530 9535,.badd 9525 9536,.badd 9429 9525,.rotr 9538 6,.rotr 9538 11,.bxor 9539 9540,.rotr 9538 25,.bxor 9541 9542,.badd 9457 9543,.band 9538 9511,.bnot 9538,.band 9546 9484,.bxor 9545 9547,.badd 9544 9548,.literal (BitVec.ofNat 32 3584528711),.badd 9549 9550,.badd 9551 8313,.rotr 9537 2,.rotr 9537 13,.bxor 9553 9554,.rotr 9537 22,.bxor 9555 9556,.band 9537 9510,.band 9537 9483,.bxor 9558 9559,.band 9510 9483,.bxor 9560 9561,.badd 9557 9562,.badd 9552 9563,.badd 9456 9552,.rotr 9565 6,.rotr 9565 11,.bxor 9566 9567,.rotr 9565 25,.bxor 9568 9569,.badd 9484 9570,.band 9565 9538,.bnot 9565,.band 9573 9511,.bxor 9572 9574,.badd 9571 9575,.literal (BitVec.ofNat 32 113926993),.badd 9576 9577,.badd 9578 8326,.rotr 9564 2,.rotr 9564 13,.bxor 9580 9581,.rotr 9564 22,.bxor 9582 9583,.band 9564 9537,.band 9564 9510,.bxor 9585 9586,.band 9537 9510,.bxor 9587 9588]
theorem partExact147 : partRows147=WordField.rows actualModulus 9526 partOps147 := by
  simp only [partRows147,partOps147,WordField.rows,rows9526,rows9527,rows9528,rows9529,rows9530,rows9531,rows9532,rows9533,rows9534,rows9535,rows9536,rows9537,rows9538,rows9539,rows9540,rows9541,rows9542,rows9543,rows9544,rows9545,rows9546,rows9547,rows9548,rows9549,rows9550,rows9551,rows9552,rows9553,rows9554,rows9555,rows9556,rows9557,rows9558,rows9559,rows9560,rows9561,rows9562,rows9563,rows9564,rows9565,rows9566,rows9567,rows9568,rows9569,rows9570,rows9571,rows9572,rows9573,rows9574,rows9575,rows9576,rows9577,rows9578,rows9579,rows9580,rows9581,rows9582,rows9583,rows9584,rows9585,rows9586,rows9587,rows9588,rows9589,List.append_assoc,List.append_nil]
theorem partLength147 : partOps147.length=64 := by decide
theorem partStats147 : partRows147.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows147=372960 := by
  simp only [partRows147,List.length_append,MatrixRowBlocks.rows_weight_append,stats9526.1,stats9526.2,stats9527.1,stats9527.2,stats9528.1,stats9528.2,stats9529.1,stats9529.2,stats9530.1,stats9530.2,stats9531.1,stats9531.2,stats9532.1,stats9532.2,stats9533.1,stats9533.2,stats9534.1,stats9534.2,stats9535.1,stats9535.2,stats9536.1,stats9536.2,stats9537.1,stats9537.2,stats9538.1,stats9538.2,stats9539.1,stats9539.2,stats9540.1,stats9540.2,stats9541.1,stats9541.2,stats9542.1,stats9542.2,stats9543.1,stats9543.2,stats9544.1,stats9544.2,stats9545.1,stats9545.2,stats9546.1,stats9546.2,stats9547.1,stats9547.2,stats9548.1,stats9548.2,stats9549.1,stats9549.2,stats9550.1,stats9550.2,stats9551.1,stats9551.2,stats9552.1,stats9552.2,stats9553.1,stats9553.2,stats9554.1,stats9554.2,stats9555.1,stats9555.2,stats9556.1,stats9556.2,stats9557.1,stats9557.2,stats9558.1,stats9558.2,stats9559.1,stats9559.2,stats9560.1,stats9560.2,stats9561.1,stats9561.2,stats9562.1,stats9562.2,stats9563.1,stats9563.2,stats9564.1,stats9564.2,stats9565.1,stats9565.2,stats9566.1,stats9566.2,stats9567.1,stats9567.2,stats9568.1,stats9568.2,stats9569.1,stats9569.2,stats9570.1,stats9570.2,stats9571.1,stats9571.2,stats9572.1,stats9572.2,stats9573.1,stats9573.2,stats9574.1,stats9574.2,stats9575.1,stats9575.2,stats9576.1,stats9576.2,stats9577.1,stats9577.2,stats9578.1,stats9578.2,stats9579.1,stats9579.2,stats9580.1,stats9580.2,stats9581.1,stats9581.2,stats9582.1,stats9582.2,stats9583.1,stats9583.2,stats9584.1,stats9584.2,stats9585.1,stats9585.2,stats9586.1,stats9586.2,stats9587.1,stats9587.2,stats9588.1,stats9588.2,stats9589.1,stats9589.2]
  decide
end AuthenticatedBranchRoundCheckedRows
