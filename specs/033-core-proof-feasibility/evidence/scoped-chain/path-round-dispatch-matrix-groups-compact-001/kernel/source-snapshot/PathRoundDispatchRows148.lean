import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData148
import PathRoundDispatchInstructionMatrixData149
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9515 : actualRows9515=WordField.canonicalRows actualModulus 9515 (.band 9513 9514) := by core033_kernel_decide
theorem stats9515 : actualRows9515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9515=5124 := by core033_kernel_decide
theorem rows9516 : actualRows9516=WordField.canonicalRows actualModulus 9516 (.bxor 9509 9515) := by core033_kernel_decide
theorem stats9516 : actualRows9516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9516=7428 := by core033_kernel_decide
theorem rows9517 : actualRows9517=WordField.canonicalRows actualModulus 9517 (.bnot 9406) := by core033_kernel_decide
theorem stats9517 : actualRows9517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9517=6276 := by core033_kernel_decide
theorem rows9518 : actualRows9518=WordField.canonicalRows actualModulus 9518 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9518 : actualRows9518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9518=2892 := by core033_kernel_decide
theorem rows9519 : actualRows9519=WordField.canonicalRows actualModulus 9519 (.badd 9517 9518) := by core033_kernel_decide
theorem stats9519 : actualRows9519.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9519=5388 := by core033_kernel_decide
theorem rows9520 : actualRows9520=WordField.canonicalRows actualModulus 9520 (.band 9519 10) := by core033_kernel_decide
theorem stats9520 : actualRows9520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9520=5124 := by core033_kernel_decide
theorem rows9521 : actualRows9521=WordField.canonicalRows actualModulus 9521 (.bnot 9406) := by core033_kernel_decide
theorem stats9521 : actualRows9521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9521=6276 := by core033_kernel_decide
theorem rows9522 : actualRows9522=WordField.canonicalRows actualModulus 9522 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9522 : actualRows9522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9522=2892 := by core033_kernel_decide
theorem rows9523 : actualRows9523=WordField.canonicalRows actualModulus 9523 (.badd 9521 9522) := by core033_kernel_decide
theorem stats9523 : actualRows9523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9523=5388 := by core033_kernel_decide
theorem rows9524 : actualRows9524=WordField.canonicalRows actualModulus 9524 (.bnot 9523) := by core033_kernel_decide
theorem stats9524 : actualRows9524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9524=6276 := by core033_kernel_decide
theorem rows9525 : actualRows9525=WordField.canonicalRows actualModulus 9525 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9525 : actualRows9525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9525=2820 := by core033_kernel_decide
theorem rows9526 : actualRows9526=WordField.canonicalRows actualModulus 9526 (.band 9524 9525) := by core033_kernel_decide
theorem stats9526 : actualRows9526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9526=5124 := by core033_kernel_decide
theorem rows9527 : actualRows9527=WordField.canonicalRows actualModulus 9527 (.bxor 9520 9526) := by core033_kernel_decide
theorem stats9527 : actualRows9527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9527=7428 := by core033_kernel_decide
theorem rows9528 : actualRows9528=WordField.canonicalRows actualModulus 9528 (.bnot 9406) := by core033_kernel_decide
theorem stats9528 : actualRows9528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9528=6276 := by core033_kernel_decide
theorem rows9529 : actualRows9529=WordField.canonicalRows actualModulus 9529 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9529 : actualRows9529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9529=2892 := by core033_kernel_decide
theorem rows9530 : actualRows9530=WordField.canonicalRows actualModulus 9530 (.badd 9528 9529) := by core033_kernel_decide
theorem stats9530 : actualRows9530.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9530=5388 := by core033_kernel_decide
theorem rows9531 : actualRows9531=WordField.canonicalRows actualModulus 9531 (.band 9530 11) := by core033_kernel_decide
theorem stats9531 : actualRows9531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9531=5124 := by core033_kernel_decide
theorem rows9532 : actualRows9532=WordField.canonicalRows actualModulus 9532 (.bnot 9406) := by core033_kernel_decide
theorem stats9532 : actualRows9532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9532=6276 := by core033_kernel_decide
theorem rows9533 : actualRows9533=WordField.canonicalRows actualModulus 9533 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9533 : actualRows9533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9533=2892 := by core033_kernel_decide
theorem rows9534 : actualRows9534=WordField.canonicalRows actualModulus 9534 (.badd 9532 9533) := by core033_kernel_decide
theorem stats9534 : actualRows9534.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9534=5388 := by core033_kernel_decide
theorem rows9535 : actualRows9535=WordField.canonicalRows actualModulus 9535 (.bnot 9534) := by core033_kernel_decide
theorem stats9535 : actualRows9535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9535=6276 := by core033_kernel_decide
theorem rows9536 : actualRows9536=WordField.canonicalRows actualModulus 9536 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9536 : actualRows9536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9536=2820 := by core033_kernel_decide
theorem rows9537 : actualRows9537=WordField.canonicalRows actualModulus 9537 (.band 9535 9536) := by core033_kernel_decide
theorem stats9537 : actualRows9537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9537=5124 := by core033_kernel_decide
theorem rows9538 : actualRows9538=WordField.canonicalRows actualModulus 9538 (.bxor 9531 9537) := by core033_kernel_decide
theorem stats9538 : actualRows9538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9538=7428 := by core033_kernel_decide
theorem rows9539 : actualRows9539=WordField.canonicalRows actualModulus 9539 (.bnot 9406) := by core033_kernel_decide
theorem stats9539 : actualRows9539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9539=6276 := by core033_kernel_decide
theorem rows9540 : actualRows9540=WordField.canonicalRows actualModulus 9540 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9540 : actualRows9540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9540=2892 := by core033_kernel_decide
theorem rows9541 : actualRows9541=WordField.canonicalRows actualModulus 9541 (.badd 9539 9540) := by core033_kernel_decide
theorem stats9541 : actualRows9541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9541=5388 := by core033_kernel_decide
theorem rows9542 : actualRows9542=WordField.canonicalRows actualModulus 9542 (.band 9541 12) := by core033_kernel_decide
theorem stats9542 : actualRows9542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9542=5124 := by core033_kernel_decide
theorem rows9543 : actualRows9543=WordField.canonicalRows actualModulus 9543 (.bnot 9406) := by core033_kernel_decide
theorem stats9543 : actualRows9543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9543=6276 := by core033_kernel_decide
theorem rows9544 : actualRows9544=WordField.canonicalRows actualModulus 9544 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9544 : actualRows9544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9544=2892 := by core033_kernel_decide
theorem rows9545 : actualRows9545=WordField.canonicalRows actualModulus 9545 (.badd 9543 9544) := by core033_kernel_decide
theorem stats9545 : actualRows9545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9545=5388 := by core033_kernel_decide
theorem rows9546 : actualRows9546=WordField.canonicalRows actualModulus 9546 (.bnot 9545) := by core033_kernel_decide
theorem stats9546 : actualRows9546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9546=6276 := by core033_kernel_decide
theorem rows9547 : actualRows9547=WordField.canonicalRows actualModulus 9547 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9547 : actualRows9547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9547=2820 := by core033_kernel_decide
theorem rows9548 : actualRows9548=WordField.canonicalRows actualModulus 9548 (.band 9546 9547) := by core033_kernel_decide
theorem stats9548 : actualRows9548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9548=5124 := by core033_kernel_decide
theorem rows9549 : actualRows9549=WordField.canonicalRows actualModulus 9549 (.bxor 9542 9548) := by core033_kernel_decide
theorem stats9549 : actualRows9549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9549=7428 := by core033_kernel_decide
theorem rows9550 : actualRows9550=WordField.canonicalRows actualModulus 9550 (.bnot 9406) := by core033_kernel_decide
theorem stats9550 : actualRows9550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9550=6276 := by core033_kernel_decide
theorem rows9551 : actualRows9551=WordField.canonicalRows actualModulus 9551 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9551 : actualRows9551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9551=2892 := by core033_kernel_decide
theorem rows9552 : actualRows9552=WordField.canonicalRows actualModulus 9552 (.badd 9550 9551) := by core033_kernel_decide
theorem stats9552 : actualRows9552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9552=5388 := by core033_kernel_decide
theorem rows9553 : actualRows9553=WordField.canonicalRows actualModulus 9553 (.band 9552 13) := by core033_kernel_decide
theorem stats9553 : actualRows9553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9553=5124 := by core033_kernel_decide
theorem rows9554 : actualRows9554=WordField.canonicalRows actualModulus 9554 (.bnot 9406) := by core033_kernel_decide
theorem stats9554 : actualRows9554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9554=6276 := by core033_kernel_decide
theorem rows9555 : actualRows9555=WordField.canonicalRows actualModulus 9555 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9555 : actualRows9555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9555=2892 := by core033_kernel_decide
theorem rows9556 : actualRows9556=WordField.canonicalRows actualModulus 9556 (.badd 9554 9555) := by core033_kernel_decide
theorem stats9556 : actualRows9556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9556=5388 := by core033_kernel_decide
theorem rows9557 : actualRows9557=WordField.canonicalRows actualModulus 9557 (.bnot 9556) := by core033_kernel_decide
theorem stats9557 : actualRows9557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9557=6276 := by core033_kernel_decide
theorem rows9558 : actualRows9558=WordField.canonicalRows actualModulus 9558 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9558 : actualRows9558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9558=2820 := by core033_kernel_decide
theorem rows9559 : actualRows9559=WordField.canonicalRows actualModulus 9559 (.band 9557 9558) := by core033_kernel_decide
theorem stats9559 : actualRows9559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9559=5124 := by core033_kernel_decide
theorem rows9560 : actualRows9560=WordField.canonicalRows actualModulus 9560 (.bxor 9553 9559) := by core033_kernel_decide
theorem stats9560 : actualRows9560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9560=7428 := by core033_kernel_decide
theorem rows9561 : actualRows9561=WordField.canonicalRows actualModulus 9561 (.bnot 9406) := by core033_kernel_decide
theorem stats9561 : actualRows9561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9561=6276 := by core033_kernel_decide
theorem rows9562 : actualRows9562=WordField.canonicalRows actualModulus 9562 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9562 : actualRows9562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9562=2892 := by core033_kernel_decide
theorem rows9563 : actualRows9563=WordField.canonicalRows actualModulus 9563 (.badd 9561 9562) := by core033_kernel_decide
theorem stats9563 : actualRows9563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9563=5388 := by core033_kernel_decide
theorem rows9564 : actualRows9564=WordField.canonicalRows actualModulus 9564 (.band 9563 14) := by core033_kernel_decide
theorem stats9564 : actualRows9564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9564=5124 := by core033_kernel_decide
theorem rows9565 : actualRows9565=WordField.canonicalRows actualModulus 9565 (.bnot 9406) := by core033_kernel_decide
theorem stats9565 : actualRows9565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9565=6276 := by core033_kernel_decide
theorem rows9566 : actualRows9566=WordField.canonicalRows actualModulus 9566 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9566 : actualRows9566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9566=2892 := by core033_kernel_decide
theorem rows9567 : actualRows9567=WordField.canonicalRows actualModulus 9567 (.badd 9565 9566) := by core033_kernel_decide
theorem stats9567 : actualRows9567.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9567=5388 := by core033_kernel_decide
theorem rows9568 : actualRows9568=WordField.canonicalRows actualModulus 9568 (.bnot 9567) := by core033_kernel_decide
theorem stats9568 : actualRows9568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9568=6276 := by core033_kernel_decide
theorem rows9569 : actualRows9569=WordField.canonicalRows actualModulus 9569 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9569 : actualRows9569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9569=2820 := by core033_kernel_decide
theorem rows9570 : actualRows9570=WordField.canonicalRows actualModulus 9570 (.band 9568 9569) := by core033_kernel_decide
theorem stats9570 : actualRows9570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9570=5124 := by core033_kernel_decide
theorem rows9571 : actualRows9571=WordField.canonicalRows actualModulus 9571 (.bxor 9564 9570) := by core033_kernel_decide
theorem stats9571 : actualRows9571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9571=7428 := by core033_kernel_decide
theorem rows9572 : actualRows9572=WordField.canonicalRows actualModulus 9572 (.bnot 9406) := by core033_kernel_decide
theorem stats9572 : actualRows9572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9572=6276 := by core033_kernel_decide
theorem rows9573 : actualRows9573=WordField.canonicalRows actualModulus 9573 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9573 : actualRows9573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9573=2892 := by core033_kernel_decide
theorem rows9574 : actualRows9574=WordField.canonicalRows actualModulus 9574 (.badd 9572 9573) := by core033_kernel_decide
theorem stats9574 : actualRows9574.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9574=5388 := by core033_kernel_decide
theorem rows9575 : actualRows9575=WordField.canonicalRows actualModulus 9575 (.band 9574 15) := by core033_kernel_decide
theorem stats9575 : actualRows9575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9575=5124 := by core033_kernel_decide
theorem rows9576 : actualRows9576=WordField.canonicalRows actualModulus 9576 (.bnot 9406) := by core033_kernel_decide
theorem stats9576 : actualRows9576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9576=6276 := by core033_kernel_decide
theorem rows9577 : actualRows9577=WordField.canonicalRows actualModulus 9577 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9577 : actualRows9577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9577=2892 := by core033_kernel_decide
theorem rows9578 : actualRows9578=WordField.canonicalRows actualModulus 9578 (.badd 9576 9577) := by core033_kernel_decide
theorem stats9578 : actualRows9578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9578=5388 := by core033_kernel_decide
def partRows148 : List R1CS.Row := actualRows9515++actualRows9516++actualRows9517++actualRows9518++actualRows9519++actualRows9520++actualRows9521++actualRows9522++actualRows9523++actualRows9524++actualRows9525++actualRows9526++actualRows9527++actualRows9528++actualRows9529++actualRows9530++actualRows9531++actualRows9532++actualRows9533++actualRows9534++actualRows9535++actualRows9536++actualRows9537++actualRows9538++actualRows9539++actualRows9540++actualRows9541++actualRows9542++actualRows9543++actualRows9544++actualRows9545++actualRows9546++actualRows9547++actualRows9548++actualRows9549++actualRows9550++actualRows9551++actualRows9552++actualRows9553++actualRows9554++actualRows9555++actualRows9556++actualRows9557++actualRows9558++actualRows9559++actualRows9560++actualRows9561++actualRows9562++actualRows9563++actualRows9564++actualRows9565++actualRows9566++actualRows9567++actualRows9568++actualRows9569++actualRows9570++actualRows9571++actualRows9572++actualRows9573++actualRows9574++actualRows9575++actualRows9576++actualRows9577++actualRows9578
def partOps148 : List WordIR.Op := [.band 9513 9514,.bxor 9509 9515,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9517 9518,.band 9519 10,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9521 9522,.bnot 9523,.literal (BitVec.ofNat 32 0),.band 9524 9525,.bxor 9520 9526,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9528 9529,.band 9530 11,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9532 9533,.bnot 9534,.literal (BitVec.ofNat 32 0),.band 9535 9536,.bxor 9531 9537,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9539 9540,.band 9541 12,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9543 9544,.bnot 9545,.literal (BitVec.ofNat 32 0),.band 9546 9547,.bxor 9542 9548,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9550 9551,.band 9552 13,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9554 9555,.bnot 9556,.literal (BitVec.ofNat 32 0),.band 9557 9558,.bxor 9553 9559,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9561 9562,.band 9563 14,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9565 9566,.bnot 9567,.literal (BitVec.ofNat 32 0),.band 9568 9569,.bxor 9564 9570,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9572 9573,.band 9574 15,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9576 9577]
theorem partExact148 : partRows148=WordField.rows actualModulus 9515 partOps148 := by
  simp only [partRows148,partOps148,WordField.rows,rows9515,rows9516,rows9517,rows9518,rows9519,rows9520,rows9521,rows9522,rows9523,rows9524,rows9525,rows9526,rows9527,rows9528,rows9529,rows9530,rows9531,rows9532,rows9533,rows9534,rows9535,rows9536,rows9537,rows9538,rows9539,rows9540,rows9541,rows9542,rows9543,rows9544,rows9545,rows9546,rows9547,rows9548,rows9549,rows9550,rows9551,rows9552,rows9553,rows9554,rows9555,rows9556,rows9557,rows9558,rows9559,rows9560,rows9561,rows9562,rows9563,rows9564,rows9565,rows9566,rows9567,rows9568,rows9569,rows9570,rows9571,rows9572,rows9573,rows9574,rows9575,rows9576,rows9577,rows9578,List.append_assoc,List.append_nil]
theorem partLength148 : partOps148.length=64 := by decide
theorem partStats148 : partRows148.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows148=326208 := by
  simp only [partRows148,List.length_append,MatrixRowBlocks.rows_weight_append,stats9515.1,stats9515.2,stats9516.1,stats9516.2,stats9517.1,stats9517.2,stats9518.1,stats9518.2,stats9519.1,stats9519.2,stats9520.1,stats9520.2,stats9521.1,stats9521.2,stats9522.1,stats9522.2,stats9523.1,stats9523.2,stats9524.1,stats9524.2,stats9525.1,stats9525.2,stats9526.1,stats9526.2,stats9527.1,stats9527.2,stats9528.1,stats9528.2,stats9529.1,stats9529.2,stats9530.1,stats9530.2,stats9531.1,stats9531.2,stats9532.1,stats9532.2,stats9533.1,stats9533.2,stats9534.1,stats9534.2,stats9535.1,stats9535.2,stats9536.1,stats9536.2,stats9537.1,stats9537.2,stats9538.1,stats9538.2,stats9539.1,stats9539.2,stats9540.1,stats9540.2,stats9541.1,stats9541.2,stats9542.1,stats9542.2,stats9543.1,stats9543.2,stats9544.1,stats9544.2,stats9545.1,stats9545.2,stats9546.1,stats9546.2,stats9547.1,stats9547.2,stats9548.1,stats9548.2,stats9549.1,stats9549.2,stats9550.1,stats9550.2,stats9551.1,stats9551.2,stats9552.1,stats9552.2,stats9553.1,stats9553.2,stats9554.1,stats9554.2,stats9555.1,stats9555.2,stats9556.1,stats9556.2,stats9557.1,stats9557.2,stats9558.1,stats9558.2,stats9559.1,stats9559.2,stats9560.1,stats9560.2,stats9561.1,stats9561.2,stats9562.1,stats9562.2,stats9563.1,stats9563.2,stats9564.1,stats9564.2,stats9565.1,stats9565.2,stats9566.1,stats9566.2,stats9567.1,stats9567.2,stats9568.1,stats9568.2,stats9569.1,stats9569.2,stats9570.1,stats9570.2,stats9571.1,stats9571.2,stats9572.1,stats9572.2,stats9573.1,stats9573.2,stats9574.1,stats9574.2,stats9575.1,stats9575.2,stats9576.1,stats9576.2,stats9577.1,stats9577.2,stats9578.1,stats9578.2]
  decide
end PathRoundDispatchCheckedRows
