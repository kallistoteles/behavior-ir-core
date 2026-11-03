import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData85
import PairedPathRoundInstructionMatrixData86
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5472 : actualRows5472=WordField.canonicalRows actualModulus 5472 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5472 : actualRows5472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5472=2820 := by core033_kernel_decide
theorem rows5473 : actualRows5473=WordField.canonicalRows actualModulus 5473 (.bnot 5472) := by core033_kernel_decide
theorem stats5473 : actualRows5473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5473=6276 := by core033_kernel_decide
theorem rows5474 : actualRows5474=WordField.canonicalRows actualModulus 5474 (.badd 5471 5473) := by core033_kernel_decide
theorem stats5474 : actualRows5474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5474=5388 := by core033_kernel_decide
theorem rows5475 : actualRows5475=WordField.canonicalRows actualModulus 5475 (.bnot 5474) := by core033_kernel_decide
theorem stats5475 : actualRows5475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5475=6276 := by core033_kernel_decide
theorem rows5476 : actualRows5476=WordField.canonicalRows actualModulus 5476 (.band 5469 5475) := by core033_kernel_decide
theorem stats5476 : actualRows5476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5476=5124 := by core033_kernel_decide
theorem rows5477 : actualRows5477=WordField.canonicalRows actualModulus 5477 (.bxor 5464 5476) := by core033_kernel_decide
theorem stats5477 : actualRows5477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5477=7428 := by core033_kernel_decide
theorem rows5478 : actualRows5478=WordField.canonicalRows actualModulus 5478 (.shr 5477 31) := by core033_kernel_decide
theorem stats5478 : actualRows5478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5478=2892 := by core033_kernel_decide
theorem rows5479 : actualRows5479=WordField.canonicalRows actualModulus 5479 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5479 : actualRows5479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5479=2892 := by core033_kernel_decide
theorem rows5480 : actualRows5480=WordField.canonicalRows actualModulus 5480 (.bxor 5478 5479) := by core033_kernel_decide
theorem stats5480 : actualRows5480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5480=7428 := by core033_kernel_decide
theorem rows5481 : actualRows5481=WordField.canonicalRows actualModulus 5481 (.bnot 5480) := by core033_kernel_decide
theorem stats5481 : actualRows5481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5481=6276 := by core033_kernel_decide
theorem rows5482 : actualRows5482=WordField.canonicalRows actualModulus 5482 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5482 : actualRows5482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5482=2892 := by core033_kernel_decide
theorem rows5483 : actualRows5483=WordField.canonicalRows actualModulus 5483 (.badd 5481 5482) := by core033_kernel_decide
theorem stats5483 : actualRows5483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5483=5388 := by core033_kernel_decide
theorem rows5484 : actualRows5484=WordField.canonicalRows actualModulus 5484 (.band 5483 2163) := by core033_kernel_decide
theorem stats5484 : actualRows5484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5484=5124 := by core033_kernel_decide
theorem rows5485 : actualRows5485=WordField.canonicalRows actualModulus 5485 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5485 : actualRows5485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5485=2892 := by core033_kernel_decide
theorem rows5486 : actualRows5486=WordField.canonicalRows actualModulus 5486 (.bxor 616 5485) := by core033_kernel_decide
theorem stats5486 : actualRows5486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5486=7428 := by core033_kernel_decide
theorem rows5487 : actualRows5487=WordField.canonicalRows actualModulus 5487 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5487 : actualRows5487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5487=2820 := by core033_kernel_decide
theorem rows5488 : actualRows5488=WordField.canonicalRows actualModulus 5488 (.bnot 5487) := by core033_kernel_decide
theorem stats5488 : actualRows5488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5488=6276 := by core033_kernel_decide
theorem rows5489 : actualRows5489=WordField.canonicalRows actualModulus 5489 (.band 5486 5488) := by core033_kernel_decide
theorem stats5489 : actualRows5489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5489=5124 := by core033_kernel_decide
theorem rows5490 : actualRows5490=WordField.canonicalRows actualModulus 5490 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5490 : actualRows5490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5490=2892 := by core033_kernel_decide
theorem rows5491 : actualRows5491=WordField.canonicalRows actualModulus 5491 (.bxor 616 5490) := by core033_kernel_decide
theorem stats5491 : actualRows5491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5491=7428 := by core033_kernel_decide
theorem rows5492 : actualRows5492=WordField.canonicalRows actualModulus 5492 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5492 : actualRows5492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5492=2820 := by core033_kernel_decide
theorem rows5493 : actualRows5493=WordField.canonicalRows actualModulus 5493 (.bnot 5492) := by core033_kernel_decide
theorem stats5493 : actualRows5493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5493=6276 := by core033_kernel_decide
theorem rows5494 : actualRows5494=WordField.canonicalRows actualModulus 5494 (.bxor 5491 5493) := by core033_kernel_decide
theorem stats5494 : actualRows5494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5494=7428 := by core033_kernel_decide
theorem rows5495 : actualRows5495=WordField.canonicalRows actualModulus 5495 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5495 : actualRows5495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5495=2892 := by core033_kernel_decide
theorem rows5496 : actualRows5496=WordField.canonicalRows actualModulus 5496 (.bxor 616 5495) := by core033_kernel_decide
theorem stats5496 : actualRows5496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5496=7428 := by core033_kernel_decide
theorem rows5497 : actualRows5497=WordField.canonicalRows actualModulus 5497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5497 : actualRows5497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5497=2820 := by core033_kernel_decide
theorem rows5498 : actualRows5498=WordField.canonicalRows actualModulus 5498 (.bnot 5497) := by core033_kernel_decide
theorem stats5498 : actualRows5498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5498=6276 := by core033_kernel_decide
theorem rows5499 : actualRows5499=WordField.canonicalRows actualModulus 5499 (.badd 5496 5498) := by core033_kernel_decide
theorem stats5499 : actualRows5499.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5499=5388 := by core033_kernel_decide
theorem rows5500 : actualRows5500=WordField.canonicalRows actualModulus 5500 (.bnot 5499) := by core033_kernel_decide
theorem stats5500 : actualRows5500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5500=6276 := by core033_kernel_decide
theorem rows5501 : actualRows5501=WordField.canonicalRows actualModulus 5501 (.band 5494 5500) := by core033_kernel_decide
theorem stats5501 : actualRows5501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5501=5124 := by core033_kernel_decide
theorem rows5502 : actualRows5502=WordField.canonicalRows actualModulus 5502 (.bxor 5489 5501) := by core033_kernel_decide
theorem stats5502 : actualRows5502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5502=7428 := by core033_kernel_decide
theorem rows5503 : actualRows5503=WordField.canonicalRows actualModulus 5503 (.shr 5502 31) := by core033_kernel_decide
theorem stats5503 : actualRows5503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5503=2892 := by core033_kernel_decide
theorem rows5504 : actualRows5504=WordField.canonicalRows actualModulus 5504 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5504 : actualRows5504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5504=2892 := by core033_kernel_decide
theorem rows5505 : actualRows5505=WordField.canonicalRows actualModulus 5505 (.bxor 5503 5504) := by core033_kernel_decide
theorem stats5505 : actualRows5505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5505=7428 := by core033_kernel_decide
theorem rows5506 : actualRows5506=WordField.canonicalRows actualModulus 5506 (.bnot 5505) := by core033_kernel_decide
theorem stats5506 : actualRows5506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5506=6276 := by core033_kernel_decide
theorem rows5507 : actualRows5507=WordField.canonicalRows actualModulus 5507 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5507 : actualRows5507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5507=2892 := by core033_kernel_decide
theorem rows5508 : actualRows5508=WordField.canonicalRows actualModulus 5508 (.badd 5506 5507) := by core033_kernel_decide
theorem stats5508 : actualRows5508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5508=5388 := by core033_kernel_decide
theorem rows5509 : actualRows5509=WordField.canonicalRows actualModulus 5509 (.bnot 5508) := by core033_kernel_decide
theorem stats5509 : actualRows5509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5509=6276 := by core033_kernel_decide
theorem rows5510 : actualRows5510=WordField.canonicalRows actualModulus 5510 (.band 5509 1971) := by core033_kernel_decide
theorem stats5510 : actualRows5510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5510=5124 := by core033_kernel_decide
theorem rows5511 : actualRows5511=WordField.canonicalRows actualModulus 5511 (.bxor 5484 5510) := by core033_kernel_decide
theorem stats5511 : actualRows5511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5511=7428 := by core033_kernel_decide
theorem rows5512 : actualRows5512=WordField.canonicalRows actualModulus 5512 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5512 : actualRows5512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5512=2892 := by core033_kernel_decide
theorem rows5513 : actualRows5513=WordField.canonicalRows actualModulus 5513 (.bxor 616 5512) := by core033_kernel_decide
theorem stats5513 : actualRows5513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5513=7428 := by core033_kernel_decide
theorem rows5514 : actualRows5514=WordField.canonicalRows actualModulus 5514 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5514 : actualRows5514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5514=2820 := by core033_kernel_decide
theorem rows5515 : actualRows5515=WordField.canonicalRows actualModulus 5515 (.bnot 5514) := by core033_kernel_decide
theorem stats5515 : actualRows5515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5515=6276 := by core033_kernel_decide
theorem rows5516 : actualRows5516=WordField.canonicalRows actualModulus 5516 (.band 5513 5515) := by core033_kernel_decide
theorem stats5516 : actualRows5516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5516=5124 := by core033_kernel_decide
theorem rows5517 : actualRows5517=WordField.canonicalRows actualModulus 5517 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5517 : actualRows5517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5517=2892 := by core033_kernel_decide
theorem rows5518 : actualRows5518=WordField.canonicalRows actualModulus 5518 (.bxor 616 5517) := by core033_kernel_decide
theorem stats5518 : actualRows5518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5518=7428 := by core033_kernel_decide
theorem rows5519 : actualRows5519=WordField.canonicalRows actualModulus 5519 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5519 : actualRows5519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5519=2820 := by core033_kernel_decide
theorem rows5520 : actualRows5520=WordField.canonicalRows actualModulus 5520 (.bnot 5519) := by core033_kernel_decide
theorem stats5520 : actualRows5520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5520=6276 := by core033_kernel_decide
theorem rows5521 : actualRows5521=WordField.canonicalRows actualModulus 5521 (.bxor 5518 5520) := by core033_kernel_decide
theorem stats5521 : actualRows5521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5521=7428 := by core033_kernel_decide
theorem rows5522 : actualRows5522=WordField.canonicalRows actualModulus 5522 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5522 : actualRows5522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5522=2892 := by core033_kernel_decide
theorem rows5523 : actualRows5523=WordField.canonicalRows actualModulus 5523 (.bxor 616 5522) := by core033_kernel_decide
theorem stats5523 : actualRows5523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5523=7428 := by core033_kernel_decide
theorem rows5524 : actualRows5524=WordField.canonicalRows actualModulus 5524 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5524 : actualRows5524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5524=2820 := by core033_kernel_decide
theorem rows5525 : actualRows5525=WordField.canonicalRows actualModulus 5525 (.bnot 5524) := by core033_kernel_decide
theorem stats5525 : actualRows5525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5525=6276 := by core033_kernel_decide
theorem rows5526 : actualRows5526=WordField.canonicalRows actualModulus 5526 (.badd 5523 5525) := by core033_kernel_decide
theorem stats5526 : actualRows5526.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5526=5388 := by core033_kernel_decide
theorem rows5527 : actualRows5527=WordField.canonicalRows actualModulus 5527 (.bnot 5526) := by core033_kernel_decide
theorem stats5527 : actualRows5527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5527=6276 := by core033_kernel_decide
theorem rows5528 : actualRows5528=WordField.canonicalRows actualModulus 5528 (.band 5521 5527) := by core033_kernel_decide
theorem stats5528 : actualRows5528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5528=5124 := by core033_kernel_decide
theorem rows5529 : actualRows5529=WordField.canonicalRows actualModulus 5529 (.bxor 5516 5528) := by core033_kernel_decide
theorem stats5529 : actualRows5529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5529=7428 := by core033_kernel_decide
theorem rows5530 : actualRows5530=WordField.canonicalRows actualModulus 5530 (.shr 5529 31) := by core033_kernel_decide
theorem stats5530 : actualRows5530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5530=2892 := by core033_kernel_decide
theorem rows5531 : actualRows5531=WordField.canonicalRows actualModulus 5531 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5531 : actualRows5531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5531=2892 := by core033_kernel_decide
theorem rows5532 : actualRows5532=WordField.canonicalRows actualModulus 5532 (.bxor 5530 5531) := by core033_kernel_decide
theorem stats5532 : actualRows5532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5532=7428 := by core033_kernel_decide
theorem rows5533 : actualRows5533=WordField.canonicalRows actualModulus 5533 (.bnot 5532) := by core033_kernel_decide
theorem stats5533 : actualRows5533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5533=6276 := by core033_kernel_decide
theorem rows5534 : actualRows5534=WordField.canonicalRows actualModulus 5534 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5534 : actualRows5534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5534=2892 := by core033_kernel_decide
theorem rows5535 : actualRows5535=WordField.canonicalRows actualModulus 5535 (.badd 5533 5534) := by core033_kernel_decide
theorem stats5535 : actualRows5535.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5535=5388 := by core033_kernel_decide
def partRows84 : List R1CS.Row := actualRows5472++actualRows5473++actualRows5474++actualRows5475++actualRows5476++actualRows5477++actualRows5478++actualRows5479++actualRows5480++actualRows5481++actualRows5482++actualRows5483++actualRows5484++actualRows5485++actualRows5486++actualRows5487++actualRows5488++actualRows5489++actualRows5490++actualRows5491++actualRows5492++actualRows5493++actualRows5494++actualRows5495++actualRows5496++actualRows5497++actualRows5498++actualRows5499++actualRows5500++actualRows5501++actualRows5502++actualRows5503++actualRows5504++actualRows5505++actualRows5506++actualRows5507++actualRows5508++actualRows5509++actualRows5510++actualRows5511++actualRows5512++actualRows5513++actualRows5514++actualRows5515++actualRows5516++actualRows5517++actualRows5518++actualRows5519++actualRows5520++actualRows5521++actualRows5522++actualRows5523++actualRows5524++actualRows5525++actualRows5526++actualRows5527++actualRows5528++actualRows5529++actualRows5530++actualRows5531++actualRows5532++actualRows5533++actualRows5534++actualRows5535
def partOps84 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 5472,.badd 5471 5473,.bnot 5474,.band 5469 5475,.bxor 5464 5476,.shr 5477 31,.literal (BitVec.ofNat 32 1),.bxor 5478 5479,.bnot 5480,.literal (BitVec.ofNat 32 1),.badd 5481 5482,.band 5483 2163,.literal (BitVec.ofNat 32 2),.bxor 616 5485,.literal (BitVec.ofNat 32 0),.bnot 5487,.band 5486 5488,.literal (BitVec.ofNat 32 2),.bxor 616 5490,.literal (BitVec.ofNat 32 0),.bnot 5492,.bxor 5491 5493,.literal (BitVec.ofNat 32 2),.bxor 616 5495,.literal (BitVec.ofNat 32 0),.bnot 5497,.badd 5496 5498,.bnot 5499,.band 5494 5500,.bxor 5489 5501,.shr 5502 31,.literal (BitVec.ofNat 32 1),.bxor 5503 5504,.bnot 5505,.literal (BitVec.ofNat 32 1),.badd 5506 5507,.bnot 5508,.band 5509 1971,.bxor 5484 5510,.literal (BitVec.ofNat 32 2),.bxor 616 5512,.literal (BitVec.ofNat 32 0),.bnot 5514,.band 5513 5515,.literal (BitVec.ofNat 32 2),.bxor 616 5517,.literal (BitVec.ofNat 32 0),.bnot 5519,.bxor 5518 5520,.literal (BitVec.ofNat 32 2),.bxor 616 5522,.literal (BitVec.ofNat 32 0),.bnot 5524,.badd 5523 5525,.bnot 5526,.band 5521 5527,.bxor 5516 5528,.shr 5529 31,.literal (BitVec.ofNat 32 1),.bxor 5530 5531,.bnot 5532,.literal (BitVec.ofNat 32 1),.badd 5533 5534]
theorem partExact84 : partRows84=WordField.rows actualModulus 5472 partOps84 := by
  simp only [partRows84,partOps84,WordField.rows,rows5472,rows5473,rows5474,rows5475,rows5476,rows5477,rows5478,rows5479,rows5480,rows5481,rows5482,rows5483,rows5484,rows5485,rows5486,rows5487,rows5488,rows5489,rows5490,rows5491,rows5492,rows5493,rows5494,rows5495,rows5496,rows5497,rows5498,rows5499,rows5500,rows5501,rows5502,rows5503,rows5504,rows5505,rows5506,rows5507,rows5508,rows5509,rows5510,rows5511,rows5512,rows5513,rows5514,rows5515,rows5516,rows5517,rows5518,rows5519,rows5520,rows5521,rows5522,rows5523,rows5524,rows5525,rows5526,rows5527,rows5528,rows5529,rows5530,rows5531,rows5532,rows5533,rows5534,rows5535,List.append_assoc,List.append_nil]
theorem partLength84 : partOps84.length=64 := by decide
theorem partStats84 : partRows84.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows84=330600 := by
  simp only [partRows84,List.length_append,MatrixRowBlocks.rows_weight_append,stats5472.1,stats5472.2,stats5473.1,stats5473.2,stats5474.1,stats5474.2,stats5475.1,stats5475.2,stats5476.1,stats5476.2,stats5477.1,stats5477.2,stats5478.1,stats5478.2,stats5479.1,stats5479.2,stats5480.1,stats5480.2,stats5481.1,stats5481.2,stats5482.1,stats5482.2,stats5483.1,stats5483.2,stats5484.1,stats5484.2,stats5485.1,stats5485.2,stats5486.1,stats5486.2,stats5487.1,stats5487.2,stats5488.1,stats5488.2,stats5489.1,stats5489.2,stats5490.1,stats5490.2,stats5491.1,stats5491.2,stats5492.1,stats5492.2,stats5493.1,stats5493.2,stats5494.1,stats5494.2,stats5495.1,stats5495.2,stats5496.1,stats5496.2,stats5497.1,stats5497.2,stats5498.1,stats5498.2,stats5499.1,stats5499.2,stats5500.1,stats5500.2,stats5501.1,stats5501.2,stats5502.1,stats5502.2,stats5503.1,stats5503.2,stats5504.1,stats5504.2,stats5505.1,stats5505.2,stats5506.1,stats5506.2,stats5507.1,stats5507.2,stats5508.1,stats5508.2,stats5509.1,stats5509.2,stats5510.1,stats5510.2,stats5511.1,stats5511.2,stats5512.1,stats5512.2,stats5513.1,stats5513.2,stats5514.1,stats5514.2,stats5515.1,stats5515.2,stats5516.1,stats5516.2,stats5517.1,stats5517.2,stats5518.1,stats5518.2,stats5519.1,stats5519.2,stats5520.1,stats5520.2,stats5521.1,stats5521.2,stats5522.1,stats5522.2,stats5523.1,stats5523.2,stats5524.1,stats5524.2,stats5525.1,stats5525.2,stats5526.1,stats5526.2,stats5527.1,stats5527.2,stats5528.1,stats5528.2,stats5529.1,stats5529.2,stats5530.1,stats5530.2,stats5531.1,stats5531.2,stats5532.1,stats5532.2,stats5533.1,stats5533.2,stats5534.1,stats5534.2,stats5535.1,stats5535.2]
  decide
end PairedPathRoundCheckedRows
