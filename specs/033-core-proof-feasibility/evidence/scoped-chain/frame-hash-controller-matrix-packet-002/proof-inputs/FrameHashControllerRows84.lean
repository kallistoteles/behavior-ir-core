import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData84
import FrameHashControllerInstructionMatrixData85
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5419 : actualRows5419=WordField.canonicalRows actualModulus 5419 (.bxor 5408 5418) := by core033_kernel_decide
theorem stats5419 : actualRows5419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5419=7428 := by core033_kernel_decide
theorem rows5420 : actualRows5420=WordField.canonicalRows actualModulus 5420 (.shr 5419 31) := by core033_kernel_decide
theorem stats5420 : actualRows5420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5420=2892 := by core033_kernel_decide
theorem rows5421 : actualRows5421=WordField.canonicalRows actualModulus 5421 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5421 : actualRows5421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5421=2892 := by core033_kernel_decide
theorem rows5422 : actualRows5422=WordField.canonicalRows actualModulus 5422 (.bxor 5420 5421) := by core033_kernel_decide
theorem stats5422 : actualRows5422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5422=7428 := by core033_kernel_decide
theorem rows5423 : actualRows5423=WordField.canonicalRows actualModulus 5423 (.shr 2343 8) := by core033_kernel_decide
theorem stats5423 : actualRows5423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5423=4548 := by core033_kernel_decide
theorem rows5424 : actualRows5424=WordField.canonicalRows actualModulus 5424 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5424 : actualRows5424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5424=2820 := by core033_kernel_decide
theorem rows5425 : actualRows5425=WordField.canonicalRows actualModulus 5425 (.bnot 5424) := by core033_kernel_decide
theorem stats5425 : actualRows5425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5425=6276 := by core033_kernel_decide
theorem rows5426 : actualRows5426=WordField.canonicalRows actualModulus 5426 (.band 5423 5425) := by core033_kernel_decide
theorem stats5426 : actualRows5426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5426=5124 := by core033_kernel_decide
theorem rows5427 : actualRows5427=WordField.canonicalRows actualModulus 5427 (.shr 2343 8) := by core033_kernel_decide
theorem stats5427 : actualRows5427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5427=4548 := by core033_kernel_decide
theorem rows5428 : actualRows5428=WordField.canonicalRows actualModulus 5428 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5428 : actualRows5428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5428=2820 := by core033_kernel_decide
theorem rows5429 : actualRows5429=WordField.canonicalRows actualModulus 5429 (.bnot 5428) := by core033_kernel_decide
theorem stats5429 : actualRows5429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5429=6276 := by core033_kernel_decide
theorem rows5430 : actualRows5430=WordField.canonicalRows actualModulus 5430 (.bxor 5427 5429) := by core033_kernel_decide
theorem stats5430 : actualRows5430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5430=7428 := by core033_kernel_decide
theorem rows5431 : actualRows5431=WordField.canonicalRows actualModulus 5431 (.shr 2343 8) := by core033_kernel_decide
theorem stats5431 : actualRows5431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5431=4548 := by core033_kernel_decide
theorem rows5432 : actualRows5432=WordField.canonicalRows actualModulus 5432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5432 : actualRows5432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5432=2820 := by core033_kernel_decide
theorem rows5433 : actualRows5433=WordField.canonicalRows actualModulus 5433 (.bnot 5432) := by core033_kernel_decide
theorem stats5433 : actualRows5433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5433=6276 := by core033_kernel_decide
theorem rows5434 : actualRows5434=WordField.canonicalRows actualModulus 5434 (.badd 5431 5433) := by core033_kernel_decide
theorem stats5434 : actualRows5434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5434=5388 := by core033_kernel_decide
theorem rows5435 : actualRows5435=WordField.canonicalRows actualModulus 5435 (.bnot 5434) := by core033_kernel_decide
theorem stats5435 : actualRows5435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5435=6276 := by core033_kernel_decide
theorem rows5436 : actualRows5436=WordField.canonicalRows actualModulus 5436 (.band 5430 5435) := by core033_kernel_decide
theorem stats5436 : actualRows5436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5436=5124 := by core033_kernel_decide
theorem rows5437 : actualRows5437=WordField.canonicalRows actualModulus 5437 (.bxor 5426 5436) := by core033_kernel_decide
theorem stats5437 : actualRows5437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5437=7428 := by core033_kernel_decide
theorem rows5438 : actualRows5438=WordField.canonicalRows actualModulus 5438 (.shr 5437 31) := by core033_kernel_decide
theorem stats5438 : actualRows5438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5438=2892 := by core033_kernel_decide
theorem rows5439 : actualRows5439=WordField.canonicalRows actualModulus 5439 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5439 : actualRows5439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5439=2892 := by core033_kernel_decide
theorem rows5440 : actualRows5440=WordField.canonicalRows actualModulus 5440 (.bxor 5438 5439) := by core033_kernel_decide
theorem stats5440 : actualRows5440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5440=7428 := by core033_kernel_decide
theorem rows5441 : actualRows5441=WordField.canonicalRows actualModulus 5441 (.shr 2395 8) := by core033_kernel_decide
theorem stats5441 : actualRows5441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5441=4548 := by core033_kernel_decide
theorem rows5442 : actualRows5442=WordField.canonicalRows actualModulus 5442 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5442 : actualRows5442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5442=2820 := by core033_kernel_decide
theorem rows5443 : actualRows5443=WordField.canonicalRows actualModulus 5443 (.bnot 5442) := by core033_kernel_decide
theorem stats5443 : actualRows5443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5443=6276 := by core033_kernel_decide
theorem rows5444 : actualRows5444=WordField.canonicalRows actualModulus 5444 (.band 5441 5443) := by core033_kernel_decide
theorem stats5444 : actualRows5444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5444=5124 := by core033_kernel_decide
theorem rows5445 : actualRows5445=WordField.canonicalRows actualModulus 5445 (.shr 2395 8) := by core033_kernel_decide
theorem stats5445 : actualRows5445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5445=4548 := by core033_kernel_decide
theorem rows5446 : actualRows5446=WordField.canonicalRows actualModulus 5446 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5446 : actualRows5446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5446=2820 := by core033_kernel_decide
theorem rows5447 : actualRows5447=WordField.canonicalRows actualModulus 5447 (.bnot 5446) := by core033_kernel_decide
theorem stats5447 : actualRows5447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5447=6276 := by core033_kernel_decide
theorem rows5448 : actualRows5448=WordField.canonicalRows actualModulus 5448 (.bxor 5445 5447) := by core033_kernel_decide
theorem stats5448 : actualRows5448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5448=7428 := by core033_kernel_decide
theorem rows5449 : actualRows5449=WordField.canonicalRows actualModulus 5449 (.shr 2395 8) := by core033_kernel_decide
theorem stats5449 : actualRows5449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5449=4548 := by core033_kernel_decide
theorem rows5450 : actualRows5450=WordField.canonicalRows actualModulus 5450 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5450 : actualRows5450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5450=2820 := by core033_kernel_decide
theorem rows5451 : actualRows5451=WordField.canonicalRows actualModulus 5451 (.bnot 5450) := by core033_kernel_decide
theorem stats5451 : actualRows5451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5451=6276 := by core033_kernel_decide
theorem rows5452 : actualRows5452=WordField.canonicalRows actualModulus 5452 (.badd 5449 5451) := by core033_kernel_decide
theorem stats5452 : actualRows5452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5452=5388 := by core033_kernel_decide
theorem rows5453 : actualRows5453=WordField.canonicalRows actualModulus 5453 (.bnot 5452) := by core033_kernel_decide
theorem stats5453 : actualRows5453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5453=6276 := by core033_kernel_decide
theorem rows5454 : actualRows5454=WordField.canonicalRows actualModulus 5454 (.band 5448 5453) := by core033_kernel_decide
theorem stats5454 : actualRows5454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5454=5124 := by core033_kernel_decide
theorem rows5455 : actualRows5455=WordField.canonicalRows actualModulus 5455 (.bxor 5444 5454) := by core033_kernel_decide
theorem stats5455 : actualRows5455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5455=7428 := by core033_kernel_decide
theorem rows5456 : actualRows5456=WordField.canonicalRows actualModulus 5456 (.shr 5455 31) := by core033_kernel_decide
theorem stats5456 : actualRows5456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5456=2892 := by core033_kernel_decide
theorem rows5457 : actualRows5457=WordField.canonicalRows actualModulus 5457 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5457 : actualRows5457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5457=2892 := by core033_kernel_decide
theorem rows5458 : actualRows5458=WordField.canonicalRows actualModulus 5458 (.bxor 5456 5457) := by core033_kernel_decide
theorem stats5458 : actualRows5458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5458=7428 := by core033_kernel_decide
theorem rows5459 : actualRows5459=WordField.canonicalRows actualModulus 5459 (.shr 2447 8) := by core033_kernel_decide
theorem stats5459 : actualRows5459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5459=4548 := by core033_kernel_decide
theorem rows5460 : actualRows5460=WordField.canonicalRows actualModulus 5460 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5460 : actualRows5460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5460=2820 := by core033_kernel_decide
theorem rows5461 : actualRows5461=WordField.canonicalRows actualModulus 5461 (.bnot 5460) := by core033_kernel_decide
theorem stats5461 : actualRows5461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5461=6276 := by core033_kernel_decide
theorem rows5462 : actualRows5462=WordField.canonicalRows actualModulus 5462 (.band 5459 5461) := by core033_kernel_decide
theorem stats5462 : actualRows5462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5462=5124 := by core033_kernel_decide
theorem rows5463 : actualRows5463=WordField.canonicalRows actualModulus 5463 (.shr 2447 8) := by core033_kernel_decide
theorem stats5463 : actualRows5463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5463=4548 := by core033_kernel_decide
theorem rows5464 : actualRows5464=WordField.canonicalRows actualModulus 5464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5464 : actualRows5464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5464=2820 := by core033_kernel_decide
theorem rows5465 : actualRows5465=WordField.canonicalRows actualModulus 5465 (.bnot 5464) := by core033_kernel_decide
theorem stats5465 : actualRows5465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5465=6276 := by core033_kernel_decide
theorem rows5466 : actualRows5466=WordField.canonicalRows actualModulus 5466 (.bxor 5463 5465) := by core033_kernel_decide
theorem stats5466 : actualRows5466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5466=7428 := by core033_kernel_decide
theorem rows5467 : actualRows5467=WordField.canonicalRows actualModulus 5467 (.shr 2447 8) := by core033_kernel_decide
theorem stats5467 : actualRows5467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5467=4548 := by core033_kernel_decide
theorem rows5468 : actualRows5468=WordField.canonicalRows actualModulus 5468 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5468 : actualRows5468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5468=2820 := by core033_kernel_decide
theorem rows5469 : actualRows5469=WordField.canonicalRows actualModulus 5469 (.bnot 5468) := by core033_kernel_decide
theorem stats5469 : actualRows5469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5469=6276 := by core033_kernel_decide
theorem rows5470 : actualRows5470=WordField.canonicalRows actualModulus 5470 (.badd 5467 5469) := by core033_kernel_decide
theorem stats5470 : actualRows5470.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5470=5388 := by core033_kernel_decide
theorem rows5471 : actualRows5471=WordField.canonicalRows actualModulus 5471 (.bnot 5470) := by core033_kernel_decide
theorem stats5471 : actualRows5471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5471=6276 := by core033_kernel_decide
theorem rows5472 : actualRows5472=WordField.canonicalRows actualModulus 5472 (.band 5466 5471) := by core033_kernel_decide
theorem stats5472 : actualRows5472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5472=5124 := by core033_kernel_decide
theorem rows5473 : actualRows5473=WordField.canonicalRows actualModulus 5473 (.bxor 5462 5472) := by core033_kernel_decide
theorem stats5473 : actualRows5473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5473=7428 := by core033_kernel_decide
theorem rows5474 : actualRows5474=WordField.canonicalRows actualModulus 5474 (.shr 5473 31) := by core033_kernel_decide
theorem stats5474 : actualRows5474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5474=2892 := by core033_kernel_decide
theorem rows5475 : actualRows5475=WordField.canonicalRows actualModulus 5475 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5475 : actualRows5475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5475=2892 := by core033_kernel_decide
theorem rows5476 : actualRows5476=WordField.canonicalRows actualModulus 5476 (.bxor 5474 5475) := by core033_kernel_decide
theorem stats5476 : actualRows5476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5476=7428 := by core033_kernel_decide
theorem rows5477 : actualRows5477=WordField.canonicalRows actualModulus 5477 (.shr 2499 8) := by core033_kernel_decide
theorem stats5477 : actualRows5477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5477=4548 := by core033_kernel_decide
theorem rows5478 : actualRows5478=WordField.canonicalRows actualModulus 5478 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5478 : actualRows5478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5478=2820 := by core033_kernel_decide
theorem rows5479 : actualRows5479=WordField.canonicalRows actualModulus 5479 (.bnot 5478) := by core033_kernel_decide
theorem stats5479 : actualRows5479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5479=6276 := by core033_kernel_decide
theorem rows5480 : actualRows5480=WordField.canonicalRows actualModulus 5480 (.band 5477 5479) := by core033_kernel_decide
theorem stats5480 : actualRows5480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5480=5124 := by core033_kernel_decide
theorem rows5481 : actualRows5481=WordField.canonicalRows actualModulus 5481 (.shr 2499 8) := by core033_kernel_decide
theorem stats5481 : actualRows5481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5481=4548 := by core033_kernel_decide
theorem rows5482 : actualRows5482=WordField.canonicalRows actualModulus 5482 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5482 : actualRows5482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5482=2820 := by core033_kernel_decide
def partRows84 : List R1CS.Row := actualRows5419++actualRows5420++actualRows5421++actualRows5422++actualRows5423++actualRows5424++actualRows5425++actualRows5426++actualRows5427++actualRows5428++actualRows5429++actualRows5430++actualRows5431++actualRows5432++actualRows5433++actualRows5434++actualRows5435++actualRows5436++actualRows5437++actualRows5438++actualRows5439++actualRows5440++actualRows5441++actualRows5442++actualRows5443++actualRows5444++actualRows5445++actualRows5446++actualRows5447++actualRows5448++actualRows5449++actualRows5450++actualRows5451++actualRows5452++actualRows5453++actualRows5454++actualRows5455++actualRows5456++actualRows5457++actualRows5458++actualRows5459++actualRows5460++actualRows5461++actualRows5462++actualRows5463++actualRows5464++actualRows5465++actualRows5466++actualRows5467++actualRows5468++actualRows5469++actualRows5470++actualRows5471++actualRows5472++actualRows5473++actualRows5474++actualRows5475++actualRows5476++actualRows5477++actualRows5478++actualRows5479++actualRows5480++actualRows5481++actualRows5482
def partOps84 : List WordIR.Op := [.bxor 5408 5418,.shr 5419 31,.literal (BitVec.ofNat 32 1),.bxor 5420 5421,.shr 2343 8,.literal (BitVec.ofNat 32 0),.bnot 5424,.band 5423 5425,.shr 2343 8,.literal (BitVec.ofNat 32 0),.bnot 5428,.bxor 5427 5429,.shr 2343 8,.literal (BitVec.ofNat 32 0),.bnot 5432,.badd 5431 5433,.bnot 5434,.band 5430 5435,.bxor 5426 5436,.shr 5437 31,.literal (BitVec.ofNat 32 1),.bxor 5438 5439,.shr 2395 8,.literal (BitVec.ofNat 32 0),.bnot 5442,.band 5441 5443,.shr 2395 8,.literal (BitVec.ofNat 32 0),.bnot 5446,.bxor 5445 5447,.shr 2395 8,.literal (BitVec.ofNat 32 0),.bnot 5450,.badd 5449 5451,.bnot 5452,.band 5448 5453,.bxor 5444 5454,.shr 5455 31,.literal (BitVec.ofNat 32 1),.bxor 5456 5457,.shr 2447 8,.literal (BitVec.ofNat 32 0),.bnot 5460,.band 5459 5461,.shr 2447 8,.literal (BitVec.ofNat 32 0),.bnot 5464,.bxor 5463 5465,.shr 2447 8,.literal (BitVec.ofNat 32 0),.bnot 5468,.badd 5467 5469,.bnot 5470,.band 5466 5471,.bxor 5462 5472,.shr 5473 31,.literal (BitVec.ofNat 32 1),.bxor 5474 5475,.shr 2499 8,.literal (BitVec.ofNat 32 0),.bnot 5478,.band 5477 5479,.shr 2499 8,.literal (BitVec.ofNat 32 0)]
theorem partExact84 : partRows84=WordField.rows actualModulus 5419 partOps84 := by
  simp only [partRows84,partOps84,WordField.rows,rows5419,rows5420,rows5421,rows5422,rows5423,rows5424,rows5425,rows5426,rows5427,rows5428,rows5429,rows5430,rows5431,rows5432,rows5433,rows5434,rows5435,rows5436,rows5437,rows5438,rows5439,rows5440,rows5441,rows5442,rows5443,rows5444,rows5445,rows5446,rows5447,rows5448,rows5449,rows5450,rows5451,rows5452,rows5453,rows5454,rows5455,rows5456,rows5457,rows5458,rows5459,rows5460,rows5461,rows5462,rows5463,rows5464,rows5465,rows5466,rows5467,rows5468,rows5469,rows5470,rows5471,rows5472,rows5473,rows5474,rows5475,rows5476,rows5477,rows5478,rows5479,rows5480,rows5481,rows5482,List.append_assoc,List.append_nil]
theorem partLength84 : partOps84.length=64 := by decide
theorem partStats84 : partRows84.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows84=319512 := by
  simp only [partRows84,List.length_append,MatrixRowBlocks.rows_weight_append,stats5419.1,stats5419.2,stats5420.1,stats5420.2,stats5421.1,stats5421.2,stats5422.1,stats5422.2,stats5423.1,stats5423.2,stats5424.1,stats5424.2,stats5425.1,stats5425.2,stats5426.1,stats5426.2,stats5427.1,stats5427.2,stats5428.1,stats5428.2,stats5429.1,stats5429.2,stats5430.1,stats5430.2,stats5431.1,stats5431.2,stats5432.1,stats5432.2,stats5433.1,stats5433.2,stats5434.1,stats5434.2,stats5435.1,stats5435.2,stats5436.1,stats5436.2,stats5437.1,stats5437.2,stats5438.1,stats5438.2,stats5439.1,stats5439.2,stats5440.1,stats5440.2,stats5441.1,stats5441.2,stats5442.1,stats5442.2,stats5443.1,stats5443.2,stats5444.1,stats5444.2,stats5445.1,stats5445.2,stats5446.1,stats5446.2,stats5447.1,stats5447.2,stats5448.1,stats5448.2,stats5449.1,stats5449.2,stats5450.1,stats5450.2,stats5451.1,stats5451.2,stats5452.1,stats5452.2,stats5453.1,stats5453.2,stats5454.1,stats5454.2,stats5455.1,stats5455.2,stats5456.1,stats5456.2,stats5457.1,stats5457.2,stats5458.1,stats5458.2,stats5459.1,stats5459.2,stats5460.1,stats5460.2,stats5461.1,stats5461.2,stats5462.1,stats5462.2,stats5463.1,stats5463.2,stats5464.1,stats5464.2,stats5465.1,stats5465.2,stats5466.1,stats5466.2,stats5467.1,stats5467.2,stats5468.1,stats5468.2,stats5469.1,stats5469.2,stats5470.1,stats5470.2,stats5471.1,stats5471.2,stats5472.1,stats5472.2,stats5473.1,stats5473.2,stats5474.1,stats5474.2,stats5475.1,stats5475.2,stats5476.1,stats5476.2,stats5477.1,stats5477.2,stats5478.1,stats5478.2,stats5479.1,stats5479.2,stats5480.1,stats5480.2,stats5481.1,stats5481.2,stats5482.1,stats5482.2]
  decide
end FrameHashControllerCheckedRows
