import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData84
import AuthenticatedBranchRoundInstructionMatrixData85
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5430 : actualRows5430=WordField.canonicalRows actualModulus 5430 (.bnot 5429) := by core033_kernel_decide
theorem stats5430 : actualRows5430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5430=6276 := by core033_kernel_decide
theorem rows5431 : actualRows5431=WordField.canonicalRows actualModulus 5431 (.band 5424 5430) := by core033_kernel_decide
theorem stats5431 : actualRows5431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5431=5124 := by core033_kernel_decide
theorem rows5432 : actualRows5432=WordField.canonicalRows actualModulus 5432 (.bxor 5419 5431) := by core033_kernel_decide
theorem stats5432 : actualRows5432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5432=7428 := by core033_kernel_decide
theorem rows5433 : actualRows5433=WordField.canonicalRows actualModulus 5433 (.shr 5432 31) := by core033_kernel_decide
theorem stats5433 : actualRows5433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5433=2892 := by core033_kernel_decide
theorem rows5434 : actualRows5434=WordField.canonicalRows actualModulus 5434 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5434 : actualRows5434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5434=2892 := by core033_kernel_decide
theorem rows5435 : actualRows5435=WordField.canonicalRows actualModulus 5435 (.bxor 5433 5434) := by core033_kernel_decide
theorem stats5435 : actualRows5435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5435=7428 := by core033_kernel_decide
theorem rows5436 : actualRows5436=WordField.canonicalRows actualModulus 5436 (.bnot 5435) := by core033_kernel_decide
theorem stats5436 : actualRows5436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5436=6276 := by core033_kernel_decide
theorem rows5437 : actualRows5437=WordField.canonicalRows actualModulus 5437 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5437 : actualRows5437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5437=2892 := by core033_kernel_decide
theorem rows5438 : actualRows5438=WordField.canonicalRows actualModulus 5438 (.badd 5436 5437) := by core033_kernel_decide
theorem stats5438 : actualRows5438.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5438=5388 := by core033_kernel_decide
theorem rows5439 : actualRows5439=WordField.canonicalRows actualModulus 5439 (.band 5438 2804) := by core033_kernel_decide
theorem stats5439 : actualRows5439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5439=5124 := by core033_kernel_decide
theorem rows5440 : actualRows5440=WordField.canonicalRows actualModulus 5440 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5440 : actualRows5440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5440=2892 := by core033_kernel_decide
theorem rows5441 : actualRows5441=WordField.canonicalRows actualModulus 5441 (.bxor 1299 5440) := by core033_kernel_decide
theorem stats5441 : actualRows5441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5441=7428 := by core033_kernel_decide
theorem rows5442 : actualRows5442=WordField.canonicalRows actualModulus 5442 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5442 : actualRows5442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5442=2820 := by core033_kernel_decide
theorem rows5443 : actualRows5443=WordField.canonicalRows actualModulus 5443 (.bnot 5442) := by core033_kernel_decide
theorem stats5443 : actualRows5443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5443=6276 := by core033_kernel_decide
theorem rows5444 : actualRows5444=WordField.canonicalRows actualModulus 5444 (.band 5441 5443) := by core033_kernel_decide
theorem stats5444 : actualRows5444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5444=5124 := by core033_kernel_decide
theorem rows5445 : actualRows5445=WordField.canonicalRows actualModulus 5445 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5445 : actualRows5445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5445=2892 := by core033_kernel_decide
theorem rows5446 : actualRows5446=WordField.canonicalRows actualModulus 5446 (.bxor 1299 5445) := by core033_kernel_decide
theorem stats5446 : actualRows5446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5446=7428 := by core033_kernel_decide
theorem rows5447 : actualRows5447=WordField.canonicalRows actualModulus 5447 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5447 : actualRows5447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5447=2820 := by core033_kernel_decide
theorem rows5448 : actualRows5448=WordField.canonicalRows actualModulus 5448 (.bnot 5447) := by core033_kernel_decide
theorem stats5448 : actualRows5448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5448=6276 := by core033_kernel_decide
theorem rows5449 : actualRows5449=WordField.canonicalRows actualModulus 5449 (.bxor 5446 5448) := by core033_kernel_decide
theorem stats5449 : actualRows5449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5449=7428 := by core033_kernel_decide
theorem rows5450 : actualRows5450=WordField.canonicalRows actualModulus 5450 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5450 : actualRows5450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5450=2892 := by core033_kernel_decide
theorem rows5451 : actualRows5451=WordField.canonicalRows actualModulus 5451 (.bxor 1299 5450) := by core033_kernel_decide
theorem stats5451 : actualRows5451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5451=7428 := by core033_kernel_decide
theorem rows5452 : actualRows5452=WordField.canonicalRows actualModulus 5452 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5452 : actualRows5452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5452=2820 := by core033_kernel_decide
theorem rows5453 : actualRows5453=WordField.canonicalRows actualModulus 5453 (.bnot 5452) := by core033_kernel_decide
theorem stats5453 : actualRows5453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5453=6276 := by core033_kernel_decide
theorem rows5454 : actualRows5454=WordField.canonicalRows actualModulus 5454 (.badd 5451 5453) := by core033_kernel_decide
theorem stats5454 : actualRows5454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5454=5388 := by core033_kernel_decide
theorem rows5455 : actualRows5455=WordField.canonicalRows actualModulus 5455 (.bnot 5454) := by core033_kernel_decide
theorem stats5455 : actualRows5455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5455=6276 := by core033_kernel_decide
theorem rows5456 : actualRows5456=WordField.canonicalRows actualModulus 5456 (.band 5449 5455) := by core033_kernel_decide
theorem stats5456 : actualRows5456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5456=5124 := by core033_kernel_decide
theorem rows5457 : actualRows5457=WordField.canonicalRows actualModulus 5457 (.bxor 5444 5456) := by core033_kernel_decide
theorem stats5457 : actualRows5457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5457=7428 := by core033_kernel_decide
theorem rows5458 : actualRows5458=WordField.canonicalRows actualModulus 5458 (.shr 5457 31) := by core033_kernel_decide
theorem stats5458 : actualRows5458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5458=2892 := by core033_kernel_decide
theorem rows5459 : actualRows5459=WordField.canonicalRows actualModulus 5459 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5459 : actualRows5459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5459=2892 := by core033_kernel_decide
theorem rows5460 : actualRows5460=WordField.canonicalRows actualModulus 5460 (.bxor 5458 5459) := by core033_kernel_decide
theorem stats5460 : actualRows5460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5460=7428 := by core033_kernel_decide
theorem rows5461 : actualRows5461=WordField.canonicalRows actualModulus 5461 (.bnot 5460) := by core033_kernel_decide
theorem stats5461 : actualRows5461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5461=6276 := by core033_kernel_decide
theorem rows5462 : actualRows5462=WordField.canonicalRows actualModulus 5462 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5462 : actualRows5462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5462=2892 := by core033_kernel_decide
theorem rows5463 : actualRows5463=WordField.canonicalRows actualModulus 5463 (.badd 5461 5462) := by core033_kernel_decide
theorem stats5463 : actualRows5463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5463=5388 := by core033_kernel_decide
theorem rows5464 : actualRows5464=WordField.canonicalRows actualModulus 5464 (.bnot 5463) := by core033_kernel_decide
theorem stats5464 : actualRows5464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5464=6276 := by core033_kernel_decide
theorem rows5465 : actualRows5465=WordField.canonicalRows actualModulus 5465 (.band 5464 2612) := by core033_kernel_decide
theorem stats5465 : actualRows5465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5465=5124 := by core033_kernel_decide
theorem rows5466 : actualRows5466=WordField.canonicalRows actualModulus 5466 (.bxor 5439 5465) := by core033_kernel_decide
theorem stats5466 : actualRows5466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5466=7428 := by core033_kernel_decide
theorem rows5467 : actualRows5467=WordField.canonicalRows actualModulus 5467 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5467 : actualRows5467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5467=2892 := by core033_kernel_decide
theorem rows5468 : actualRows5468=WordField.canonicalRows actualModulus 5468 (.bxor 1299 5467) := by core033_kernel_decide
theorem stats5468 : actualRows5468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5468=7428 := by core033_kernel_decide
theorem rows5469 : actualRows5469=WordField.canonicalRows actualModulus 5469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5469 : actualRows5469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5469=2820 := by core033_kernel_decide
theorem rows5470 : actualRows5470=WordField.canonicalRows actualModulus 5470 (.bnot 5469) := by core033_kernel_decide
theorem stats5470 : actualRows5470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5470=6276 := by core033_kernel_decide
theorem rows5471 : actualRows5471=WordField.canonicalRows actualModulus 5471 (.band 5468 5470) := by core033_kernel_decide
theorem stats5471 : actualRows5471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5471=5124 := by core033_kernel_decide
theorem rows5472 : actualRows5472=WordField.canonicalRows actualModulus 5472 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5472 : actualRows5472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5472=2892 := by core033_kernel_decide
theorem rows5473 : actualRows5473=WordField.canonicalRows actualModulus 5473 (.bxor 1299 5472) := by core033_kernel_decide
theorem stats5473 : actualRows5473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5473=7428 := by core033_kernel_decide
theorem rows5474 : actualRows5474=WordField.canonicalRows actualModulus 5474 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5474 : actualRows5474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5474=2820 := by core033_kernel_decide
theorem rows5475 : actualRows5475=WordField.canonicalRows actualModulus 5475 (.bnot 5474) := by core033_kernel_decide
theorem stats5475 : actualRows5475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5475=6276 := by core033_kernel_decide
theorem rows5476 : actualRows5476=WordField.canonicalRows actualModulus 5476 (.bxor 5473 5475) := by core033_kernel_decide
theorem stats5476 : actualRows5476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5476=7428 := by core033_kernel_decide
theorem rows5477 : actualRows5477=WordField.canonicalRows actualModulus 5477 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5477 : actualRows5477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5477=2892 := by core033_kernel_decide
theorem rows5478 : actualRows5478=WordField.canonicalRows actualModulus 5478 (.bxor 1299 5477) := by core033_kernel_decide
theorem stats5478 : actualRows5478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5478=7428 := by core033_kernel_decide
theorem rows5479 : actualRows5479=WordField.canonicalRows actualModulus 5479 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5479 : actualRows5479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5479=2820 := by core033_kernel_decide
theorem rows5480 : actualRows5480=WordField.canonicalRows actualModulus 5480 (.bnot 5479) := by core033_kernel_decide
theorem stats5480 : actualRows5480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5480=6276 := by core033_kernel_decide
theorem rows5481 : actualRows5481=WordField.canonicalRows actualModulus 5481 (.badd 5478 5480) := by core033_kernel_decide
theorem stats5481 : actualRows5481.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5481=5388 := by core033_kernel_decide
theorem rows5482 : actualRows5482=WordField.canonicalRows actualModulus 5482 (.bnot 5481) := by core033_kernel_decide
theorem stats5482 : actualRows5482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5482=6276 := by core033_kernel_decide
theorem rows5483 : actualRows5483=WordField.canonicalRows actualModulus 5483 (.band 5476 5482) := by core033_kernel_decide
theorem stats5483 : actualRows5483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5483=5124 := by core033_kernel_decide
theorem rows5484 : actualRows5484=WordField.canonicalRows actualModulus 5484 (.bxor 5471 5483) := by core033_kernel_decide
theorem stats5484 : actualRows5484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5484=7428 := by core033_kernel_decide
theorem rows5485 : actualRows5485=WordField.canonicalRows actualModulus 5485 (.shr 5484 31) := by core033_kernel_decide
theorem stats5485 : actualRows5485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5485=2892 := by core033_kernel_decide
theorem rows5486 : actualRows5486=WordField.canonicalRows actualModulus 5486 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5486 : actualRows5486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5486=2892 := by core033_kernel_decide
theorem rows5487 : actualRows5487=WordField.canonicalRows actualModulus 5487 (.bxor 5485 5486) := by core033_kernel_decide
theorem stats5487 : actualRows5487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5487=7428 := by core033_kernel_decide
theorem rows5488 : actualRows5488=WordField.canonicalRows actualModulus 5488 (.bnot 5487) := by core033_kernel_decide
theorem stats5488 : actualRows5488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5488=6276 := by core033_kernel_decide
theorem rows5489 : actualRows5489=WordField.canonicalRows actualModulus 5489 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5489 : actualRows5489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5489=2892 := by core033_kernel_decide
theorem rows5490 : actualRows5490=WordField.canonicalRows actualModulus 5490 (.badd 5488 5489) := by core033_kernel_decide
theorem stats5490 : actualRows5490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5490=5388 := by core033_kernel_decide
theorem rows5491 : actualRows5491=WordField.canonicalRows actualModulus 5491 (.band 5490 2807) := by core033_kernel_decide
theorem stats5491 : actualRows5491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5491=5124 := by core033_kernel_decide
theorem rows5492 : actualRows5492=WordField.canonicalRows actualModulus 5492 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5492 : actualRows5492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5492=2892 := by core033_kernel_decide
theorem rows5493 : actualRows5493=WordField.canonicalRows actualModulus 5493 (.bxor 1299 5492) := by core033_kernel_decide
theorem stats5493 : actualRows5493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5493=7428 := by core033_kernel_decide
def partRows83 : List R1CS.Row := actualRows5430++actualRows5431++actualRows5432++actualRows5433++actualRows5434++actualRows5435++actualRows5436++actualRows5437++actualRows5438++actualRows5439++actualRows5440++actualRows5441++actualRows5442++actualRows5443++actualRows5444++actualRows5445++actualRows5446++actualRows5447++actualRows5448++actualRows5449++actualRows5450++actualRows5451++actualRows5452++actualRows5453++actualRows5454++actualRows5455++actualRows5456++actualRows5457++actualRows5458++actualRows5459++actualRows5460++actualRows5461++actualRows5462++actualRows5463++actualRows5464++actualRows5465++actualRows5466++actualRows5467++actualRows5468++actualRows5469++actualRows5470++actualRows5471++actualRows5472++actualRows5473++actualRows5474++actualRows5475++actualRows5476++actualRows5477++actualRows5478++actualRows5479++actualRows5480++actualRows5481++actualRows5482++actualRows5483++actualRows5484++actualRows5485++actualRows5486++actualRows5487++actualRows5488++actualRows5489++actualRows5490++actualRows5491++actualRows5492++actualRows5493
def partOps83 : List WordIR.Op := [.bnot 5429,.band 5424 5430,.bxor 5419 5431,.shr 5432 31,.literal (BitVec.ofNat 32 1),.bxor 5433 5434,.bnot 5435,.literal (BitVec.ofNat 32 1),.badd 5436 5437,.band 5438 2804,.literal (BitVec.ofNat 32 2),.bxor 1299 5440,.literal (BitVec.ofNat 32 0),.bnot 5442,.band 5441 5443,.literal (BitVec.ofNat 32 2),.bxor 1299 5445,.literal (BitVec.ofNat 32 0),.bnot 5447,.bxor 5446 5448,.literal (BitVec.ofNat 32 2),.bxor 1299 5450,.literal (BitVec.ofNat 32 0),.bnot 5452,.badd 5451 5453,.bnot 5454,.band 5449 5455,.bxor 5444 5456,.shr 5457 31,.literal (BitVec.ofNat 32 1),.bxor 5458 5459,.bnot 5460,.literal (BitVec.ofNat 32 1),.badd 5461 5462,.bnot 5463,.band 5464 2612,.bxor 5439 5465,.literal (BitVec.ofNat 32 2),.bxor 1299 5467,.literal (BitVec.ofNat 32 0),.bnot 5469,.band 5468 5470,.literal (BitVec.ofNat 32 2),.bxor 1299 5472,.literal (BitVec.ofNat 32 0),.bnot 5474,.bxor 5473 5475,.literal (BitVec.ofNat 32 2),.bxor 1299 5477,.literal (BitVec.ofNat 32 0),.bnot 5479,.badd 5478 5480,.bnot 5481,.band 5476 5482,.bxor 5471 5483,.shr 5484 31,.literal (BitVec.ofNat 32 1),.bxor 5485 5486,.bnot 5487,.literal (BitVec.ofNat 32 1),.badd 5488 5489,.band 5490 2807,.literal (BitVec.ofNat 32 2),.bxor 1299 5492]
theorem partExact83 : partRows83=WordField.rows actualModulus 5430 partOps83 := by
  simp only [partRows83,partOps83,WordField.rows,rows5430,rows5431,rows5432,rows5433,rows5434,rows5435,rows5436,rows5437,rows5438,rows5439,rows5440,rows5441,rows5442,rows5443,rows5444,rows5445,rows5446,rows5447,rows5448,rows5449,rows5450,rows5451,rows5452,rows5453,rows5454,rows5455,rows5456,rows5457,rows5458,rows5459,rows5460,rows5461,rows5462,rows5463,rows5464,rows5465,rows5466,rows5467,rows5468,rows5469,rows5470,rows5471,rows5472,rows5473,rows5474,rows5475,rows5476,rows5477,rows5478,rows5479,rows5480,rows5481,rows5482,rows5483,rows5484,rows5485,rows5486,rows5487,rows5488,rows5489,rows5490,rows5491,rows5492,rows5493,List.append_assoc,List.append_nil]
theorem partLength83 : partOps83.length=64 := by decide
theorem partStats83 : partRows83.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows83=331560 := by
  simp only [partRows83,List.length_append,MatrixRowBlocks.rows_weight_append,stats5430.1,stats5430.2,stats5431.1,stats5431.2,stats5432.1,stats5432.2,stats5433.1,stats5433.2,stats5434.1,stats5434.2,stats5435.1,stats5435.2,stats5436.1,stats5436.2,stats5437.1,stats5437.2,stats5438.1,stats5438.2,stats5439.1,stats5439.2,stats5440.1,stats5440.2,stats5441.1,stats5441.2,stats5442.1,stats5442.2,stats5443.1,stats5443.2,stats5444.1,stats5444.2,stats5445.1,stats5445.2,stats5446.1,stats5446.2,stats5447.1,stats5447.2,stats5448.1,stats5448.2,stats5449.1,stats5449.2,stats5450.1,stats5450.2,stats5451.1,stats5451.2,stats5452.1,stats5452.2,stats5453.1,stats5453.2,stats5454.1,stats5454.2,stats5455.1,stats5455.2,stats5456.1,stats5456.2,stats5457.1,stats5457.2,stats5458.1,stats5458.2,stats5459.1,stats5459.2,stats5460.1,stats5460.2,stats5461.1,stats5461.2,stats5462.1,stats5462.2,stats5463.1,stats5463.2,stats5464.1,stats5464.2,stats5465.1,stats5465.2,stats5466.1,stats5466.2,stats5467.1,stats5467.2,stats5468.1,stats5468.2,stats5469.1,stats5469.2,stats5470.1,stats5470.2,stats5471.1,stats5471.2,stats5472.1,stats5472.2,stats5473.1,stats5473.2,stats5474.1,stats5474.2,stats5475.1,stats5475.2,stats5476.1,stats5476.2,stats5477.1,stats5477.2,stats5478.1,stats5478.2,stats5479.1,stats5479.2,stats5480.1,stats5480.2,stats5481.1,stats5481.2,stats5482.1,stats5482.2,stats5483.1,stats5483.2,stats5484.1,stats5484.2,stats5485.1,stats5485.2,stats5486.1,stats5486.2,stats5487.1,stats5487.2,stats5488.1,stats5488.2,stats5489.1,stats5489.2,stats5490.1,stats5490.2,stats5491.1,stats5491.2,stats5492.1,stats5492.2,stats5493.1,stats5493.2]
  decide
end AuthenticatedBranchRoundCheckedRows
