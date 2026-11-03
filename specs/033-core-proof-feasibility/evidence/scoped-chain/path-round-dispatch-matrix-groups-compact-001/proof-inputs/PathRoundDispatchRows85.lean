import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData85
import PathRoundDispatchInstructionMatrixData86
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5483 : actualRows5483=WordField.canonicalRows actualModulus 5483 (.badd 5480 5482) := by core033_kernel_decide
theorem stats5483 : actualRows5483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5483=5388 := by core033_kernel_decide
theorem rows5484 : actualRows5484=WordField.canonicalRows actualModulus 5484 (.bnot 5483) := by core033_kernel_decide
theorem stats5484 : actualRows5484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5484=6276 := by core033_kernel_decide
theorem rows5485 : actualRows5485=WordField.canonicalRows actualModulus 5485 (.band 5478 5484) := by core033_kernel_decide
theorem stats5485 : actualRows5485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5485=5124 := by core033_kernel_decide
theorem rows5486 : actualRows5486=WordField.canonicalRows actualModulus 5486 (.bxor 5473 5485) := by core033_kernel_decide
theorem stats5486 : actualRows5486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5486=7428 := by core033_kernel_decide
theorem rows5487 : actualRows5487=WordField.canonicalRows actualModulus 5487 (.shr 5486 31) := by core033_kernel_decide
theorem stats5487 : actualRows5487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5487=2892 := by core033_kernel_decide
theorem rows5488 : actualRows5488=WordField.canonicalRows actualModulus 5488 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5488 : actualRows5488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5488=2892 := by core033_kernel_decide
theorem rows5489 : actualRows5489=WordField.canonicalRows actualModulus 5489 (.bxor 5487 5488) := by core033_kernel_decide
theorem stats5489 : actualRows5489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5489=7428 := by core033_kernel_decide
theorem rows5490 : actualRows5490=WordField.canonicalRows actualModulus 5490 (.bnot 5489) := by core033_kernel_decide
theorem stats5490 : actualRows5490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5490=6276 := by core033_kernel_decide
theorem rows5491 : actualRows5491=WordField.canonicalRows actualModulus 5491 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5491 : actualRows5491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5491=2892 := by core033_kernel_decide
theorem rows5492 : actualRows5492=WordField.canonicalRows actualModulus 5492 (.badd 5490 5491) := by core033_kernel_decide
theorem stats5492 : actualRows5492.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5492=5388 := by core033_kernel_decide
theorem rows5493 : actualRows5493=WordField.canonicalRows actualModulus 5493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5493 : actualRows5493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5493=2820 := by core033_kernel_decide
theorem rows5494 : actualRows5494=WordField.canonicalRows actualModulus 5494 (.band 5492 5493) := by core033_kernel_decide
theorem stats5494 : actualRows5494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5494=5124 := by core033_kernel_decide
theorem rows5495 : actualRows5495=WordField.canonicalRows actualModulus 5495 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5495 : actualRows5495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5495=2892 := by core033_kernel_decide
theorem rows5496 : actualRows5496=WordField.canonicalRows actualModulus 5496 (.bxor 96 5495) := by core033_kernel_decide
theorem stats5496 : actualRows5496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5496=7428 := by core033_kernel_decide
theorem rows5497 : actualRows5497=WordField.canonicalRows actualModulus 5497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5497 : actualRows5497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5497=2820 := by core033_kernel_decide
theorem rows5498 : actualRows5498=WordField.canonicalRows actualModulus 5498 (.bnot 5497) := by core033_kernel_decide
theorem stats5498 : actualRows5498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5498=6276 := by core033_kernel_decide
theorem rows5499 : actualRows5499=WordField.canonicalRows actualModulus 5499 (.band 5496 5498) := by core033_kernel_decide
theorem stats5499 : actualRows5499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5499=5124 := by core033_kernel_decide
theorem rows5500 : actualRows5500=WordField.canonicalRows actualModulus 5500 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5500 : actualRows5500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5500=2892 := by core033_kernel_decide
theorem rows5501 : actualRows5501=WordField.canonicalRows actualModulus 5501 (.bxor 96 5500) := by core033_kernel_decide
theorem stats5501 : actualRows5501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5501=7428 := by core033_kernel_decide
theorem rows5502 : actualRows5502=WordField.canonicalRows actualModulus 5502 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5502 : actualRows5502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5502=2820 := by core033_kernel_decide
theorem rows5503 : actualRows5503=WordField.canonicalRows actualModulus 5503 (.bnot 5502) := by core033_kernel_decide
theorem stats5503 : actualRows5503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5503=6276 := by core033_kernel_decide
theorem rows5504 : actualRows5504=WordField.canonicalRows actualModulus 5504 (.bxor 5501 5503) := by core033_kernel_decide
theorem stats5504 : actualRows5504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5504=7428 := by core033_kernel_decide
theorem rows5505 : actualRows5505=WordField.canonicalRows actualModulus 5505 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5505 : actualRows5505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5505=2892 := by core033_kernel_decide
theorem rows5506 : actualRows5506=WordField.canonicalRows actualModulus 5506 (.bxor 96 5505) := by core033_kernel_decide
theorem stats5506 : actualRows5506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5506=7428 := by core033_kernel_decide
theorem rows5507 : actualRows5507=WordField.canonicalRows actualModulus 5507 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5507 : actualRows5507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5507=2820 := by core033_kernel_decide
theorem rows5508 : actualRows5508=WordField.canonicalRows actualModulus 5508 (.bnot 5507) := by core033_kernel_decide
theorem stats5508 : actualRows5508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5508=6276 := by core033_kernel_decide
theorem rows5509 : actualRows5509=WordField.canonicalRows actualModulus 5509 (.badd 5506 5508) := by core033_kernel_decide
theorem stats5509 : actualRows5509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5509=5388 := by core033_kernel_decide
theorem rows5510 : actualRows5510=WordField.canonicalRows actualModulus 5510 (.bnot 5509) := by core033_kernel_decide
theorem stats5510 : actualRows5510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5510=6276 := by core033_kernel_decide
theorem rows5511 : actualRows5511=WordField.canonicalRows actualModulus 5511 (.band 5504 5510) := by core033_kernel_decide
theorem stats5511 : actualRows5511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5511=5124 := by core033_kernel_decide
theorem rows5512 : actualRows5512=WordField.canonicalRows actualModulus 5512 (.bxor 5499 5511) := by core033_kernel_decide
theorem stats5512 : actualRows5512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5512=7428 := by core033_kernel_decide
theorem rows5513 : actualRows5513=WordField.canonicalRows actualModulus 5513 (.shr 5512 31) := by core033_kernel_decide
theorem stats5513 : actualRows5513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5513=2892 := by core033_kernel_decide
theorem rows5514 : actualRows5514=WordField.canonicalRows actualModulus 5514 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5514 : actualRows5514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5514=2892 := by core033_kernel_decide
theorem rows5515 : actualRows5515=WordField.canonicalRows actualModulus 5515 (.bxor 5513 5514) := by core033_kernel_decide
theorem stats5515 : actualRows5515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5515=7428 := by core033_kernel_decide
theorem rows5516 : actualRows5516=WordField.canonicalRows actualModulus 5516 (.bnot 5515) := by core033_kernel_decide
theorem stats5516 : actualRows5516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5516=6276 := by core033_kernel_decide
theorem rows5517 : actualRows5517=WordField.canonicalRows actualModulus 5517 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5517 : actualRows5517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5517=2892 := by core033_kernel_decide
theorem rows5518 : actualRows5518=WordField.canonicalRows actualModulus 5518 (.badd 5516 5517) := by core033_kernel_decide
theorem stats5518 : actualRows5518.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5518=5388 := by core033_kernel_decide
theorem rows5519 : actualRows5519=WordField.canonicalRows actualModulus 5519 (.bnot 5518) := by core033_kernel_decide
theorem stats5519 : actualRows5519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5519=6276 := by core033_kernel_decide
theorem rows5520 : actualRows5520=WordField.canonicalRows actualModulus 5520 (.band 5519 1481) := by core033_kernel_decide
theorem stats5520 : actualRows5520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5520=5124 := by core033_kernel_decide
theorem rows5521 : actualRows5521=WordField.canonicalRows actualModulus 5521 (.bxor 5494 5520) := by core033_kernel_decide
theorem stats5521 : actualRows5521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5521=7428 := by core033_kernel_decide
theorem rows5522 : actualRows5522=WordField.canonicalRows actualModulus 5522 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5522 : actualRows5522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5522=2892 := by core033_kernel_decide
theorem rows5523 : actualRows5523=WordField.canonicalRows actualModulus 5523 (.bxor 96 5522) := by core033_kernel_decide
theorem stats5523 : actualRows5523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5523=7428 := by core033_kernel_decide
theorem rows5524 : actualRows5524=WordField.canonicalRows actualModulus 5524 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5524 : actualRows5524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5524=2820 := by core033_kernel_decide
theorem rows5525 : actualRows5525=WordField.canonicalRows actualModulus 5525 (.bnot 5524) := by core033_kernel_decide
theorem stats5525 : actualRows5525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5525=6276 := by core033_kernel_decide
theorem rows5526 : actualRows5526=WordField.canonicalRows actualModulus 5526 (.band 5523 5525) := by core033_kernel_decide
theorem stats5526 : actualRows5526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5526=5124 := by core033_kernel_decide
theorem rows5527 : actualRows5527=WordField.canonicalRows actualModulus 5527 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5527 : actualRows5527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5527=2892 := by core033_kernel_decide
theorem rows5528 : actualRows5528=WordField.canonicalRows actualModulus 5528 (.bxor 96 5527) := by core033_kernel_decide
theorem stats5528 : actualRows5528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5528=7428 := by core033_kernel_decide
theorem rows5529 : actualRows5529=WordField.canonicalRows actualModulus 5529 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5529 : actualRows5529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5529=2820 := by core033_kernel_decide
theorem rows5530 : actualRows5530=WordField.canonicalRows actualModulus 5530 (.bnot 5529) := by core033_kernel_decide
theorem stats5530 : actualRows5530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5530=6276 := by core033_kernel_decide
theorem rows5531 : actualRows5531=WordField.canonicalRows actualModulus 5531 (.bxor 5528 5530) := by core033_kernel_decide
theorem stats5531 : actualRows5531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5531=7428 := by core033_kernel_decide
theorem rows5532 : actualRows5532=WordField.canonicalRows actualModulus 5532 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5532 : actualRows5532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5532=2892 := by core033_kernel_decide
theorem rows5533 : actualRows5533=WordField.canonicalRows actualModulus 5533 (.bxor 96 5532) := by core033_kernel_decide
theorem stats5533 : actualRows5533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5533=7428 := by core033_kernel_decide
theorem rows5534 : actualRows5534=WordField.canonicalRows actualModulus 5534 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5534 : actualRows5534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5534=2820 := by core033_kernel_decide
theorem rows5535 : actualRows5535=WordField.canonicalRows actualModulus 5535 (.bnot 5534) := by core033_kernel_decide
theorem stats5535 : actualRows5535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5535=6276 := by core033_kernel_decide
theorem rows5536 : actualRows5536=WordField.canonicalRows actualModulus 5536 (.badd 5533 5535) := by core033_kernel_decide
theorem stats5536 : actualRows5536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5536=5388 := by core033_kernel_decide
theorem rows5537 : actualRows5537=WordField.canonicalRows actualModulus 5537 (.bnot 5536) := by core033_kernel_decide
theorem stats5537 : actualRows5537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5537=6276 := by core033_kernel_decide
theorem rows5538 : actualRows5538=WordField.canonicalRows actualModulus 5538 (.band 5531 5537) := by core033_kernel_decide
theorem stats5538 : actualRows5538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5538=5124 := by core033_kernel_decide
theorem rows5539 : actualRows5539=WordField.canonicalRows actualModulus 5539 (.bxor 5526 5538) := by core033_kernel_decide
theorem stats5539 : actualRows5539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5539=7428 := by core033_kernel_decide
theorem rows5540 : actualRows5540=WordField.canonicalRows actualModulus 5540 (.shr 5539 31) := by core033_kernel_decide
theorem stats5540 : actualRows5540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5540=2892 := by core033_kernel_decide
theorem rows5541 : actualRows5541=WordField.canonicalRows actualModulus 5541 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5541 : actualRows5541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5541=2892 := by core033_kernel_decide
theorem rows5542 : actualRows5542=WordField.canonicalRows actualModulus 5542 (.bxor 5540 5541) := by core033_kernel_decide
theorem stats5542 : actualRows5542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5542=7428 := by core033_kernel_decide
theorem rows5543 : actualRows5543=WordField.canonicalRows actualModulus 5543 (.bnot 5542) := by core033_kernel_decide
theorem stats5543 : actualRows5543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5543=6276 := by core033_kernel_decide
theorem rows5544 : actualRows5544=WordField.canonicalRows actualModulus 5544 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5544 : actualRows5544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5544=2892 := by core033_kernel_decide
theorem rows5545 : actualRows5545=WordField.canonicalRows actualModulus 5545 (.badd 5543 5544) := by core033_kernel_decide
theorem stats5545 : actualRows5545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5545=5388 := by core033_kernel_decide
theorem rows5546 : actualRows5546=WordField.canonicalRows actualModulus 5546 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5546 : actualRows5546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5546=2820 := by core033_kernel_decide
def partRows85 : List R1CS.Row := actualRows5483++actualRows5484++actualRows5485++actualRows5486++actualRows5487++actualRows5488++actualRows5489++actualRows5490++actualRows5491++actualRows5492++actualRows5493++actualRows5494++actualRows5495++actualRows5496++actualRows5497++actualRows5498++actualRows5499++actualRows5500++actualRows5501++actualRows5502++actualRows5503++actualRows5504++actualRows5505++actualRows5506++actualRows5507++actualRows5508++actualRows5509++actualRows5510++actualRows5511++actualRows5512++actualRows5513++actualRows5514++actualRows5515++actualRows5516++actualRows5517++actualRows5518++actualRows5519++actualRows5520++actualRows5521++actualRows5522++actualRows5523++actualRows5524++actualRows5525++actualRows5526++actualRows5527++actualRows5528++actualRows5529++actualRows5530++actualRows5531++actualRows5532++actualRows5533++actualRows5534++actualRows5535++actualRows5536++actualRows5537++actualRows5538++actualRows5539++actualRows5540++actualRows5541++actualRows5542++actualRows5543++actualRows5544++actualRows5545++actualRows5546
def partOps85 : List WordIR.Op := [.badd 5480 5482,.bnot 5483,.band 5478 5484,.bxor 5473 5485,.shr 5486 31,.literal (BitVec.ofNat 32 1),.bxor 5487 5488,.bnot 5489,.literal (BitVec.ofNat 32 1),.badd 5490 5491,.literal (BitVec.ofNat 32 0),.band 5492 5493,.literal (BitVec.ofNat 32 2),.bxor 96 5495,.literal (BitVec.ofNat 32 0),.bnot 5497,.band 5496 5498,.literal (BitVec.ofNat 32 2),.bxor 96 5500,.literal (BitVec.ofNat 32 0),.bnot 5502,.bxor 5501 5503,.literal (BitVec.ofNat 32 2),.bxor 96 5505,.literal (BitVec.ofNat 32 0),.bnot 5507,.badd 5506 5508,.bnot 5509,.band 5504 5510,.bxor 5499 5511,.shr 5512 31,.literal (BitVec.ofNat 32 1),.bxor 5513 5514,.bnot 5515,.literal (BitVec.ofNat 32 1),.badd 5516 5517,.bnot 5518,.band 5519 1481,.bxor 5494 5520,.literal (BitVec.ofNat 32 2),.bxor 96 5522,.literal (BitVec.ofNat 32 0),.bnot 5524,.band 5523 5525,.literal (BitVec.ofNat 32 2),.bxor 96 5527,.literal (BitVec.ofNat 32 0),.bnot 5529,.bxor 5528 5530,.literal (BitVec.ofNat 32 2),.bxor 96 5532,.literal (BitVec.ofNat 32 0),.bnot 5534,.badd 5533 5535,.bnot 5536,.band 5531 5537,.bxor 5526 5538,.shr 5539 31,.literal (BitVec.ofNat 32 1),.bxor 5540 5541,.bnot 5542,.literal (BitVec.ofNat 32 1),.badd 5543 5544,.literal (BitVec.ofNat 32 0)]
theorem partExact85 : partRows85=WordField.rows actualModulus 5483 partOps85 := by
  simp only [partRows85,partOps85,WordField.rows,rows5483,rows5484,rows5485,rows5486,rows5487,rows5488,rows5489,rows5490,rows5491,rows5492,rows5493,rows5494,rows5495,rows5496,rows5497,rows5498,rows5499,rows5500,rows5501,rows5502,rows5503,rows5504,rows5505,rows5506,rows5507,rows5508,rows5509,rows5510,rows5511,rows5512,rows5513,rows5514,rows5515,rows5516,rows5517,rows5518,rows5519,rows5520,rows5521,rows5522,rows5523,rows5524,rows5525,rows5526,rows5527,rows5528,rows5529,rows5530,rows5531,rows5532,rows5533,rows5534,rows5535,rows5536,rows5537,rows5538,rows5539,rows5540,rows5541,rows5542,rows5543,rows5544,rows5545,rows5546,List.append_assoc,List.append_nil]
theorem partLength85 : partOps85.length=64 := by decide
theorem partStats85 : partRows85.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows85=327144 := by
  simp only [partRows85,List.length_append,MatrixRowBlocks.rows_weight_append,stats5483.1,stats5483.2,stats5484.1,stats5484.2,stats5485.1,stats5485.2,stats5486.1,stats5486.2,stats5487.1,stats5487.2,stats5488.1,stats5488.2,stats5489.1,stats5489.2,stats5490.1,stats5490.2,stats5491.1,stats5491.2,stats5492.1,stats5492.2,stats5493.1,stats5493.2,stats5494.1,stats5494.2,stats5495.1,stats5495.2,stats5496.1,stats5496.2,stats5497.1,stats5497.2,stats5498.1,stats5498.2,stats5499.1,stats5499.2,stats5500.1,stats5500.2,stats5501.1,stats5501.2,stats5502.1,stats5502.2,stats5503.1,stats5503.2,stats5504.1,stats5504.2,stats5505.1,stats5505.2,stats5506.1,stats5506.2,stats5507.1,stats5507.2,stats5508.1,stats5508.2,stats5509.1,stats5509.2,stats5510.1,stats5510.2,stats5511.1,stats5511.2,stats5512.1,stats5512.2,stats5513.1,stats5513.2,stats5514.1,stats5514.2,stats5515.1,stats5515.2,stats5516.1,stats5516.2,stats5517.1,stats5517.2,stats5518.1,stats5518.2,stats5519.1,stats5519.2,stats5520.1,stats5520.2,stats5521.1,stats5521.2,stats5522.1,stats5522.2,stats5523.1,stats5523.2,stats5524.1,stats5524.2,stats5525.1,stats5525.2,stats5526.1,stats5526.2,stats5527.1,stats5527.2,stats5528.1,stats5528.2,stats5529.1,stats5529.2,stats5530.1,stats5530.2,stats5531.1,stats5531.2,stats5532.1,stats5532.2,stats5533.1,stats5533.2,stats5534.1,stats5534.2,stats5535.1,stats5535.2,stats5536.1,stats5536.2,stats5537.1,stats5537.2,stats5538.1,stats5538.2,stats5539.1,stats5539.2,stats5540.1,stats5540.2,stats5541.1,stats5541.2,stats5542.1,stats5542.2,stats5543.1,stats5543.2,stats5544.1,stats5544.2,stats5545.1,stats5545.2,stats5546.1,stats5546.2]
  decide
end PathRoundDispatchCheckedRows
