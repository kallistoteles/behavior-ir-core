import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData84
import PairedPathRoundInstructionMatrixData85
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5408 : actualRows5408=WordField.canonicalRows actualModulus 5408 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5408 : actualRows5408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5408=2892 := by core033_kernel_decide
theorem rows5409 : actualRows5409=WordField.canonicalRows actualModulus 5409 (.bxor 616 5408) := by core033_kernel_decide
theorem stats5409 : actualRows5409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5409=7428 := by core033_kernel_decide
theorem rows5410 : actualRows5410=WordField.canonicalRows actualModulus 5410 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5410 : actualRows5410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5410=2820 := by core033_kernel_decide
theorem rows5411 : actualRows5411=WordField.canonicalRows actualModulus 5411 (.bnot 5410) := by core033_kernel_decide
theorem stats5411 : actualRows5411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5411=6276 := by core033_kernel_decide
theorem rows5412 : actualRows5412=WordField.canonicalRows actualModulus 5412 (.band 5409 5411) := by core033_kernel_decide
theorem stats5412 : actualRows5412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5412=5124 := by core033_kernel_decide
theorem rows5413 : actualRows5413=WordField.canonicalRows actualModulus 5413 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5413 : actualRows5413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5413=2892 := by core033_kernel_decide
theorem rows5414 : actualRows5414=WordField.canonicalRows actualModulus 5414 (.bxor 616 5413) := by core033_kernel_decide
theorem stats5414 : actualRows5414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5414=7428 := by core033_kernel_decide
theorem rows5415 : actualRows5415=WordField.canonicalRows actualModulus 5415 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5415 : actualRows5415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5415=2820 := by core033_kernel_decide
theorem rows5416 : actualRows5416=WordField.canonicalRows actualModulus 5416 (.bnot 5415) := by core033_kernel_decide
theorem stats5416 : actualRows5416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5416=6276 := by core033_kernel_decide
theorem rows5417 : actualRows5417=WordField.canonicalRows actualModulus 5417 (.bxor 5414 5416) := by core033_kernel_decide
theorem stats5417 : actualRows5417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5417=7428 := by core033_kernel_decide
theorem rows5418 : actualRows5418=WordField.canonicalRows actualModulus 5418 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5418 : actualRows5418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5418=2892 := by core033_kernel_decide
theorem rows5419 : actualRows5419=WordField.canonicalRows actualModulus 5419 (.bxor 616 5418) := by core033_kernel_decide
theorem stats5419 : actualRows5419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5419=7428 := by core033_kernel_decide
theorem rows5420 : actualRows5420=WordField.canonicalRows actualModulus 5420 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5420 : actualRows5420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5420=2820 := by core033_kernel_decide
theorem rows5421 : actualRows5421=WordField.canonicalRows actualModulus 5421 (.bnot 5420) := by core033_kernel_decide
theorem stats5421 : actualRows5421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5421=6276 := by core033_kernel_decide
theorem rows5422 : actualRows5422=WordField.canonicalRows actualModulus 5422 (.badd 5419 5421) := by core033_kernel_decide
theorem stats5422 : actualRows5422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5422=5388 := by core033_kernel_decide
theorem rows5423 : actualRows5423=WordField.canonicalRows actualModulus 5423 (.bnot 5422) := by core033_kernel_decide
theorem stats5423 : actualRows5423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5423=6276 := by core033_kernel_decide
theorem rows5424 : actualRows5424=WordField.canonicalRows actualModulus 5424 (.band 5417 5423) := by core033_kernel_decide
theorem stats5424 : actualRows5424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5424=5124 := by core033_kernel_decide
theorem rows5425 : actualRows5425=WordField.canonicalRows actualModulus 5425 (.bxor 5412 5424) := by core033_kernel_decide
theorem stats5425 : actualRows5425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5425=7428 := by core033_kernel_decide
theorem rows5426 : actualRows5426=WordField.canonicalRows actualModulus 5426 (.shr 5425 31) := by core033_kernel_decide
theorem stats5426 : actualRows5426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5426=2892 := by core033_kernel_decide
theorem rows5427 : actualRows5427=WordField.canonicalRows actualModulus 5427 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5427 : actualRows5427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5427=2892 := by core033_kernel_decide
theorem rows5428 : actualRows5428=WordField.canonicalRows actualModulus 5428 (.bxor 5426 5427) := by core033_kernel_decide
theorem stats5428 : actualRows5428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5428=7428 := by core033_kernel_decide
theorem rows5429 : actualRows5429=WordField.canonicalRows actualModulus 5429 (.bnot 5428) := by core033_kernel_decide
theorem stats5429 : actualRows5429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5429=6276 := by core033_kernel_decide
theorem rows5430 : actualRows5430=WordField.canonicalRows actualModulus 5430 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5430 : actualRows5430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5430=2892 := by core033_kernel_decide
theorem rows5431 : actualRows5431=WordField.canonicalRows actualModulus 5431 (.badd 5429 5430) := by core033_kernel_decide
theorem stats5431 : actualRows5431.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5431=5388 := by core033_kernel_decide
theorem rows5432 : actualRows5432=WordField.canonicalRows actualModulus 5432 (.band 5431 2160) := by core033_kernel_decide
theorem stats5432 : actualRows5432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5432=5124 := by core033_kernel_decide
theorem rows5433 : actualRows5433=WordField.canonicalRows actualModulus 5433 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5433 : actualRows5433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5433=2892 := by core033_kernel_decide
theorem rows5434 : actualRows5434=WordField.canonicalRows actualModulus 5434 (.bxor 616 5433) := by core033_kernel_decide
theorem stats5434 : actualRows5434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5434=7428 := by core033_kernel_decide
theorem rows5435 : actualRows5435=WordField.canonicalRows actualModulus 5435 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5435 : actualRows5435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5435=2820 := by core033_kernel_decide
theorem rows5436 : actualRows5436=WordField.canonicalRows actualModulus 5436 (.bnot 5435) := by core033_kernel_decide
theorem stats5436 : actualRows5436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5436=6276 := by core033_kernel_decide
theorem rows5437 : actualRows5437=WordField.canonicalRows actualModulus 5437 (.band 5434 5436) := by core033_kernel_decide
theorem stats5437 : actualRows5437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5437=5124 := by core033_kernel_decide
theorem rows5438 : actualRows5438=WordField.canonicalRows actualModulus 5438 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5438 : actualRows5438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5438=2892 := by core033_kernel_decide
theorem rows5439 : actualRows5439=WordField.canonicalRows actualModulus 5439 (.bxor 616 5438) := by core033_kernel_decide
theorem stats5439 : actualRows5439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5439=7428 := by core033_kernel_decide
theorem rows5440 : actualRows5440=WordField.canonicalRows actualModulus 5440 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5440 : actualRows5440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5440=2820 := by core033_kernel_decide
theorem rows5441 : actualRows5441=WordField.canonicalRows actualModulus 5441 (.bnot 5440) := by core033_kernel_decide
theorem stats5441 : actualRows5441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5441=6276 := by core033_kernel_decide
theorem rows5442 : actualRows5442=WordField.canonicalRows actualModulus 5442 (.bxor 5439 5441) := by core033_kernel_decide
theorem stats5442 : actualRows5442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5442=7428 := by core033_kernel_decide
theorem rows5443 : actualRows5443=WordField.canonicalRows actualModulus 5443 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5443 : actualRows5443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5443=2892 := by core033_kernel_decide
theorem rows5444 : actualRows5444=WordField.canonicalRows actualModulus 5444 (.bxor 616 5443) := by core033_kernel_decide
theorem stats5444 : actualRows5444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5444=7428 := by core033_kernel_decide
theorem rows5445 : actualRows5445=WordField.canonicalRows actualModulus 5445 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5445 : actualRows5445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5445=2820 := by core033_kernel_decide
theorem rows5446 : actualRows5446=WordField.canonicalRows actualModulus 5446 (.bnot 5445) := by core033_kernel_decide
theorem stats5446 : actualRows5446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5446=6276 := by core033_kernel_decide
theorem rows5447 : actualRows5447=WordField.canonicalRows actualModulus 5447 (.badd 5444 5446) := by core033_kernel_decide
theorem stats5447 : actualRows5447.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5447=5388 := by core033_kernel_decide
theorem rows5448 : actualRows5448=WordField.canonicalRows actualModulus 5448 (.bnot 5447) := by core033_kernel_decide
theorem stats5448 : actualRows5448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5448=6276 := by core033_kernel_decide
theorem rows5449 : actualRows5449=WordField.canonicalRows actualModulus 5449 (.band 5442 5448) := by core033_kernel_decide
theorem stats5449 : actualRows5449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5449=5124 := by core033_kernel_decide
theorem rows5450 : actualRows5450=WordField.canonicalRows actualModulus 5450 (.bxor 5437 5449) := by core033_kernel_decide
theorem stats5450 : actualRows5450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5450=7428 := by core033_kernel_decide
theorem rows5451 : actualRows5451=WordField.canonicalRows actualModulus 5451 (.shr 5450 31) := by core033_kernel_decide
theorem stats5451 : actualRows5451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5451=2892 := by core033_kernel_decide
theorem rows5452 : actualRows5452=WordField.canonicalRows actualModulus 5452 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5452 : actualRows5452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5452=2892 := by core033_kernel_decide
theorem rows5453 : actualRows5453=WordField.canonicalRows actualModulus 5453 (.bxor 5451 5452) := by core033_kernel_decide
theorem stats5453 : actualRows5453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5453=7428 := by core033_kernel_decide
theorem rows5454 : actualRows5454=WordField.canonicalRows actualModulus 5454 (.bnot 5453) := by core033_kernel_decide
theorem stats5454 : actualRows5454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5454=6276 := by core033_kernel_decide
theorem rows5455 : actualRows5455=WordField.canonicalRows actualModulus 5455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5455 : actualRows5455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5455=2892 := by core033_kernel_decide
theorem rows5456 : actualRows5456=WordField.canonicalRows actualModulus 5456 (.badd 5454 5455) := by core033_kernel_decide
theorem stats5456 : actualRows5456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5456=5388 := by core033_kernel_decide
theorem rows5457 : actualRows5457=WordField.canonicalRows actualModulus 5457 (.bnot 5456) := by core033_kernel_decide
theorem stats5457 : actualRows5457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5457=6276 := by core033_kernel_decide
theorem rows5458 : actualRows5458=WordField.canonicalRows actualModulus 5458 (.band 5457 1968) := by core033_kernel_decide
theorem stats5458 : actualRows5458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5458=5124 := by core033_kernel_decide
theorem rows5459 : actualRows5459=WordField.canonicalRows actualModulus 5459 (.bxor 5432 5458) := by core033_kernel_decide
theorem stats5459 : actualRows5459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5459=7428 := by core033_kernel_decide
theorem rows5460 : actualRows5460=WordField.canonicalRows actualModulus 5460 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5460 : actualRows5460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5460=2892 := by core033_kernel_decide
theorem rows5461 : actualRows5461=WordField.canonicalRows actualModulus 5461 (.bxor 616 5460) := by core033_kernel_decide
theorem stats5461 : actualRows5461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5461=7428 := by core033_kernel_decide
theorem rows5462 : actualRows5462=WordField.canonicalRows actualModulus 5462 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5462 : actualRows5462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5462=2820 := by core033_kernel_decide
theorem rows5463 : actualRows5463=WordField.canonicalRows actualModulus 5463 (.bnot 5462) := by core033_kernel_decide
theorem stats5463 : actualRows5463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5463=6276 := by core033_kernel_decide
theorem rows5464 : actualRows5464=WordField.canonicalRows actualModulus 5464 (.band 5461 5463) := by core033_kernel_decide
theorem stats5464 : actualRows5464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5464=5124 := by core033_kernel_decide
theorem rows5465 : actualRows5465=WordField.canonicalRows actualModulus 5465 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5465 : actualRows5465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5465=2892 := by core033_kernel_decide
theorem rows5466 : actualRows5466=WordField.canonicalRows actualModulus 5466 (.bxor 616 5465) := by core033_kernel_decide
theorem stats5466 : actualRows5466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5466=7428 := by core033_kernel_decide
theorem rows5467 : actualRows5467=WordField.canonicalRows actualModulus 5467 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5467 : actualRows5467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5467=2820 := by core033_kernel_decide
theorem rows5468 : actualRows5468=WordField.canonicalRows actualModulus 5468 (.bnot 5467) := by core033_kernel_decide
theorem stats5468 : actualRows5468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5468=6276 := by core033_kernel_decide
theorem rows5469 : actualRows5469=WordField.canonicalRows actualModulus 5469 (.bxor 5466 5468) := by core033_kernel_decide
theorem stats5469 : actualRows5469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5469=7428 := by core033_kernel_decide
theorem rows5470 : actualRows5470=WordField.canonicalRows actualModulus 5470 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5470 : actualRows5470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5470=2892 := by core033_kernel_decide
theorem rows5471 : actualRows5471=WordField.canonicalRows actualModulus 5471 (.bxor 616 5470) := by core033_kernel_decide
theorem stats5471 : actualRows5471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5471=7428 := by core033_kernel_decide
def partRows83 : List R1CS.Row := actualRows5408++actualRows5409++actualRows5410++actualRows5411++actualRows5412++actualRows5413++actualRows5414++actualRows5415++actualRows5416++actualRows5417++actualRows5418++actualRows5419++actualRows5420++actualRows5421++actualRows5422++actualRows5423++actualRows5424++actualRows5425++actualRows5426++actualRows5427++actualRows5428++actualRows5429++actualRows5430++actualRows5431++actualRows5432++actualRows5433++actualRows5434++actualRows5435++actualRows5436++actualRows5437++actualRows5438++actualRows5439++actualRows5440++actualRows5441++actualRows5442++actualRows5443++actualRows5444++actualRows5445++actualRows5446++actualRows5447++actualRows5448++actualRows5449++actualRows5450++actualRows5451++actualRows5452++actualRows5453++actualRows5454++actualRows5455++actualRows5456++actualRows5457++actualRows5458++actualRows5459++actualRows5460++actualRows5461++actualRows5462++actualRows5463++actualRows5464++actualRows5465++actualRows5466++actualRows5467++actualRows5468++actualRows5469++actualRows5470++actualRows5471
def partOps83 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 616 5408,.literal (BitVec.ofNat 32 0),.bnot 5410,.band 5409 5411,.literal (BitVec.ofNat 32 2),.bxor 616 5413,.literal (BitVec.ofNat 32 0),.bnot 5415,.bxor 5414 5416,.literal (BitVec.ofNat 32 2),.bxor 616 5418,.literal (BitVec.ofNat 32 0),.bnot 5420,.badd 5419 5421,.bnot 5422,.band 5417 5423,.bxor 5412 5424,.shr 5425 31,.literal (BitVec.ofNat 32 1),.bxor 5426 5427,.bnot 5428,.literal (BitVec.ofNat 32 1),.badd 5429 5430,.band 5431 2160,.literal (BitVec.ofNat 32 2),.bxor 616 5433,.literal (BitVec.ofNat 32 0),.bnot 5435,.band 5434 5436,.literal (BitVec.ofNat 32 2),.bxor 616 5438,.literal (BitVec.ofNat 32 0),.bnot 5440,.bxor 5439 5441,.literal (BitVec.ofNat 32 2),.bxor 616 5443,.literal (BitVec.ofNat 32 0),.bnot 5445,.badd 5444 5446,.bnot 5447,.band 5442 5448,.bxor 5437 5449,.shr 5450 31,.literal (BitVec.ofNat 32 1),.bxor 5451 5452,.bnot 5453,.literal (BitVec.ofNat 32 1),.badd 5454 5455,.bnot 5456,.band 5457 1968,.bxor 5432 5458,.literal (BitVec.ofNat 32 2),.bxor 616 5460,.literal (BitVec.ofNat 32 0),.bnot 5462,.band 5461 5463,.literal (BitVec.ofNat 32 2),.bxor 616 5465,.literal (BitVec.ofNat 32 0),.bnot 5467,.bxor 5466 5468,.literal (BitVec.ofNat 32 2),.bxor 616 5470]
theorem partExact83 : partRows83=WordField.rows actualModulus 5408 partOps83 := by
  simp only [partRows83,partOps83,WordField.rows,rows5408,rows5409,rows5410,rows5411,rows5412,rows5413,rows5414,rows5415,rows5416,rows5417,rows5418,rows5419,rows5420,rows5421,rows5422,rows5423,rows5424,rows5425,rows5426,rows5427,rows5428,rows5429,rows5430,rows5431,rows5432,rows5433,rows5434,rows5435,rows5436,rows5437,rows5438,rows5439,rows5440,rows5441,rows5442,rows5443,rows5444,rows5445,rows5446,rows5447,rows5448,rows5449,rows5450,rows5451,rows5452,rows5453,rows5454,rows5455,rows5456,rows5457,rows5458,rows5459,rows5460,rows5461,rows5462,rows5463,rows5464,rows5465,rows5466,rows5467,rows5468,rows5469,rows5470,rows5471,List.append_assoc,List.append_nil]
theorem partLength83 : partOps83.length=64 := by decide
theorem partStats83 : partRows83.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows83=331224 := by
  simp only [partRows83,List.length_append,MatrixRowBlocks.rows_weight_append,stats5408.1,stats5408.2,stats5409.1,stats5409.2,stats5410.1,stats5410.2,stats5411.1,stats5411.2,stats5412.1,stats5412.2,stats5413.1,stats5413.2,stats5414.1,stats5414.2,stats5415.1,stats5415.2,stats5416.1,stats5416.2,stats5417.1,stats5417.2,stats5418.1,stats5418.2,stats5419.1,stats5419.2,stats5420.1,stats5420.2,stats5421.1,stats5421.2,stats5422.1,stats5422.2,stats5423.1,stats5423.2,stats5424.1,stats5424.2,stats5425.1,stats5425.2,stats5426.1,stats5426.2,stats5427.1,stats5427.2,stats5428.1,stats5428.2,stats5429.1,stats5429.2,stats5430.1,stats5430.2,stats5431.1,stats5431.2,stats5432.1,stats5432.2,stats5433.1,stats5433.2,stats5434.1,stats5434.2,stats5435.1,stats5435.2,stats5436.1,stats5436.2,stats5437.1,stats5437.2,stats5438.1,stats5438.2,stats5439.1,stats5439.2,stats5440.1,stats5440.2,stats5441.1,stats5441.2,stats5442.1,stats5442.2,stats5443.1,stats5443.2,stats5444.1,stats5444.2,stats5445.1,stats5445.2,stats5446.1,stats5446.2,stats5447.1,stats5447.2,stats5448.1,stats5448.2,stats5449.1,stats5449.2,stats5450.1,stats5450.2,stats5451.1,stats5451.2,stats5452.1,stats5452.2,stats5453.1,stats5453.2,stats5454.1,stats5454.2,stats5455.1,stats5455.2,stats5456.1,stats5456.2,stats5457.1,stats5457.2,stats5458.1,stats5458.2,stats5459.1,stats5459.2,stats5460.1,stats5460.2,stats5461.1,stats5461.2,stats5462.1,stats5462.2,stats5463.1,stats5463.2,stats5464.1,stats5464.2,stats5465.1,stats5465.2,stats5466.1,stats5466.2,stats5467.1,stats5467.2,stats5468.1,stats5468.2,stats5469.1,stats5469.2,stats5470.1,stats5470.2,stats5471.1,stats5471.2]
  decide
end PairedPathRoundCheckedRows
