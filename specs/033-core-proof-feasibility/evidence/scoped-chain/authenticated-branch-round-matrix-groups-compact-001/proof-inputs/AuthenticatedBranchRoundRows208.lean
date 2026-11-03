import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData209
import AuthenticatedBranchRoundInstructionMatrixData210
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13430 : actualRows13430=WordField.canonicalRows actualModulus 13430 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13430 : actualRows13430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13430=2964 := by core033_kernel_decide
theorem rows13431 : actualRows13431=WordField.canonicalRows actualModulus 13431 (.bxor 693 13430) := by core033_kernel_decide
theorem stats13431 : actualRows13431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13431=7428 := by core033_kernel_decide
theorem rows13432 : actualRows13432=WordField.canonicalRows actualModulus 13432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13432 : actualRows13432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13432=2820 := by core033_kernel_decide
theorem rows13433 : actualRows13433=WordField.canonicalRows actualModulus 13433 (.bnot 13432) := by core033_kernel_decide
theorem stats13433 : actualRows13433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13433=6276 := by core033_kernel_decide
theorem rows13434 : actualRows13434=WordField.canonicalRows actualModulus 13434 (.band 13431 13433) := by core033_kernel_decide
theorem stats13434 : actualRows13434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13434=5124 := by core033_kernel_decide
theorem rows13435 : actualRows13435=WordField.canonicalRows actualModulus 13435 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13435 : actualRows13435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13435=2964 := by core033_kernel_decide
theorem rows13436 : actualRows13436=WordField.canonicalRows actualModulus 13436 (.bxor 693 13435) := by core033_kernel_decide
theorem stats13436 : actualRows13436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13436=7428 := by core033_kernel_decide
theorem rows13437 : actualRows13437=WordField.canonicalRows actualModulus 13437 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13437 : actualRows13437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13437=2820 := by core033_kernel_decide
theorem rows13438 : actualRows13438=WordField.canonicalRows actualModulus 13438 (.bnot 13437) := by core033_kernel_decide
theorem stats13438 : actualRows13438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13438=6276 := by core033_kernel_decide
theorem rows13439 : actualRows13439=WordField.canonicalRows actualModulus 13439 (.bxor 13436 13438) := by core033_kernel_decide
theorem stats13439 : actualRows13439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13439=7428 := by core033_kernel_decide
theorem rows13440 : actualRows13440=WordField.canonicalRows actualModulus 13440 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13440 : actualRows13440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13440=2964 := by core033_kernel_decide
theorem rows13441 : actualRows13441=WordField.canonicalRows actualModulus 13441 (.bxor 693 13440) := by core033_kernel_decide
theorem stats13441 : actualRows13441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13441=7428 := by core033_kernel_decide
theorem rows13442 : actualRows13442=WordField.canonicalRows actualModulus 13442 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13442 : actualRows13442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13442=2820 := by core033_kernel_decide
theorem rows13443 : actualRows13443=WordField.canonicalRows actualModulus 13443 (.bnot 13442) := by core033_kernel_decide
theorem stats13443 : actualRows13443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13443=6276 := by core033_kernel_decide
theorem rows13444 : actualRows13444=WordField.canonicalRows actualModulus 13444 (.badd 13441 13443) := by core033_kernel_decide
theorem stats13444 : actualRows13444.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13444=5388 := by core033_kernel_decide
theorem rows13445 : actualRows13445=WordField.canonicalRows actualModulus 13445 (.bnot 13444) := by core033_kernel_decide
theorem stats13445 : actualRows13445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13445=6276 := by core033_kernel_decide
theorem rows13446 : actualRows13446=WordField.canonicalRows actualModulus 13446 (.band 13439 13445) := by core033_kernel_decide
theorem stats13446 : actualRows13446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13446=5124 := by core033_kernel_decide
theorem rows13447 : actualRows13447=WordField.canonicalRows actualModulus 13447 (.bxor 13434 13446) := by core033_kernel_decide
theorem stats13447 : actualRows13447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13447=7428 := by core033_kernel_decide
theorem rows13448 : actualRows13448=WordField.canonicalRows actualModulus 13448 (.shr 13447 31) := by core033_kernel_decide
theorem stats13448 : actualRows13448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13448=2892 := by core033_kernel_decide
theorem rows13449 : actualRows13449=WordField.canonicalRows actualModulus 13449 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13449 : actualRows13449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13449=2892 := by core033_kernel_decide
theorem rows13450 : actualRows13450=WordField.canonicalRows actualModulus 13450 (.bxor 13448 13449) := by core033_kernel_decide
theorem stats13450 : actualRows13450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13450=7428 := by core033_kernel_decide
theorem rows13451 : actualRows13451=WordField.canonicalRows actualModulus 13451 (.bnot 13450) := by core033_kernel_decide
theorem stats13451 : actualRows13451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13451=6276 := by core033_kernel_decide
theorem rows13452 : actualRows13452=WordField.canonicalRows actualModulus 13452 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13452 : actualRows13452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13452=2892 := by core033_kernel_decide
theorem rows13453 : actualRows13453=WordField.canonicalRows actualModulus 13453 (.badd 13451 13452) := by core033_kernel_decide
theorem stats13453 : actualRows13453.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13453=5388 := by core033_kernel_decide
theorem rows13454 : actualRows13454=WordField.canonicalRows actualModulus 13454 (.bnot 13453) := by core033_kernel_decide
theorem stats13454 : actualRows13454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13454=6276 := by core033_kernel_decide
theorem rows13455 : actualRows13455=WordField.canonicalRows actualModulus 13455 (.band 13454 10487) := by core033_kernel_decide
theorem stats13455 : actualRows13455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13455=5124 := by core033_kernel_decide
theorem rows13456 : actualRows13456=WordField.canonicalRows actualModulus 13456 (.bxor 13429 13455) := by core033_kernel_decide
theorem stats13456 : actualRows13456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13456=7428 := by core033_kernel_decide
theorem rows13457 : actualRows13457=WordField.canonicalRows actualModulus 13457 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13457 : actualRows13457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13457=2964 := by core033_kernel_decide
theorem rows13458 : actualRows13458=WordField.canonicalRows actualModulus 13458 (.bxor 693 13457) := by core033_kernel_decide
theorem stats13458 : actualRows13458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13458=7428 := by core033_kernel_decide
theorem rows13459 : actualRows13459=WordField.canonicalRows actualModulus 13459 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13459 : actualRows13459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13459=2820 := by core033_kernel_decide
theorem rows13460 : actualRows13460=WordField.canonicalRows actualModulus 13460 (.bnot 13459) := by core033_kernel_decide
theorem stats13460 : actualRows13460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13460=6276 := by core033_kernel_decide
theorem rows13461 : actualRows13461=WordField.canonicalRows actualModulus 13461 (.band 13458 13460) := by core033_kernel_decide
theorem stats13461 : actualRows13461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13461=5124 := by core033_kernel_decide
theorem rows13462 : actualRows13462=WordField.canonicalRows actualModulus 13462 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13462 : actualRows13462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13462=2964 := by core033_kernel_decide
theorem rows13463 : actualRows13463=WordField.canonicalRows actualModulus 13463 (.bxor 693 13462) := by core033_kernel_decide
theorem stats13463 : actualRows13463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13463=7428 := by core033_kernel_decide
theorem rows13464 : actualRows13464=WordField.canonicalRows actualModulus 13464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13464 : actualRows13464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13464=2820 := by core033_kernel_decide
theorem rows13465 : actualRows13465=WordField.canonicalRows actualModulus 13465 (.bnot 13464) := by core033_kernel_decide
theorem stats13465 : actualRows13465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13465=6276 := by core033_kernel_decide
theorem rows13466 : actualRows13466=WordField.canonicalRows actualModulus 13466 (.bxor 13463 13465) := by core033_kernel_decide
theorem stats13466 : actualRows13466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13466=7428 := by core033_kernel_decide
theorem rows13467 : actualRows13467=WordField.canonicalRows actualModulus 13467 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13467 : actualRows13467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13467=2964 := by core033_kernel_decide
theorem rows13468 : actualRows13468=WordField.canonicalRows actualModulus 13468 (.bxor 693 13467) := by core033_kernel_decide
theorem stats13468 : actualRows13468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13468=7428 := by core033_kernel_decide
theorem rows13469 : actualRows13469=WordField.canonicalRows actualModulus 13469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13469 : actualRows13469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13469=2820 := by core033_kernel_decide
theorem rows13470 : actualRows13470=WordField.canonicalRows actualModulus 13470 (.bnot 13469) := by core033_kernel_decide
theorem stats13470 : actualRows13470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13470=6276 := by core033_kernel_decide
theorem rows13471 : actualRows13471=WordField.canonicalRows actualModulus 13471 (.badd 13468 13470) := by core033_kernel_decide
theorem stats13471 : actualRows13471.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13471=5388 := by core033_kernel_decide
theorem rows13472 : actualRows13472=WordField.canonicalRows actualModulus 13472 (.bnot 13471) := by core033_kernel_decide
theorem stats13472 : actualRows13472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13472=6276 := by core033_kernel_decide
theorem rows13473 : actualRows13473=WordField.canonicalRows actualModulus 13473 (.band 13466 13472) := by core033_kernel_decide
theorem stats13473 : actualRows13473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13473=5124 := by core033_kernel_decide
theorem rows13474 : actualRows13474=WordField.canonicalRows actualModulus 13474 (.bxor 13461 13473) := by core033_kernel_decide
theorem stats13474 : actualRows13474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13474=7428 := by core033_kernel_decide
theorem rows13475 : actualRows13475=WordField.canonicalRows actualModulus 13475 (.shr 13474 31) := by core033_kernel_decide
theorem stats13475 : actualRows13475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13475=2892 := by core033_kernel_decide
theorem rows13476 : actualRows13476=WordField.canonicalRows actualModulus 13476 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13476 : actualRows13476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13476=2892 := by core033_kernel_decide
theorem rows13477 : actualRows13477=WordField.canonicalRows actualModulus 13477 (.bxor 13475 13476) := by core033_kernel_decide
theorem stats13477 : actualRows13477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13477=7428 := by core033_kernel_decide
theorem rows13478 : actualRows13478=WordField.canonicalRows actualModulus 13478 (.bnot 13477) := by core033_kernel_decide
theorem stats13478 : actualRows13478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13478=6276 := by core033_kernel_decide
theorem rows13479 : actualRows13479=WordField.canonicalRows actualModulus 13479 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13479 : actualRows13479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13479=2892 := by core033_kernel_decide
theorem rows13480 : actualRows13480=WordField.canonicalRows actualModulus 13480 (.badd 13478 13479) := by core033_kernel_decide
theorem stats13480 : actualRows13480.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13480=5388 := by core033_kernel_decide
theorem rows13481 : actualRows13481=WordField.canonicalRows actualModulus 13481 (.band 13480 11049) := by core033_kernel_decide
theorem stats13481 : actualRows13481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13481=5124 := by core033_kernel_decide
theorem rows13482 : actualRows13482=WordField.canonicalRows actualModulus 13482 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13482 : actualRows13482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13482=2964 := by core033_kernel_decide
theorem rows13483 : actualRows13483=WordField.canonicalRows actualModulus 13483 (.bxor 693 13482) := by core033_kernel_decide
theorem stats13483 : actualRows13483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13483=7428 := by core033_kernel_decide
theorem rows13484 : actualRows13484=WordField.canonicalRows actualModulus 13484 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13484 : actualRows13484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13484=2820 := by core033_kernel_decide
theorem rows13485 : actualRows13485=WordField.canonicalRows actualModulus 13485 (.bnot 13484) := by core033_kernel_decide
theorem stats13485 : actualRows13485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13485=6276 := by core033_kernel_decide
theorem rows13486 : actualRows13486=WordField.canonicalRows actualModulus 13486 (.band 13483 13485) := by core033_kernel_decide
theorem stats13486 : actualRows13486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13486=5124 := by core033_kernel_decide
theorem rows13487 : actualRows13487=WordField.canonicalRows actualModulus 13487 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13487 : actualRows13487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13487=2964 := by core033_kernel_decide
theorem rows13488 : actualRows13488=WordField.canonicalRows actualModulus 13488 (.bxor 693 13487) := by core033_kernel_decide
theorem stats13488 : actualRows13488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13488=7428 := by core033_kernel_decide
theorem rows13489 : actualRows13489=WordField.canonicalRows actualModulus 13489 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13489 : actualRows13489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13489=2820 := by core033_kernel_decide
theorem rows13490 : actualRows13490=WordField.canonicalRows actualModulus 13490 (.bnot 13489) := by core033_kernel_decide
theorem stats13490 : actualRows13490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13490=6276 := by core033_kernel_decide
theorem rows13491 : actualRows13491=WordField.canonicalRows actualModulus 13491 (.bxor 13488 13490) := by core033_kernel_decide
theorem stats13491 : actualRows13491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13491=7428 := by core033_kernel_decide
theorem rows13492 : actualRows13492=WordField.canonicalRows actualModulus 13492 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13492 : actualRows13492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13492=2964 := by core033_kernel_decide
theorem rows13493 : actualRows13493=WordField.canonicalRows actualModulus 13493 (.bxor 693 13492) := by core033_kernel_decide
theorem stats13493 : actualRows13493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13493=7428 := by core033_kernel_decide
def partRows208 : List R1CS.Row := actualRows13430++actualRows13431++actualRows13432++actualRows13433++actualRows13434++actualRows13435++actualRows13436++actualRows13437++actualRows13438++actualRows13439++actualRows13440++actualRows13441++actualRows13442++actualRows13443++actualRows13444++actualRows13445++actualRows13446++actualRows13447++actualRows13448++actualRows13449++actualRows13450++actualRows13451++actualRows13452++actualRows13453++actualRows13454++actualRows13455++actualRows13456++actualRows13457++actualRows13458++actualRows13459++actualRows13460++actualRows13461++actualRows13462++actualRows13463++actualRows13464++actualRows13465++actualRows13466++actualRows13467++actualRows13468++actualRows13469++actualRows13470++actualRows13471++actualRows13472++actualRows13473++actualRows13474++actualRows13475++actualRows13476++actualRows13477++actualRows13478++actualRows13479++actualRows13480++actualRows13481++actualRows13482++actualRows13483++actualRows13484++actualRows13485++actualRows13486++actualRows13487++actualRows13488++actualRows13489++actualRows13490++actualRows13491++actualRows13492++actualRows13493
def partOps208 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 693 13430,.literal (BitVec.ofNat 32 0),.bnot 13432,.band 13431 13433,.literal (BitVec.ofNat 32 3),.bxor 693 13435,.literal (BitVec.ofNat 32 0),.bnot 13437,.bxor 13436 13438,.literal (BitVec.ofNat 32 3),.bxor 693 13440,.literal (BitVec.ofNat 32 0),.bnot 13442,.badd 13441 13443,.bnot 13444,.band 13439 13445,.bxor 13434 13446,.shr 13447 31,.literal (BitVec.ofNat 32 1),.bxor 13448 13449,.bnot 13450,.literal (BitVec.ofNat 32 1),.badd 13451 13452,.bnot 13453,.band 13454 10487,.bxor 13429 13455,.literal (BitVec.ofNat 32 3),.bxor 693 13457,.literal (BitVec.ofNat 32 0),.bnot 13459,.band 13458 13460,.literal (BitVec.ofNat 32 3),.bxor 693 13462,.literal (BitVec.ofNat 32 0),.bnot 13464,.bxor 13463 13465,.literal (BitVec.ofNat 32 3),.bxor 693 13467,.literal (BitVec.ofNat 32 0),.bnot 13469,.badd 13468 13470,.bnot 13471,.band 13466 13472,.bxor 13461 13473,.shr 13474 31,.literal (BitVec.ofNat 32 1),.bxor 13475 13476,.bnot 13477,.literal (BitVec.ofNat 32 1),.badd 13478 13479,.band 13480 11049,.literal (BitVec.ofNat 32 3),.bxor 693 13482,.literal (BitVec.ofNat 32 0),.bnot 13484,.band 13483 13485,.literal (BitVec.ofNat 32 3),.bxor 693 13487,.literal (BitVec.ofNat 32 0),.bnot 13489,.bxor 13488 13490,.literal (BitVec.ofNat 32 3),.bxor 693 13492]
theorem partExact208 : partRows208=WordField.rows actualModulus 13430 partOps208 := by
  simp only [partRows208,partOps208,WordField.rows,rows13430,rows13431,rows13432,rows13433,rows13434,rows13435,rows13436,rows13437,rows13438,rows13439,rows13440,rows13441,rows13442,rows13443,rows13444,rows13445,rows13446,rows13447,rows13448,rows13449,rows13450,rows13451,rows13452,rows13453,rows13454,rows13455,rows13456,rows13457,rows13458,rows13459,rows13460,rows13461,rows13462,rows13463,rows13464,rows13465,rows13466,rows13467,rows13468,rows13469,rows13470,rows13471,rows13472,rows13473,rows13474,rows13475,rows13476,rows13477,rows13478,rows13479,rows13480,rows13481,rows13482,rows13483,rows13484,rows13485,rows13486,rows13487,rows13488,rows13489,rows13490,rows13491,rows13492,rows13493,List.append_assoc,List.append_nil]
theorem partLength208 : partOps208.length=64 := by decide
theorem partStats208 : partRows208.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows208=331872 := by
  simp only [partRows208,List.length_append,MatrixRowBlocks.rows_weight_append,stats13430.1,stats13430.2,stats13431.1,stats13431.2,stats13432.1,stats13432.2,stats13433.1,stats13433.2,stats13434.1,stats13434.2,stats13435.1,stats13435.2,stats13436.1,stats13436.2,stats13437.1,stats13437.2,stats13438.1,stats13438.2,stats13439.1,stats13439.2,stats13440.1,stats13440.2,stats13441.1,stats13441.2,stats13442.1,stats13442.2,stats13443.1,stats13443.2,stats13444.1,stats13444.2,stats13445.1,stats13445.2,stats13446.1,stats13446.2,stats13447.1,stats13447.2,stats13448.1,stats13448.2,stats13449.1,stats13449.2,stats13450.1,stats13450.2,stats13451.1,stats13451.2,stats13452.1,stats13452.2,stats13453.1,stats13453.2,stats13454.1,stats13454.2,stats13455.1,stats13455.2,stats13456.1,stats13456.2,stats13457.1,stats13457.2,stats13458.1,stats13458.2,stats13459.1,stats13459.2,stats13460.1,stats13460.2,stats13461.1,stats13461.2,stats13462.1,stats13462.2,stats13463.1,stats13463.2,stats13464.1,stats13464.2,stats13465.1,stats13465.2,stats13466.1,stats13466.2,stats13467.1,stats13467.2,stats13468.1,stats13468.2,stats13469.1,stats13469.2,stats13470.1,stats13470.2,stats13471.1,stats13471.2,stats13472.1,stats13472.2,stats13473.1,stats13473.2,stats13474.1,stats13474.2,stats13475.1,stats13475.2,stats13476.1,stats13476.2,stats13477.1,stats13477.2,stats13478.1,stats13478.2,stats13479.1,stats13479.2,stats13480.1,stats13480.2,stats13481.1,stats13481.2,stats13482.1,stats13482.2,stats13483.1,stats13483.2,stats13484.1,stats13484.2,stats13485.1,stats13485.2,stats13486.1,stats13486.2,stats13487.1,stats13487.2,stats13488.1,stats13488.2,stats13489.1,stats13489.2,stats13490.1,stats13490.2,stats13491.1,stats13491.2,stats13492.1,stats13492.2,stats13493.1,stats13493.2]
  decide
end AuthenticatedBranchRoundCheckedRows
