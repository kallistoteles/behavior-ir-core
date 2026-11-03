import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData116
import FrameHashControllerInstructionMatrixData117
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7467 : actualRows7467=WordField.canonicalRows actualModulus 7467 (.badd 7455 7466) := by core033_kernel_decide
theorem stats7467 : actualRows7467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7467=5388 := by core033_kernel_decide
theorem rows7468 : actualRows7468=WordField.canonicalRows actualModulus 7468 (.badd 7359 7455) := by core033_kernel_decide
theorem stats7468 : actualRows7468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7468=5388 := by core033_kernel_decide
theorem rows7469 : actualRows7469=WordField.canonicalRows actualModulus 7469 (.rotr 7468 6) := by core033_kernel_decide
theorem stats7469 : actualRows7469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7469=5124 := by core033_kernel_decide
theorem rows7470 : actualRows7470=WordField.canonicalRows actualModulus 7470 (.rotr 7468 11) := by core033_kernel_decide
theorem stats7470 : actualRows7470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7470=5124 := by core033_kernel_decide
theorem rows7471 : actualRows7471=WordField.canonicalRows actualModulus 7471 (.bxor 7469 7470) := by core033_kernel_decide
theorem stats7471 : actualRows7471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7471=7428 := by core033_kernel_decide
theorem rows7472 : actualRows7472=WordField.canonicalRows actualModulus 7472 (.rotr 7468 25) := by core033_kernel_decide
theorem stats7472 : actualRows7472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7472=5124 := by core033_kernel_decide
theorem rows7473 : actualRows7473=WordField.canonicalRows actualModulus 7473 (.bxor 7471 7472) := by core033_kernel_decide
theorem stats7473 : actualRows7473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7473=7428 := by core033_kernel_decide
theorem rows7474 : actualRows7474=WordField.canonicalRows actualModulus 7474 (.badd 7387 7473) := by core033_kernel_decide
theorem stats7474 : actualRows7474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7474=5388 := by core033_kernel_decide
theorem rows7475 : actualRows7475=WordField.canonicalRows actualModulus 7475 (.band 7468 7441) := by core033_kernel_decide
theorem stats7475 : actualRows7475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7475=5124 := by core033_kernel_decide
theorem rows7476 : actualRows7476=WordField.canonicalRows actualModulus 7476 (.bnot 7468) := by core033_kernel_decide
theorem stats7476 : actualRows7476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7476=6276 := by core033_kernel_decide
theorem rows7477 : actualRows7477=WordField.canonicalRows actualModulus 7477 (.band 7476 7414) := by core033_kernel_decide
theorem stats7477 : actualRows7477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7477=5124 := by core033_kernel_decide
theorem rows7478 : actualRows7478=WordField.canonicalRows actualModulus 7478 (.bxor 7475 7477) := by core033_kernel_decide
theorem stats7478 : actualRows7478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7478=7428 := by core033_kernel_decide
theorem rows7479 : actualRows7479=WordField.canonicalRows actualModulus 7479 (.badd 7474 7478) := by core033_kernel_decide
theorem stats7479 : actualRows7479.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7479=5388 := by core033_kernel_decide
theorem rows7480 : actualRows7480=WordField.canonicalRows actualModulus 7480 (.literal (BitVec.ofNat 32 3835390401)) := by core033_kernel_decide
theorem stats7480 : actualRows7480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7480=3972 := by core033_kernel_decide
theorem rows7481 : actualRows7481=WordField.canonicalRows actualModulus 7481 (.badd 7479 7480) := by core033_kernel_decide
theorem stats7481 : actualRows7481.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7481=5388 := by core033_kernel_decide
theorem rows7482 : actualRows7482=WordField.canonicalRows actualModulus 7482 (.badd 7481 6425) := by core033_kernel_decide
theorem stats7482 : actualRows7482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7482=5388 := by core033_kernel_decide
theorem rows7483 : actualRows7483=WordField.canonicalRows actualModulus 7483 (.rotr 7467 2) := by core033_kernel_decide
theorem stats7483 : actualRows7483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7483=5124 := by core033_kernel_decide
theorem rows7484 : actualRows7484=WordField.canonicalRows actualModulus 7484 (.rotr 7467 13) := by core033_kernel_decide
theorem stats7484 : actualRows7484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7484=5124 := by core033_kernel_decide
theorem rows7485 : actualRows7485=WordField.canonicalRows actualModulus 7485 (.bxor 7483 7484) := by core033_kernel_decide
theorem stats7485 : actualRows7485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7485=7428 := by core033_kernel_decide
theorem rows7486 : actualRows7486=WordField.canonicalRows actualModulus 7486 (.rotr 7467 22) := by core033_kernel_decide
theorem stats7486 : actualRows7486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7486=5124 := by core033_kernel_decide
theorem rows7487 : actualRows7487=WordField.canonicalRows actualModulus 7487 (.bxor 7485 7486) := by core033_kernel_decide
theorem stats7487 : actualRows7487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7487=7428 := by core033_kernel_decide
theorem rows7488 : actualRows7488=WordField.canonicalRows actualModulus 7488 (.band 7467 7440) := by core033_kernel_decide
theorem stats7488 : actualRows7488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7488=5124 := by core033_kernel_decide
theorem rows7489 : actualRows7489=WordField.canonicalRows actualModulus 7489 (.band 7467 7413) := by core033_kernel_decide
theorem stats7489 : actualRows7489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7489=5124 := by core033_kernel_decide
theorem rows7490 : actualRows7490=WordField.canonicalRows actualModulus 7490 (.bxor 7488 7489) := by core033_kernel_decide
theorem stats7490 : actualRows7490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7490=7428 := by core033_kernel_decide
theorem rows7491 : actualRows7491=WordField.canonicalRows actualModulus 7491 (.band 7440 7413) := by core033_kernel_decide
theorem stats7491 : actualRows7491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7491=5124 := by core033_kernel_decide
theorem rows7492 : actualRows7492=WordField.canonicalRows actualModulus 7492 (.bxor 7490 7491) := by core033_kernel_decide
theorem stats7492 : actualRows7492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7492=7428 := by core033_kernel_decide
theorem rows7493 : actualRows7493=WordField.canonicalRows actualModulus 7493 (.badd 7487 7492) := by core033_kernel_decide
theorem stats7493 : actualRows7493.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7493=5388 := by core033_kernel_decide
theorem rows7494 : actualRows7494=WordField.canonicalRows actualModulus 7494 (.badd 7482 7493) := by core033_kernel_decide
theorem stats7494 : actualRows7494.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7494=5388 := by core033_kernel_decide
theorem rows7495 : actualRows7495=WordField.canonicalRows actualModulus 7495 (.badd 7386 7482) := by core033_kernel_decide
theorem stats7495 : actualRows7495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7495=5388 := by core033_kernel_decide
theorem rows7496 : actualRows7496=WordField.canonicalRows actualModulus 7496 (.rotr 7495 6) := by core033_kernel_decide
theorem stats7496 : actualRows7496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7496=5124 := by core033_kernel_decide
theorem rows7497 : actualRows7497=WordField.canonicalRows actualModulus 7497 (.rotr 7495 11) := by core033_kernel_decide
theorem stats7497 : actualRows7497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7497=5124 := by core033_kernel_decide
theorem rows7498 : actualRows7498=WordField.canonicalRows actualModulus 7498 (.bxor 7496 7497) := by core033_kernel_decide
theorem stats7498 : actualRows7498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7498=7428 := by core033_kernel_decide
theorem rows7499 : actualRows7499=WordField.canonicalRows actualModulus 7499 (.rotr 7495 25) := by core033_kernel_decide
theorem stats7499 : actualRows7499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7499=5124 := by core033_kernel_decide
theorem rows7500 : actualRows7500=WordField.canonicalRows actualModulus 7500 (.bxor 7498 7499) := by core033_kernel_decide
theorem stats7500 : actualRows7500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7500=7428 := by core033_kernel_decide
theorem rows7501 : actualRows7501=WordField.canonicalRows actualModulus 7501 (.badd 7414 7500) := by core033_kernel_decide
theorem stats7501 : actualRows7501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7501=5388 := by core033_kernel_decide
theorem rows7502 : actualRows7502=WordField.canonicalRows actualModulus 7502 (.band 7495 7468) := by core033_kernel_decide
theorem stats7502 : actualRows7502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7502=5124 := by core033_kernel_decide
theorem rows7503 : actualRows7503=WordField.canonicalRows actualModulus 7503 (.bnot 7495) := by core033_kernel_decide
theorem stats7503 : actualRows7503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7503=6276 := by core033_kernel_decide
theorem rows7504 : actualRows7504=WordField.canonicalRows actualModulus 7504 (.band 7503 7441) := by core033_kernel_decide
theorem stats7504 : actualRows7504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7504=5124 := by core033_kernel_decide
theorem rows7505 : actualRows7505=WordField.canonicalRows actualModulus 7505 (.bxor 7502 7504) := by core033_kernel_decide
theorem stats7505 : actualRows7505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7505=7428 := by core033_kernel_decide
theorem rows7506 : actualRows7506=WordField.canonicalRows actualModulus 7506 (.badd 7501 7505) := by core033_kernel_decide
theorem stats7506 : actualRows7506.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7506=5388 := by core033_kernel_decide
theorem rows7507 : actualRows7507=WordField.canonicalRows actualModulus 7507 (.literal (BitVec.ofNat 32 4022224774)) := by core033_kernel_decide
theorem stats7507 : actualRows7507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7507=4260 := by core033_kernel_decide
theorem rows7508 : actualRows7508=WordField.canonicalRows actualModulus 7508 (.badd 7506 7507) := by core033_kernel_decide
theorem stats7508 : actualRows7508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7508=5388 := by core033_kernel_decide
theorem rows7509 : actualRows7509=WordField.canonicalRows actualModulus 7509 (.badd 7508 6438) := by core033_kernel_decide
theorem stats7509 : actualRows7509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7509=5388 := by core033_kernel_decide
theorem rows7510 : actualRows7510=WordField.canonicalRows actualModulus 7510 (.rotr 7494 2) := by core033_kernel_decide
theorem stats7510 : actualRows7510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7510=5124 := by core033_kernel_decide
theorem rows7511 : actualRows7511=WordField.canonicalRows actualModulus 7511 (.rotr 7494 13) := by core033_kernel_decide
theorem stats7511 : actualRows7511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7511=5124 := by core033_kernel_decide
theorem rows7512 : actualRows7512=WordField.canonicalRows actualModulus 7512 (.bxor 7510 7511) := by core033_kernel_decide
theorem stats7512 : actualRows7512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7512=7428 := by core033_kernel_decide
theorem rows7513 : actualRows7513=WordField.canonicalRows actualModulus 7513 (.rotr 7494 22) := by core033_kernel_decide
theorem stats7513 : actualRows7513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7513=5124 := by core033_kernel_decide
theorem rows7514 : actualRows7514=WordField.canonicalRows actualModulus 7514 (.bxor 7512 7513) := by core033_kernel_decide
theorem stats7514 : actualRows7514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7514=7428 := by core033_kernel_decide
theorem rows7515 : actualRows7515=WordField.canonicalRows actualModulus 7515 (.band 7494 7467) := by core033_kernel_decide
theorem stats7515 : actualRows7515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7515=5124 := by core033_kernel_decide
theorem rows7516 : actualRows7516=WordField.canonicalRows actualModulus 7516 (.band 7494 7440) := by core033_kernel_decide
theorem stats7516 : actualRows7516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7516=5124 := by core033_kernel_decide
theorem rows7517 : actualRows7517=WordField.canonicalRows actualModulus 7517 (.bxor 7515 7516) := by core033_kernel_decide
theorem stats7517 : actualRows7517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7517=7428 := by core033_kernel_decide
theorem rows7518 : actualRows7518=WordField.canonicalRows actualModulus 7518 (.band 7467 7440) := by core033_kernel_decide
theorem stats7518 : actualRows7518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7518=5124 := by core033_kernel_decide
theorem rows7519 : actualRows7519=WordField.canonicalRows actualModulus 7519 (.bxor 7517 7518) := by core033_kernel_decide
theorem stats7519 : actualRows7519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7519=7428 := by core033_kernel_decide
theorem rows7520 : actualRows7520=WordField.canonicalRows actualModulus 7520 (.badd 7514 7519) := by core033_kernel_decide
theorem stats7520 : actualRows7520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7520=5388 := by core033_kernel_decide
theorem rows7521 : actualRows7521=WordField.canonicalRows actualModulus 7521 (.badd 7509 7520) := by core033_kernel_decide
theorem stats7521 : actualRows7521.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7521=5388 := by core033_kernel_decide
theorem rows7522 : actualRows7522=WordField.canonicalRows actualModulus 7522 (.badd 7413 7509) := by core033_kernel_decide
theorem stats7522 : actualRows7522.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7522=5388 := by core033_kernel_decide
theorem rows7523 : actualRows7523=WordField.canonicalRows actualModulus 7523 (.rotr 7522 6) := by core033_kernel_decide
theorem stats7523 : actualRows7523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7523=5124 := by core033_kernel_decide
theorem rows7524 : actualRows7524=WordField.canonicalRows actualModulus 7524 (.rotr 7522 11) := by core033_kernel_decide
theorem stats7524 : actualRows7524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7524=5124 := by core033_kernel_decide
theorem rows7525 : actualRows7525=WordField.canonicalRows actualModulus 7525 (.bxor 7523 7524) := by core033_kernel_decide
theorem stats7525 : actualRows7525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7525=7428 := by core033_kernel_decide
theorem rows7526 : actualRows7526=WordField.canonicalRows actualModulus 7526 (.rotr 7522 25) := by core033_kernel_decide
theorem stats7526 : actualRows7526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7526=5124 := by core033_kernel_decide
theorem rows7527 : actualRows7527=WordField.canonicalRows actualModulus 7527 (.bxor 7525 7526) := by core033_kernel_decide
theorem stats7527 : actualRows7527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7527=7428 := by core033_kernel_decide
theorem rows7528 : actualRows7528=WordField.canonicalRows actualModulus 7528 (.badd 7441 7527) := by core033_kernel_decide
theorem stats7528 : actualRows7528.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7528=5388 := by core033_kernel_decide
theorem rows7529 : actualRows7529=WordField.canonicalRows actualModulus 7529 (.band 7522 7495) := by core033_kernel_decide
theorem stats7529 : actualRows7529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7529=5124 := by core033_kernel_decide
theorem rows7530 : actualRows7530=WordField.canonicalRows actualModulus 7530 (.bnot 7522) := by core033_kernel_decide
theorem stats7530 : actualRows7530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7530=6276 := by core033_kernel_decide
def partRows116 : List R1CS.Row := actualRows7467++actualRows7468++actualRows7469++actualRows7470++actualRows7471++actualRows7472++actualRows7473++actualRows7474++actualRows7475++actualRows7476++actualRows7477++actualRows7478++actualRows7479++actualRows7480++actualRows7481++actualRows7482++actualRows7483++actualRows7484++actualRows7485++actualRows7486++actualRows7487++actualRows7488++actualRows7489++actualRows7490++actualRows7491++actualRows7492++actualRows7493++actualRows7494++actualRows7495++actualRows7496++actualRows7497++actualRows7498++actualRows7499++actualRows7500++actualRows7501++actualRows7502++actualRows7503++actualRows7504++actualRows7505++actualRows7506++actualRows7507++actualRows7508++actualRows7509++actualRows7510++actualRows7511++actualRows7512++actualRows7513++actualRows7514++actualRows7515++actualRows7516++actualRows7517++actualRows7518++actualRows7519++actualRows7520++actualRows7521++actualRows7522++actualRows7523++actualRows7524++actualRows7525++actualRows7526++actualRows7527++actualRows7528++actualRows7529++actualRows7530
def partOps116 : List WordIR.Op := [.badd 7455 7466,.badd 7359 7455,.rotr 7468 6,.rotr 7468 11,.bxor 7469 7470,.rotr 7468 25,.bxor 7471 7472,.badd 7387 7473,.band 7468 7441,.bnot 7468,.band 7476 7414,.bxor 7475 7477,.badd 7474 7478,.literal (BitVec.ofNat 32 3835390401),.badd 7479 7480,.badd 7481 6425,.rotr 7467 2,.rotr 7467 13,.bxor 7483 7484,.rotr 7467 22,.bxor 7485 7486,.band 7467 7440,.band 7467 7413,.bxor 7488 7489,.band 7440 7413,.bxor 7490 7491,.badd 7487 7492,.badd 7482 7493,.badd 7386 7482,.rotr 7495 6,.rotr 7495 11,.bxor 7496 7497,.rotr 7495 25,.bxor 7498 7499,.badd 7414 7500,.band 7495 7468,.bnot 7495,.band 7503 7441,.bxor 7502 7504,.badd 7501 7505,.literal (BitVec.ofNat 32 4022224774),.badd 7506 7507,.badd 7508 6438,.rotr 7494 2,.rotr 7494 13,.bxor 7510 7511,.rotr 7494 22,.bxor 7512 7513,.band 7494 7467,.band 7494 7440,.bxor 7515 7516,.band 7467 7440,.bxor 7517 7518,.badd 7514 7519,.badd 7509 7520,.badd 7413 7509,.rotr 7522 6,.rotr 7522 11,.bxor 7523 7524,.rotr 7522 25,.bxor 7525 7526,.badd 7441 7527,.band 7522 7495,.bnot 7522]
theorem partExact116 : partRows116=WordField.rows actualModulus 7467 partOps116 := by
  simp only [partRows116,partOps116,WordField.rows,rows7467,rows7468,rows7469,rows7470,rows7471,rows7472,rows7473,rows7474,rows7475,rows7476,rows7477,rows7478,rows7479,rows7480,rows7481,rows7482,rows7483,rows7484,rows7485,rows7486,rows7487,rows7488,rows7489,rows7490,rows7491,rows7492,rows7493,rows7494,rows7495,rows7496,rows7497,rows7498,rows7499,rows7500,rows7501,rows7502,rows7503,rows7504,rows7505,rows7506,rows7507,rows7508,rows7509,rows7510,rows7511,rows7512,rows7513,rows7514,rows7515,rows7516,rows7517,rows7518,rows7519,rows7520,rows7521,rows7522,rows7523,rows7524,rows7525,rows7526,rows7527,rows7528,rows7529,rows7530,List.append_assoc,List.append_nil]
theorem partLength116 : partOps116.length=64 := by decide
theorem partStats116 : partRows116.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows116=370728 := by
  simp only [partRows116,List.length_append,MatrixRowBlocks.rows_weight_append,stats7467.1,stats7467.2,stats7468.1,stats7468.2,stats7469.1,stats7469.2,stats7470.1,stats7470.2,stats7471.1,stats7471.2,stats7472.1,stats7472.2,stats7473.1,stats7473.2,stats7474.1,stats7474.2,stats7475.1,stats7475.2,stats7476.1,stats7476.2,stats7477.1,stats7477.2,stats7478.1,stats7478.2,stats7479.1,stats7479.2,stats7480.1,stats7480.2,stats7481.1,stats7481.2,stats7482.1,stats7482.2,stats7483.1,stats7483.2,stats7484.1,stats7484.2,stats7485.1,stats7485.2,stats7486.1,stats7486.2,stats7487.1,stats7487.2,stats7488.1,stats7488.2,stats7489.1,stats7489.2,stats7490.1,stats7490.2,stats7491.1,stats7491.2,stats7492.1,stats7492.2,stats7493.1,stats7493.2,stats7494.1,stats7494.2,stats7495.1,stats7495.2,stats7496.1,stats7496.2,stats7497.1,stats7497.2,stats7498.1,stats7498.2,stats7499.1,stats7499.2,stats7500.1,stats7500.2,stats7501.1,stats7501.2,stats7502.1,stats7502.2,stats7503.1,stats7503.2,stats7504.1,stats7504.2,stats7505.1,stats7505.2,stats7506.1,stats7506.2,stats7507.1,stats7507.2,stats7508.1,stats7508.2,stats7509.1,stats7509.2,stats7510.1,stats7510.2,stats7511.1,stats7511.2,stats7512.1,stats7512.2,stats7513.1,stats7513.2,stats7514.1,stats7514.2,stats7515.1,stats7515.2,stats7516.1,stats7516.2,stats7517.1,stats7517.2,stats7518.1,stats7518.2,stats7519.1,stats7519.2,stats7520.1,stats7520.2,stats7521.1,stats7521.2,stats7522.1,stats7522.2,stats7523.1,stats7523.2,stats7524.1,stats7524.2,stats7525.1,stats7525.2,stats7526.1,stats7526.2,stats7527.1,stats7527.2,stats7528.1,stats7528.2,stats7529.1,stats7529.2,stats7530.1,stats7530.2]
  decide
end FrameHashControllerCheckedRows
