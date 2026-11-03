import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData179
import AuthenticatedBranchRoundInstructionMatrixData180
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11510 : actualRows11510=WordField.canonicalRows actualModulus 11510 (.band 11507 11509) := by core033_kernel_decide
theorem stats11510 : actualRows11510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11510=5124 := by core033_kernel_decide
theorem rows11511 : actualRows11511=WordField.canonicalRows actualModulus 11511 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11511 : actualRows11511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11511=2964 := by core033_kernel_decide
theorem rows11512 : actualRows11512=WordField.canonicalRows actualModulus 11512 (.bxor 693 11511) := by core033_kernel_decide
theorem stats11512 : actualRows11512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11512=7428 := by core033_kernel_decide
theorem rows11513 : actualRows11513=WordField.canonicalRows actualModulus 11513 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11513 : actualRows11513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11513=2820 := by core033_kernel_decide
theorem rows11514 : actualRows11514=WordField.canonicalRows actualModulus 11514 (.bnot 11513) := by core033_kernel_decide
theorem stats11514 : actualRows11514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11514=6276 := by core033_kernel_decide
theorem rows11515 : actualRows11515=WordField.canonicalRows actualModulus 11515 (.bxor 11512 11514) := by core033_kernel_decide
theorem stats11515 : actualRows11515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11515=7428 := by core033_kernel_decide
theorem rows11516 : actualRows11516=WordField.canonicalRows actualModulus 11516 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11516 : actualRows11516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11516=2964 := by core033_kernel_decide
theorem rows11517 : actualRows11517=WordField.canonicalRows actualModulus 11517 (.bxor 693 11516) := by core033_kernel_decide
theorem stats11517 : actualRows11517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11517=7428 := by core033_kernel_decide
theorem rows11518 : actualRows11518=WordField.canonicalRows actualModulus 11518 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11518 : actualRows11518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11518=2820 := by core033_kernel_decide
theorem rows11519 : actualRows11519=WordField.canonicalRows actualModulus 11519 (.bnot 11518) := by core033_kernel_decide
theorem stats11519 : actualRows11519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11519=6276 := by core033_kernel_decide
theorem rows11520 : actualRows11520=WordField.canonicalRows actualModulus 11520 (.badd 11517 11519) := by core033_kernel_decide
theorem stats11520 : actualRows11520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11520=5388 := by core033_kernel_decide
theorem rows11521 : actualRows11521=WordField.canonicalRows actualModulus 11521 (.bnot 11520) := by core033_kernel_decide
theorem stats11521 : actualRows11521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11521=6276 := by core033_kernel_decide
theorem rows11522 : actualRows11522=WordField.canonicalRows actualModulus 11522 (.band 11515 11521) := by core033_kernel_decide
theorem stats11522 : actualRows11522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11522=5124 := by core033_kernel_decide
theorem rows11523 : actualRows11523=WordField.canonicalRows actualModulus 11523 (.bxor 11510 11522) := by core033_kernel_decide
theorem stats11523 : actualRows11523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11523=7428 := by core033_kernel_decide
theorem rows11524 : actualRows11524=WordField.canonicalRows actualModulus 11524 (.shr 11523 31) := by core033_kernel_decide
theorem stats11524 : actualRows11524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11524=2892 := by core033_kernel_decide
theorem rows11525 : actualRows11525=WordField.canonicalRows actualModulus 11525 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11525 : actualRows11525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11525=2892 := by core033_kernel_decide
theorem rows11526 : actualRows11526=WordField.canonicalRows actualModulus 11526 (.bxor 11524 11525) := by core033_kernel_decide
theorem stats11526 : actualRows11526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11526=7428 := by core033_kernel_decide
theorem rows11527 : actualRows11527=WordField.canonicalRows actualModulus 11527 (.bnot 11526) := by core033_kernel_decide
theorem stats11527 : actualRows11527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11527=6276 := by core033_kernel_decide
theorem rows11528 : actualRows11528=WordField.canonicalRows actualModulus 11528 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11528 : actualRows11528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11528=2892 := by core033_kernel_decide
theorem rows11529 : actualRows11529=WordField.canonicalRows actualModulus 11529 (.badd 11527 11528) := by core033_kernel_decide
theorem stats11529 : actualRows11529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11529=5388 := by core033_kernel_decide
theorem rows11530 : actualRows11530=WordField.canonicalRows actualModulus 11530 (.bnot 11529) := by core033_kernel_decide
theorem stats11530 : actualRows11530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11530=6276 := by core033_kernel_decide
theorem rows11531 : actualRows11531=WordField.canonicalRows actualModulus 11531 (.band 11530 1310) := by core033_kernel_decide
theorem stats11531 : actualRows11531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11531=5124 := by core033_kernel_decide
theorem rows11532 : actualRows11532=WordField.canonicalRows actualModulus 11532 (.bxor 11505 11531) := by core033_kernel_decide
theorem stats11532 : actualRows11532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11532=7428 := by core033_kernel_decide
theorem rows11533 : actualRows11533=WordField.canonicalRows actualModulus 11533 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11533 : actualRows11533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11533=2964 := by core033_kernel_decide
theorem rows11534 : actualRows11534=WordField.canonicalRows actualModulus 11534 (.bxor 693 11533) := by core033_kernel_decide
theorem stats11534 : actualRows11534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11534=7428 := by core033_kernel_decide
theorem rows11535 : actualRows11535=WordField.canonicalRows actualModulus 11535 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11535 : actualRows11535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11535=2820 := by core033_kernel_decide
theorem rows11536 : actualRows11536=WordField.canonicalRows actualModulus 11536 (.bnot 11535) := by core033_kernel_decide
theorem stats11536 : actualRows11536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11536=6276 := by core033_kernel_decide
theorem rows11537 : actualRows11537=WordField.canonicalRows actualModulus 11537 (.band 11534 11536) := by core033_kernel_decide
theorem stats11537 : actualRows11537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11537=5124 := by core033_kernel_decide
theorem rows11538 : actualRows11538=WordField.canonicalRows actualModulus 11538 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11538 : actualRows11538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11538=2964 := by core033_kernel_decide
theorem rows11539 : actualRows11539=WordField.canonicalRows actualModulus 11539 (.bxor 693 11538) := by core033_kernel_decide
theorem stats11539 : actualRows11539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11539=7428 := by core033_kernel_decide
theorem rows11540 : actualRows11540=WordField.canonicalRows actualModulus 11540 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11540 : actualRows11540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11540=2820 := by core033_kernel_decide
theorem rows11541 : actualRows11541=WordField.canonicalRows actualModulus 11541 (.bnot 11540) := by core033_kernel_decide
theorem stats11541 : actualRows11541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11541=6276 := by core033_kernel_decide
theorem rows11542 : actualRows11542=WordField.canonicalRows actualModulus 11542 (.bxor 11539 11541) := by core033_kernel_decide
theorem stats11542 : actualRows11542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11542=7428 := by core033_kernel_decide
theorem rows11543 : actualRows11543=WordField.canonicalRows actualModulus 11543 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11543 : actualRows11543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11543=2964 := by core033_kernel_decide
theorem rows11544 : actualRows11544=WordField.canonicalRows actualModulus 11544 (.bxor 693 11543) := by core033_kernel_decide
theorem stats11544 : actualRows11544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11544=7428 := by core033_kernel_decide
theorem rows11545 : actualRows11545=WordField.canonicalRows actualModulus 11545 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11545 : actualRows11545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11545=2820 := by core033_kernel_decide
theorem rows11546 : actualRows11546=WordField.canonicalRows actualModulus 11546 (.bnot 11545) := by core033_kernel_decide
theorem stats11546 : actualRows11546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11546=6276 := by core033_kernel_decide
theorem rows11547 : actualRows11547=WordField.canonicalRows actualModulus 11547 (.badd 11544 11546) := by core033_kernel_decide
theorem stats11547 : actualRows11547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11547=5388 := by core033_kernel_decide
theorem rows11548 : actualRows11548=WordField.canonicalRows actualModulus 11548 (.bnot 11547) := by core033_kernel_decide
theorem stats11548 : actualRows11548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11548=6276 := by core033_kernel_decide
theorem rows11549 : actualRows11549=WordField.canonicalRows actualModulus 11549 (.band 11542 11548) := by core033_kernel_decide
theorem stats11549 : actualRows11549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11549=5124 := by core033_kernel_decide
theorem rows11550 : actualRows11550=WordField.canonicalRows actualModulus 11550 (.bxor 11537 11549) := by core033_kernel_decide
theorem stats11550 : actualRows11550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11550=7428 := by core033_kernel_decide
theorem rows11551 : actualRows11551=WordField.canonicalRows actualModulus 11551 (.shr 11550 31) := by core033_kernel_decide
theorem stats11551 : actualRows11551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11551=2892 := by core033_kernel_decide
theorem rows11552 : actualRows11552=WordField.canonicalRows actualModulus 11552 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11552 : actualRows11552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11552=2892 := by core033_kernel_decide
theorem rows11553 : actualRows11553=WordField.canonicalRows actualModulus 11553 (.bxor 11551 11552) := by core033_kernel_decide
theorem stats11553 : actualRows11553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11553=7428 := by core033_kernel_decide
theorem rows11554 : actualRows11554=WordField.canonicalRows actualModulus 11554 (.bnot 11553) := by core033_kernel_decide
theorem stats11554 : actualRows11554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11554=6276 := by core033_kernel_decide
theorem rows11555 : actualRows11555=WordField.canonicalRows actualModulus 11555 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11555 : actualRows11555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11555=2892 := by core033_kernel_decide
theorem rows11556 : actualRows11556=WordField.canonicalRows actualModulus 11556 (.badd 11554 11555) := by core033_kernel_decide
theorem stats11556 : actualRows11556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11556=5388 := by core033_kernel_decide
theorem rows11557 : actualRows11557=WordField.canonicalRows actualModulus 11557 (.band 11556 11349) := by core033_kernel_decide
theorem stats11557 : actualRows11557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11557=5124 := by core033_kernel_decide
theorem rows11558 : actualRows11558=WordField.canonicalRows actualModulus 11558 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11558 : actualRows11558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11558=2964 := by core033_kernel_decide
theorem rows11559 : actualRows11559=WordField.canonicalRows actualModulus 11559 (.bxor 693 11558) := by core033_kernel_decide
theorem stats11559 : actualRows11559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11559=7428 := by core033_kernel_decide
theorem rows11560 : actualRows11560=WordField.canonicalRows actualModulus 11560 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11560 : actualRows11560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11560=2820 := by core033_kernel_decide
theorem rows11561 : actualRows11561=WordField.canonicalRows actualModulus 11561 (.bnot 11560) := by core033_kernel_decide
theorem stats11561 : actualRows11561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11561=6276 := by core033_kernel_decide
theorem rows11562 : actualRows11562=WordField.canonicalRows actualModulus 11562 (.band 11559 11561) := by core033_kernel_decide
theorem stats11562 : actualRows11562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11562=5124 := by core033_kernel_decide
theorem rows11563 : actualRows11563=WordField.canonicalRows actualModulus 11563 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11563 : actualRows11563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11563=2964 := by core033_kernel_decide
theorem rows11564 : actualRows11564=WordField.canonicalRows actualModulus 11564 (.bxor 693 11563) := by core033_kernel_decide
theorem stats11564 : actualRows11564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11564=7428 := by core033_kernel_decide
theorem rows11565 : actualRows11565=WordField.canonicalRows actualModulus 11565 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11565 : actualRows11565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11565=2820 := by core033_kernel_decide
theorem rows11566 : actualRows11566=WordField.canonicalRows actualModulus 11566 (.bnot 11565) := by core033_kernel_decide
theorem stats11566 : actualRows11566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11566=6276 := by core033_kernel_decide
theorem rows11567 : actualRows11567=WordField.canonicalRows actualModulus 11567 (.bxor 11564 11566) := by core033_kernel_decide
theorem stats11567 : actualRows11567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11567=7428 := by core033_kernel_decide
theorem rows11568 : actualRows11568=WordField.canonicalRows actualModulus 11568 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11568 : actualRows11568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11568=2964 := by core033_kernel_decide
theorem rows11569 : actualRows11569=WordField.canonicalRows actualModulus 11569 (.bxor 693 11568) := by core033_kernel_decide
theorem stats11569 : actualRows11569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11569=7428 := by core033_kernel_decide
theorem rows11570 : actualRows11570=WordField.canonicalRows actualModulus 11570 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11570 : actualRows11570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11570=2820 := by core033_kernel_decide
theorem rows11571 : actualRows11571=WordField.canonicalRows actualModulus 11571 (.bnot 11570) := by core033_kernel_decide
theorem stats11571 : actualRows11571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11571=6276 := by core033_kernel_decide
theorem rows11572 : actualRows11572=WordField.canonicalRows actualModulus 11572 (.badd 11569 11571) := by core033_kernel_decide
theorem stats11572 : actualRows11572.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11572=5388 := by core033_kernel_decide
theorem rows11573 : actualRows11573=WordField.canonicalRows actualModulus 11573 (.bnot 11572) := by core033_kernel_decide
theorem stats11573 : actualRows11573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11573=6276 := by core033_kernel_decide
def partRows178 : List R1CS.Row := actualRows11510++actualRows11511++actualRows11512++actualRows11513++actualRows11514++actualRows11515++actualRows11516++actualRows11517++actualRows11518++actualRows11519++actualRows11520++actualRows11521++actualRows11522++actualRows11523++actualRows11524++actualRows11525++actualRows11526++actualRows11527++actualRows11528++actualRows11529++actualRows11530++actualRows11531++actualRows11532++actualRows11533++actualRows11534++actualRows11535++actualRows11536++actualRows11537++actualRows11538++actualRows11539++actualRows11540++actualRows11541++actualRows11542++actualRows11543++actualRows11544++actualRows11545++actualRows11546++actualRows11547++actualRows11548++actualRows11549++actualRows11550++actualRows11551++actualRows11552++actualRows11553++actualRows11554++actualRows11555++actualRows11556++actualRows11557++actualRows11558++actualRows11559++actualRows11560++actualRows11561++actualRows11562++actualRows11563++actualRows11564++actualRows11565++actualRows11566++actualRows11567++actualRows11568++actualRows11569++actualRows11570++actualRows11571++actualRows11572++actualRows11573
def partOps178 : List WordIR.Op := [.band 11507 11509,.literal (BitVec.ofNat 32 3),.bxor 693 11511,.literal (BitVec.ofNat 32 0),.bnot 11513,.bxor 11512 11514,.literal (BitVec.ofNat 32 3),.bxor 693 11516,.literal (BitVec.ofNat 32 0),.bnot 11518,.badd 11517 11519,.bnot 11520,.band 11515 11521,.bxor 11510 11522,.shr 11523 31,.literal (BitVec.ofNat 32 1),.bxor 11524 11525,.bnot 11526,.literal (BitVec.ofNat 32 1),.badd 11527 11528,.bnot 11529,.band 11530 1310,.bxor 11505 11531,.literal (BitVec.ofNat 32 3),.bxor 693 11533,.literal (BitVec.ofNat 32 0),.bnot 11535,.band 11534 11536,.literal (BitVec.ofNat 32 3),.bxor 693 11538,.literal (BitVec.ofNat 32 0),.bnot 11540,.bxor 11539 11541,.literal (BitVec.ofNat 32 3),.bxor 693 11543,.literal (BitVec.ofNat 32 0),.bnot 11545,.badd 11544 11546,.bnot 11547,.band 11542 11548,.bxor 11537 11549,.shr 11550 31,.literal (BitVec.ofNat 32 1),.bxor 11551 11552,.bnot 11553,.literal (BitVec.ofNat 32 1),.badd 11554 11555,.band 11556 11349,.literal (BitVec.ofNat 32 3),.bxor 693 11558,.literal (BitVec.ofNat 32 0),.bnot 11560,.band 11559 11561,.literal (BitVec.ofNat 32 3),.bxor 693 11563,.literal (BitVec.ofNat 32 0),.bnot 11565,.bxor 11564 11566,.literal (BitVec.ofNat 32 3),.bxor 693 11568,.literal (BitVec.ofNat 32 0),.bnot 11570,.badd 11569 11571,.bnot 11572]
theorem partExact178 : partRows178=WordField.rows actualModulus 11510 partOps178 := by
  simp only [partRows178,partOps178,WordField.rows,rows11510,rows11511,rows11512,rows11513,rows11514,rows11515,rows11516,rows11517,rows11518,rows11519,rows11520,rows11521,rows11522,rows11523,rows11524,rows11525,rows11526,rows11527,rows11528,rows11529,rows11530,rows11531,rows11532,rows11533,rows11534,rows11535,rows11536,rows11537,rows11538,rows11539,rows11540,rows11541,rows11542,rows11543,rows11544,rows11545,rows11546,rows11547,rows11548,rows11549,rows11550,rows11551,rows11552,rows11553,rows11554,rows11555,rows11556,rows11557,rows11558,rows11559,rows11560,rows11561,rows11562,rows11563,rows11564,rows11565,rows11566,rows11567,rows11568,rows11569,rows11570,rows11571,rows11572,rows11573,List.append_assoc,List.append_nil]
theorem partLength178 : partOps178.length=64 := by decide
theorem partStats178 : partRows178.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows178=333144 := by
  simp only [partRows178,List.length_append,MatrixRowBlocks.rows_weight_append,stats11510.1,stats11510.2,stats11511.1,stats11511.2,stats11512.1,stats11512.2,stats11513.1,stats11513.2,stats11514.1,stats11514.2,stats11515.1,stats11515.2,stats11516.1,stats11516.2,stats11517.1,stats11517.2,stats11518.1,stats11518.2,stats11519.1,stats11519.2,stats11520.1,stats11520.2,stats11521.1,stats11521.2,stats11522.1,stats11522.2,stats11523.1,stats11523.2,stats11524.1,stats11524.2,stats11525.1,stats11525.2,stats11526.1,stats11526.2,stats11527.1,stats11527.2,stats11528.1,stats11528.2,stats11529.1,stats11529.2,stats11530.1,stats11530.2,stats11531.1,stats11531.2,stats11532.1,stats11532.2,stats11533.1,stats11533.2,stats11534.1,stats11534.2,stats11535.1,stats11535.2,stats11536.1,stats11536.2,stats11537.1,stats11537.2,stats11538.1,stats11538.2,stats11539.1,stats11539.2,stats11540.1,stats11540.2,stats11541.1,stats11541.2,stats11542.1,stats11542.2,stats11543.1,stats11543.2,stats11544.1,stats11544.2,stats11545.1,stats11545.2,stats11546.1,stats11546.2,stats11547.1,stats11547.2,stats11548.1,stats11548.2,stats11549.1,stats11549.2,stats11550.1,stats11550.2,stats11551.1,stats11551.2,stats11552.1,stats11552.2,stats11553.1,stats11553.2,stats11554.1,stats11554.2,stats11555.1,stats11555.2,stats11556.1,stats11556.2,stats11557.1,stats11557.2,stats11558.1,stats11558.2,stats11559.1,stats11559.2,stats11560.1,stats11560.2,stats11561.1,stats11561.2,stats11562.1,stats11562.2,stats11563.1,stats11563.2,stats11564.1,stats11564.2,stats11565.1,stats11565.2,stats11566.1,stats11566.2,stats11567.1,stats11567.2,stats11568.1,stats11568.2,stats11569.1,stats11569.2,stats11570.1,stats11570.2,stats11571.1,stats11571.2,stats11572.1,stats11572.2,stats11573.1,stats11573.2]
  decide
end AuthenticatedBranchRoundCheckedRows
