import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData179
import PathRoundDispatchInstructionMatrixData180
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11499 : actualRows11499=WordField.canonicalRows actualModulus 11499 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11499 : actualRows11499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11499=2964 := by core033_kernel_decide
theorem rows11500 : actualRows11500=WordField.canonicalRows actualModulus 11500 (.bxor 0 11499) := by core033_kernel_decide
theorem stats11500 : actualRows11500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11500=7428 := by core033_kernel_decide
theorem rows11501 : actualRows11501=WordField.canonicalRows actualModulus 11501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11501 : actualRows11501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11501=2820 := by core033_kernel_decide
theorem rows11502 : actualRows11502=WordField.canonicalRows actualModulus 11502 (.bnot 11501) := by core033_kernel_decide
theorem stats11502 : actualRows11502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11502=6276 := by core033_kernel_decide
theorem rows11503 : actualRows11503=WordField.canonicalRows actualModulus 11503 (.band 11500 11502) := by core033_kernel_decide
theorem stats11503 : actualRows11503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11503=5124 := by core033_kernel_decide
theorem rows11504 : actualRows11504=WordField.canonicalRows actualModulus 11504 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11504 : actualRows11504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11504=2964 := by core033_kernel_decide
theorem rows11505 : actualRows11505=WordField.canonicalRows actualModulus 11505 (.bxor 0 11504) := by core033_kernel_decide
theorem stats11505 : actualRows11505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11505=7428 := by core033_kernel_decide
theorem rows11506 : actualRows11506=WordField.canonicalRows actualModulus 11506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11506 : actualRows11506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11506=2820 := by core033_kernel_decide
theorem rows11507 : actualRows11507=WordField.canonicalRows actualModulus 11507 (.bnot 11506) := by core033_kernel_decide
theorem stats11507 : actualRows11507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11507=6276 := by core033_kernel_decide
theorem rows11508 : actualRows11508=WordField.canonicalRows actualModulus 11508 (.bxor 11505 11507) := by core033_kernel_decide
theorem stats11508 : actualRows11508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11508=7428 := by core033_kernel_decide
theorem rows11509 : actualRows11509=WordField.canonicalRows actualModulus 11509 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11509 : actualRows11509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11509=2964 := by core033_kernel_decide
theorem rows11510 : actualRows11510=WordField.canonicalRows actualModulus 11510 (.bxor 0 11509) := by core033_kernel_decide
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
theorem rows11524 : actualRows11524=WordField.canonicalRows actualModulus 11524 (.band 11523 360) := by core033_kernel_decide
theorem stats11524 : actualRows11524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11524=5124 := by core033_kernel_decide
theorem rows11525 : actualRows11525=WordField.canonicalRows actualModulus 11525 (.bxor 11498 11524) := by core033_kernel_decide
theorem stats11525 : actualRows11525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11525=7428 := by core033_kernel_decide
theorem rows11526 : actualRows11526=WordField.canonicalRows actualModulus 11526 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11526 : actualRows11526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11526=2964 := by core033_kernel_decide
theorem rows11527 : actualRows11527=WordField.canonicalRows actualModulus 11527 (.bxor 0 11526) := by core033_kernel_decide
theorem stats11527 : actualRows11527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11527=7428 := by core033_kernel_decide
theorem rows11528 : actualRows11528=WordField.canonicalRows actualModulus 11528 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11528 : actualRows11528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11528=2820 := by core033_kernel_decide
theorem rows11529 : actualRows11529=WordField.canonicalRows actualModulus 11529 (.bnot 11528) := by core033_kernel_decide
theorem stats11529 : actualRows11529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11529=6276 := by core033_kernel_decide
theorem rows11530 : actualRows11530=WordField.canonicalRows actualModulus 11530 (.band 11527 11529) := by core033_kernel_decide
theorem stats11530 : actualRows11530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11530=5124 := by core033_kernel_decide
theorem rows11531 : actualRows11531=WordField.canonicalRows actualModulus 11531 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11531 : actualRows11531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11531=2964 := by core033_kernel_decide
theorem rows11532 : actualRows11532=WordField.canonicalRows actualModulus 11532 (.bxor 0 11531) := by core033_kernel_decide
theorem stats11532 : actualRows11532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11532=7428 := by core033_kernel_decide
theorem rows11533 : actualRows11533=WordField.canonicalRows actualModulus 11533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11533 : actualRows11533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11533=2820 := by core033_kernel_decide
theorem rows11534 : actualRows11534=WordField.canonicalRows actualModulus 11534 (.bnot 11533) := by core033_kernel_decide
theorem stats11534 : actualRows11534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11534=6276 := by core033_kernel_decide
theorem rows11535 : actualRows11535=WordField.canonicalRows actualModulus 11535 (.bxor 11532 11534) := by core033_kernel_decide
theorem stats11535 : actualRows11535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11535=7428 := by core033_kernel_decide
theorem rows11536 : actualRows11536=WordField.canonicalRows actualModulus 11536 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11536 : actualRows11536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11536=2964 := by core033_kernel_decide
theorem rows11537 : actualRows11537=WordField.canonicalRows actualModulus 11537 (.bxor 0 11536) := by core033_kernel_decide
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
theorem rows11550 : actualRows11550=WordField.canonicalRows actualModulus 11550 (.band 11549 9692) := by core033_kernel_decide
theorem stats11550 : actualRows11550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11550=5124 := by core033_kernel_decide
theorem rows11551 : actualRows11551=WordField.canonicalRows actualModulus 11551 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11551 : actualRows11551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11551=2964 := by core033_kernel_decide
theorem rows11552 : actualRows11552=WordField.canonicalRows actualModulus 11552 (.bxor 0 11551) := by core033_kernel_decide
theorem stats11552 : actualRows11552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11552=7428 := by core033_kernel_decide
theorem rows11553 : actualRows11553=WordField.canonicalRows actualModulus 11553 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11553 : actualRows11553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11553=2820 := by core033_kernel_decide
theorem rows11554 : actualRows11554=WordField.canonicalRows actualModulus 11554 (.bnot 11553) := by core033_kernel_decide
theorem stats11554 : actualRows11554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11554=6276 := by core033_kernel_decide
theorem rows11555 : actualRows11555=WordField.canonicalRows actualModulus 11555 (.band 11552 11554) := by core033_kernel_decide
theorem stats11555 : actualRows11555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11555=5124 := by core033_kernel_decide
theorem rows11556 : actualRows11556=WordField.canonicalRows actualModulus 11556 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11556 : actualRows11556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11556=2964 := by core033_kernel_decide
theorem rows11557 : actualRows11557=WordField.canonicalRows actualModulus 11557 (.bxor 0 11556) := by core033_kernel_decide
theorem stats11557 : actualRows11557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11557=7428 := by core033_kernel_decide
theorem rows11558 : actualRows11558=WordField.canonicalRows actualModulus 11558 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11558 : actualRows11558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11558=2820 := by core033_kernel_decide
theorem rows11559 : actualRows11559=WordField.canonicalRows actualModulus 11559 (.bnot 11558) := by core033_kernel_decide
theorem stats11559 : actualRows11559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11559=6276 := by core033_kernel_decide
theorem rows11560 : actualRows11560=WordField.canonicalRows actualModulus 11560 (.bxor 11557 11559) := by core033_kernel_decide
theorem stats11560 : actualRows11560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11560=7428 := by core033_kernel_decide
theorem rows11561 : actualRows11561=WordField.canonicalRows actualModulus 11561 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11561 : actualRows11561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11561=2964 := by core033_kernel_decide
theorem rows11562 : actualRows11562=WordField.canonicalRows actualModulus 11562 (.bxor 0 11561) := by core033_kernel_decide
theorem stats11562 : actualRows11562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11562=7428 := by core033_kernel_decide
def partRows179 : List R1CS.Row := actualRows11499++actualRows11500++actualRows11501++actualRows11502++actualRows11503++actualRows11504++actualRows11505++actualRows11506++actualRows11507++actualRows11508++actualRows11509++actualRows11510++actualRows11511++actualRows11512++actualRows11513++actualRows11514++actualRows11515++actualRows11516++actualRows11517++actualRows11518++actualRows11519++actualRows11520++actualRows11521++actualRows11522++actualRows11523++actualRows11524++actualRows11525++actualRows11526++actualRows11527++actualRows11528++actualRows11529++actualRows11530++actualRows11531++actualRows11532++actualRows11533++actualRows11534++actualRows11535++actualRows11536++actualRows11537++actualRows11538++actualRows11539++actualRows11540++actualRows11541++actualRows11542++actualRows11543++actualRows11544++actualRows11545++actualRows11546++actualRows11547++actualRows11548++actualRows11549++actualRows11550++actualRows11551++actualRows11552++actualRows11553++actualRows11554++actualRows11555++actualRows11556++actualRows11557++actualRows11558++actualRows11559++actualRows11560++actualRows11561++actualRows11562
def partOps179 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 0 11499,.literal (BitVec.ofNat 32 0),.bnot 11501,.band 11500 11502,.literal (BitVec.ofNat 32 3),.bxor 0 11504,.literal (BitVec.ofNat 32 0),.bnot 11506,.bxor 11505 11507,.literal (BitVec.ofNat 32 3),.bxor 0 11509,.literal (BitVec.ofNat 32 0),.bnot 11511,.badd 11510 11512,.bnot 11513,.band 11508 11514,.bxor 11503 11515,.shr 11516 31,.literal (BitVec.ofNat 32 1),.bxor 11517 11518,.bnot 11519,.literal (BitVec.ofNat 32 1),.badd 11520 11521,.bnot 11522,.band 11523 360,.bxor 11498 11524,.literal (BitVec.ofNat 32 3),.bxor 0 11526,.literal (BitVec.ofNat 32 0),.bnot 11528,.band 11527 11529,.literal (BitVec.ofNat 32 3),.bxor 0 11531,.literal (BitVec.ofNat 32 0),.bnot 11533,.bxor 11532 11534,.literal (BitVec.ofNat 32 3),.bxor 0 11536,.literal (BitVec.ofNat 32 0),.bnot 11538,.badd 11537 11539,.bnot 11540,.band 11535 11541,.bxor 11530 11542,.shr 11543 31,.literal (BitVec.ofNat 32 1),.bxor 11544 11545,.bnot 11546,.literal (BitVec.ofNat 32 1),.badd 11547 11548,.band 11549 9692,.literal (BitVec.ofNat 32 3),.bxor 0 11551,.literal (BitVec.ofNat 32 0),.bnot 11553,.band 11552 11554,.literal (BitVec.ofNat 32 3),.bxor 0 11556,.literal (BitVec.ofNat 32 0),.bnot 11558,.bxor 11557 11559,.literal (BitVec.ofNat 32 3),.bxor 0 11561]
theorem partExact179 : partRows179=WordField.rows actualModulus 11499 partOps179 := by
  simp only [partRows179,partOps179,WordField.rows,rows11499,rows11500,rows11501,rows11502,rows11503,rows11504,rows11505,rows11506,rows11507,rows11508,rows11509,rows11510,rows11511,rows11512,rows11513,rows11514,rows11515,rows11516,rows11517,rows11518,rows11519,rows11520,rows11521,rows11522,rows11523,rows11524,rows11525,rows11526,rows11527,rows11528,rows11529,rows11530,rows11531,rows11532,rows11533,rows11534,rows11535,rows11536,rows11537,rows11538,rows11539,rows11540,rows11541,rows11542,rows11543,rows11544,rows11545,rows11546,rows11547,rows11548,rows11549,rows11550,rows11551,rows11552,rows11553,rows11554,rows11555,rows11556,rows11557,rows11558,rows11559,rows11560,rows11561,rows11562,List.append_assoc,List.append_nil]
theorem partLength179 : partOps179.length=64 := by decide
theorem partStats179 : partRows179.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows179=331872 := by
  simp only [partRows179,List.length_append,MatrixRowBlocks.rows_weight_append,stats11499.1,stats11499.2,stats11500.1,stats11500.2,stats11501.1,stats11501.2,stats11502.1,stats11502.2,stats11503.1,stats11503.2,stats11504.1,stats11504.2,stats11505.1,stats11505.2,stats11506.1,stats11506.2,stats11507.1,stats11507.2,stats11508.1,stats11508.2,stats11509.1,stats11509.2,stats11510.1,stats11510.2,stats11511.1,stats11511.2,stats11512.1,stats11512.2,stats11513.1,stats11513.2,stats11514.1,stats11514.2,stats11515.1,stats11515.2,stats11516.1,stats11516.2,stats11517.1,stats11517.2,stats11518.1,stats11518.2,stats11519.1,stats11519.2,stats11520.1,stats11520.2,stats11521.1,stats11521.2,stats11522.1,stats11522.2,stats11523.1,stats11523.2,stats11524.1,stats11524.2,stats11525.1,stats11525.2,stats11526.1,stats11526.2,stats11527.1,stats11527.2,stats11528.1,stats11528.2,stats11529.1,stats11529.2,stats11530.1,stats11530.2,stats11531.1,stats11531.2,stats11532.1,stats11532.2,stats11533.1,stats11533.2,stats11534.1,stats11534.2,stats11535.1,stats11535.2,stats11536.1,stats11536.2,stats11537.1,stats11537.2,stats11538.1,stats11538.2,stats11539.1,stats11539.2,stats11540.1,stats11540.2,stats11541.1,stats11541.2,stats11542.1,stats11542.2,stats11543.1,stats11543.2,stats11544.1,stats11544.2,stats11545.1,stats11545.2,stats11546.1,stats11546.2,stats11547.1,stats11547.2,stats11548.1,stats11548.2,stats11549.1,stats11549.2,stats11550.1,stats11550.2,stats11551.1,stats11551.2,stats11552.1,stats11552.2,stats11553.1,stats11553.2,stats11554.1,stats11554.2,stats11555.1,stats11555.2,stats11556.1,stats11556.2,stats11557.1,stats11557.2,stats11558.1,stats11558.2,stats11559.1,stats11559.2,stats11560.1,stats11560.2,stats11561.1,stats11561.2,stats11562.1,stats11562.2]
  decide
end PathRoundDispatchCheckedRows
