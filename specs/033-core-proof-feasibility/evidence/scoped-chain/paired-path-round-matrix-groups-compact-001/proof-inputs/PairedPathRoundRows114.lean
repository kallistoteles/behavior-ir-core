import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData115
import PairedPathRoundInstructionMatrixData116
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7392 : actualRows7392=WordField.canonicalRows actualModulus 7392 (.shr 7391 31) := by core033_kernel_decide
theorem stats7392 : actualRows7392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7392=2892 := by core033_kernel_decide
theorem rows7393 : actualRows7393=WordField.canonicalRows actualModulus 7393 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7393 : actualRows7393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7393=2892 := by core033_kernel_decide
theorem rows7394 : actualRows7394=WordField.canonicalRows actualModulus 7394 (.bxor 7392 7393) := by core033_kernel_decide
theorem stats7394 : actualRows7394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7394=7428 := by core033_kernel_decide
theorem rows7395 : actualRows7395=WordField.canonicalRows actualModulus 7395 (.shr 6094 8) := by core033_kernel_decide
theorem stats7395 : actualRows7395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7395=4548 := by core033_kernel_decide
theorem rows7396 : actualRows7396=WordField.canonicalRows actualModulus 7396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7396 : actualRows7396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7396=2820 := by core033_kernel_decide
theorem rows7397 : actualRows7397=WordField.canonicalRows actualModulus 7397 (.bnot 7396) := by core033_kernel_decide
theorem stats7397 : actualRows7397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7397=6276 := by core033_kernel_decide
theorem rows7398 : actualRows7398=WordField.canonicalRows actualModulus 7398 (.band 7395 7397) := by core033_kernel_decide
theorem stats7398 : actualRows7398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7398=5124 := by core033_kernel_decide
theorem rows7399 : actualRows7399=WordField.canonicalRows actualModulus 7399 (.shr 6094 8) := by core033_kernel_decide
theorem stats7399 : actualRows7399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7399=4548 := by core033_kernel_decide
theorem rows7400 : actualRows7400=WordField.canonicalRows actualModulus 7400 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7400 : actualRows7400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7400=2820 := by core033_kernel_decide
theorem rows7401 : actualRows7401=WordField.canonicalRows actualModulus 7401 (.bnot 7400) := by core033_kernel_decide
theorem stats7401 : actualRows7401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7401=6276 := by core033_kernel_decide
theorem rows7402 : actualRows7402=WordField.canonicalRows actualModulus 7402 (.bxor 7399 7401) := by core033_kernel_decide
theorem stats7402 : actualRows7402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7402=7428 := by core033_kernel_decide
theorem rows7403 : actualRows7403=WordField.canonicalRows actualModulus 7403 (.shr 6094 8) := by core033_kernel_decide
theorem stats7403 : actualRows7403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7403=4548 := by core033_kernel_decide
theorem rows7404 : actualRows7404=WordField.canonicalRows actualModulus 7404 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7404 : actualRows7404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7404=2820 := by core033_kernel_decide
theorem rows7405 : actualRows7405=WordField.canonicalRows actualModulus 7405 (.bnot 7404) := by core033_kernel_decide
theorem stats7405 : actualRows7405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7405=6276 := by core033_kernel_decide
theorem rows7406 : actualRows7406=WordField.canonicalRows actualModulus 7406 (.badd 7403 7405) := by core033_kernel_decide
theorem stats7406 : actualRows7406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7406=5388 := by core033_kernel_decide
theorem rows7407 : actualRows7407=WordField.canonicalRows actualModulus 7407 (.bnot 7406) := by core033_kernel_decide
theorem stats7407 : actualRows7407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7407=6276 := by core033_kernel_decide
theorem rows7408 : actualRows7408=WordField.canonicalRows actualModulus 7408 (.band 7402 7407) := by core033_kernel_decide
theorem stats7408 : actualRows7408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7408=5124 := by core033_kernel_decide
theorem rows7409 : actualRows7409=WordField.canonicalRows actualModulus 7409 (.bxor 7398 7408) := by core033_kernel_decide
theorem stats7409 : actualRows7409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7409=7428 := by core033_kernel_decide
theorem rows7410 : actualRows7410=WordField.canonicalRows actualModulus 7410 (.shr 7409 31) := by core033_kernel_decide
theorem stats7410 : actualRows7410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7410=2892 := by core033_kernel_decide
theorem rows7411 : actualRows7411=WordField.canonicalRows actualModulus 7411 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7411 : actualRows7411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7411=2892 := by core033_kernel_decide
theorem rows7412 : actualRows7412=WordField.canonicalRows actualModulus 7412 (.bxor 7410 7411) := by core033_kernel_decide
theorem stats7412 : actualRows7412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7412=7428 := by core033_kernel_decide
theorem rows7413 : actualRows7413=WordField.canonicalRows actualModulus 7413 (.shr 6147 8) := by core033_kernel_decide
theorem stats7413 : actualRows7413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7413=4548 := by core033_kernel_decide
theorem rows7414 : actualRows7414=WordField.canonicalRows actualModulus 7414 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7414 : actualRows7414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7414=2820 := by core033_kernel_decide
theorem rows7415 : actualRows7415=WordField.canonicalRows actualModulus 7415 (.bnot 7414) := by core033_kernel_decide
theorem stats7415 : actualRows7415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7415=6276 := by core033_kernel_decide
theorem rows7416 : actualRows7416=WordField.canonicalRows actualModulus 7416 (.band 7413 7415) := by core033_kernel_decide
theorem stats7416 : actualRows7416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7416=5124 := by core033_kernel_decide
theorem rows7417 : actualRows7417=WordField.canonicalRows actualModulus 7417 (.shr 6147 8) := by core033_kernel_decide
theorem stats7417 : actualRows7417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7417=4548 := by core033_kernel_decide
theorem rows7418 : actualRows7418=WordField.canonicalRows actualModulus 7418 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7418 : actualRows7418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7418=2820 := by core033_kernel_decide
theorem rows7419 : actualRows7419=WordField.canonicalRows actualModulus 7419 (.bnot 7418) := by core033_kernel_decide
theorem stats7419 : actualRows7419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7419=6276 := by core033_kernel_decide
theorem rows7420 : actualRows7420=WordField.canonicalRows actualModulus 7420 (.bxor 7417 7419) := by core033_kernel_decide
theorem stats7420 : actualRows7420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7420=7428 := by core033_kernel_decide
theorem rows7421 : actualRows7421=WordField.canonicalRows actualModulus 7421 (.shr 6147 8) := by core033_kernel_decide
theorem stats7421 : actualRows7421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7421=4548 := by core033_kernel_decide
theorem rows7422 : actualRows7422=WordField.canonicalRows actualModulus 7422 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7422 : actualRows7422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7422=2820 := by core033_kernel_decide
theorem rows7423 : actualRows7423=WordField.canonicalRows actualModulus 7423 (.bnot 7422) := by core033_kernel_decide
theorem stats7423 : actualRows7423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7423=6276 := by core033_kernel_decide
theorem rows7424 : actualRows7424=WordField.canonicalRows actualModulus 7424 (.badd 7421 7423) := by core033_kernel_decide
theorem stats7424 : actualRows7424.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7424=5388 := by core033_kernel_decide
theorem rows7425 : actualRows7425=WordField.canonicalRows actualModulus 7425 (.bnot 7424) := by core033_kernel_decide
theorem stats7425 : actualRows7425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7425=6276 := by core033_kernel_decide
theorem rows7426 : actualRows7426=WordField.canonicalRows actualModulus 7426 (.band 7420 7425) := by core033_kernel_decide
theorem stats7426 : actualRows7426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7426=5124 := by core033_kernel_decide
theorem rows7427 : actualRows7427=WordField.canonicalRows actualModulus 7427 (.bxor 7416 7426) := by core033_kernel_decide
theorem stats7427 : actualRows7427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7427=7428 := by core033_kernel_decide
theorem rows7428 : actualRows7428=WordField.canonicalRows actualModulus 7428 (.shr 7427 31) := by core033_kernel_decide
theorem stats7428 : actualRows7428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7428=2892 := by core033_kernel_decide
theorem rows7429 : actualRows7429=WordField.canonicalRows actualModulus 7429 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7429 : actualRows7429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7429=2892 := by core033_kernel_decide
theorem rows7430 : actualRows7430=WordField.canonicalRows actualModulus 7430 (.bxor 7428 7429) := by core033_kernel_decide
theorem stats7430 : actualRows7430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7430=7428 := by core033_kernel_decide
theorem rows7431 : actualRows7431=WordField.canonicalRows actualModulus 7431 (.shr 6200 8) := by core033_kernel_decide
theorem stats7431 : actualRows7431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7431=4548 := by core033_kernel_decide
theorem rows7432 : actualRows7432=WordField.canonicalRows actualModulus 7432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7432 : actualRows7432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7432=2820 := by core033_kernel_decide
theorem rows7433 : actualRows7433=WordField.canonicalRows actualModulus 7433 (.bnot 7432) := by core033_kernel_decide
theorem stats7433 : actualRows7433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7433=6276 := by core033_kernel_decide
theorem rows7434 : actualRows7434=WordField.canonicalRows actualModulus 7434 (.band 7431 7433) := by core033_kernel_decide
theorem stats7434 : actualRows7434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7434=5124 := by core033_kernel_decide
theorem rows7435 : actualRows7435=WordField.canonicalRows actualModulus 7435 (.shr 6200 8) := by core033_kernel_decide
theorem stats7435 : actualRows7435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7435=4548 := by core033_kernel_decide
theorem rows7436 : actualRows7436=WordField.canonicalRows actualModulus 7436 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7436 : actualRows7436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7436=2820 := by core033_kernel_decide
theorem rows7437 : actualRows7437=WordField.canonicalRows actualModulus 7437 (.bnot 7436) := by core033_kernel_decide
theorem stats7437 : actualRows7437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7437=6276 := by core033_kernel_decide
theorem rows7438 : actualRows7438=WordField.canonicalRows actualModulus 7438 (.bxor 7435 7437) := by core033_kernel_decide
theorem stats7438 : actualRows7438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7438=7428 := by core033_kernel_decide
theorem rows7439 : actualRows7439=WordField.canonicalRows actualModulus 7439 (.shr 6200 8) := by core033_kernel_decide
theorem stats7439 : actualRows7439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7439=4548 := by core033_kernel_decide
theorem rows7440 : actualRows7440=WordField.canonicalRows actualModulus 7440 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7440 : actualRows7440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7440=2820 := by core033_kernel_decide
theorem rows7441 : actualRows7441=WordField.canonicalRows actualModulus 7441 (.bnot 7440) := by core033_kernel_decide
theorem stats7441 : actualRows7441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7441=6276 := by core033_kernel_decide
theorem rows7442 : actualRows7442=WordField.canonicalRows actualModulus 7442 (.badd 7439 7441) := by core033_kernel_decide
theorem stats7442 : actualRows7442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7442=5388 := by core033_kernel_decide
theorem rows7443 : actualRows7443=WordField.canonicalRows actualModulus 7443 (.bnot 7442) := by core033_kernel_decide
theorem stats7443 : actualRows7443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7443=6276 := by core033_kernel_decide
theorem rows7444 : actualRows7444=WordField.canonicalRows actualModulus 7444 (.band 7438 7443) := by core033_kernel_decide
theorem stats7444 : actualRows7444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7444=5124 := by core033_kernel_decide
theorem rows7445 : actualRows7445=WordField.canonicalRows actualModulus 7445 (.bxor 7434 7444) := by core033_kernel_decide
theorem stats7445 : actualRows7445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7445=7428 := by core033_kernel_decide
theorem rows7446 : actualRows7446=WordField.canonicalRows actualModulus 7446 (.shr 7445 31) := by core033_kernel_decide
theorem stats7446 : actualRows7446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7446=2892 := by core033_kernel_decide
theorem rows7447 : actualRows7447=WordField.canonicalRows actualModulus 7447 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7447 : actualRows7447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7447=2892 := by core033_kernel_decide
theorem rows7448 : actualRows7448=WordField.canonicalRows actualModulus 7448 (.bxor 7446 7447) := by core033_kernel_decide
theorem stats7448 : actualRows7448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7448=7428 := by core033_kernel_decide
theorem rows7449 : actualRows7449=WordField.canonicalRows actualModulus 7449 (.rotr 6290 17) := by core033_kernel_decide
theorem stats7449 : actualRows7449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7449=5124 := by core033_kernel_decide
theorem rows7450 : actualRows7450=WordField.canonicalRows actualModulus 7450 (.rotr 6290 19) := by core033_kernel_decide
theorem stats7450 : actualRows7450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7450=5124 := by core033_kernel_decide
theorem rows7451 : actualRows7451=WordField.canonicalRows actualModulus 7451 (.bxor 7449 7450) := by core033_kernel_decide
theorem stats7451 : actualRows7451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7451=7428 := by core033_kernel_decide
theorem rows7452 : actualRows7452=WordField.canonicalRows actualModulus 7452 (.shr 6290 10) := by core033_kernel_decide
theorem stats7452 : actualRows7452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7452=4404 := by core033_kernel_decide
theorem rows7453 : actualRows7453=WordField.canonicalRows actualModulus 7453 (.bxor 7451 7452) := by core033_kernel_decide
theorem stats7453 : actualRows7453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7453=7428 := by core033_kernel_decide
theorem rows7454 : actualRows7454=WordField.canonicalRows actualModulus 7454 (.badd 7453 6260) := by core033_kernel_decide
theorem stats7454 : actualRows7454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7454=5388 := by core033_kernel_decide
theorem rows7455 : actualRows7455=WordField.canonicalRows actualModulus 7455 (.rotr 6212 7) := by core033_kernel_decide
theorem stats7455 : actualRows7455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7455=5124 := by core033_kernel_decide
def partRows114 : List R1CS.Row := actualRows7392++actualRows7393++actualRows7394++actualRows7395++actualRows7396++actualRows7397++actualRows7398++actualRows7399++actualRows7400++actualRows7401++actualRows7402++actualRows7403++actualRows7404++actualRows7405++actualRows7406++actualRows7407++actualRows7408++actualRows7409++actualRows7410++actualRows7411++actualRows7412++actualRows7413++actualRows7414++actualRows7415++actualRows7416++actualRows7417++actualRows7418++actualRows7419++actualRows7420++actualRows7421++actualRows7422++actualRows7423++actualRows7424++actualRows7425++actualRows7426++actualRows7427++actualRows7428++actualRows7429++actualRows7430++actualRows7431++actualRows7432++actualRows7433++actualRows7434++actualRows7435++actualRows7436++actualRows7437++actualRows7438++actualRows7439++actualRows7440++actualRows7441++actualRows7442++actualRows7443++actualRows7444++actualRows7445++actualRows7446++actualRows7447++actualRows7448++actualRows7449++actualRows7450++actualRows7451++actualRows7452++actualRows7453++actualRows7454++actualRows7455
def partOps114 : List WordIR.Op := [.shr 7391 31,.literal (BitVec.ofNat 32 1),.bxor 7392 7393,.shr 6094 8,.literal (BitVec.ofNat 32 0),.bnot 7396,.band 7395 7397,.shr 6094 8,.literal (BitVec.ofNat 32 0),.bnot 7400,.bxor 7399 7401,.shr 6094 8,.literal (BitVec.ofNat 32 0),.bnot 7404,.badd 7403 7405,.bnot 7406,.band 7402 7407,.bxor 7398 7408,.shr 7409 31,.literal (BitVec.ofNat 32 1),.bxor 7410 7411,.shr 6147 8,.literal (BitVec.ofNat 32 0),.bnot 7414,.band 7413 7415,.shr 6147 8,.literal (BitVec.ofNat 32 0),.bnot 7418,.bxor 7417 7419,.shr 6147 8,.literal (BitVec.ofNat 32 0),.bnot 7422,.badd 7421 7423,.bnot 7424,.band 7420 7425,.bxor 7416 7426,.shr 7427 31,.literal (BitVec.ofNat 32 1),.bxor 7428 7429,.shr 6200 8,.literal (BitVec.ofNat 32 0),.bnot 7432,.band 7431 7433,.shr 6200 8,.literal (BitVec.ofNat 32 0),.bnot 7436,.bxor 7435 7437,.shr 6200 8,.literal (BitVec.ofNat 32 0),.bnot 7440,.badd 7439 7441,.bnot 7442,.band 7438 7443,.bxor 7434 7444,.shr 7445 31,.literal (BitVec.ofNat 32 1),.bxor 7446 7447,.rotr 6290 17,.rotr 6290 19,.bxor 7449 7450,.shr 6290 10,.bxor 7451 7452,.badd 7453 6260,.rotr 6212 7]
theorem partExact114 : partRows114=WordField.rows actualModulus 7392 partOps114 := by
  simp only [partRows114,partOps114,WordField.rows,rows7392,rows7393,rows7394,rows7395,rows7396,rows7397,rows7398,rows7399,rows7400,rows7401,rows7402,rows7403,rows7404,rows7405,rows7406,rows7407,rows7408,rows7409,rows7410,rows7411,rows7412,rows7413,rows7414,rows7415,rows7416,rows7417,rows7418,rows7419,rows7420,rows7421,rows7422,rows7423,rows7424,rows7425,rows7426,rows7427,rows7428,rows7429,rows7430,rows7431,rows7432,rows7433,rows7434,rows7435,rows7436,rows7437,rows7438,rows7439,rows7440,rows7441,rows7442,rows7443,rows7444,rows7445,rows7446,rows7447,rows7448,rows7449,rows7450,rows7451,rows7452,rows7453,rows7454,rows7455,List.append_assoc,List.append_nil]
theorem partLength114 : partOps114.length=64 := by decide
theorem partStats114 : partRows114.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows114=325968 := by
  simp only [partRows114,List.length_append,MatrixRowBlocks.rows_weight_append,stats7392.1,stats7392.2,stats7393.1,stats7393.2,stats7394.1,stats7394.2,stats7395.1,stats7395.2,stats7396.1,stats7396.2,stats7397.1,stats7397.2,stats7398.1,stats7398.2,stats7399.1,stats7399.2,stats7400.1,stats7400.2,stats7401.1,stats7401.2,stats7402.1,stats7402.2,stats7403.1,stats7403.2,stats7404.1,stats7404.2,stats7405.1,stats7405.2,stats7406.1,stats7406.2,stats7407.1,stats7407.2,stats7408.1,stats7408.2,stats7409.1,stats7409.2,stats7410.1,stats7410.2,stats7411.1,stats7411.2,stats7412.1,stats7412.2,stats7413.1,stats7413.2,stats7414.1,stats7414.2,stats7415.1,stats7415.2,stats7416.1,stats7416.2,stats7417.1,stats7417.2,stats7418.1,stats7418.2,stats7419.1,stats7419.2,stats7420.1,stats7420.2,stats7421.1,stats7421.2,stats7422.1,stats7422.2,stats7423.1,stats7423.2,stats7424.1,stats7424.2,stats7425.1,stats7425.2,stats7426.1,stats7426.2,stats7427.1,stats7427.2,stats7428.1,stats7428.2,stats7429.1,stats7429.2,stats7430.1,stats7430.2,stats7431.1,stats7431.2,stats7432.1,stats7432.2,stats7433.1,stats7433.2,stats7434.1,stats7434.2,stats7435.1,stats7435.2,stats7436.1,stats7436.2,stats7437.1,stats7437.2,stats7438.1,stats7438.2,stats7439.1,stats7439.2,stats7440.1,stats7440.2,stats7441.1,stats7441.2,stats7442.1,stats7442.2,stats7443.1,stats7443.2,stats7444.1,stats7444.2,stats7445.1,stats7445.2,stats7446.1,stats7446.2,stats7447.1,stats7447.2,stats7448.1,stats7448.2,stats7449.1,stats7449.2,stats7450.1,stats7450.2,stats7451.1,stats7451.2,stats7452.1,stats7452.2,stats7453.1,stats7453.2,stats7454.1,stats7454.2,stats7455.1,stats7455.2]
  decide
end PairedPathRoundCheckedRows
