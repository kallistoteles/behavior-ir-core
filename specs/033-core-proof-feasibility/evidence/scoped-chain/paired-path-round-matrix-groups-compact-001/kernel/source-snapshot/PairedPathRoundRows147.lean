import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData148
import PairedPathRoundInstructionMatrixData149
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9504 : actualRows9504=WordField.canonicalRows actualModulus 9504 (.rotr 9503 6) := by core033_kernel_decide
theorem stats9504 : actualRows9504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9504=5124 := by core033_kernel_decide
theorem rows9505 : actualRows9505=WordField.canonicalRows actualModulus 9505 (.rotr 9503 11) := by core033_kernel_decide
theorem stats9505 : actualRows9505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9505=5124 := by core033_kernel_decide
theorem rows9506 : actualRows9506=WordField.canonicalRows actualModulus 9506 (.bxor 9504 9505) := by core033_kernel_decide
theorem stats9506 : actualRows9506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9506=7428 := by core033_kernel_decide
theorem rows9507 : actualRows9507=WordField.canonicalRows actualModulus 9507 (.rotr 9503 25) := by core033_kernel_decide
theorem stats9507 : actualRows9507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9507=5124 := by core033_kernel_decide
theorem rows9508 : actualRows9508=WordField.canonicalRows actualModulus 9508 (.bxor 9506 9507) := by core033_kernel_decide
theorem stats9508 : actualRows9508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9508=7428 := by core033_kernel_decide
theorem rows9509 : actualRows9509=WordField.canonicalRows actualModulus 9509 (.badd 9422 9508) := by core033_kernel_decide
theorem stats9509 : actualRows9509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9509=5388 := by core033_kernel_decide
theorem rows9510 : actualRows9510=WordField.canonicalRows actualModulus 9510 (.band 9503 9476) := by core033_kernel_decide
theorem stats9510 : actualRows9510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9510=5124 := by core033_kernel_decide
theorem rows9511 : actualRows9511=WordField.canonicalRows actualModulus 9511 (.bnot 9503) := by core033_kernel_decide
theorem stats9511 : actualRows9511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9511=6276 := by core033_kernel_decide
theorem rows9512 : actualRows9512=WordField.canonicalRows actualModulus 9512 (.band 9511 9449) := by core033_kernel_decide
theorem stats9512 : actualRows9512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9512=5124 := by core033_kernel_decide
theorem rows9513 : actualRows9513=WordField.canonicalRows actualModulus 9513 (.bxor 9510 9512) := by core033_kernel_decide
theorem stats9513 : actualRows9513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9513=7428 := by core033_kernel_decide
theorem rows9514 : actualRows9514=WordField.canonicalRows actualModulus 9514 (.badd 9509 9513) := by core033_kernel_decide
theorem stats9514 : actualRows9514.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9514=5388 := by core033_kernel_decide
theorem rows9515 : actualRows9515=WordField.canonicalRows actualModulus 9515 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats9515 : actualRows9515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9515=3900 := by core033_kernel_decide
theorem rows9516 : actualRows9516=WordField.canonicalRows actualModulus 9516 (.badd 9514 9515) := by core033_kernel_decide
theorem stats9516 : actualRows9516.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9516=5388 := by core033_kernel_decide
theorem rows9517 : actualRows9517=WordField.canonicalRows actualModulus 9517 (.badd 9516 7942) := by core033_kernel_decide
theorem stats9517 : actualRows9517.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9517=5388 := by core033_kernel_decide
theorem rows9518 : actualRows9518=WordField.canonicalRows actualModulus 9518 (.rotr 9502 2) := by core033_kernel_decide
theorem stats9518 : actualRows9518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9518=5124 := by core033_kernel_decide
theorem rows9519 : actualRows9519=WordField.canonicalRows actualModulus 9519 (.rotr 9502 13) := by core033_kernel_decide
theorem stats9519 : actualRows9519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9519=5124 := by core033_kernel_decide
theorem rows9520 : actualRows9520=WordField.canonicalRows actualModulus 9520 (.bxor 9518 9519) := by core033_kernel_decide
theorem stats9520 : actualRows9520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9520=7428 := by core033_kernel_decide
theorem rows9521 : actualRows9521=WordField.canonicalRows actualModulus 9521 (.rotr 9502 22) := by core033_kernel_decide
theorem stats9521 : actualRows9521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9521=5124 := by core033_kernel_decide
theorem rows9522 : actualRows9522=WordField.canonicalRows actualModulus 9522 (.bxor 9520 9521) := by core033_kernel_decide
theorem stats9522 : actualRows9522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9522=7428 := by core033_kernel_decide
theorem rows9523 : actualRows9523=WordField.canonicalRows actualModulus 9523 (.band 9502 9475) := by core033_kernel_decide
theorem stats9523 : actualRows9523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9523=5124 := by core033_kernel_decide
theorem rows9524 : actualRows9524=WordField.canonicalRows actualModulus 9524 (.band 9502 9448) := by core033_kernel_decide
theorem stats9524 : actualRows9524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9524=5124 := by core033_kernel_decide
theorem rows9525 : actualRows9525=WordField.canonicalRows actualModulus 9525 (.bxor 9523 9524) := by core033_kernel_decide
theorem stats9525 : actualRows9525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9525=7428 := by core033_kernel_decide
theorem rows9526 : actualRows9526=WordField.canonicalRows actualModulus 9526 (.band 9475 9448) := by core033_kernel_decide
theorem stats9526 : actualRows9526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9526=5124 := by core033_kernel_decide
theorem rows9527 : actualRows9527=WordField.canonicalRows actualModulus 9527 (.bxor 9525 9526) := by core033_kernel_decide
theorem stats9527 : actualRows9527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9527=7428 := by core033_kernel_decide
theorem rows9528 : actualRows9528=WordField.canonicalRows actualModulus 9528 (.badd 9522 9527) := by core033_kernel_decide
theorem stats9528 : actualRows9528.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9528=5388 := by core033_kernel_decide
theorem rows9529 : actualRows9529=WordField.canonicalRows actualModulus 9529 (.badd 9517 9528) := by core033_kernel_decide
theorem stats9529 : actualRows9529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9529=5388 := by core033_kernel_decide
theorem rows9530 : actualRows9530=WordField.canonicalRows actualModulus 9530 (.badd 9421 9517) := by core033_kernel_decide
theorem stats9530 : actualRows9530.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9530=5388 := by core033_kernel_decide
theorem rows9531 : actualRows9531=WordField.canonicalRows actualModulus 9531 (.rotr 9530 6) := by core033_kernel_decide
theorem stats9531 : actualRows9531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9531=5124 := by core033_kernel_decide
theorem rows9532 : actualRows9532=WordField.canonicalRows actualModulus 9532 (.rotr 9530 11) := by core033_kernel_decide
theorem stats9532 : actualRows9532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9532=5124 := by core033_kernel_decide
theorem rows9533 : actualRows9533=WordField.canonicalRows actualModulus 9533 (.bxor 9531 9532) := by core033_kernel_decide
theorem stats9533 : actualRows9533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9533=7428 := by core033_kernel_decide
theorem rows9534 : actualRows9534=WordField.canonicalRows actualModulus 9534 (.rotr 9530 25) := by core033_kernel_decide
theorem stats9534 : actualRows9534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9534=5124 := by core033_kernel_decide
theorem rows9535 : actualRows9535=WordField.canonicalRows actualModulus 9535 (.bxor 9533 9534) := by core033_kernel_decide
theorem stats9535 : actualRows9535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9535=7428 := by core033_kernel_decide
theorem rows9536 : actualRows9536=WordField.canonicalRows actualModulus 9536 (.badd 9449 9535) := by core033_kernel_decide
theorem stats9536 : actualRows9536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9536=5388 := by core033_kernel_decide
theorem rows9537 : actualRows9537=WordField.canonicalRows actualModulus 9537 (.band 9530 9503) := by core033_kernel_decide
theorem stats9537 : actualRows9537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9537=5124 := by core033_kernel_decide
theorem rows9538 : actualRows9538=WordField.canonicalRows actualModulus 9538 (.bnot 9530) := by core033_kernel_decide
theorem stats9538 : actualRows9538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9538=6276 := by core033_kernel_decide
theorem rows9539 : actualRows9539=WordField.canonicalRows actualModulus 9539 (.band 9538 9476) := by core033_kernel_decide
theorem stats9539 : actualRows9539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9539=5124 := by core033_kernel_decide
theorem rows9540 : actualRows9540=WordField.canonicalRows actualModulus 9540 (.bxor 9537 9539) := by core033_kernel_decide
theorem stats9540 : actualRows9540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9540=7428 := by core033_kernel_decide
theorem rows9541 : actualRows9541=WordField.canonicalRows actualModulus 9541 (.badd 9536 9540) := by core033_kernel_decide
theorem stats9541 : actualRows9541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9541=5388 := by core033_kernel_decide
theorem rows9542 : actualRows9542=WordField.canonicalRows actualModulus 9542 (.literal (BitVec.ofNat 32 1537002063)) := by core033_kernel_decide
theorem stats9542 : actualRows9542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9542=4116 := by core033_kernel_decide
theorem rows9543 : actualRows9543=WordField.canonicalRows actualModulus 9543 (.badd 9541 9542) := by core033_kernel_decide
theorem stats9543 : actualRows9543.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9543=5388 := by core033_kernel_decide
theorem rows9544 : actualRows9544=WordField.canonicalRows actualModulus 9544 (.badd 9543 7955) := by core033_kernel_decide
theorem stats9544 : actualRows9544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9544=5388 := by core033_kernel_decide
theorem rows9545 : actualRows9545=WordField.canonicalRows actualModulus 9545 (.rotr 9529 2) := by core033_kernel_decide
theorem stats9545 : actualRows9545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9545=5124 := by core033_kernel_decide
theorem rows9546 : actualRows9546=WordField.canonicalRows actualModulus 9546 (.rotr 9529 13) := by core033_kernel_decide
theorem stats9546 : actualRows9546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9546=5124 := by core033_kernel_decide
theorem rows9547 : actualRows9547=WordField.canonicalRows actualModulus 9547 (.bxor 9545 9546) := by core033_kernel_decide
theorem stats9547 : actualRows9547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9547=7428 := by core033_kernel_decide
theorem rows9548 : actualRows9548=WordField.canonicalRows actualModulus 9548 (.rotr 9529 22) := by core033_kernel_decide
theorem stats9548 : actualRows9548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9548=5124 := by core033_kernel_decide
theorem rows9549 : actualRows9549=WordField.canonicalRows actualModulus 9549 (.bxor 9547 9548) := by core033_kernel_decide
theorem stats9549 : actualRows9549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9549=7428 := by core033_kernel_decide
theorem rows9550 : actualRows9550=WordField.canonicalRows actualModulus 9550 (.band 9529 9502) := by core033_kernel_decide
theorem stats9550 : actualRows9550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9550=5124 := by core033_kernel_decide
theorem rows9551 : actualRows9551=WordField.canonicalRows actualModulus 9551 (.band 9529 9475) := by core033_kernel_decide
theorem stats9551 : actualRows9551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9551=5124 := by core033_kernel_decide
theorem rows9552 : actualRows9552=WordField.canonicalRows actualModulus 9552 (.bxor 9550 9551) := by core033_kernel_decide
theorem stats9552 : actualRows9552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9552=7428 := by core033_kernel_decide
theorem rows9553 : actualRows9553=WordField.canonicalRows actualModulus 9553 (.band 9502 9475) := by core033_kernel_decide
theorem stats9553 : actualRows9553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9553=5124 := by core033_kernel_decide
theorem rows9554 : actualRows9554=WordField.canonicalRows actualModulus 9554 (.bxor 9552 9553) := by core033_kernel_decide
theorem stats9554 : actualRows9554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9554=7428 := by core033_kernel_decide
theorem rows9555 : actualRows9555=WordField.canonicalRows actualModulus 9555 (.badd 9549 9554) := by core033_kernel_decide
theorem stats9555 : actualRows9555.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9555=5388 := by core033_kernel_decide
theorem rows9556 : actualRows9556=WordField.canonicalRows actualModulus 9556 (.badd 9544 9555) := by core033_kernel_decide
theorem stats9556 : actualRows9556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9556=5388 := by core033_kernel_decide
theorem rows9557 : actualRows9557=WordField.canonicalRows actualModulus 9557 (.badd 9448 9544) := by core033_kernel_decide
theorem stats9557 : actualRows9557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9557=5388 := by core033_kernel_decide
theorem rows9558 : actualRows9558=WordField.canonicalRows actualModulus 9558 (.rotr 9557 6) := by core033_kernel_decide
theorem stats9558 : actualRows9558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9558=5124 := by core033_kernel_decide
theorem rows9559 : actualRows9559=WordField.canonicalRows actualModulus 9559 (.rotr 9557 11) := by core033_kernel_decide
theorem stats9559 : actualRows9559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9559=5124 := by core033_kernel_decide
theorem rows9560 : actualRows9560=WordField.canonicalRows actualModulus 9560 (.bxor 9558 9559) := by core033_kernel_decide
theorem stats9560 : actualRows9560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9560=7428 := by core033_kernel_decide
theorem rows9561 : actualRows9561=WordField.canonicalRows actualModulus 9561 (.rotr 9557 25) := by core033_kernel_decide
theorem stats9561 : actualRows9561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9561=5124 := by core033_kernel_decide
theorem rows9562 : actualRows9562=WordField.canonicalRows actualModulus 9562 (.bxor 9560 9561) := by core033_kernel_decide
theorem stats9562 : actualRows9562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9562=7428 := by core033_kernel_decide
theorem rows9563 : actualRows9563=WordField.canonicalRows actualModulus 9563 (.badd 9476 9562) := by core033_kernel_decide
theorem stats9563 : actualRows9563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9563=5388 := by core033_kernel_decide
theorem rows9564 : actualRows9564=WordField.canonicalRows actualModulus 9564 (.band 9557 9530) := by core033_kernel_decide
theorem stats9564 : actualRows9564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9564=5124 := by core033_kernel_decide
theorem rows9565 : actualRows9565=WordField.canonicalRows actualModulus 9565 (.bnot 9557) := by core033_kernel_decide
theorem stats9565 : actualRows9565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9565=6276 := by core033_kernel_decide
theorem rows9566 : actualRows9566=WordField.canonicalRows actualModulus 9566 (.band 9565 9503) := by core033_kernel_decide
theorem stats9566 : actualRows9566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9566=5124 := by core033_kernel_decide
theorem rows9567 : actualRows9567=WordField.canonicalRows actualModulus 9567 (.bxor 9564 9566) := by core033_kernel_decide
theorem stats9567 : actualRows9567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9567=7428 := by core033_kernel_decide
def partRows147 : List R1CS.Row := actualRows9504++actualRows9505++actualRows9506++actualRows9507++actualRows9508++actualRows9509++actualRows9510++actualRows9511++actualRows9512++actualRows9513++actualRows9514++actualRows9515++actualRows9516++actualRows9517++actualRows9518++actualRows9519++actualRows9520++actualRows9521++actualRows9522++actualRows9523++actualRows9524++actualRows9525++actualRows9526++actualRows9527++actualRows9528++actualRows9529++actualRows9530++actualRows9531++actualRows9532++actualRows9533++actualRows9534++actualRows9535++actualRows9536++actualRows9537++actualRows9538++actualRows9539++actualRows9540++actualRows9541++actualRows9542++actualRows9543++actualRows9544++actualRows9545++actualRows9546++actualRows9547++actualRows9548++actualRows9549++actualRows9550++actualRows9551++actualRows9552++actualRows9553++actualRows9554++actualRows9555++actualRows9556++actualRows9557++actualRows9558++actualRows9559++actualRows9560++actualRows9561++actualRows9562++actualRows9563++actualRows9564++actualRows9565++actualRows9566++actualRows9567
def partOps147 : List WordIR.Op := [.rotr 9503 6,.rotr 9503 11,.bxor 9504 9505,.rotr 9503 25,.bxor 9506 9507,.badd 9422 9508,.band 9503 9476,.bnot 9503,.band 9511 9449,.bxor 9510 9512,.badd 9509 9513,.literal (BitVec.ofNat 32 1322822218),.badd 9514 9515,.badd 9516 7942,.rotr 9502 2,.rotr 9502 13,.bxor 9518 9519,.rotr 9502 22,.bxor 9520 9521,.band 9502 9475,.band 9502 9448,.bxor 9523 9524,.band 9475 9448,.bxor 9525 9526,.badd 9522 9527,.badd 9517 9528,.badd 9421 9517,.rotr 9530 6,.rotr 9530 11,.bxor 9531 9532,.rotr 9530 25,.bxor 9533 9534,.badd 9449 9535,.band 9530 9503,.bnot 9530,.band 9538 9476,.bxor 9537 9539,.badd 9536 9540,.literal (BitVec.ofNat 32 1537002063),.badd 9541 9542,.badd 9543 7955,.rotr 9529 2,.rotr 9529 13,.bxor 9545 9546,.rotr 9529 22,.bxor 9547 9548,.band 9529 9502,.band 9529 9475,.bxor 9550 9551,.band 9502 9475,.bxor 9552 9553,.badd 9549 9554,.badd 9544 9555,.badd 9448 9544,.rotr 9557 6,.rotr 9557 11,.bxor 9558 9559,.rotr 9557 25,.bxor 9560 9561,.badd 9476 9562,.band 9557 9530,.bnot 9557,.band 9565 9503,.bxor 9564 9566]
theorem partExact147 : partRows147=WordField.rows actualModulus 9504 partOps147 := by
  simp only [partRows147,partOps147,WordField.rows,rows9504,rows9505,rows9506,rows9507,rows9508,rows9509,rows9510,rows9511,rows9512,rows9513,rows9514,rows9515,rows9516,rows9517,rows9518,rows9519,rows9520,rows9521,rows9522,rows9523,rows9524,rows9525,rows9526,rows9527,rows9528,rows9529,rows9530,rows9531,rows9532,rows9533,rows9534,rows9535,rows9536,rows9537,rows9538,rows9539,rows9540,rows9541,rows9542,rows9543,rows9544,rows9545,rows9546,rows9547,rows9548,rows9549,rows9550,rows9551,rows9552,rows9553,rows9554,rows9555,rows9556,rows9557,rows9558,rows9559,rows9560,rows9561,rows9562,rows9563,rows9564,rows9565,rows9566,rows9567,List.append_assoc,List.append_nil]
theorem partLength147 : partOps147.length=64 := by decide
theorem partStats147 : partRows147.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows147=372288 := by
  simp only [partRows147,List.length_append,MatrixRowBlocks.rows_weight_append,stats9504.1,stats9504.2,stats9505.1,stats9505.2,stats9506.1,stats9506.2,stats9507.1,stats9507.2,stats9508.1,stats9508.2,stats9509.1,stats9509.2,stats9510.1,stats9510.2,stats9511.1,stats9511.2,stats9512.1,stats9512.2,stats9513.1,stats9513.2,stats9514.1,stats9514.2,stats9515.1,stats9515.2,stats9516.1,stats9516.2,stats9517.1,stats9517.2,stats9518.1,stats9518.2,stats9519.1,stats9519.2,stats9520.1,stats9520.2,stats9521.1,stats9521.2,stats9522.1,stats9522.2,stats9523.1,stats9523.2,stats9524.1,stats9524.2,stats9525.1,stats9525.2,stats9526.1,stats9526.2,stats9527.1,stats9527.2,stats9528.1,stats9528.2,stats9529.1,stats9529.2,stats9530.1,stats9530.2,stats9531.1,stats9531.2,stats9532.1,stats9532.2,stats9533.1,stats9533.2,stats9534.1,stats9534.2,stats9535.1,stats9535.2,stats9536.1,stats9536.2,stats9537.1,stats9537.2,stats9538.1,stats9538.2,stats9539.1,stats9539.2,stats9540.1,stats9540.2,stats9541.1,stats9541.2,stats9542.1,stats9542.2,stats9543.1,stats9543.2,stats9544.1,stats9544.2,stats9545.1,stats9545.2,stats9546.1,stats9546.2,stats9547.1,stats9547.2,stats9548.1,stats9548.2,stats9549.1,stats9549.2,stats9550.1,stats9550.2,stats9551.1,stats9551.2,stats9552.1,stats9552.2,stats9553.1,stats9553.2,stats9554.1,stats9554.2,stats9555.1,stats9555.2,stats9556.1,stats9556.2,stats9557.1,stats9557.2,stats9558.1,stats9558.2,stats9559.1,stats9559.2,stats9560.1,stats9560.2,stats9561.1,stats9561.2,stats9562.1,stats9562.2,stats9563.1,stats9563.2,stats9564.1,stats9564.2,stats9565.1,stats9565.2,stats9566.1,stats9566.2,stats9567.1,stats9567.2]
  decide
end PairedPathRoundCheckedRows
