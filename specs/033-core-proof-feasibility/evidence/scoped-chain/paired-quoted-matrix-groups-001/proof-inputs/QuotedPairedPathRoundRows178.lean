import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData179
import PairedPathRoundInstructionMatrixData180
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11488 : actualRows11488=WordField.canonicalRows actualModulus 11488 (.badd 11485 11487) := by core033_kernel_decide
theorem stats11488 : actualRows11488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11488=5388 := by core033_kernel_decide
theorem rows11489 : actualRows11489=WordField.canonicalRows actualModulus 11489 (.bnot 11488) := by core033_kernel_decide
theorem stats11489 : actualRows11489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11489=6276 := by core033_kernel_decide
theorem rows11490 : actualRows11490=WordField.canonicalRows actualModulus 11490 (.band 11483 11489) := by core033_kernel_decide
theorem stats11490 : actualRows11490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11490=5124 := by core033_kernel_decide
theorem rows11491 : actualRows11491=WordField.canonicalRows actualModulus 11491 (.bxor 11478 11490) := by core033_kernel_decide
theorem stats11491 : actualRows11491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11491=7428 := by core033_kernel_decide
theorem rows11492 : actualRows11492=WordField.canonicalRows actualModulus 11492 (.shr 11491 31) := by core033_kernel_decide
theorem stats11492 : actualRows11492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11492=2892 := by core033_kernel_decide
theorem rows11493 : actualRows11493=WordField.canonicalRows actualModulus 11493 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11493 : actualRows11493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11493=2892 := by core033_kernel_decide
theorem rows11494 : actualRows11494=WordField.canonicalRows actualModulus 11494 (.bxor 11492 11493) := by core033_kernel_decide
theorem stats11494 : actualRows11494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11494=7428 := by core033_kernel_decide
theorem rows11495 : actualRows11495=WordField.canonicalRows actualModulus 11495 (.bnot 11494) := by core033_kernel_decide
theorem stats11495 : actualRows11495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11495=6276 := by core033_kernel_decide
theorem rows11496 : actualRows11496=WordField.canonicalRows actualModulus 11496 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11496 : actualRows11496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11496=2892 := by core033_kernel_decide
theorem rows11497 : actualRows11497=WordField.canonicalRows actualModulus 11497 (.badd 11495 11496) := by core033_kernel_decide
theorem stats11497 : actualRows11497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11497=5388 := by core033_kernel_decide
theorem rows11498 : actualRows11498=WordField.canonicalRows actualModulus 11498 (.band 11497 10427) := by core033_kernel_decide
theorem stats11498 : actualRows11498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11498=5124 := by core033_kernel_decide
theorem rows11499 : actualRows11499=WordField.canonicalRows actualModulus 11499 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11499 : actualRows11499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11499=2964 := by core033_kernel_decide
theorem rows11500 : actualRows11500=WordField.canonicalRows actualModulus 11500 (.bxor 442 11499) := by core033_kernel_decide
theorem stats11500 : actualRows11500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11500=7428 := by core033_kernel_decide
theorem rows11501 : actualRows11501=WordField.canonicalRows actualModulus 11501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11501 : actualRows11501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11501=2820 := by core033_kernel_decide
theorem rows11502 : actualRows11502=WordField.canonicalRows actualModulus 11502 (.bnot 11501) := by core033_kernel_decide
theorem stats11502 : actualRows11502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11502=6276 := by core033_kernel_decide
theorem rows11503 : actualRows11503=WordField.canonicalRows actualModulus 11503 (.band 11500 11502) := by core033_kernel_decide
theorem stats11503 : actualRows11503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11503=5124 := by core033_kernel_decide
theorem rows11504 : actualRows11504=WordField.canonicalRows actualModulus 11504 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11504 : actualRows11504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11504=2964 := by core033_kernel_decide
theorem rows11505 : actualRows11505=WordField.canonicalRows actualModulus 11505 (.bxor 442 11504) := by core033_kernel_decide
theorem stats11505 : actualRows11505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11505=7428 := by core033_kernel_decide
theorem rows11506 : actualRows11506=WordField.canonicalRows actualModulus 11506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11506 : actualRows11506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11506=2820 := by core033_kernel_decide
theorem rows11507 : actualRows11507=WordField.canonicalRows actualModulus 11507 (.bnot 11506) := by core033_kernel_decide
theorem stats11507 : actualRows11507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11507=6276 := by core033_kernel_decide
theorem rows11508 : actualRows11508=WordField.canonicalRows actualModulus 11508 (.bxor 11505 11507) := by core033_kernel_decide
theorem stats11508 : actualRows11508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11508=7428 := by core033_kernel_decide
theorem rows11509 : actualRows11509=WordField.canonicalRows actualModulus 11509 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11509 : actualRows11509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11509=2964 := by core033_kernel_decide
theorem rows11510 : actualRows11510=WordField.canonicalRows actualModulus 11510 (.bxor 442 11509) := by core033_kernel_decide
theorem stats11510 : actualRows11510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11510=7428 := by core033_kernel_decide
theorem rows11511 : actualRows11511=WordField.canonicalRows actualModulus 11511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11511 : actualRows11511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11511=2820 := by core033_kernel_decide
theorem rows11512 : actualRows11512=WordField.canonicalRows actualModulus 11512 (.bnot 11511) := by core033_kernel_decide
theorem stats11512 : actualRows11512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11512=6276 := by core033_kernel_decide
theorem rows11513 : actualRows11513=WordField.canonicalRows actualModulus 11513 (.badd 11510 11512) := by core033_kernel_decide
theorem stats11513 : actualRows11513.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11513=5388 := by core033_kernel_decide
theorem rows11514 : actualRows11514=WordField.canonicalRows actualModulus 11514 (.bnot 11513) := by core033_kernel_decide
theorem stats11514 : actualRows11514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11514=6276 := by core033_kernel_decide
theorem rows11515 : actualRows11515=WordField.canonicalRows actualModulus 11515 (.band 11508 11514) := by core033_kernel_decide
theorem stats11515 : actualRows11515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11515=5124 := by core033_kernel_decide
theorem rows11516 : actualRows11516=WordField.canonicalRows actualModulus 11516 (.bxor 11503 11515) := by core033_kernel_decide
theorem stats11516 : actualRows11516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11516=7428 := by core033_kernel_decide
theorem rows11517 : actualRows11517=WordField.canonicalRows actualModulus 11517 (.shr 11516 31) := by core033_kernel_decide
theorem stats11517 : actualRows11517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11517=2892 := by core033_kernel_decide
theorem rows11518 : actualRows11518=WordField.canonicalRows actualModulus 11518 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11518 : actualRows11518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11518=2892 := by core033_kernel_decide
theorem rows11519 : actualRows11519=WordField.canonicalRows actualModulus 11519 (.bxor 11517 11518) := by core033_kernel_decide
theorem stats11519 : actualRows11519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11519=7428 := by core033_kernel_decide
theorem rows11520 : actualRows11520=WordField.canonicalRows actualModulus 11520 (.bnot 11519) := by core033_kernel_decide
theorem stats11520 : actualRows11520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11520=6276 := by core033_kernel_decide
theorem rows11521 : actualRows11521=WordField.canonicalRows actualModulus 11521 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11521 : actualRows11521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11521=2892 := by core033_kernel_decide
theorem rows11522 : actualRows11522=WordField.canonicalRows actualModulus 11522 (.badd 11520 11521) := by core033_kernel_decide
theorem stats11522 : actualRows11522.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11522=5388 := by core033_kernel_decide
theorem rows11523 : actualRows11523=WordField.canonicalRows actualModulus 11523 (.bnot 11522) := by core033_kernel_decide
theorem stats11523 : actualRows11523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11523=6276 := by core033_kernel_decide
theorem rows11524 : actualRows11524=WordField.canonicalRows actualModulus 11524 (.band 11523 770) := by core033_kernel_decide
theorem stats11524 : actualRows11524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11524=5124 := by core033_kernel_decide
theorem rows11525 : actualRows11525=WordField.canonicalRows actualModulus 11525 (.bxor 11498 11524) := by core033_kernel_decide
theorem stats11525 : actualRows11525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11525=7428 := by core033_kernel_decide
theorem rows11526 : actualRows11526=WordField.canonicalRows actualModulus 11526 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11526 : actualRows11526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11526=2964 := by core033_kernel_decide
theorem rows11527 : actualRows11527=WordField.canonicalRows actualModulus 11527 (.bxor 442 11526) := by core033_kernel_decide
theorem stats11527 : actualRows11527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11527=7428 := by core033_kernel_decide
theorem rows11528 : actualRows11528=WordField.canonicalRows actualModulus 11528 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11528 : actualRows11528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11528=2820 := by core033_kernel_decide
theorem rows11529 : actualRows11529=WordField.canonicalRows actualModulus 11529 (.bnot 11528) := by core033_kernel_decide
theorem stats11529 : actualRows11529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11529=6276 := by core033_kernel_decide
theorem rows11530 : actualRows11530=WordField.canonicalRows actualModulus 11530 (.band 11527 11529) := by core033_kernel_decide
theorem stats11530 : actualRows11530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11530=5124 := by core033_kernel_decide
theorem rows11531 : actualRows11531=WordField.canonicalRows actualModulus 11531 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11531 : actualRows11531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11531=2964 := by core033_kernel_decide
theorem rows11532 : actualRows11532=WordField.canonicalRows actualModulus 11532 (.bxor 442 11531) := by core033_kernel_decide
theorem stats11532 : actualRows11532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11532=7428 := by core033_kernel_decide
theorem rows11533 : actualRows11533=WordField.canonicalRows actualModulus 11533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11533 : actualRows11533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11533=2820 := by core033_kernel_decide
theorem rows11534 : actualRows11534=WordField.canonicalRows actualModulus 11534 (.bnot 11533) := by core033_kernel_decide
theorem stats11534 : actualRows11534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11534=6276 := by core033_kernel_decide
theorem rows11535 : actualRows11535=WordField.canonicalRows actualModulus 11535 (.bxor 11532 11534) := by core033_kernel_decide
theorem stats11535 : actualRows11535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11535=7428 := by core033_kernel_decide
theorem rows11536 : actualRows11536=WordField.canonicalRows actualModulus 11536 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11536 : actualRows11536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11536=2964 := by core033_kernel_decide
theorem rows11537 : actualRows11537=WordField.canonicalRows actualModulus 11537 (.bxor 442 11536) := by core033_kernel_decide
theorem stats11537 : actualRows11537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11537=7428 := by core033_kernel_decide
theorem rows11538 : actualRows11538=WordField.canonicalRows actualModulus 11538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11538 : actualRows11538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11538=2820 := by core033_kernel_decide
theorem rows11539 : actualRows11539=WordField.canonicalRows actualModulus 11539 (.bnot 11538) := by core033_kernel_decide
theorem stats11539 : actualRows11539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11539=6276 := by core033_kernel_decide
theorem rows11540 : actualRows11540=WordField.canonicalRows actualModulus 11540 (.badd 11537 11539) := by core033_kernel_decide
theorem stats11540 : actualRows11540.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11540=5388 := by core033_kernel_decide
theorem rows11541 : actualRows11541=WordField.canonicalRows actualModulus 11541 (.bnot 11540) := by core033_kernel_decide
theorem stats11541 : actualRows11541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11541=6276 := by core033_kernel_decide
theorem rows11542 : actualRows11542=WordField.canonicalRows actualModulus 11542 (.band 11535 11541) := by core033_kernel_decide
theorem stats11542 : actualRows11542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11542=5124 := by core033_kernel_decide
theorem rows11543 : actualRows11543=WordField.canonicalRows actualModulus 11543 (.bxor 11530 11542) := by core033_kernel_decide
theorem stats11543 : actualRows11543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11543=7428 := by core033_kernel_decide
theorem rows11544 : actualRows11544=WordField.canonicalRows actualModulus 11544 (.shr 11543 31) := by core033_kernel_decide
theorem stats11544 : actualRows11544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11544=2892 := by core033_kernel_decide
theorem rows11545 : actualRows11545=WordField.canonicalRows actualModulus 11545 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11545 : actualRows11545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11545=2892 := by core033_kernel_decide
theorem rows11546 : actualRows11546=WordField.canonicalRows actualModulus 11546 (.bxor 11544 11545) := by core033_kernel_decide
theorem stats11546 : actualRows11546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11546=7428 := by core033_kernel_decide
theorem rows11547 : actualRows11547=WordField.canonicalRows actualModulus 11547 (.bnot 11546) := by core033_kernel_decide
theorem stats11547 : actualRows11547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11547=6276 := by core033_kernel_decide
theorem rows11548 : actualRows11548=WordField.canonicalRows actualModulus 11548 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11548 : actualRows11548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11548=2892 := by core033_kernel_decide
theorem rows11549 : actualRows11549=WordField.canonicalRows actualModulus 11549 (.badd 11547 11548) := by core033_kernel_decide
theorem stats11549 : actualRows11549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11549=5388 := by core033_kernel_decide
theorem rows11550 : actualRows11550=WordField.canonicalRows actualModulus 11550 (.band 11549 10434) := by core033_kernel_decide
theorem stats11550 : actualRows11550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11550=5124 := by core033_kernel_decide
theorem rows11551 : actualRows11551=WordField.canonicalRows actualModulus 11551 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11551 : actualRows11551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11551=2964 := by core033_kernel_decide
def partRows178 : List R1CS.Row := actualRows11488++actualRows11489++actualRows11490++actualRows11491++actualRows11492++actualRows11493++actualRows11494++actualRows11495++actualRows11496++actualRows11497++actualRows11498++actualRows11499++actualRows11500++actualRows11501++actualRows11502++actualRows11503++actualRows11504++actualRows11505++actualRows11506++actualRows11507++actualRows11508++actualRows11509++actualRows11510++actualRows11511++actualRows11512++actualRows11513++actualRows11514++actualRows11515++actualRows11516++actualRows11517++actualRows11518++actualRows11519++actualRows11520++actualRows11521++actualRows11522++actualRows11523++actualRows11524++actualRows11525++actualRows11526++actualRows11527++actualRows11528++actualRows11529++actualRows11530++actualRows11531++actualRows11532++actualRows11533++actualRows11534++actualRows11535++actualRows11536++actualRows11537++actualRows11538++actualRows11539++actualRows11540++actualRows11541++actualRows11542++actualRows11543++actualRows11544++actualRows11545++actualRows11546++actualRows11547++actualRows11548++actualRows11549++actualRows11550++actualRows11551
def partOps178 : List WordIR.Op := [.badd 11485 11487,.bnot 11488,.band 11483 11489,.bxor 11478 11490,.shr 11491 31,.literal (BitVec.ofNat 32 1),.bxor 11492 11493,.bnot 11494,.literal (BitVec.ofNat 32 1),.badd 11495 11496,.band 11497 10427,.literal (BitVec.ofNat 32 3),.bxor 442 11499,.literal (BitVec.ofNat 32 0),.bnot 11501,.band 11500 11502,.literal (BitVec.ofNat 32 3),.bxor 442 11504,.literal (BitVec.ofNat 32 0),.bnot 11506,.bxor 11505 11507,.literal (BitVec.ofNat 32 3),.bxor 442 11509,.literal (BitVec.ofNat 32 0),.bnot 11511,.badd 11510 11512,.bnot 11513,.band 11508 11514,.bxor 11503 11515,.shr 11516 31,.literal (BitVec.ofNat 32 1),.bxor 11517 11518,.bnot 11519,.literal (BitVec.ofNat 32 1),.badd 11520 11521,.bnot 11522,.band 11523 770,.bxor 11498 11524,.literal (BitVec.ofNat 32 3),.bxor 442 11526,.literal (BitVec.ofNat 32 0),.bnot 11528,.band 11527 11529,.literal (BitVec.ofNat 32 3),.bxor 442 11531,.literal (BitVec.ofNat 32 0),.bnot 11533,.bxor 11532 11534,.literal (BitVec.ofNat 32 3),.bxor 442 11536,.literal (BitVec.ofNat 32 0),.bnot 11538,.badd 11537 11539,.bnot 11540,.band 11535 11541,.bxor 11530 11542,.shr 11543 31,.literal (BitVec.ofNat 32 1),.bxor 11544 11545,.bnot 11546,.literal (BitVec.ofNat 32 1),.badd 11547 11548,.band 11549 10434,.literal (BitVec.ofNat 32 3)]
theorem partExact178 : partRows178=WordField.rows actualModulus 11488 partOps178 := by
  simp only [partRows178,partOps178,WordField.rows,rows11488,rows11489,rows11490,rows11491,rows11492,rows11493,rows11494,rows11495,rows11496,rows11497,rows11498,rows11499,rows11500,rows11501,rows11502,rows11503,rows11504,rows11505,rows11506,rows11507,rows11508,rows11509,rows11510,rows11511,rows11512,rows11513,rows11514,rows11515,rows11516,rows11517,rows11518,rows11519,rows11520,rows11521,rows11522,rows11523,rows11524,rows11525,rows11526,rows11527,rows11528,rows11529,rows11530,rows11531,rows11532,rows11533,rows11534,rows11535,rows11536,rows11537,rows11538,rows11539,rows11540,rows11541,rows11542,rows11543,rows11544,rows11545,rows11546,rows11547,rows11548,rows11549,rows11550,rows11551,List.append_assoc,List.append_nil]
theorem partLength178 : partOps178.length=64 := by decide
theorem partStats178 : partRows178.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows178=330024 := by
  simp only [partRows178,List.length_append,MatrixRowBlocks.rows_weight_append,stats11488.1,stats11488.2,stats11489.1,stats11489.2,stats11490.1,stats11490.2,stats11491.1,stats11491.2,stats11492.1,stats11492.2,stats11493.1,stats11493.2,stats11494.1,stats11494.2,stats11495.1,stats11495.2,stats11496.1,stats11496.2,stats11497.1,stats11497.2,stats11498.1,stats11498.2,stats11499.1,stats11499.2,stats11500.1,stats11500.2,stats11501.1,stats11501.2,stats11502.1,stats11502.2,stats11503.1,stats11503.2,stats11504.1,stats11504.2,stats11505.1,stats11505.2,stats11506.1,stats11506.2,stats11507.1,stats11507.2,stats11508.1,stats11508.2,stats11509.1,stats11509.2,stats11510.1,stats11510.2,stats11511.1,stats11511.2,stats11512.1,stats11512.2,stats11513.1,stats11513.2,stats11514.1,stats11514.2,stats11515.1,stats11515.2,stats11516.1,stats11516.2,stats11517.1,stats11517.2,stats11518.1,stats11518.2,stats11519.1,stats11519.2,stats11520.1,stats11520.2,stats11521.1,stats11521.2,stats11522.1,stats11522.2,stats11523.1,stats11523.2,stats11524.1,stats11524.2,stats11525.1,stats11525.2,stats11526.1,stats11526.2,stats11527.1,stats11527.2,stats11528.1,stats11528.2,stats11529.1,stats11529.2,stats11530.1,stats11530.2,stats11531.1,stats11531.2,stats11532.1,stats11532.2,stats11533.1,stats11533.2,stats11534.1,stats11534.2,stats11535.1,stats11535.2,stats11536.1,stats11536.2,stats11537.1,stats11537.2,stats11538.1,stats11538.2,stats11539.1,stats11539.2,stats11540.1,stats11540.2,stats11541.1,stats11541.2,stats11542.1,stats11542.2,stats11543.1,stats11543.2,stats11544.1,stats11544.2,stats11545.1,stats11545.2,stats11546.1,stats11546.2,stats11547.1,stats11547.2,stats11548.1,stats11548.2,stats11549.1,stats11549.2,stats11550.1,stats11550.2,stats11551.1,stats11551.2]
  decide
end QuotedPairedPathRoundCheckedRows
