import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData115
import FrameHashControllerInstructionMatrixData116
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7403 : actualRows7403=WordField.canonicalRows actualModulus 7403 (.rotr 7386 13) := by core033_kernel_decide
theorem stats7403 : actualRows7403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7403=5124 := by core033_kernel_decide
theorem rows7404 : actualRows7404=WordField.canonicalRows actualModulus 7404 (.bxor 7402 7403) := by core033_kernel_decide
theorem stats7404 : actualRows7404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7404=7428 := by core033_kernel_decide
theorem rows7405 : actualRows7405=WordField.canonicalRows actualModulus 7405 (.rotr 7386 22) := by core033_kernel_decide
theorem stats7405 : actualRows7405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7405=5124 := by core033_kernel_decide
theorem rows7406 : actualRows7406=WordField.canonicalRows actualModulus 7406 (.bxor 7404 7405) := by core033_kernel_decide
theorem stats7406 : actualRows7406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7406=7428 := by core033_kernel_decide
theorem rows7407 : actualRows7407=WordField.canonicalRows actualModulus 7407 (.band 7386 7359) := by core033_kernel_decide
theorem stats7407 : actualRows7407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7407=5124 := by core033_kernel_decide
theorem rows7408 : actualRows7408=WordField.canonicalRows actualModulus 7408 (.band 7386 7332) := by core033_kernel_decide
theorem stats7408 : actualRows7408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7408=5124 := by core033_kernel_decide
theorem rows7409 : actualRows7409=WordField.canonicalRows actualModulus 7409 (.bxor 7407 7408) := by core033_kernel_decide
theorem stats7409 : actualRows7409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7409=7428 := by core033_kernel_decide
theorem rows7410 : actualRows7410=WordField.canonicalRows actualModulus 7410 (.band 7359 7332) := by core033_kernel_decide
theorem stats7410 : actualRows7410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7410=5124 := by core033_kernel_decide
theorem rows7411 : actualRows7411=WordField.canonicalRows actualModulus 7411 (.bxor 7409 7410) := by core033_kernel_decide
theorem stats7411 : actualRows7411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7411=7428 := by core033_kernel_decide
theorem rows7412 : actualRows7412=WordField.canonicalRows actualModulus 7412 (.badd 7406 7411) := by core033_kernel_decide
theorem stats7412 : actualRows7412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7412=5388 := by core033_kernel_decide
theorem rows7413 : actualRows7413=WordField.canonicalRows actualModulus 7413 (.badd 7401 7412) := by core033_kernel_decide
theorem stats7413 : actualRows7413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7413=5388 := by core033_kernel_decide
theorem rows7414 : actualRows7414=WordField.canonicalRows actualModulus 7414 (.badd 7305 7401) := by core033_kernel_decide
theorem stats7414 : actualRows7414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7414=5388 := by core033_kernel_decide
theorem rows7415 : actualRows7415=WordField.canonicalRows actualModulus 7415 (.rotr 7414 6) := by core033_kernel_decide
theorem stats7415 : actualRows7415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7415=5124 := by core033_kernel_decide
theorem rows7416 : actualRows7416=WordField.canonicalRows actualModulus 7416 (.rotr 7414 11) := by core033_kernel_decide
theorem stats7416 : actualRows7416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7416=5124 := by core033_kernel_decide
theorem rows7417 : actualRows7417=WordField.canonicalRows actualModulus 7417 (.bxor 7415 7416) := by core033_kernel_decide
theorem stats7417 : actualRows7417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7417=7428 := by core033_kernel_decide
theorem rows7418 : actualRows7418=WordField.canonicalRows actualModulus 7418 (.rotr 7414 25) := by core033_kernel_decide
theorem stats7418 : actualRows7418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7418=5124 := by core033_kernel_decide
theorem rows7419 : actualRows7419=WordField.canonicalRows actualModulus 7419 (.bxor 7417 7418) := by core033_kernel_decide
theorem stats7419 : actualRows7419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7419=7428 := by core033_kernel_decide
theorem rows7420 : actualRows7420=WordField.canonicalRows actualModulus 7420 (.badd 7333 7419) := by core033_kernel_decide
theorem stats7420 : actualRows7420.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7420=5388 := by core033_kernel_decide
theorem rows7421 : actualRows7421=WordField.canonicalRows actualModulus 7421 (.band 7414 7387) := by core033_kernel_decide
theorem stats7421 : actualRows7421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7421=5124 := by core033_kernel_decide
theorem rows7422 : actualRows7422=WordField.canonicalRows actualModulus 7422 (.bnot 7414) := by core033_kernel_decide
theorem stats7422 : actualRows7422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7422=6276 := by core033_kernel_decide
theorem rows7423 : actualRows7423=WordField.canonicalRows actualModulus 7423 (.band 7422 7360) := by core033_kernel_decide
theorem stats7423 : actualRows7423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7423=5124 := by core033_kernel_decide
theorem rows7424 : actualRows7424=WordField.canonicalRows actualModulus 7424 (.bxor 7421 7423) := by core033_kernel_decide
theorem stats7424 : actualRows7424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7424=7428 := by core033_kernel_decide
theorem rows7425 : actualRows7425=WordField.canonicalRows actualModulus 7425 (.badd 7420 7424) := by core033_kernel_decide
theorem stats7425 : actualRows7425.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7425=5388 := by core033_kernel_decide
theorem rows7426 : actualRows7426=WordField.canonicalRows actualModulus 7426 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats7426 : actualRows7426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7426=4044 := by core033_kernel_decide
theorem rows7427 : actualRows7427=WordField.canonicalRows actualModulus 7427 (.badd 7425 7426) := by core033_kernel_decide
theorem stats7427 : actualRows7427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7427=5388 := by core033_kernel_decide
theorem rows7428 : actualRows7428=WordField.canonicalRows actualModulus 7428 (.badd 7427 5254) := by core033_kernel_decide
theorem stats7428 : actualRows7428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7428=5388 := by core033_kernel_decide
theorem rows7429 : actualRows7429=WordField.canonicalRows actualModulus 7429 (.rotr 7413 2) := by core033_kernel_decide
theorem stats7429 : actualRows7429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7429=5124 := by core033_kernel_decide
theorem rows7430 : actualRows7430=WordField.canonicalRows actualModulus 7430 (.rotr 7413 13) := by core033_kernel_decide
theorem stats7430 : actualRows7430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7430=5124 := by core033_kernel_decide
theorem rows7431 : actualRows7431=WordField.canonicalRows actualModulus 7431 (.bxor 7429 7430) := by core033_kernel_decide
theorem stats7431 : actualRows7431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7431=7428 := by core033_kernel_decide
theorem rows7432 : actualRows7432=WordField.canonicalRows actualModulus 7432 (.rotr 7413 22) := by core033_kernel_decide
theorem stats7432 : actualRows7432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7432=5124 := by core033_kernel_decide
theorem rows7433 : actualRows7433=WordField.canonicalRows actualModulus 7433 (.bxor 7431 7432) := by core033_kernel_decide
theorem stats7433 : actualRows7433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7433=7428 := by core033_kernel_decide
theorem rows7434 : actualRows7434=WordField.canonicalRows actualModulus 7434 (.band 7413 7386) := by core033_kernel_decide
theorem stats7434 : actualRows7434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7434=5124 := by core033_kernel_decide
theorem rows7435 : actualRows7435=WordField.canonicalRows actualModulus 7435 (.band 7413 7359) := by core033_kernel_decide
theorem stats7435 : actualRows7435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7435=5124 := by core033_kernel_decide
theorem rows7436 : actualRows7436=WordField.canonicalRows actualModulus 7436 (.bxor 7434 7435) := by core033_kernel_decide
theorem stats7436 : actualRows7436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7436=7428 := by core033_kernel_decide
theorem rows7437 : actualRows7437=WordField.canonicalRows actualModulus 7437 (.band 7386 7359) := by core033_kernel_decide
theorem stats7437 : actualRows7437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7437=5124 := by core033_kernel_decide
theorem rows7438 : actualRows7438=WordField.canonicalRows actualModulus 7438 (.bxor 7436 7437) := by core033_kernel_decide
theorem stats7438 : actualRows7438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7438=7428 := by core033_kernel_decide
theorem rows7439 : actualRows7439=WordField.canonicalRows actualModulus 7439 (.badd 7433 7438) := by core033_kernel_decide
theorem stats7439 : actualRows7439.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7439=5388 := by core033_kernel_decide
theorem rows7440 : actualRows7440=WordField.canonicalRows actualModulus 7440 (.badd 7428 7439) := by core033_kernel_decide
theorem stats7440 : actualRows7440.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7440=5388 := by core033_kernel_decide
theorem rows7441 : actualRows7441=WordField.canonicalRows actualModulus 7441 (.badd 7332 7428) := by core033_kernel_decide
theorem stats7441 : actualRows7441.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7441=5388 := by core033_kernel_decide
theorem rows7442 : actualRows7442=WordField.canonicalRows actualModulus 7442 (.rotr 7441 6) := by core033_kernel_decide
theorem stats7442 : actualRows7442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7442=5124 := by core033_kernel_decide
theorem rows7443 : actualRows7443=WordField.canonicalRows actualModulus 7443 (.rotr 7441 11) := by core033_kernel_decide
theorem stats7443 : actualRows7443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7443=5124 := by core033_kernel_decide
theorem rows7444 : actualRows7444=WordField.canonicalRows actualModulus 7444 (.bxor 7442 7443) := by core033_kernel_decide
theorem stats7444 : actualRows7444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7444=7428 := by core033_kernel_decide
theorem rows7445 : actualRows7445=WordField.canonicalRows actualModulus 7445 (.rotr 7441 25) := by core033_kernel_decide
theorem stats7445 : actualRows7445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7445=5124 := by core033_kernel_decide
theorem rows7446 : actualRows7446=WordField.canonicalRows actualModulus 7446 (.bxor 7444 7445) := by core033_kernel_decide
theorem stats7446 : actualRows7446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7446=7428 := by core033_kernel_decide
theorem rows7447 : actualRows7447=WordField.canonicalRows actualModulus 7447 (.badd 7360 7446) := by core033_kernel_decide
theorem stats7447 : actualRows7447.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7447=5388 := by core033_kernel_decide
theorem rows7448 : actualRows7448=WordField.canonicalRows actualModulus 7448 (.band 7441 7414) := by core033_kernel_decide
theorem stats7448 : actualRows7448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7448=5124 := by core033_kernel_decide
theorem rows7449 : actualRows7449=WordField.canonicalRows actualModulus 7449 (.bnot 7441) := by core033_kernel_decide
theorem stats7449 : actualRows7449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7449=6276 := by core033_kernel_decide
theorem rows7450 : actualRows7450=WordField.canonicalRows actualModulus 7450 (.band 7449 7387) := by core033_kernel_decide
theorem stats7450 : actualRows7450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7450=5124 := by core033_kernel_decide
theorem rows7451 : actualRows7451=WordField.canonicalRows actualModulus 7451 (.bxor 7448 7450) := by core033_kernel_decide
theorem stats7451 : actualRows7451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7451=7428 := by core033_kernel_decide
theorem rows7452 : actualRows7452=WordField.canonicalRows actualModulus 7452 (.badd 7447 7451) := by core033_kernel_decide
theorem stats7452 : actualRows7452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7452=5388 := by core033_kernel_decide
theorem rows7453 : actualRows7453=WordField.canonicalRows actualModulus 7453 (.literal (BitVec.ofNat 32 3248222580)) := by core033_kernel_decide
theorem stats7453 : actualRows7453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7453=4044 := by core033_kernel_decide
theorem rows7454 : actualRows7454=WordField.canonicalRows actualModulus 7454 (.badd 7452 7453) := by core033_kernel_decide
theorem stats7454 : actualRows7454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7454=5388 := by core033_kernel_decide
theorem rows7455 : actualRows7455=WordField.canonicalRows actualModulus 7455 (.badd 7454 5260) := by core033_kernel_decide
theorem stats7455 : actualRows7455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7455=5388 := by core033_kernel_decide
theorem rows7456 : actualRows7456=WordField.canonicalRows actualModulus 7456 (.rotr 7440 2) := by core033_kernel_decide
theorem stats7456 : actualRows7456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7456=5124 := by core033_kernel_decide
theorem rows7457 : actualRows7457=WordField.canonicalRows actualModulus 7457 (.rotr 7440 13) := by core033_kernel_decide
theorem stats7457 : actualRows7457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7457=5124 := by core033_kernel_decide
theorem rows7458 : actualRows7458=WordField.canonicalRows actualModulus 7458 (.bxor 7456 7457) := by core033_kernel_decide
theorem stats7458 : actualRows7458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7458=7428 := by core033_kernel_decide
theorem rows7459 : actualRows7459=WordField.canonicalRows actualModulus 7459 (.rotr 7440 22) := by core033_kernel_decide
theorem stats7459 : actualRows7459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7459=5124 := by core033_kernel_decide
theorem rows7460 : actualRows7460=WordField.canonicalRows actualModulus 7460 (.bxor 7458 7459) := by core033_kernel_decide
theorem stats7460 : actualRows7460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7460=7428 := by core033_kernel_decide
theorem rows7461 : actualRows7461=WordField.canonicalRows actualModulus 7461 (.band 7440 7413) := by core033_kernel_decide
theorem stats7461 : actualRows7461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7461=5124 := by core033_kernel_decide
theorem rows7462 : actualRows7462=WordField.canonicalRows actualModulus 7462 (.band 7440 7386) := by core033_kernel_decide
theorem stats7462 : actualRows7462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7462=5124 := by core033_kernel_decide
theorem rows7463 : actualRows7463=WordField.canonicalRows actualModulus 7463 (.bxor 7461 7462) := by core033_kernel_decide
theorem stats7463 : actualRows7463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7463=7428 := by core033_kernel_decide
theorem rows7464 : actualRows7464=WordField.canonicalRows actualModulus 7464 (.band 7413 7386) := by core033_kernel_decide
theorem stats7464 : actualRows7464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7464=5124 := by core033_kernel_decide
theorem rows7465 : actualRows7465=WordField.canonicalRows actualModulus 7465 (.bxor 7463 7464) := by core033_kernel_decide
theorem stats7465 : actualRows7465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7465=7428 := by core033_kernel_decide
theorem rows7466 : actualRows7466=WordField.canonicalRows actualModulus 7466 (.badd 7460 7465) := by core033_kernel_decide
theorem stats7466 : actualRows7466.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7466=5388 := by core033_kernel_decide
def partRows115 : List R1CS.Row := actualRows7403++actualRows7404++actualRows7405++actualRows7406++actualRows7407++actualRows7408++actualRows7409++actualRows7410++actualRows7411++actualRows7412++actualRows7413++actualRows7414++actualRows7415++actualRows7416++actualRows7417++actualRows7418++actualRows7419++actualRows7420++actualRows7421++actualRows7422++actualRows7423++actualRows7424++actualRows7425++actualRows7426++actualRows7427++actualRows7428++actualRows7429++actualRows7430++actualRows7431++actualRows7432++actualRows7433++actualRows7434++actualRows7435++actualRows7436++actualRows7437++actualRows7438++actualRows7439++actualRows7440++actualRows7441++actualRows7442++actualRows7443++actualRows7444++actualRows7445++actualRows7446++actualRows7447++actualRows7448++actualRows7449++actualRows7450++actualRows7451++actualRows7452++actualRows7453++actualRows7454++actualRows7455++actualRows7456++actualRows7457++actualRows7458++actualRows7459++actualRows7460++actualRows7461++actualRows7462++actualRows7463++actualRows7464++actualRows7465++actualRows7466
def partOps115 : List WordIR.Op := [.rotr 7386 13,.bxor 7402 7403,.rotr 7386 22,.bxor 7404 7405,.band 7386 7359,.band 7386 7332,.bxor 7407 7408,.band 7359 7332,.bxor 7409 7410,.badd 7406 7411,.badd 7401 7412,.badd 7305 7401,.rotr 7414 6,.rotr 7414 11,.bxor 7415 7416,.rotr 7414 25,.bxor 7417 7418,.badd 7333 7419,.band 7414 7387,.bnot 7414,.band 7422 7360,.bxor 7421 7423,.badd 7420 7424,.literal (BitVec.ofNat 32 2614888103),.badd 7425 7426,.badd 7427 5254,.rotr 7413 2,.rotr 7413 13,.bxor 7429 7430,.rotr 7413 22,.bxor 7431 7432,.band 7413 7386,.band 7413 7359,.bxor 7434 7435,.band 7386 7359,.bxor 7436 7437,.badd 7433 7438,.badd 7428 7439,.badd 7332 7428,.rotr 7441 6,.rotr 7441 11,.bxor 7442 7443,.rotr 7441 25,.bxor 7444 7445,.badd 7360 7446,.band 7441 7414,.bnot 7441,.band 7449 7387,.bxor 7448 7450,.badd 7447 7451,.literal (BitVec.ofNat 32 3248222580),.badd 7452 7453,.badd 7454 5260,.rotr 7440 2,.rotr 7440 13,.bxor 7456 7457,.rotr 7440 22,.bxor 7458 7459,.band 7440 7413,.band 7440 7386,.bxor 7461 7462,.band 7413 7386,.bxor 7463 7464,.badd 7460 7465]
theorem partExact115 : partRows115=WordField.rows actualModulus 7403 partOps115 := by
  simp only [partRows115,partOps115,WordField.rows,rows7403,rows7404,rows7405,rows7406,rows7407,rows7408,rows7409,rows7410,rows7411,rows7412,rows7413,rows7414,rows7415,rows7416,rows7417,rows7418,rows7419,rows7420,rows7421,rows7422,rows7423,rows7424,rows7425,rows7426,rows7427,rows7428,rows7429,rows7430,rows7431,rows7432,rows7433,rows7434,rows7435,rows7436,rows7437,rows7438,rows7439,rows7440,rows7441,rows7442,rows7443,rows7444,rows7445,rows7446,rows7447,rows7448,rows7449,rows7450,rows7451,rows7452,rows7453,rows7454,rows7455,rows7456,rows7457,rows7458,rows7459,rows7460,rows7461,rows7462,rows7463,rows7464,rows7465,rows7466,List.append_assoc,List.append_nil]
theorem partLength115 : partOps115.length=64 := by decide
theorem partStats115 : partRows115.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows115=373512 := by
  simp only [partRows115,List.length_append,MatrixRowBlocks.rows_weight_append,stats7403.1,stats7403.2,stats7404.1,stats7404.2,stats7405.1,stats7405.2,stats7406.1,stats7406.2,stats7407.1,stats7407.2,stats7408.1,stats7408.2,stats7409.1,stats7409.2,stats7410.1,stats7410.2,stats7411.1,stats7411.2,stats7412.1,stats7412.2,stats7413.1,stats7413.2,stats7414.1,stats7414.2,stats7415.1,stats7415.2,stats7416.1,stats7416.2,stats7417.1,stats7417.2,stats7418.1,stats7418.2,stats7419.1,stats7419.2,stats7420.1,stats7420.2,stats7421.1,stats7421.2,stats7422.1,stats7422.2,stats7423.1,stats7423.2,stats7424.1,stats7424.2,stats7425.1,stats7425.2,stats7426.1,stats7426.2,stats7427.1,stats7427.2,stats7428.1,stats7428.2,stats7429.1,stats7429.2,stats7430.1,stats7430.2,stats7431.1,stats7431.2,stats7432.1,stats7432.2,stats7433.1,stats7433.2,stats7434.1,stats7434.2,stats7435.1,stats7435.2,stats7436.1,stats7436.2,stats7437.1,stats7437.2,stats7438.1,stats7438.2,stats7439.1,stats7439.2,stats7440.1,stats7440.2,stats7441.1,stats7441.2,stats7442.1,stats7442.2,stats7443.1,stats7443.2,stats7444.1,stats7444.2,stats7445.1,stats7445.2,stats7446.1,stats7446.2,stats7447.1,stats7447.2,stats7448.1,stats7448.2,stats7449.1,stats7449.2,stats7450.1,stats7450.2,stats7451.1,stats7451.2,stats7452.1,stats7452.2,stats7453.1,stats7453.2,stats7454.1,stats7454.2,stats7455.1,stats7455.2,stats7456.1,stats7456.2,stats7457.1,stats7457.2,stats7458.1,stats7458.2,stats7459.1,stats7459.2,stats7460.1,stats7460.2,stats7461.1,stats7461.2,stats7462.1,stats7462.2,stats7463.1,stats7463.2,stats7464.1,stats7464.2,stats7465.1,stats7465.2,stats7466.1,stats7466.2]
  decide
end FrameHashControllerCheckedRows
