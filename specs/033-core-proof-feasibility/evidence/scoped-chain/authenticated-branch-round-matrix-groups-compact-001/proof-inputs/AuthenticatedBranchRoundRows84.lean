import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData85
import AuthenticatedBranchRoundInstructionMatrixData86
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5494 : actualRows5494=WordField.canonicalRows actualModulus 5494 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5494 : actualRows5494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5494=2820 := by core033_kernel_decide
theorem rows5495 : actualRows5495=WordField.canonicalRows actualModulus 5495 (.bnot 5494) := by core033_kernel_decide
theorem stats5495 : actualRows5495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5495=6276 := by core033_kernel_decide
theorem rows5496 : actualRows5496=WordField.canonicalRows actualModulus 5496 (.band 5493 5495) := by core033_kernel_decide
theorem stats5496 : actualRows5496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5496=5124 := by core033_kernel_decide
theorem rows5497 : actualRows5497=WordField.canonicalRows actualModulus 5497 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5497 : actualRows5497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5497=2892 := by core033_kernel_decide
theorem rows5498 : actualRows5498=WordField.canonicalRows actualModulus 5498 (.bxor 1299 5497) := by core033_kernel_decide
theorem stats5498 : actualRows5498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5498=7428 := by core033_kernel_decide
theorem rows5499 : actualRows5499=WordField.canonicalRows actualModulus 5499 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5499 : actualRows5499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5499=2820 := by core033_kernel_decide
theorem rows5500 : actualRows5500=WordField.canonicalRows actualModulus 5500 (.bnot 5499) := by core033_kernel_decide
theorem stats5500 : actualRows5500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5500=6276 := by core033_kernel_decide
theorem rows5501 : actualRows5501=WordField.canonicalRows actualModulus 5501 (.bxor 5498 5500) := by core033_kernel_decide
theorem stats5501 : actualRows5501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5501=7428 := by core033_kernel_decide
theorem rows5502 : actualRows5502=WordField.canonicalRows actualModulus 5502 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5502 : actualRows5502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5502=2892 := by core033_kernel_decide
theorem rows5503 : actualRows5503=WordField.canonicalRows actualModulus 5503 (.bxor 1299 5502) := by core033_kernel_decide
theorem stats5503 : actualRows5503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5503=7428 := by core033_kernel_decide
theorem rows5504 : actualRows5504=WordField.canonicalRows actualModulus 5504 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5504 : actualRows5504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5504=2820 := by core033_kernel_decide
theorem rows5505 : actualRows5505=WordField.canonicalRows actualModulus 5505 (.bnot 5504) := by core033_kernel_decide
theorem stats5505 : actualRows5505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5505=6276 := by core033_kernel_decide
theorem rows5506 : actualRows5506=WordField.canonicalRows actualModulus 5506 (.badd 5503 5505) := by core033_kernel_decide
theorem stats5506 : actualRows5506.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5506=5388 := by core033_kernel_decide
theorem rows5507 : actualRows5507=WordField.canonicalRows actualModulus 5507 (.bnot 5506) := by core033_kernel_decide
theorem stats5507 : actualRows5507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5507=6276 := by core033_kernel_decide
theorem rows5508 : actualRows5508=WordField.canonicalRows actualModulus 5508 (.band 5501 5507) := by core033_kernel_decide
theorem stats5508 : actualRows5508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5508=5124 := by core033_kernel_decide
theorem rows5509 : actualRows5509=WordField.canonicalRows actualModulus 5509 (.bxor 5496 5508) := by core033_kernel_decide
theorem stats5509 : actualRows5509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5509=7428 := by core033_kernel_decide
theorem rows5510 : actualRows5510=WordField.canonicalRows actualModulus 5510 (.shr 5509 31) := by core033_kernel_decide
theorem stats5510 : actualRows5510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5510=2892 := by core033_kernel_decide
theorem rows5511 : actualRows5511=WordField.canonicalRows actualModulus 5511 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5511 : actualRows5511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5511=2892 := by core033_kernel_decide
theorem rows5512 : actualRows5512=WordField.canonicalRows actualModulus 5512 (.bxor 5510 5511) := by core033_kernel_decide
theorem stats5512 : actualRows5512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5512=7428 := by core033_kernel_decide
theorem rows5513 : actualRows5513=WordField.canonicalRows actualModulus 5513 (.bnot 5512) := by core033_kernel_decide
theorem stats5513 : actualRows5513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5513=6276 := by core033_kernel_decide
theorem rows5514 : actualRows5514=WordField.canonicalRows actualModulus 5514 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5514 : actualRows5514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5514=2892 := by core033_kernel_decide
theorem rows5515 : actualRows5515=WordField.canonicalRows actualModulus 5515 (.badd 5513 5514) := by core033_kernel_decide
theorem stats5515 : actualRows5515.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5515=5388 := by core033_kernel_decide
theorem rows5516 : actualRows5516=WordField.canonicalRows actualModulus 5516 (.bnot 5515) := by core033_kernel_decide
theorem stats5516 : actualRows5516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5516=6276 := by core033_kernel_decide
theorem rows5517 : actualRows5517=WordField.canonicalRows actualModulus 5517 (.band 5516 2615) := by core033_kernel_decide
theorem stats5517 : actualRows5517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5517=5124 := by core033_kernel_decide
theorem rows5518 : actualRows5518=WordField.canonicalRows actualModulus 5518 (.bxor 5491 5517) := by core033_kernel_decide
theorem stats5518 : actualRows5518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5518=7428 := by core033_kernel_decide
theorem rows5519 : actualRows5519=WordField.canonicalRows actualModulus 5519 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5519 : actualRows5519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5519=2892 := by core033_kernel_decide
theorem rows5520 : actualRows5520=WordField.canonicalRows actualModulus 5520 (.bxor 1299 5519) := by core033_kernel_decide
theorem stats5520 : actualRows5520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5520=7428 := by core033_kernel_decide
theorem rows5521 : actualRows5521=WordField.canonicalRows actualModulus 5521 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5521 : actualRows5521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5521=2820 := by core033_kernel_decide
theorem rows5522 : actualRows5522=WordField.canonicalRows actualModulus 5522 (.bnot 5521) := by core033_kernel_decide
theorem stats5522 : actualRows5522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5522=6276 := by core033_kernel_decide
theorem rows5523 : actualRows5523=WordField.canonicalRows actualModulus 5523 (.band 5520 5522) := by core033_kernel_decide
theorem stats5523 : actualRows5523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5523=5124 := by core033_kernel_decide
theorem rows5524 : actualRows5524=WordField.canonicalRows actualModulus 5524 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5524 : actualRows5524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5524=2892 := by core033_kernel_decide
theorem rows5525 : actualRows5525=WordField.canonicalRows actualModulus 5525 (.bxor 1299 5524) := by core033_kernel_decide
theorem stats5525 : actualRows5525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5525=7428 := by core033_kernel_decide
theorem rows5526 : actualRows5526=WordField.canonicalRows actualModulus 5526 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5526 : actualRows5526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5526=2820 := by core033_kernel_decide
theorem rows5527 : actualRows5527=WordField.canonicalRows actualModulus 5527 (.bnot 5526) := by core033_kernel_decide
theorem stats5527 : actualRows5527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5527=6276 := by core033_kernel_decide
theorem rows5528 : actualRows5528=WordField.canonicalRows actualModulus 5528 (.bxor 5525 5527) := by core033_kernel_decide
theorem stats5528 : actualRows5528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5528=7428 := by core033_kernel_decide
theorem rows5529 : actualRows5529=WordField.canonicalRows actualModulus 5529 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5529 : actualRows5529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5529=2892 := by core033_kernel_decide
theorem rows5530 : actualRows5530=WordField.canonicalRows actualModulus 5530 (.bxor 1299 5529) := by core033_kernel_decide
theorem stats5530 : actualRows5530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5530=7428 := by core033_kernel_decide
theorem rows5531 : actualRows5531=WordField.canonicalRows actualModulus 5531 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5531 : actualRows5531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5531=2820 := by core033_kernel_decide
theorem rows5532 : actualRows5532=WordField.canonicalRows actualModulus 5532 (.bnot 5531) := by core033_kernel_decide
theorem stats5532 : actualRows5532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5532=6276 := by core033_kernel_decide
theorem rows5533 : actualRows5533=WordField.canonicalRows actualModulus 5533 (.badd 5530 5532) := by core033_kernel_decide
theorem stats5533 : actualRows5533.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5533=5388 := by core033_kernel_decide
theorem rows5534 : actualRows5534=WordField.canonicalRows actualModulus 5534 (.bnot 5533) := by core033_kernel_decide
theorem stats5534 : actualRows5534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5534=6276 := by core033_kernel_decide
theorem rows5535 : actualRows5535=WordField.canonicalRows actualModulus 5535 (.band 5528 5534) := by core033_kernel_decide
theorem stats5535 : actualRows5535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5535=5124 := by core033_kernel_decide
theorem rows5536 : actualRows5536=WordField.canonicalRows actualModulus 5536 (.bxor 5523 5535) := by core033_kernel_decide
theorem stats5536 : actualRows5536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5536=7428 := by core033_kernel_decide
theorem rows5537 : actualRows5537=WordField.canonicalRows actualModulus 5537 (.shr 5536 31) := by core033_kernel_decide
theorem stats5537 : actualRows5537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5537=2892 := by core033_kernel_decide
theorem rows5538 : actualRows5538=WordField.canonicalRows actualModulus 5538 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5538 : actualRows5538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5538=2892 := by core033_kernel_decide
theorem rows5539 : actualRows5539=WordField.canonicalRows actualModulus 5539 (.bxor 5537 5538) := by core033_kernel_decide
theorem stats5539 : actualRows5539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5539=7428 := by core033_kernel_decide
theorem rows5540 : actualRows5540=WordField.canonicalRows actualModulus 5540 (.bnot 5539) := by core033_kernel_decide
theorem stats5540 : actualRows5540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5540=6276 := by core033_kernel_decide
theorem rows5541 : actualRows5541=WordField.canonicalRows actualModulus 5541 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5541 : actualRows5541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5541=2892 := by core033_kernel_decide
theorem rows5542 : actualRows5542=WordField.canonicalRows actualModulus 5542 (.badd 5540 5541) := by core033_kernel_decide
theorem stats5542 : actualRows5542.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5542=5388 := by core033_kernel_decide
theorem rows5543 : actualRows5543=WordField.canonicalRows actualModulus 5543 (.band 5542 2810) := by core033_kernel_decide
theorem stats5543 : actualRows5543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5543=5124 := by core033_kernel_decide
theorem rows5544 : actualRows5544=WordField.canonicalRows actualModulus 5544 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5544 : actualRows5544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5544=2892 := by core033_kernel_decide
theorem rows5545 : actualRows5545=WordField.canonicalRows actualModulus 5545 (.bxor 1299 5544) := by core033_kernel_decide
theorem stats5545 : actualRows5545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5545=7428 := by core033_kernel_decide
theorem rows5546 : actualRows5546=WordField.canonicalRows actualModulus 5546 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5546 : actualRows5546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5546=2820 := by core033_kernel_decide
theorem rows5547 : actualRows5547=WordField.canonicalRows actualModulus 5547 (.bnot 5546) := by core033_kernel_decide
theorem stats5547 : actualRows5547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5547=6276 := by core033_kernel_decide
theorem rows5548 : actualRows5548=WordField.canonicalRows actualModulus 5548 (.band 5545 5547) := by core033_kernel_decide
theorem stats5548 : actualRows5548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5548=5124 := by core033_kernel_decide
theorem rows5549 : actualRows5549=WordField.canonicalRows actualModulus 5549 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5549 : actualRows5549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5549=2892 := by core033_kernel_decide
theorem rows5550 : actualRows5550=WordField.canonicalRows actualModulus 5550 (.bxor 1299 5549) := by core033_kernel_decide
theorem stats5550 : actualRows5550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5550=7428 := by core033_kernel_decide
theorem rows5551 : actualRows5551=WordField.canonicalRows actualModulus 5551 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5551 : actualRows5551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5551=2820 := by core033_kernel_decide
theorem rows5552 : actualRows5552=WordField.canonicalRows actualModulus 5552 (.bnot 5551) := by core033_kernel_decide
theorem stats5552 : actualRows5552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5552=6276 := by core033_kernel_decide
theorem rows5553 : actualRows5553=WordField.canonicalRows actualModulus 5553 (.bxor 5550 5552) := by core033_kernel_decide
theorem stats5553 : actualRows5553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5553=7428 := by core033_kernel_decide
theorem rows5554 : actualRows5554=WordField.canonicalRows actualModulus 5554 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5554 : actualRows5554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5554=2892 := by core033_kernel_decide
theorem rows5555 : actualRows5555=WordField.canonicalRows actualModulus 5555 (.bxor 1299 5554) := by core033_kernel_decide
theorem stats5555 : actualRows5555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5555=7428 := by core033_kernel_decide
theorem rows5556 : actualRows5556=WordField.canonicalRows actualModulus 5556 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5556 : actualRows5556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5556=2820 := by core033_kernel_decide
theorem rows5557 : actualRows5557=WordField.canonicalRows actualModulus 5557 (.bnot 5556) := by core033_kernel_decide
theorem stats5557 : actualRows5557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5557=6276 := by core033_kernel_decide
def partRows84 : List R1CS.Row := actualRows5494++actualRows5495++actualRows5496++actualRows5497++actualRows5498++actualRows5499++actualRows5500++actualRows5501++actualRows5502++actualRows5503++actualRows5504++actualRows5505++actualRows5506++actualRows5507++actualRows5508++actualRows5509++actualRows5510++actualRows5511++actualRows5512++actualRows5513++actualRows5514++actualRows5515++actualRows5516++actualRows5517++actualRows5518++actualRows5519++actualRows5520++actualRows5521++actualRows5522++actualRows5523++actualRows5524++actualRows5525++actualRows5526++actualRows5527++actualRows5528++actualRows5529++actualRows5530++actualRows5531++actualRows5532++actualRows5533++actualRows5534++actualRows5535++actualRows5536++actualRows5537++actualRows5538++actualRows5539++actualRows5540++actualRows5541++actualRows5542++actualRows5543++actualRows5544++actualRows5545++actualRows5546++actualRows5547++actualRows5548++actualRows5549++actualRows5550++actualRows5551++actualRows5552++actualRows5553++actualRows5554++actualRows5555++actualRows5556++actualRows5557
def partOps84 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 5494,.band 5493 5495,.literal (BitVec.ofNat 32 2),.bxor 1299 5497,.literal (BitVec.ofNat 32 0),.bnot 5499,.bxor 5498 5500,.literal (BitVec.ofNat 32 2),.bxor 1299 5502,.literal (BitVec.ofNat 32 0),.bnot 5504,.badd 5503 5505,.bnot 5506,.band 5501 5507,.bxor 5496 5508,.shr 5509 31,.literal (BitVec.ofNat 32 1),.bxor 5510 5511,.bnot 5512,.literal (BitVec.ofNat 32 1),.badd 5513 5514,.bnot 5515,.band 5516 2615,.bxor 5491 5517,.literal (BitVec.ofNat 32 2),.bxor 1299 5519,.literal (BitVec.ofNat 32 0),.bnot 5521,.band 5520 5522,.literal (BitVec.ofNat 32 2),.bxor 1299 5524,.literal (BitVec.ofNat 32 0),.bnot 5526,.bxor 5525 5527,.literal (BitVec.ofNat 32 2),.bxor 1299 5529,.literal (BitVec.ofNat 32 0),.bnot 5531,.badd 5530 5532,.bnot 5533,.band 5528 5534,.bxor 5523 5535,.shr 5536 31,.literal (BitVec.ofNat 32 1),.bxor 5537 5538,.bnot 5539,.literal (BitVec.ofNat 32 1),.badd 5540 5541,.band 5542 2810,.literal (BitVec.ofNat 32 2),.bxor 1299 5544,.literal (BitVec.ofNat 32 0),.bnot 5546,.band 5545 5547,.literal (BitVec.ofNat 32 2),.bxor 1299 5549,.literal (BitVec.ofNat 32 0),.bnot 5551,.bxor 5550 5552,.literal (BitVec.ofNat 32 2),.bxor 1299 5554,.literal (BitVec.ofNat 32 0),.bnot 5556]
theorem partExact84 : partRows84=WordField.rows actualModulus 5494 partOps84 := by
  simp only [partRows84,partOps84,WordField.rows,rows5494,rows5495,rows5496,rows5497,rows5498,rows5499,rows5500,rows5501,rows5502,rows5503,rows5504,rows5505,rows5506,rows5507,rows5508,rows5509,rows5510,rows5511,rows5512,rows5513,rows5514,rows5515,rows5516,rows5517,rows5518,rows5519,rows5520,rows5521,rows5522,rows5523,rows5524,rows5525,rows5526,rows5527,rows5528,rows5529,rows5530,rows5531,rows5532,rows5533,rows5534,rows5535,rows5536,rows5537,rows5538,rows5539,rows5540,rows5541,rows5542,rows5543,rows5544,rows5545,rows5546,rows5547,rows5548,rows5549,rows5550,rows5551,rows5552,rows5553,rows5554,rows5555,rows5556,rows5557,List.append_assoc,List.append_nil]
theorem partLength84 : partOps84.length=64 := by decide
theorem partStats84 : partRows84.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows84=330000 := by
  simp only [partRows84,List.length_append,MatrixRowBlocks.rows_weight_append,stats5494.1,stats5494.2,stats5495.1,stats5495.2,stats5496.1,stats5496.2,stats5497.1,stats5497.2,stats5498.1,stats5498.2,stats5499.1,stats5499.2,stats5500.1,stats5500.2,stats5501.1,stats5501.2,stats5502.1,stats5502.2,stats5503.1,stats5503.2,stats5504.1,stats5504.2,stats5505.1,stats5505.2,stats5506.1,stats5506.2,stats5507.1,stats5507.2,stats5508.1,stats5508.2,stats5509.1,stats5509.2,stats5510.1,stats5510.2,stats5511.1,stats5511.2,stats5512.1,stats5512.2,stats5513.1,stats5513.2,stats5514.1,stats5514.2,stats5515.1,stats5515.2,stats5516.1,stats5516.2,stats5517.1,stats5517.2,stats5518.1,stats5518.2,stats5519.1,stats5519.2,stats5520.1,stats5520.2,stats5521.1,stats5521.2,stats5522.1,stats5522.2,stats5523.1,stats5523.2,stats5524.1,stats5524.2,stats5525.1,stats5525.2,stats5526.1,stats5526.2,stats5527.1,stats5527.2,stats5528.1,stats5528.2,stats5529.1,stats5529.2,stats5530.1,stats5530.2,stats5531.1,stats5531.2,stats5532.1,stats5532.2,stats5533.1,stats5533.2,stats5534.1,stats5534.2,stats5535.1,stats5535.2,stats5536.1,stats5536.2,stats5537.1,stats5537.2,stats5538.1,stats5538.2,stats5539.1,stats5539.2,stats5540.1,stats5540.2,stats5541.1,stats5541.2,stats5542.1,stats5542.2,stats5543.1,stats5543.2,stats5544.1,stats5544.2,stats5545.1,stats5545.2,stats5546.1,stats5546.2,stats5547.1,stats5547.2,stats5548.1,stats5548.2,stats5549.1,stats5549.2,stats5550.1,stats5550.2,stats5551.1,stats5551.2,stats5552.1,stats5552.2,stats5553.1,stats5553.2,stats5554.1,stats5554.2,stats5555.1,stats5555.2,stats5556.1,stats5556.2,stats5557.1,stats5557.2]
  decide
end AuthenticatedBranchRoundCheckedRows
