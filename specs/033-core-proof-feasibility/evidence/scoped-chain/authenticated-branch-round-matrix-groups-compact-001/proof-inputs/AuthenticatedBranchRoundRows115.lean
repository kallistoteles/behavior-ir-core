import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData116
import AuthenticatedBranchRoundInstructionMatrixData117
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7478 : actualRows7478=WordField.canonicalRows actualModulus 7478 (.bnot 7477) := by core033_kernel_decide
theorem stats7478 : actualRows7478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7478=6276 := by core033_kernel_decide
theorem rows7479 : actualRows7479=WordField.canonicalRows actualModulus 7479 (.band 7473 7478) := by core033_kernel_decide
theorem stats7479 : actualRows7479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7479=5124 := by core033_kernel_decide
theorem rows7480 : actualRows7480=WordField.canonicalRows actualModulus 7480 (.bxor 7469 7479) := by core033_kernel_decide
theorem stats7480 : actualRows7480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7480=7428 := by core033_kernel_decide
theorem rows7481 : actualRows7481=WordField.canonicalRows actualModulus 7481 (.shr 7480 31) := by core033_kernel_decide
theorem stats7481 : actualRows7481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7481=2892 := by core033_kernel_decide
theorem rows7482 : actualRows7482=WordField.canonicalRows actualModulus 7482 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7482 : actualRows7482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7482=2892 := by core033_kernel_decide
theorem rows7483 : actualRows7483=WordField.canonicalRows actualModulus 7483 (.bxor 7481 7482) := by core033_kernel_decide
theorem stats7483 : actualRows7483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7483=7428 := by core033_kernel_decide
theorem rows7484 : actualRows7484=WordField.canonicalRows actualModulus 7484 (.shr 5050 8) := by core033_kernel_decide
theorem stats7484 : actualRows7484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7484=4548 := by core033_kernel_decide
theorem rows7485 : actualRows7485=WordField.canonicalRows actualModulus 7485 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7485 : actualRows7485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7485=2820 := by core033_kernel_decide
theorem rows7486 : actualRows7486=WordField.canonicalRows actualModulus 7486 (.bnot 7485) := by core033_kernel_decide
theorem stats7486 : actualRows7486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7486=6276 := by core033_kernel_decide
theorem rows7487 : actualRows7487=WordField.canonicalRows actualModulus 7487 (.band 7484 7486) := by core033_kernel_decide
theorem stats7487 : actualRows7487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7487=5124 := by core033_kernel_decide
theorem rows7488 : actualRows7488=WordField.canonicalRows actualModulus 7488 (.shr 5050 8) := by core033_kernel_decide
theorem stats7488 : actualRows7488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7488=4548 := by core033_kernel_decide
theorem rows7489 : actualRows7489=WordField.canonicalRows actualModulus 7489 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7489 : actualRows7489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7489=2820 := by core033_kernel_decide
theorem rows7490 : actualRows7490=WordField.canonicalRows actualModulus 7490 (.bnot 7489) := by core033_kernel_decide
theorem stats7490 : actualRows7490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7490=6276 := by core033_kernel_decide
theorem rows7491 : actualRows7491=WordField.canonicalRows actualModulus 7491 (.bxor 7488 7490) := by core033_kernel_decide
theorem stats7491 : actualRows7491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7491=7428 := by core033_kernel_decide
theorem rows7492 : actualRows7492=WordField.canonicalRows actualModulus 7492 (.shr 5050 8) := by core033_kernel_decide
theorem stats7492 : actualRows7492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7492=4548 := by core033_kernel_decide
theorem rows7493 : actualRows7493=WordField.canonicalRows actualModulus 7493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7493 : actualRows7493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7493=2820 := by core033_kernel_decide
theorem rows7494 : actualRows7494=WordField.canonicalRows actualModulus 7494 (.bnot 7493) := by core033_kernel_decide
theorem stats7494 : actualRows7494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7494=6276 := by core033_kernel_decide
theorem rows7495 : actualRows7495=WordField.canonicalRows actualModulus 7495 (.badd 7492 7494) := by core033_kernel_decide
theorem stats7495 : actualRows7495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7495=5388 := by core033_kernel_decide
theorem rows7496 : actualRows7496=WordField.canonicalRows actualModulus 7496 (.bnot 7495) := by core033_kernel_decide
theorem stats7496 : actualRows7496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7496=6276 := by core033_kernel_decide
theorem rows7497 : actualRows7497=WordField.canonicalRows actualModulus 7497 (.band 7491 7496) := by core033_kernel_decide
theorem stats7497 : actualRows7497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7497=5124 := by core033_kernel_decide
theorem rows7498 : actualRows7498=WordField.canonicalRows actualModulus 7498 (.bxor 7487 7497) := by core033_kernel_decide
theorem stats7498 : actualRows7498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7498=7428 := by core033_kernel_decide
theorem rows7499 : actualRows7499=WordField.canonicalRows actualModulus 7499 (.shr 7498 31) := by core033_kernel_decide
theorem stats7499 : actualRows7499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7499=2892 := by core033_kernel_decide
theorem rows7500 : actualRows7500=WordField.canonicalRows actualModulus 7500 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7500 : actualRows7500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7500=2892 := by core033_kernel_decide
theorem rows7501 : actualRows7501=WordField.canonicalRows actualModulus 7501 (.bxor 7499 7500) := by core033_kernel_decide
theorem stats7501 : actualRows7501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7501=7428 := by core033_kernel_decide
theorem rows7502 : actualRows7502=WordField.canonicalRows actualModulus 7502 (.shr 5102 8) := by core033_kernel_decide
theorem stats7502 : actualRows7502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7502=4548 := by core033_kernel_decide
theorem rows7503 : actualRows7503=WordField.canonicalRows actualModulus 7503 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7503 : actualRows7503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7503=2820 := by core033_kernel_decide
theorem rows7504 : actualRows7504=WordField.canonicalRows actualModulus 7504 (.bnot 7503) := by core033_kernel_decide
theorem stats7504 : actualRows7504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7504=6276 := by core033_kernel_decide
theorem rows7505 : actualRows7505=WordField.canonicalRows actualModulus 7505 (.band 7502 7504) := by core033_kernel_decide
theorem stats7505 : actualRows7505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7505=5124 := by core033_kernel_decide
theorem rows7506 : actualRows7506=WordField.canonicalRows actualModulus 7506 (.shr 5102 8) := by core033_kernel_decide
theorem stats7506 : actualRows7506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7506=4548 := by core033_kernel_decide
theorem rows7507 : actualRows7507=WordField.canonicalRows actualModulus 7507 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7507 : actualRows7507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7507=2820 := by core033_kernel_decide
theorem rows7508 : actualRows7508=WordField.canonicalRows actualModulus 7508 (.bnot 7507) := by core033_kernel_decide
theorem stats7508 : actualRows7508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7508=6276 := by core033_kernel_decide
theorem rows7509 : actualRows7509=WordField.canonicalRows actualModulus 7509 (.bxor 7506 7508) := by core033_kernel_decide
theorem stats7509 : actualRows7509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7509=7428 := by core033_kernel_decide
theorem rows7510 : actualRows7510=WordField.canonicalRows actualModulus 7510 (.shr 5102 8) := by core033_kernel_decide
theorem stats7510 : actualRows7510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7510=4548 := by core033_kernel_decide
theorem rows7511 : actualRows7511=WordField.canonicalRows actualModulus 7511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7511 : actualRows7511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7511=2820 := by core033_kernel_decide
theorem rows7512 : actualRows7512=WordField.canonicalRows actualModulus 7512 (.bnot 7511) := by core033_kernel_decide
theorem stats7512 : actualRows7512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7512=6276 := by core033_kernel_decide
theorem rows7513 : actualRows7513=WordField.canonicalRows actualModulus 7513 (.badd 7510 7512) := by core033_kernel_decide
theorem stats7513 : actualRows7513.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7513=5388 := by core033_kernel_decide
theorem rows7514 : actualRows7514=WordField.canonicalRows actualModulus 7514 (.bnot 7513) := by core033_kernel_decide
theorem stats7514 : actualRows7514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7514=6276 := by core033_kernel_decide
theorem rows7515 : actualRows7515=WordField.canonicalRows actualModulus 7515 (.band 7509 7514) := by core033_kernel_decide
theorem stats7515 : actualRows7515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7515=5124 := by core033_kernel_decide
theorem rows7516 : actualRows7516=WordField.canonicalRows actualModulus 7516 (.bxor 7505 7515) := by core033_kernel_decide
theorem stats7516 : actualRows7516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7516=7428 := by core033_kernel_decide
theorem rows7517 : actualRows7517=WordField.canonicalRows actualModulus 7517 (.shr 7516 31) := by core033_kernel_decide
theorem stats7517 : actualRows7517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7517=2892 := by core033_kernel_decide
theorem rows7518 : actualRows7518=WordField.canonicalRows actualModulus 7518 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7518 : actualRows7518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7518=2892 := by core033_kernel_decide
theorem rows7519 : actualRows7519=WordField.canonicalRows actualModulus 7519 (.bxor 7517 7518) := by core033_kernel_decide
theorem stats7519 : actualRows7519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7519=7428 := by core033_kernel_decide
theorem rows7520 : actualRows7520=WordField.canonicalRows actualModulus 7520 (.shr 5154 8) := by core033_kernel_decide
theorem stats7520 : actualRows7520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7520=4548 := by core033_kernel_decide
theorem rows7521 : actualRows7521=WordField.canonicalRows actualModulus 7521 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7521 : actualRows7521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7521=2820 := by core033_kernel_decide
theorem rows7522 : actualRows7522=WordField.canonicalRows actualModulus 7522 (.bnot 7521) := by core033_kernel_decide
theorem stats7522 : actualRows7522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7522=6276 := by core033_kernel_decide
theorem rows7523 : actualRows7523=WordField.canonicalRows actualModulus 7523 (.band 7520 7522) := by core033_kernel_decide
theorem stats7523 : actualRows7523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7523=5124 := by core033_kernel_decide
theorem rows7524 : actualRows7524=WordField.canonicalRows actualModulus 7524 (.shr 5154 8) := by core033_kernel_decide
theorem stats7524 : actualRows7524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7524=4548 := by core033_kernel_decide
theorem rows7525 : actualRows7525=WordField.canonicalRows actualModulus 7525 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7525 : actualRows7525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7525=2820 := by core033_kernel_decide
theorem rows7526 : actualRows7526=WordField.canonicalRows actualModulus 7526 (.bnot 7525) := by core033_kernel_decide
theorem stats7526 : actualRows7526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7526=6276 := by core033_kernel_decide
theorem rows7527 : actualRows7527=WordField.canonicalRows actualModulus 7527 (.bxor 7524 7526) := by core033_kernel_decide
theorem stats7527 : actualRows7527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7527=7428 := by core033_kernel_decide
theorem rows7528 : actualRows7528=WordField.canonicalRows actualModulus 7528 (.shr 5154 8) := by core033_kernel_decide
theorem stats7528 : actualRows7528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7528=4548 := by core033_kernel_decide
theorem rows7529 : actualRows7529=WordField.canonicalRows actualModulus 7529 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7529 : actualRows7529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7529=2820 := by core033_kernel_decide
theorem rows7530 : actualRows7530=WordField.canonicalRows actualModulus 7530 (.bnot 7529) := by core033_kernel_decide
theorem stats7530 : actualRows7530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7530=6276 := by core033_kernel_decide
theorem rows7531 : actualRows7531=WordField.canonicalRows actualModulus 7531 (.badd 7528 7530) := by core033_kernel_decide
theorem stats7531 : actualRows7531.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7531=5388 := by core033_kernel_decide
theorem rows7532 : actualRows7532=WordField.canonicalRows actualModulus 7532 (.bnot 7531) := by core033_kernel_decide
theorem stats7532 : actualRows7532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7532=6276 := by core033_kernel_decide
theorem rows7533 : actualRows7533=WordField.canonicalRows actualModulus 7533 (.band 7527 7532) := by core033_kernel_decide
theorem stats7533 : actualRows7533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7533=5124 := by core033_kernel_decide
theorem rows7534 : actualRows7534=WordField.canonicalRows actualModulus 7534 (.bxor 7523 7533) := by core033_kernel_decide
theorem stats7534 : actualRows7534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7534=7428 := by core033_kernel_decide
theorem rows7535 : actualRows7535=WordField.canonicalRows actualModulus 7535 (.shr 7534 31) := by core033_kernel_decide
theorem stats7535 : actualRows7535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7535=2892 := by core033_kernel_decide
theorem rows7536 : actualRows7536=WordField.canonicalRows actualModulus 7536 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7536 : actualRows7536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7536=2892 := by core033_kernel_decide
theorem rows7537 : actualRows7537=WordField.canonicalRows actualModulus 7537 (.bxor 7535 7536) := by core033_kernel_decide
theorem stats7537 : actualRows7537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7537=7428 := by core033_kernel_decide
theorem rows7538 : actualRows7538=WordField.canonicalRows actualModulus 7538 (.shr 5206 8) := by core033_kernel_decide
theorem stats7538 : actualRows7538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7538=4548 := by core033_kernel_decide
theorem rows7539 : actualRows7539=WordField.canonicalRows actualModulus 7539 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7539 : actualRows7539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7539=2820 := by core033_kernel_decide
theorem rows7540 : actualRows7540=WordField.canonicalRows actualModulus 7540 (.bnot 7539) := by core033_kernel_decide
theorem stats7540 : actualRows7540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7540=6276 := by core033_kernel_decide
theorem rows7541 : actualRows7541=WordField.canonicalRows actualModulus 7541 (.band 7538 7540) := by core033_kernel_decide
theorem stats7541 : actualRows7541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7541=5124 := by core033_kernel_decide
def partRows115 : List R1CS.Row := actualRows7478++actualRows7479++actualRows7480++actualRows7481++actualRows7482++actualRows7483++actualRows7484++actualRows7485++actualRows7486++actualRows7487++actualRows7488++actualRows7489++actualRows7490++actualRows7491++actualRows7492++actualRows7493++actualRows7494++actualRows7495++actualRows7496++actualRows7497++actualRows7498++actualRows7499++actualRows7500++actualRows7501++actualRows7502++actualRows7503++actualRows7504++actualRows7505++actualRows7506++actualRows7507++actualRows7508++actualRows7509++actualRows7510++actualRows7511++actualRows7512++actualRows7513++actualRows7514++actualRows7515++actualRows7516++actualRows7517++actualRows7518++actualRows7519++actualRows7520++actualRows7521++actualRows7522++actualRows7523++actualRows7524++actualRows7525++actualRows7526++actualRows7527++actualRows7528++actualRows7529++actualRows7530++actualRows7531++actualRows7532++actualRows7533++actualRows7534++actualRows7535++actualRows7536++actualRows7537++actualRows7538++actualRows7539++actualRows7540++actualRows7541
def partOps115 : List WordIR.Op := [.bnot 7477,.band 7473 7478,.bxor 7469 7479,.shr 7480 31,.literal (BitVec.ofNat 32 1),.bxor 7481 7482,.shr 5050 8,.literal (BitVec.ofNat 32 0),.bnot 7485,.band 7484 7486,.shr 5050 8,.literal (BitVec.ofNat 32 0),.bnot 7489,.bxor 7488 7490,.shr 5050 8,.literal (BitVec.ofNat 32 0),.bnot 7493,.badd 7492 7494,.bnot 7495,.band 7491 7496,.bxor 7487 7497,.shr 7498 31,.literal (BitVec.ofNat 32 1),.bxor 7499 7500,.shr 5102 8,.literal (BitVec.ofNat 32 0),.bnot 7503,.band 7502 7504,.shr 5102 8,.literal (BitVec.ofNat 32 0),.bnot 7507,.bxor 7506 7508,.shr 5102 8,.literal (BitVec.ofNat 32 0),.bnot 7511,.badd 7510 7512,.bnot 7513,.band 7509 7514,.bxor 7505 7515,.shr 7516 31,.literal (BitVec.ofNat 32 1),.bxor 7517 7518,.shr 5154 8,.literal (BitVec.ofNat 32 0),.bnot 7521,.band 7520 7522,.shr 5154 8,.literal (BitVec.ofNat 32 0),.bnot 7525,.bxor 7524 7526,.shr 5154 8,.literal (BitVec.ofNat 32 0),.bnot 7529,.badd 7528 7530,.bnot 7531,.band 7527 7532,.bxor 7523 7533,.shr 7534 31,.literal (BitVec.ofNat 32 1),.bxor 7535 7536,.shr 5206 8,.literal (BitVec.ofNat 32 0),.bnot 7539,.band 7538 7540]
theorem partExact115 : partRows115=WordField.rows actualModulus 7478 partOps115 := by
  simp only [partRows115,partOps115,WordField.rows,rows7478,rows7479,rows7480,rows7481,rows7482,rows7483,rows7484,rows7485,rows7486,rows7487,rows7488,rows7489,rows7490,rows7491,rows7492,rows7493,rows7494,rows7495,rows7496,rows7497,rows7498,rows7499,rows7500,rows7501,rows7502,rows7503,rows7504,rows7505,rows7506,rows7507,rows7508,rows7509,rows7510,rows7511,rows7512,rows7513,rows7514,rows7515,rows7516,rows7517,rows7518,rows7519,rows7520,rows7521,rows7522,rows7523,rows7524,rows7525,rows7526,rows7527,rows7528,rows7529,rows7530,rows7531,rows7532,rows7533,rows7534,rows7535,rows7536,rows7537,rows7538,rows7539,rows7540,rows7541,List.append_assoc,List.append_nil]
theorem partLength115 : partOps115.length=64 := by decide
theorem partStats115 : partRows115.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows115=323544 := by
  simp only [partRows115,List.length_append,MatrixRowBlocks.rows_weight_append,stats7478.1,stats7478.2,stats7479.1,stats7479.2,stats7480.1,stats7480.2,stats7481.1,stats7481.2,stats7482.1,stats7482.2,stats7483.1,stats7483.2,stats7484.1,stats7484.2,stats7485.1,stats7485.2,stats7486.1,stats7486.2,stats7487.1,stats7487.2,stats7488.1,stats7488.2,stats7489.1,stats7489.2,stats7490.1,stats7490.2,stats7491.1,stats7491.2,stats7492.1,stats7492.2,stats7493.1,stats7493.2,stats7494.1,stats7494.2,stats7495.1,stats7495.2,stats7496.1,stats7496.2,stats7497.1,stats7497.2,stats7498.1,stats7498.2,stats7499.1,stats7499.2,stats7500.1,stats7500.2,stats7501.1,stats7501.2,stats7502.1,stats7502.2,stats7503.1,stats7503.2,stats7504.1,stats7504.2,stats7505.1,stats7505.2,stats7506.1,stats7506.2,stats7507.1,stats7507.2,stats7508.1,stats7508.2,stats7509.1,stats7509.2,stats7510.1,stats7510.2,stats7511.1,stats7511.2,stats7512.1,stats7512.2,stats7513.1,stats7513.2,stats7514.1,stats7514.2,stats7515.1,stats7515.2,stats7516.1,stats7516.2,stats7517.1,stats7517.2,stats7518.1,stats7518.2,stats7519.1,stats7519.2,stats7520.1,stats7520.2,stats7521.1,stats7521.2,stats7522.1,stats7522.2,stats7523.1,stats7523.2,stats7524.1,stats7524.2,stats7525.1,stats7525.2,stats7526.1,stats7526.2,stats7527.1,stats7527.2,stats7528.1,stats7528.2,stats7529.1,stats7529.2,stats7530.1,stats7530.2,stats7531.1,stats7531.2,stats7532.1,stats7532.2,stats7533.1,stats7533.2,stats7534.1,stats7534.2,stats7535.1,stats7535.2,stats7536.1,stats7536.2,stats7537.1,stats7537.2,stats7538.1,stats7538.2,stats7539.1,stats7539.2,stats7540.1,stats7540.2,stats7541.1,stats7541.2]
  decide
end AuthenticatedBranchRoundCheckedRows
