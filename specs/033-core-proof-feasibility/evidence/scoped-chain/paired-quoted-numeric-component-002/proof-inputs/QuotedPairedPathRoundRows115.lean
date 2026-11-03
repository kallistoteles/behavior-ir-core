import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData116
import PairedPathRoundInstructionMatrixData117
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7456 : actualRows7456=WordField.canonicalRows actualModulus 7456 (.rotr 6212 18) := by core033_kernel_decide
theorem stats7456 : actualRows7456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7456=5124 := by core033_kernel_decide
theorem rows7457 : actualRows7457=WordField.canonicalRows actualModulus 7457 (.bxor 7455 7456) := by core033_kernel_decide
theorem stats7457 : actualRows7457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7457=7428 := by core033_kernel_decide
theorem rows7458 : actualRows7458=WordField.canonicalRows actualModulus 7458 (.shr 6212 3) := by core033_kernel_decide
theorem stats7458 : actualRows7458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7458=4908 := by core033_kernel_decide
theorem rows7459 : actualRows7459=WordField.canonicalRows actualModulus 7459 (.bxor 7457 7458) := by core033_kernel_decide
theorem stats7459 : actualRows7459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7459=7428 := by core033_kernel_decide
theorem rows7460 : actualRows7460=WordField.canonicalRows actualModulus 7460 (.badd 7454 7459) := by core033_kernel_decide
theorem stats7460 : actualRows7460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7460=5388 := by core033_kernel_decide
theorem rows7461 : actualRows7461=WordField.canonicalRows actualModulus 7461 (.badd 7460 6206) := by core033_kernel_decide
theorem stats7461 : actualRows7461.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7461=5388 := by core033_kernel_decide
theorem rows7462 : actualRows7462=WordField.canonicalRows actualModulus 7462 (.rotr 6296 17) := by core033_kernel_decide
theorem stats7462 : actualRows7462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7462=5124 := by core033_kernel_decide
theorem rows7463 : actualRows7463=WordField.canonicalRows actualModulus 7463 (.rotr 6296 19) := by core033_kernel_decide
theorem stats7463 : actualRows7463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7463=5124 := by core033_kernel_decide
theorem rows7464 : actualRows7464=WordField.canonicalRows actualModulus 7464 (.bxor 7462 7463) := by core033_kernel_decide
theorem stats7464 : actualRows7464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7464=7428 := by core033_kernel_decide
theorem rows7465 : actualRows7465=WordField.canonicalRows actualModulus 7465 (.shr 6296 10) := by core033_kernel_decide
theorem stats7465 : actualRows7465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7465=4404 := by core033_kernel_decide
theorem rows7466 : actualRows7466=WordField.canonicalRows actualModulus 7466 (.bxor 7464 7465) := by core033_kernel_decide
theorem stats7466 : actualRows7466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7466=7428 := by core033_kernel_decide
theorem rows7467 : actualRows7467=WordField.canonicalRows actualModulus 7467 (.badd 7466 6266) := by core033_kernel_decide
theorem stats7467 : actualRows7467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7467=5388 := by core033_kernel_decide
theorem rows7468 : actualRows7468=WordField.canonicalRows actualModulus 7468 (.rotr 6218 7) := by core033_kernel_decide
theorem stats7468 : actualRows7468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7468=5124 := by core033_kernel_decide
theorem rows7469 : actualRows7469=WordField.canonicalRows actualModulus 7469 (.rotr 6218 18) := by core033_kernel_decide
theorem stats7469 : actualRows7469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7469=5124 := by core033_kernel_decide
theorem rows7470 : actualRows7470=WordField.canonicalRows actualModulus 7470 (.bxor 7468 7469) := by core033_kernel_decide
theorem stats7470 : actualRows7470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7470=7428 := by core033_kernel_decide
theorem rows7471 : actualRows7471=WordField.canonicalRows actualModulus 7471 (.shr 6218 3) := by core033_kernel_decide
theorem stats7471 : actualRows7471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7471=4908 := by core033_kernel_decide
theorem rows7472 : actualRows7472=WordField.canonicalRows actualModulus 7472 (.bxor 7470 7471) := by core033_kernel_decide
theorem stats7472 : actualRows7472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7472=7428 := by core033_kernel_decide
theorem rows7473 : actualRows7473=WordField.canonicalRows actualModulus 7473 (.badd 7467 7472) := by core033_kernel_decide
theorem stats7473 : actualRows7473.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7473=5388 := by core033_kernel_decide
theorem rows7474 : actualRows7474=WordField.canonicalRows actualModulus 7474 (.badd 7473 6212) := by core033_kernel_decide
theorem stats7474 : actualRows7474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7474=5388 := by core033_kernel_decide
theorem rows7475 : actualRows7475=WordField.canonicalRows actualModulus 7475 (.rotr 7461 17) := by core033_kernel_decide
theorem stats7475 : actualRows7475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7475=5124 := by core033_kernel_decide
theorem rows7476 : actualRows7476=WordField.canonicalRows actualModulus 7476 (.rotr 7461 19) := by core033_kernel_decide
theorem stats7476 : actualRows7476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7476=5124 := by core033_kernel_decide
theorem rows7477 : actualRows7477=WordField.canonicalRows actualModulus 7477 (.bxor 7475 7476) := by core033_kernel_decide
theorem stats7477 : actualRows7477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7477=7428 := by core033_kernel_decide
theorem rows7478 : actualRows7478=WordField.canonicalRows actualModulus 7478 (.shr 7461 10) := by core033_kernel_decide
theorem stats7478 : actualRows7478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7478=4404 := by core033_kernel_decide
theorem rows7479 : actualRows7479=WordField.canonicalRows actualModulus 7479 (.bxor 7477 7478) := by core033_kernel_decide
theorem stats7479 : actualRows7479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7479=7428 := by core033_kernel_decide
theorem rows7480 : actualRows7480=WordField.canonicalRows actualModulus 7480 (.badd 7479 6272) := by core033_kernel_decide
theorem stats7480 : actualRows7480.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7480=5388 := by core033_kernel_decide
theorem rows7481 : actualRows7481=WordField.canonicalRows actualModulus 7481 (.rotr 6224 7) := by core033_kernel_decide
theorem stats7481 : actualRows7481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7481=5124 := by core033_kernel_decide
theorem rows7482 : actualRows7482=WordField.canonicalRows actualModulus 7482 (.rotr 6224 18) := by core033_kernel_decide
theorem stats7482 : actualRows7482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7482=5124 := by core033_kernel_decide
theorem rows7483 : actualRows7483=WordField.canonicalRows actualModulus 7483 (.bxor 7481 7482) := by core033_kernel_decide
theorem stats7483 : actualRows7483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7483=7428 := by core033_kernel_decide
theorem rows7484 : actualRows7484=WordField.canonicalRows actualModulus 7484 (.shr 6224 3) := by core033_kernel_decide
theorem stats7484 : actualRows7484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7484=4908 := by core033_kernel_decide
theorem rows7485 : actualRows7485=WordField.canonicalRows actualModulus 7485 (.bxor 7483 7484) := by core033_kernel_decide
theorem stats7485 : actualRows7485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7485=7428 := by core033_kernel_decide
theorem rows7486 : actualRows7486=WordField.canonicalRows actualModulus 7486 (.badd 7480 7485) := by core033_kernel_decide
theorem stats7486 : actualRows7486.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7486=5388 := by core033_kernel_decide
theorem rows7487 : actualRows7487=WordField.canonicalRows actualModulus 7487 (.badd 7486 6218) := by core033_kernel_decide
theorem stats7487 : actualRows7487.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7487=5388 := by core033_kernel_decide
theorem rows7488 : actualRows7488=WordField.canonicalRows actualModulus 7488 (.rotr 7474 17) := by core033_kernel_decide
theorem stats7488 : actualRows7488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7488=5124 := by core033_kernel_decide
theorem rows7489 : actualRows7489=WordField.canonicalRows actualModulus 7489 (.rotr 7474 19) := by core033_kernel_decide
theorem stats7489 : actualRows7489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7489=5124 := by core033_kernel_decide
theorem rows7490 : actualRows7490=WordField.canonicalRows actualModulus 7490 (.bxor 7488 7489) := by core033_kernel_decide
theorem stats7490 : actualRows7490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7490=7428 := by core033_kernel_decide
theorem rows7491 : actualRows7491=WordField.canonicalRows actualModulus 7491 (.shr 7474 10) := by core033_kernel_decide
theorem stats7491 : actualRows7491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7491=4404 := by core033_kernel_decide
theorem rows7492 : actualRows7492=WordField.canonicalRows actualModulus 7492 (.bxor 7490 7491) := by core033_kernel_decide
theorem stats7492 : actualRows7492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7492=7428 := by core033_kernel_decide
theorem rows7493 : actualRows7493=WordField.canonicalRows actualModulus 7493 (.badd 7492 6278) := by core033_kernel_decide
theorem stats7493 : actualRows7493.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7493=5388 := by core033_kernel_decide
theorem rows7494 : actualRows7494=WordField.canonicalRows actualModulus 7494 (.rotr 6230 7) := by core033_kernel_decide
theorem stats7494 : actualRows7494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7494=5124 := by core033_kernel_decide
theorem rows7495 : actualRows7495=WordField.canonicalRows actualModulus 7495 (.rotr 6230 18) := by core033_kernel_decide
theorem stats7495 : actualRows7495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7495=5124 := by core033_kernel_decide
theorem rows7496 : actualRows7496=WordField.canonicalRows actualModulus 7496 (.bxor 7494 7495) := by core033_kernel_decide
theorem stats7496 : actualRows7496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7496=7428 := by core033_kernel_decide
theorem rows7497 : actualRows7497=WordField.canonicalRows actualModulus 7497 (.shr 6230 3) := by core033_kernel_decide
theorem stats7497 : actualRows7497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7497=4908 := by core033_kernel_decide
theorem rows7498 : actualRows7498=WordField.canonicalRows actualModulus 7498 (.bxor 7496 7497) := by core033_kernel_decide
theorem stats7498 : actualRows7498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7498=7428 := by core033_kernel_decide
theorem rows7499 : actualRows7499=WordField.canonicalRows actualModulus 7499 (.badd 7493 7498) := by core033_kernel_decide
theorem stats7499 : actualRows7499.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7499=5388 := by core033_kernel_decide
theorem rows7500 : actualRows7500=WordField.canonicalRows actualModulus 7500 (.badd 7499 6224) := by core033_kernel_decide
theorem stats7500 : actualRows7500.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7500=5388 := by core033_kernel_decide
theorem rows7501 : actualRows7501=WordField.canonicalRows actualModulus 7501 (.rotr 7487 17) := by core033_kernel_decide
theorem stats7501 : actualRows7501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7501=5124 := by core033_kernel_decide
theorem rows7502 : actualRows7502=WordField.canonicalRows actualModulus 7502 (.rotr 7487 19) := by core033_kernel_decide
theorem stats7502 : actualRows7502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7502=5124 := by core033_kernel_decide
theorem rows7503 : actualRows7503=WordField.canonicalRows actualModulus 7503 (.bxor 7501 7502) := by core033_kernel_decide
theorem stats7503 : actualRows7503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7503=7428 := by core033_kernel_decide
theorem rows7504 : actualRows7504=WordField.canonicalRows actualModulus 7504 (.shr 7487 10) := by core033_kernel_decide
theorem stats7504 : actualRows7504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7504=4404 := by core033_kernel_decide
theorem rows7505 : actualRows7505=WordField.canonicalRows actualModulus 7505 (.bxor 7503 7504) := by core033_kernel_decide
theorem stats7505 : actualRows7505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7505=7428 := by core033_kernel_decide
theorem rows7506 : actualRows7506=WordField.canonicalRows actualModulus 7506 (.badd 7505 6284) := by core033_kernel_decide
theorem stats7506 : actualRows7506.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7506=5388 := by core033_kernel_decide
theorem rows7507 : actualRows7507=WordField.canonicalRows actualModulus 7507 (.rotr 6236 7) := by core033_kernel_decide
theorem stats7507 : actualRows7507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7507=5124 := by core033_kernel_decide
theorem rows7508 : actualRows7508=WordField.canonicalRows actualModulus 7508 (.rotr 6236 18) := by core033_kernel_decide
theorem stats7508 : actualRows7508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7508=5124 := by core033_kernel_decide
theorem rows7509 : actualRows7509=WordField.canonicalRows actualModulus 7509 (.bxor 7507 7508) := by core033_kernel_decide
theorem stats7509 : actualRows7509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7509=7428 := by core033_kernel_decide
theorem rows7510 : actualRows7510=WordField.canonicalRows actualModulus 7510 (.shr 6236 3) := by core033_kernel_decide
theorem stats7510 : actualRows7510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7510=4908 := by core033_kernel_decide
theorem rows7511 : actualRows7511=WordField.canonicalRows actualModulus 7511 (.bxor 7509 7510) := by core033_kernel_decide
theorem stats7511 : actualRows7511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7511=7428 := by core033_kernel_decide
theorem rows7512 : actualRows7512=WordField.canonicalRows actualModulus 7512 (.badd 7506 7511) := by core033_kernel_decide
theorem stats7512 : actualRows7512.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7512=5388 := by core033_kernel_decide
theorem rows7513 : actualRows7513=WordField.canonicalRows actualModulus 7513 (.badd 7512 6230) := by core033_kernel_decide
theorem stats7513 : actualRows7513.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7513=5388 := by core033_kernel_decide
theorem rows7514 : actualRows7514=WordField.canonicalRows actualModulus 7514 (.rotr 7500 17) := by core033_kernel_decide
theorem stats7514 : actualRows7514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7514=5124 := by core033_kernel_decide
theorem rows7515 : actualRows7515=WordField.canonicalRows actualModulus 7515 (.rotr 7500 19) := by core033_kernel_decide
theorem stats7515 : actualRows7515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7515=5124 := by core033_kernel_decide
theorem rows7516 : actualRows7516=WordField.canonicalRows actualModulus 7516 (.bxor 7514 7515) := by core033_kernel_decide
theorem stats7516 : actualRows7516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7516=7428 := by core033_kernel_decide
theorem rows7517 : actualRows7517=WordField.canonicalRows actualModulus 7517 (.shr 7500 10) := by core033_kernel_decide
theorem stats7517 : actualRows7517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7517=4404 := by core033_kernel_decide
theorem rows7518 : actualRows7518=WordField.canonicalRows actualModulus 7518 (.bxor 7516 7517) := by core033_kernel_decide
theorem stats7518 : actualRows7518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7518=7428 := by core033_kernel_decide
theorem rows7519 : actualRows7519=WordField.canonicalRows actualModulus 7519 (.badd 7518 6290) := by core033_kernel_decide
theorem stats7519 : actualRows7519.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7519=5388 := by core033_kernel_decide
def partRows115 : List R1CS.Row := actualRows7456++actualRows7457++actualRows7458++actualRows7459++actualRows7460++actualRows7461++actualRows7462++actualRows7463++actualRows7464++actualRows7465++actualRows7466++actualRows7467++actualRows7468++actualRows7469++actualRows7470++actualRows7471++actualRows7472++actualRows7473++actualRows7474++actualRows7475++actualRows7476++actualRows7477++actualRows7478++actualRows7479++actualRows7480++actualRows7481++actualRows7482++actualRows7483++actualRows7484++actualRows7485++actualRows7486++actualRows7487++actualRows7488++actualRows7489++actualRows7490++actualRows7491++actualRows7492++actualRows7493++actualRows7494++actualRows7495++actualRows7496++actualRows7497++actualRows7498++actualRows7499++actualRows7500++actualRows7501++actualRows7502++actualRows7503++actualRows7504++actualRows7505++actualRows7506++actualRows7507++actualRows7508++actualRows7509++actualRows7510++actualRows7511++actualRows7512++actualRows7513++actualRows7514++actualRows7515++actualRows7516++actualRows7517++actualRows7518++actualRows7519
def partOps115 : List WordIR.Op := [.rotr 6212 18,.bxor 7455 7456,.shr 6212 3,.bxor 7457 7458,.badd 7454 7459,.badd 7460 6206,.rotr 6296 17,.rotr 6296 19,.bxor 7462 7463,.shr 6296 10,.bxor 7464 7465,.badd 7466 6266,.rotr 6218 7,.rotr 6218 18,.bxor 7468 7469,.shr 6218 3,.bxor 7470 7471,.badd 7467 7472,.badd 7473 6212,.rotr 7461 17,.rotr 7461 19,.bxor 7475 7476,.shr 7461 10,.bxor 7477 7478,.badd 7479 6272,.rotr 6224 7,.rotr 6224 18,.bxor 7481 7482,.shr 6224 3,.bxor 7483 7484,.badd 7480 7485,.badd 7486 6218,.rotr 7474 17,.rotr 7474 19,.bxor 7488 7489,.shr 7474 10,.bxor 7490 7491,.badd 7492 6278,.rotr 6230 7,.rotr 6230 18,.bxor 7494 7495,.shr 6230 3,.bxor 7496 7497,.badd 7493 7498,.badd 7499 6224,.rotr 7487 17,.rotr 7487 19,.bxor 7501 7502,.shr 7487 10,.bxor 7503 7504,.badd 7505 6284,.rotr 6236 7,.rotr 6236 18,.bxor 7507 7508,.shr 6236 3,.bxor 7509 7510,.badd 7506 7511,.badd 7512 6230,.rotr 7500 17,.rotr 7500 19,.bxor 7514 7515,.shr 7500 10,.bxor 7516 7517,.badd 7518 6290]
theorem partExact115 : partRows115=WordField.rows actualModulus 7456 partOps115 := by
  simp only [partRows115,partOps115,WordField.rows,rows7456,rows7457,rows7458,rows7459,rows7460,rows7461,rows7462,rows7463,rows7464,rows7465,rows7466,rows7467,rows7468,rows7469,rows7470,rows7471,rows7472,rows7473,rows7474,rows7475,rows7476,rows7477,rows7478,rows7479,rows7480,rows7481,rows7482,rows7483,rows7484,rows7485,rows7486,rows7487,rows7488,rows7489,rows7490,rows7491,rows7492,rows7493,rows7494,rows7495,rows7496,rows7497,rows7498,rows7499,rows7500,rows7501,rows7502,rows7503,rows7504,rows7505,rows7506,rows7507,rows7508,rows7509,rows7510,rows7511,rows7512,rows7513,rows7514,rows7515,rows7516,rows7517,rows7518,rows7519,List.append_assoc,List.append_nil]
theorem partLength115 : partOps115.length=64 := by decide
theorem partStats115 : partRows115.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows115=373296 := by
  simp only [partRows115,List.length_append,MatrixRowBlocks.rows_weight_append,stats7456.1,stats7456.2,stats7457.1,stats7457.2,stats7458.1,stats7458.2,stats7459.1,stats7459.2,stats7460.1,stats7460.2,stats7461.1,stats7461.2,stats7462.1,stats7462.2,stats7463.1,stats7463.2,stats7464.1,stats7464.2,stats7465.1,stats7465.2,stats7466.1,stats7466.2,stats7467.1,stats7467.2,stats7468.1,stats7468.2,stats7469.1,stats7469.2,stats7470.1,stats7470.2,stats7471.1,stats7471.2,stats7472.1,stats7472.2,stats7473.1,stats7473.2,stats7474.1,stats7474.2,stats7475.1,stats7475.2,stats7476.1,stats7476.2,stats7477.1,stats7477.2,stats7478.1,stats7478.2,stats7479.1,stats7479.2,stats7480.1,stats7480.2,stats7481.1,stats7481.2,stats7482.1,stats7482.2,stats7483.1,stats7483.2,stats7484.1,stats7484.2,stats7485.1,stats7485.2,stats7486.1,stats7486.2,stats7487.1,stats7487.2,stats7488.1,stats7488.2,stats7489.1,stats7489.2,stats7490.1,stats7490.2,stats7491.1,stats7491.2,stats7492.1,stats7492.2,stats7493.1,stats7493.2,stats7494.1,stats7494.2,stats7495.1,stats7495.2,stats7496.1,stats7496.2,stats7497.1,stats7497.2,stats7498.1,stats7498.2,stats7499.1,stats7499.2,stats7500.1,stats7500.2,stats7501.1,stats7501.2,stats7502.1,stats7502.2,stats7503.1,stats7503.2,stats7504.1,stats7504.2,stats7505.1,stats7505.2,stats7506.1,stats7506.2,stats7507.1,stats7507.2,stats7508.1,stats7508.2,stats7509.1,stats7509.2,stats7510.1,stats7510.2,stats7511.1,stats7511.2,stats7512.1,stats7512.2,stats7513.1,stats7513.2,stats7514.1,stats7514.2,stats7515.1,stats7515.2,stats7516.1,stats7516.2,stats7517.1,stats7517.2,stats7518.1,stats7518.2,stats7519.1,stats7519.2]
  decide
end QuotedPairedPathRoundCheckedRows
