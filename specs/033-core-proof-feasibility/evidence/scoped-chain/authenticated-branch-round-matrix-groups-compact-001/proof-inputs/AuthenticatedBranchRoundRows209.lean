import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData210
import AuthenticatedBranchRoundInstructionMatrixData211
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13494 : actualRows13494=WordField.canonicalRows actualModulus 13494 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13494 : actualRows13494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13494=2820 := by core033_kernel_decide
theorem rows13495 : actualRows13495=WordField.canonicalRows actualModulus 13495 (.bnot 13494) := by core033_kernel_decide
theorem stats13495 : actualRows13495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13495=6276 := by core033_kernel_decide
theorem rows13496 : actualRows13496=WordField.canonicalRows actualModulus 13496 (.badd 13493 13495) := by core033_kernel_decide
theorem stats13496 : actualRows13496.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13496=5388 := by core033_kernel_decide
theorem rows13497 : actualRows13497=WordField.canonicalRows actualModulus 13497 (.bnot 13496) := by core033_kernel_decide
theorem stats13497 : actualRows13497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13497=6276 := by core033_kernel_decide
theorem rows13498 : actualRows13498=WordField.canonicalRows actualModulus 13498 (.band 13491 13497) := by core033_kernel_decide
theorem stats13498 : actualRows13498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13498=5124 := by core033_kernel_decide
theorem rows13499 : actualRows13499=WordField.canonicalRows actualModulus 13499 (.bxor 13486 13498) := by core033_kernel_decide
theorem stats13499 : actualRows13499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13499=7428 := by core033_kernel_decide
theorem rows13500 : actualRows13500=WordField.canonicalRows actualModulus 13500 (.shr 13499 31) := by core033_kernel_decide
theorem stats13500 : actualRows13500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13500=2892 := by core033_kernel_decide
theorem rows13501 : actualRows13501=WordField.canonicalRows actualModulus 13501 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13501 : actualRows13501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13501=2892 := by core033_kernel_decide
theorem rows13502 : actualRows13502=WordField.canonicalRows actualModulus 13502 (.bxor 13500 13501) := by core033_kernel_decide
theorem stats13502 : actualRows13502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13502=7428 := by core033_kernel_decide
theorem rows13503 : actualRows13503=WordField.canonicalRows actualModulus 13503 (.bnot 13502) := by core033_kernel_decide
theorem stats13503 : actualRows13503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13503=6276 := by core033_kernel_decide
theorem rows13504 : actualRows13504=WordField.canonicalRows actualModulus 13504 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13504 : actualRows13504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13504=2892 := by core033_kernel_decide
theorem rows13505 : actualRows13505=WordField.canonicalRows actualModulus 13505 (.badd 13503 13504) := by core033_kernel_decide
theorem stats13505 : actualRows13505.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13505=5388 := by core033_kernel_decide
theorem rows13506 : actualRows13506=WordField.canonicalRows actualModulus 13506 (.bnot 13505) := by core033_kernel_decide
theorem stats13506 : actualRows13506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13506=6276 := by core033_kernel_decide
theorem rows13507 : actualRows13507=WordField.canonicalRows actualModulus 13507 (.band 13506 10488) := by core033_kernel_decide
theorem stats13507 : actualRows13507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13507=5124 := by core033_kernel_decide
theorem rows13508 : actualRows13508=WordField.canonicalRows actualModulus 13508 (.bxor 13481 13507) := by core033_kernel_decide
theorem stats13508 : actualRows13508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13508=7428 := by core033_kernel_decide
theorem rows13509 : actualRows13509=WordField.canonicalRows actualModulus 13509 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13509 : actualRows13509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13509=2964 := by core033_kernel_decide
theorem rows13510 : actualRows13510=WordField.canonicalRows actualModulus 13510 (.bxor 693 13509) := by core033_kernel_decide
theorem stats13510 : actualRows13510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13510=7428 := by core033_kernel_decide
theorem rows13511 : actualRows13511=WordField.canonicalRows actualModulus 13511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13511 : actualRows13511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13511=2820 := by core033_kernel_decide
theorem rows13512 : actualRows13512=WordField.canonicalRows actualModulus 13512 (.bnot 13511) := by core033_kernel_decide
theorem stats13512 : actualRows13512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13512=6276 := by core033_kernel_decide
theorem rows13513 : actualRows13513=WordField.canonicalRows actualModulus 13513 (.band 13510 13512) := by core033_kernel_decide
theorem stats13513 : actualRows13513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13513=5124 := by core033_kernel_decide
theorem rows13514 : actualRows13514=WordField.canonicalRows actualModulus 13514 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13514 : actualRows13514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13514=2964 := by core033_kernel_decide
theorem rows13515 : actualRows13515=WordField.canonicalRows actualModulus 13515 (.bxor 693 13514) := by core033_kernel_decide
theorem stats13515 : actualRows13515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13515=7428 := by core033_kernel_decide
theorem rows13516 : actualRows13516=WordField.canonicalRows actualModulus 13516 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13516 : actualRows13516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13516=2820 := by core033_kernel_decide
theorem rows13517 : actualRows13517=WordField.canonicalRows actualModulus 13517 (.bnot 13516) := by core033_kernel_decide
theorem stats13517 : actualRows13517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13517=6276 := by core033_kernel_decide
theorem rows13518 : actualRows13518=WordField.canonicalRows actualModulus 13518 (.bxor 13515 13517) := by core033_kernel_decide
theorem stats13518 : actualRows13518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13518=7428 := by core033_kernel_decide
theorem rows13519 : actualRows13519=WordField.canonicalRows actualModulus 13519 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13519 : actualRows13519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13519=2964 := by core033_kernel_decide
theorem rows13520 : actualRows13520=WordField.canonicalRows actualModulus 13520 (.bxor 693 13519) := by core033_kernel_decide
theorem stats13520 : actualRows13520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13520=7428 := by core033_kernel_decide
theorem rows13521 : actualRows13521=WordField.canonicalRows actualModulus 13521 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13521 : actualRows13521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13521=2820 := by core033_kernel_decide
theorem rows13522 : actualRows13522=WordField.canonicalRows actualModulus 13522 (.bnot 13521) := by core033_kernel_decide
theorem stats13522 : actualRows13522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13522=6276 := by core033_kernel_decide
theorem rows13523 : actualRows13523=WordField.canonicalRows actualModulus 13523 (.badd 13520 13522) := by core033_kernel_decide
theorem stats13523 : actualRows13523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13523=5388 := by core033_kernel_decide
theorem rows13524 : actualRows13524=WordField.canonicalRows actualModulus 13524 (.bnot 13523) := by core033_kernel_decide
theorem stats13524 : actualRows13524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13524=6276 := by core033_kernel_decide
theorem rows13525 : actualRows13525=WordField.canonicalRows actualModulus 13525 (.band 13518 13524) := by core033_kernel_decide
theorem stats13525 : actualRows13525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13525=5124 := by core033_kernel_decide
theorem rows13526 : actualRows13526=WordField.canonicalRows actualModulus 13526 (.bxor 13513 13525) := by core033_kernel_decide
theorem stats13526 : actualRows13526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13526=7428 := by core033_kernel_decide
theorem rows13527 : actualRows13527=WordField.canonicalRows actualModulus 13527 (.shr 13526 31) := by core033_kernel_decide
theorem stats13527 : actualRows13527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13527=2892 := by core033_kernel_decide
theorem rows13528 : actualRows13528=WordField.canonicalRows actualModulus 13528 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13528 : actualRows13528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13528=2892 := by core033_kernel_decide
theorem rows13529 : actualRows13529=WordField.canonicalRows actualModulus 13529 (.bxor 13527 13528) := by core033_kernel_decide
theorem stats13529 : actualRows13529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13529=7428 := by core033_kernel_decide
theorem rows13530 : actualRows13530=WordField.canonicalRows actualModulus 13530 (.bnot 13529) := by core033_kernel_decide
theorem stats13530 : actualRows13530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13530=6276 := by core033_kernel_decide
theorem rows13531 : actualRows13531=WordField.canonicalRows actualModulus 13531 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13531 : actualRows13531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13531=2892 := by core033_kernel_decide
theorem rows13532 : actualRows13532=WordField.canonicalRows actualModulus 13532 (.badd 13530 13531) := by core033_kernel_decide
theorem stats13532 : actualRows13532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13532=5388 := by core033_kernel_decide
theorem rows13533 : actualRows13533=WordField.canonicalRows actualModulus 13533 (.band 13532 11060) := by core033_kernel_decide
theorem stats13533 : actualRows13533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13533=5124 := by core033_kernel_decide
theorem rows13534 : actualRows13534=WordField.canonicalRows actualModulus 13534 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13534 : actualRows13534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13534=2964 := by core033_kernel_decide
theorem rows13535 : actualRows13535=WordField.canonicalRows actualModulus 13535 (.bxor 693 13534) := by core033_kernel_decide
theorem stats13535 : actualRows13535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13535=7428 := by core033_kernel_decide
theorem rows13536 : actualRows13536=WordField.canonicalRows actualModulus 13536 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13536 : actualRows13536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13536=2820 := by core033_kernel_decide
theorem rows13537 : actualRows13537=WordField.canonicalRows actualModulus 13537 (.bnot 13536) := by core033_kernel_decide
theorem stats13537 : actualRows13537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13537=6276 := by core033_kernel_decide
theorem rows13538 : actualRows13538=WordField.canonicalRows actualModulus 13538 (.band 13535 13537) := by core033_kernel_decide
theorem stats13538 : actualRows13538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13538=5124 := by core033_kernel_decide
theorem rows13539 : actualRows13539=WordField.canonicalRows actualModulus 13539 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13539 : actualRows13539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13539=2964 := by core033_kernel_decide
theorem rows13540 : actualRows13540=WordField.canonicalRows actualModulus 13540 (.bxor 693 13539) := by core033_kernel_decide
theorem stats13540 : actualRows13540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13540=7428 := by core033_kernel_decide
theorem rows13541 : actualRows13541=WordField.canonicalRows actualModulus 13541 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13541 : actualRows13541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13541=2820 := by core033_kernel_decide
theorem rows13542 : actualRows13542=WordField.canonicalRows actualModulus 13542 (.bnot 13541) := by core033_kernel_decide
theorem stats13542 : actualRows13542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13542=6276 := by core033_kernel_decide
theorem rows13543 : actualRows13543=WordField.canonicalRows actualModulus 13543 (.bxor 13540 13542) := by core033_kernel_decide
theorem stats13543 : actualRows13543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13543=7428 := by core033_kernel_decide
theorem rows13544 : actualRows13544=WordField.canonicalRows actualModulus 13544 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13544 : actualRows13544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13544=2964 := by core033_kernel_decide
theorem rows13545 : actualRows13545=WordField.canonicalRows actualModulus 13545 (.bxor 693 13544) := by core033_kernel_decide
theorem stats13545 : actualRows13545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13545=7428 := by core033_kernel_decide
theorem rows13546 : actualRows13546=WordField.canonicalRows actualModulus 13546 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13546 : actualRows13546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13546=2820 := by core033_kernel_decide
theorem rows13547 : actualRows13547=WordField.canonicalRows actualModulus 13547 (.bnot 13546) := by core033_kernel_decide
theorem stats13547 : actualRows13547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13547=6276 := by core033_kernel_decide
theorem rows13548 : actualRows13548=WordField.canonicalRows actualModulus 13548 (.badd 13545 13547) := by core033_kernel_decide
theorem stats13548 : actualRows13548.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13548=5388 := by core033_kernel_decide
theorem rows13549 : actualRows13549=WordField.canonicalRows actualModulus 13549 (.bnot 13548) := by core033_kernel_decide
theorem stats13549 : actualRows13549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13549=6276 := by core033_kernel_decide
theorem rows13550 : actualRows13550=WordField.canonicalRows actualModulus 13550 (.band 13543 13549) := by core033_kernel_decide
theorem stats13550 : actualRows13550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13550=5124 := by core033_kernel_decide
theorem rows13551 : actualRows13551=WordField.canonicalRows actualModulus 13551 (.bxor 13538 13550) := by core033_kernel_decide
theorem stats13551 : actualRows13551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13551=7428 := by core033_kernel_decide
theorem rows13552 : actualRows13552=WordField.canonicalRows actualModulus 13552 (.shr 13551 31) := by core033_kernel_decide
theorem stats13552 : actualRows13552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13552=2892 := by core033_kernel_decide
theorem rows13553 : actualRows13553=WordField.canonicalRows actualModulus 13553 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13553 : actualRows13553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13553=2892 := by core033_kernel_decide
theorem rows13554 : actualRows13554=WordField.canonicalRows actualModulus 13554 (.bxor 13552 13553) := by core033_kernel_decide
theorem stats13554 : actualRows13554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13554=7428 := by core033_kernel_decide
theorem rows13555 : actualRows13555=WordField.canonicalRows actualModulus 13555 (.bnot 13554) := by core033_kernel_decide
theorem stats13555 : actualRows13555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13555=6276 := by core033_kernel_decide
theorem rows13556 : actualRows13556=WordField.canonicalRows actualModulus 13556 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13556 : actualRows13556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13556=2892 := by core033_kernel_decide
theorem rows13557 : actualRows13557=WordField.canonicalRows actualModulus 13557 (.badd 13555 13556) := by core033_kernel_decide
theorem stats13557 : actualRows13557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13557=5388 := by core033_kernel_decide
def partRows209 : List R1CS.Row := actualRows13494++actualRows13495++actualRows13496++actualRows13497++actualRows13498++actualRows13499++actualRows13500++actualRows13501++actualRows13502++actualRows13503++actualRows13504++actualRows13505++actualRows13506++actualRows13507++actualRows13508++actualRows13509++actualRows13510++actualRows13511++actualRows13512++actualRows13513++actualRows13514++actualRows13515++actualRows13516++actualRows13517++actualRows13518++actualRows13519++actualRows13520++actualRows13521++actualRows13522++actualRows13523++actualRows13524++actualRows13525++actualRows13526++actualRows13527++actualRows13528++actualRows13529++actualRows13530++actualRows13531++actualRows13532++actualRows13533++actualRows13534++actualRows13535++actualRows13536++actualRows13537++actualRows13538++actualRows13539++actualRows13540++actualRows13541++actualRows13542++actualRows13543++actualRows13544++actualRows13545++actualRows13546++actualRows13547++actualRows13548++actualRows13549++actualRows13550++actualRows13551++actualRows13552++actualRows13553++actualRows13554++actualRows13555++actualRows13556++actualRows13557
def partOps209 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 13494,.badd 13493 13495,.bnot 13496,.band 13491 13497,.bxor 13486 13498,.shr 13499 31,.literal (BitVec.ofNat 32 1),.bxor 13500 13501,.bnot 13502,.literal (BitVec.ofNat 32 1),.badd 13503 13504,.bnot 13505,.band 13506 10488,.bxor 13481 13507,.literal (BitVec.ofNat 32 3),.bxor 693 13509,.literal (BitVec.ofNat 32 0),.bnot 13511,.band 13510 13512,.literal (BitVec.ofNat 32 3),.bxor 693 13514,.literal (BitVec.ofNat 32 0),.bnot 13516,.bxor 13515 13517,.literal (BitVec.ofNat 32 3),.bxor 693 13519,.literal (BitVec.ofNat 32 0),.bnot 13521,.badd 13520 13522,.bnot 13523,.band 13518 13524,.bxor 13513 13525,.shr 13526 31,.literal (BitVec.ofNat 32 1),.bxor 13527 13528,.bnot 13529,.literal (BitVec.ofNat 32 1),.badd 13530 13531,.band 13532 11060,.literal (BitVec.ofNat 32 3),.bxor 693 13534,.literal (BitVec.ofNat 32 0),.bnot 13536,.band 13535 13537,.literal (BitVec.ofNat 32 3),.bxor 693 13539,.literal (BitVec.ofNat 32 0),.bnot 13541,.bxor 13540 13542,.literal (BitVec.ofNat 32 3),.bxor 693 13544,.literal (BitVec.ofNat 32 0),.bnot 13546,.badd 13545 13547,.bnot 13548,.band 13543 13549,.bxor 13538 13550,.shr 13551 31,.literal (BitVec.ofNat 32 1),.bxor 13552 13553,.bnot 13554,.literal (BitVec.ofNat 32 1),.badd 13555 13556]
theorem partExact209 : partRows209=WordField.rows actualModulus 13494 partOps209 := by
  simp only [partRows209,partOps209,WordField.rows,rows13494,rows13495,rows13496,rows13497,rows13498,rows13499,rows13500,rows13501,rows13502,rows13503,rows13504,rows13505,rows13506,rows13507,rows13508,rows13509,rows13510,rows13511,rows13512,rows13513,rows13514,rows13515,rows13516,rows13517,rows13518,rows13519,rows13520,rows13521,rows13522,rows13523,rows13524,rows13525,rows13526,rows13527,rows13528,rows13529,rows13530,rows13531,rows13532,rows13533,rows13534,rows13535,rows13536,rows13537,rows13538,rows13539,rows13540,rows13541,rows13542,rows13543,rows13544,rows13545,rows13546,rows13547,rows13548,rows13549,rows13550,rows13551,rows13552,rows13553,rows13554,rows13555,rows13556,rows13557,List.append_assoc,List.append_nil]
theorem partLength209 : partOps209.length=64 := by decide
theorem partStats209 : partRows209.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows209=331032 := by
  simp only [partRows209,List.length_append,MatrixRowBlocks.rows_weight_append,stats13494.1,stats13494.2,stats13495.1,stats13495.2,stats13496.1,stats13496.2,stats13497.1,stats13497.2,stats13498.1,stats13498.2,stats13499.1,stats13499.2,stats13500.1,stats13500.2,stats13501.1,stats13501.2,stats13502.1,stats13502.2,stats13503.1,stats13503.2,stats13504.1,stats13504.2,stats13505.1,stats13505.2,stats13506.1,stats13506.2,stats13507.1,stats13507.2,stats13508.1,stats13508.2,stats13509.1,stats13509.2,stats13510.1,stats13510.2,stats13511.1,stats13511.2,stats13512.1,stats13512.2,stats13513.1,stats13513.2,stats13514.1,stats13514.2,stats13515.1,stats13515.2,stats13516.1,stats13516.2,stats13517.1,stats13517.2,stats13518.1,stats13518.2,stats13519.1,stats13519.2,stats13520.1,stats13520.2,stats13521.1,stats13521.2,stats13522.1,stats13522.2,stats13523.1,stats13523.2,stats13524.1,stats13524.2,stats13525.1,stats13525.2,stats13526.1,stats13526.2,stats13527.1,stats13527.2,stats13528.1,stats13528.2,stats13529.1,stats13529.2,stats13530.1,stats13530.2,stats13531.1,stats13531.2,stats13532.1,stats13532.2,stats13533.1,stats13533.2,stats13534.1,stats13534.2,stats13535.1,stats13535.2,stats13536.1,stats13536.2,stats13537.1,stats13537.2,stats13538.1,stats13538.2,stats13539.1,stats13539.2,stats13540.1,stats13540.2,stats13541.1,stats13541.2,stats13542.1,stats13542.2,stats13543.1,stats13543.2,stats13544.1,stats13544.2,stats13545.1,stats13545.2,stats13546.1,stats13546.2,stats13547.1,stats13547.2,stats13548.1,stats13548.2,stats13549.1,stats13549.2,stats13550.1,stats13550.2,stats13551.1,stats13551.2,stats13552.1,stats13552.2,stats13553.1,stats13553.2,stats13554.1,stats13554.2,stats13555.1,stats13555.2,stats13556.1,stats13556.2,stats13557.1,stats13557.2]
  decide
end AuthenticatedBranchRoundCheckedRows
