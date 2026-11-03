import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData131
import PairedPathRoundInstructionMatrixData132
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8416 : actualRows8416=WordField.canonicalRows actualModulus 8416 (.band 8395 8368) := by core033_kernel_decide
theorem stats8416 : actualRows8416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8416=5124 := by core033_kernel_decide
theorem rows8417 : actualRows8417=WordField.canonicalRows actualModulus 8417 (.band 8395 8341) := by core033_kernel_decide
theorem stats8417 : actualRows8417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8417=5124 := by core033_kernel_decide
theorem rows8418 : actualRows8418=WordField.canonicalRows actualModulus 8418 (.bxor 8416 8417) := by core033_kernel_decide
theorem stats8418 : actualRows8418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8418=7428 := by core033_kernel_decide
theorem rows8419 : actualRows8419=WordField.canonicalRows actualModulus 8419 (.band 8368 8341) := by core033_kernel_decide
theorem stats8419 : actualRows8419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8419=5124 := by core033_kernel_decide
theorem rows8420 : actualRows8420=WordField.canonicalRows actualModulus 8420 (.bxor 8418 8419) := by core033_kernel_decide
theorem stats8420 : actualRows8420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8420=7428 := by core033_kernel_decide
theorem rows8421 : actualRows8421=WordField.canonicalRows actualModulus 8421 (.badd 8415 8420) := by core033_kernel_decide
theorem stats8421 : actualRows8421.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8421=5388 := by core033_kernel_decide
theorem rows8422 : actualRows8422=WordField.canonicalRows actualModulus 8422 (.badd 8410 8421) := by core033_kernel_decide
theorem stats8422 : actualRows8422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8422=5388 := by core033_kernel_decide
theorem rows8423 : actualRows8423=WordField.canonicalRows actualModulus 8423 (.badd 8314 8410) := by core033_kernel_decide
theorem stats8423 : actualRows8423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8423=5388 := by core033_kernel_decide
theorem rows8424 : actualRows8424=WordField.canonicalRows actualModulus 8424 (.rotr 8423 6) := by core033_kernel_decide
theorem stats8424 : actualRows8424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8424=5124 := by core033_kernel_decide
theorem rows8425 : actualRows8425=WordField.canonicalRows actualModulus 8425 (.rotr 8423 11) := by core033_kernel_decide
theorem stats8425 : actualRows8425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8425=5124 := by core033_kernel_decide
theorem rows8426 : actualRows8426=WordField.canonicalRows actualModulus 8426 (.bxor 8424 8425) := by core033_kernel_decide
theorem stats8426 : actualRows8426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8426=7428 := by core033_kernel_decide
theorem rows8427 : actualRows8427=WordField.canonicalRows actualModulus 8427 (.rotr 8423 25) := by core033_kernel_decide
theorem stats8427 : actualRows8427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8427=5124 := by core033_kernel_decide
theorem rows8428 : actualRows8428=WordField.canonicalRows actualModulus 8428 (.bxor 8426 8427) := by core033_kernel_decide
theorem stats8428 : actualRows8428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8428=7428 := by core033_kernel_decide
theorem rows8429 : actualRows8429=WordField.canonicalRows actualModulus 8429 (.badd 8342 8428) := by core033_kernel_decide
theorem stats8429 : actualRows8429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8429=5388 := by core033_kernel_decide
theorem rows8430 : actualRows8430=WordField.canonicalRows actualModulus 8430 (.band 8423 8396) := by core033_kernel_decide
theorem stats8430 : actualRows8430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8430=5124 := by core033_kernel_decide
theorem rows8431 : actualRows8431=WordField.canonicalRows actualModulus 8431 (.bnot 8423) := by core033_kernel_decide
theorem stats8431 : actualRows8431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8431=6276 := by core033_kernel_decide
theorem rows8432 : actualRows8432=WordField.canonicalRows actualModulus 8432 (.band 8431 8369) := by core033_kernel_decide
theorem stats8432 : actualRows8432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8432=5124 := by core033_kernel_decide
theorem rows8433 : actualRows8433=WordField.canonicalRows actualModulus 8433 (.bxor 8430 8432) := by core033_kernel_decide
theorem stats8433 : actualRows8433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8433=7428 := by core033_kernel_decide
theorem rows8434 : actualRows8434=WordField.canonicalRows actualModulus 8434 (.badd 8429 8433) := by core033_kernel_decide
theorem stats8434 : actualRows8434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8434=5388 := by core033_kernel_decide
theorem rows8435 : actualRows8435=WordField.canonicalRows actualModulus 8435 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats8435 : actualRows8435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8435=4116 := by core033_kernel_decide
theorem rows8436 : actualRows8436=WordField.canonicalRows actualModulus 8436 (.badd 8434 8435) := by core033_kernel_decide
theorem stats8436 : actualRows8436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8436=5388 := by core033_kernel_decide
theorem rows8437 : actualRows8437=WordField.canonicalRows actualModulus 8437 (.badd 8436 6284) := by core033_kernel_decide
theorem stats8437 : actualRows8437.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8437=5388 := by core033_kernel_decide
theorem rows8438 : actualRows8438=WordField.canonicalRows actualModulus 8438 (.rotr 8422 2) := by core033_kernel_decide
theorem stats8438 : actualRows8438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8438=5124 := by core033_kernel_decide
theorem rows8439 : actualRows8439=WordField.canonicalRows actualModulus 8439 (.rotr 8422 13) := by core033_kernel_decide
theorem stats8439 : actualRows8439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8439=5124 := by core033_kernel_decide
theorem rows8440 : actualRows8440=WordField.canonicalRows actualModulus 8440 (.bxor 8438 8439) := by core033_kernel_decide
theorem stats8440 : actualRows8440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8440=7428 := by core033_kernel_decide
theorem rows8441 : actualRows8441=WordField.canonicalRows actualModulus 8441 (.rotr 8422 22) := by core033_kernel_decide
theorem stats8441 : actualRows8441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8441=5124 := by core033_kernel_decide
theorem rows8442 : actualRows8442=WordField.canonicalRows actualModulus 8442 (.bxor 8440 8441) := by core033_kernel_decide
theorem stats8442 : actualRows8442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8442=7428 := by core033_kernel_decide
theorem rows8443 : actualRows8443=WordField.canonicalRows actualModulus 8443 (.band 8422 8395) := by core033_kernel_decide
theorem stats8443 : actualRows8443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8443=5124 := by core033_kernel_decide
theorem rows8444 : actualRows8444=WordField.canonicalRows actualModulus 8444 (.band 8422 8368) := by core033_kernel_decide
theorem stats8444 : actualRows8444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8444=5124 := by core033_kernel_decide
theorem rows8445 : actualRows8445=WordField.canonicalRows actualModulus 8445 (.bxor 8443 8444) := by core033_kernel_decide
theorem stats8445 : actualRows8445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8445=7428 := by core033_kernel_decide
theorem rows8446 : actualRows8446=WordField.canonicalRows actualModulus 8446 (.band 8395 8368) := by core033_kernel_decide
theorem stats8446 : actualRows8446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8446=5124 := by core033_kernel_decide
theorem rows8447 : actualRows8447=WordField.canonicalRows actualModulus 8447 (.bxor 8445 8446) := by core033_kernel_decide
theorem stats8447 : actualRows8447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8447=7428 := by core033_kernel_decide
theorem rows8448 : actualRows8448=WordField.canonicalRows actualModulus 8448 (.badd 8442 8447) := by core033_kernel_decide
theorem stats8448 : actualRows8448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8448=5388 := by core033_kernel_decide
theorem rows8449 : actualRows8449=WordField.canonicalRows actualModulus 8449 (.badd 8437 8448) := by core033_kernel_decide
theorem stats8449 : actualRows8449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8449=5388 := by core033_kernel_decide
theorem rows8450 : actualRows8450=WordField.canonicalRows actualModulus 8450 (.badd 8341 8437) := by core033_kernel_decide
theorem stats8450 : actualRows8450.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8450=5388 := by core033_kernel_decide
theorem rows8451 : actualRows8451=WordField.canonicalRows actualModulus 8451 (.rotr 8450 6) := by core033_kernel_decide
theorem stats8451 : actualRows8451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8451=5124 := by core033_kernel_decide
theorem rows8452 : actualRows8452=WordField.canonicalRows actualModulus 8452 (.rotr 8450 11) := by core033_kernel_decide
theorem stats8452 : actualRows8452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8452=5124 := by core033_kernel_decide
theorem rows8453 : actualRows8453=WordField.canonicalRows actualModulus 8453 (.bxor 8451 8452) := by core033_kernel_decide
theorem stats8453 : actualRows8453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8453=7428 := by core033_kernel_decide
theorem rows8454 : actualRows8454=WordField.canonicalRows actualModulus 8454 (.rotr 8450 25) := by core033_kernel_decide
theorem stats8454 : actualRows8454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8454=5124 := by core033_kernel_decide
theorem rows8455 : actualRows8455=WordField.canonicalRows actualModulus 8455 (.bxor 8453 8454) := by core033_kernel_decide
theorem stats8455 : actualRows8455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8455=7428 := by core033_kernel_decide
theorem rows8456 : actualRows8456=WordField.canonicalRows actualModulus 8456 (.badd 8369 8455) := by core033_kernel_decide
theorem stats8456 : actualRows8456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8456=5388 := by core033_kernel_decide
theorem rows8457 : actualRows8457=WordField.canonicalRows actualModulus 8457 (.band 8450 8423) := by core033_kernel_decide
theorem stats8457 : actualRows8457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8457=5124 := by core033_kernel_decide
theorem rows8458 : actualRows8458=WordField.canonicalRows actualModulus 8458 (.bnot 8450) := by core033_kernel_decide
theorem stats8458 : actualRows8458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8458=6276 := by core033_kernel_decide
theorem rows8459 : actualRows8459=WordField.canonicalRows actualModulus 8459 (.band 8458 8396) := by core033_kernel_decide
theorem stats8459 : actualRows8459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8459=5124 := by core033_kernel_decide
theorem rows8460 : actualRows8460=WordField.canonicalRows actualModulus 8460 (.bxor 8457 8459) := by core033_kernel_decide
theorem stats8460 : actualRows8460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8460=7428 := by core033_kernel_decide
theorem rows8461 : actualRows8461=WordField.canonicalRows actualModulus 8461 (.badd 8456 8460) := by core033_kernel_decide
theorem stats8461 : actualRows8461.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8461=5388 := by core033_kernel_decide
theorem rows8462 : actualRows8462=WordField.canonicalRows actualModulus 8462 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats8462 : actualRows8462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8462=4044 := by core033_kernel_decide
theorem rows8463 : actualRows8463=WordField.canonicalRows actualModulus 8463 (.badd 8461 8462) := by core033_kernel_decide
theorem stats8463 : actualRows8463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8463=5388 := by core033_kernel_decide
theorem rows8464 : actualRows8464=WordField.canonicalRows actualModulus 8464 (.badd 8463 6290) := by core033_kernel_decide
theorem stats8464 : actualRows8464.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8464=5388 := by core033_kernel_decide
theorem rows8465 : actualRows8465=WordField.canonicalRows actualModulus 8465 (.rotr 8449 2) := by core033_kernel_decide
theorem stats8465 : actualRows8465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8465=5124 := by core033_kernel_decide
theorem rows8466 : actualRows8466=WordField.canonicalRows actualModulus 8466 (.rotr 8449 13) := by core033_kernel_decide
theorem stats8466 : actualRows8466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8466=5124 := by core033_kernel_decide
theorem rows8467 : actualRows8467=WordField.canonicalRows actualModulus 8467 (.bxor 8465 8466) := by core033_kernel_decide
theorem stats8467 : actualRows8467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8467=7428 := by core033_kernel_decide
theorem rows8468 : actualRows8468=WordField.canonicalRows actualModulus 8468 (.rotr 8449 22) := by core033_kernel_decide
theorem stats8468 : actualRows8468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8468=5124 := by core033_kernel_decide
theorem rows8469 : actualRows8469=WordField.canonicalRows actualModulus 8469 (.bxor 8467 8468) := by core033_kernel_decide
theorem stats8469 : actualRows8469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8469=7428 := by core033_kernel_decide
theorem rows8470 : actualRows8470=WordField.canonicalRows actualModulus 8470 (.band 8449 8422) := by core033_kernel_decide
theorem stats8470 : actualRows8470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8470=5124 := by core033_kernel_decide
theorem rows8471 : actualRows8471=WordField.canonicalRows actualModulus 8471 (.band 8449 8395) := by core033_kernel_decide
theorem stats8471 : actualRows8471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8471=5124 := by core033_kernel_decide
theorem rows8472 : actualRows8472=WordField.canonicalRows actualModulus 8472 (.bxor 8470 8471) := by core033_kernel_decide
theorem stats8472 : actualRows8472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8472=7428 := by core033_kernel_decide
theorem rows8473 : actualRows8473=WordField.canonicalRows actualModulus 8473 (.band 8422 8395) := by core033_kernel_decide
theorem stats8473 : actualRows8473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8473=5124 := by core033_kernel_decide
theorem rows8474 : actualRows8474=WordField.canonicalRows actualModulus 8474 (.bxor 8472 8473) := by core033_kernel_decide
theorem stats8474 : actualRows8474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8474=7428 := by core033_kernel_decide
theorem rows8475 : actualRows8475=WordField.canonicalRows actualModulus 8475 (.badd 8469 8474) := by core033_kernel_decide
theorem stats8475 : actualRows8475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8475=5388 := by core033_kernel_decide
theorem rows8476 : actualRows8476=WordField.canonicalRows actualModulus 8476 (.badd 8464 8475) := by core033_kernel_decide
theorem stats8476 : actualRows8476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8476=5388 := by core033_kernel_decide
theorem rows8477 : actualRows8477=WordField.canonicalRows actualModulus 8477 (.badd 8368 8464) := by core033_kernel_decide
theorem stats8477 : actualRows8477.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8477=5388 := by core033_kernel_decide
theorem rows8478 : actualRows8478=WordField.canonicalRows actualModulus 8478 (.rotr 8477 6) := by core033_kernel_decide
theorem stats8478 : actualRows8478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8478=5124 := by core033_kernel_decide
theorem rows8479 : actualRows8479=WordField.canonicalRows actualModulus 8479 (.rotr 8477 11) := by core033_kernel_decide
theorem stats8479 : actualRows8479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8479=5124 := by core033_kernel_decide
def partRows130 : List R1CS.Row := actualRows8416++actualRows8417++actualRows8418++actualRows8419++actualRows8420++actualRows8421++actualRows8422++actualRows8423++actualRows8424++actualRows8425++actualRows8426++actualRows8427++actualRows8428++actualRows8429++actualRows8430++actualRows8431++actualRows8432++actualRows8433++actualRows8434++actualRows8435++actualRows8436++actualRows8437++actualRows8438++actualRows8439++actualRows8440++actualRows8441++actualRows8442++actualRows8443++actualRows8444++actualRows8445++actualRows8446++actualRows8447++actualRows8448++actualRows8449++actualRows8450++actualRows8451++actualRows8452++actualRows8453++actualRows8454++actualRows8455++actualRows8456++actualRows8457++actualRows8458++actualRows8459++actualRows8460++actualRows8461++actualRows8462++actualRows8463++actualRows8464++actualRows8465++actualRows8466++actualRows8467++actualRows8468++actualRows8469++actualRows8470++actualRows8471++actualRows8472++actualRows8473++actualRows8474++actualRows8475++actualRows8476++actualRows8477++actualRows8478++actualRows8479
def partOps130 : List WordIR.Op := [.band 8395 8368,.band 8395 8341,.bxor 8416 8417,.band 8368 8341,.bxor 8418 8419,.badd 8415 8420,.badd 8410 8421,.badd 8314 8410,.rotr 8423 6,.rotr 8423 11,.bxor 8424 8425,.rotr 8423 25,.bxor 8426 8427,.badd 8342 8428,.band 8423 8396,.bnot 8423,.band 8431 8369,.bxor 8430 8432,.badd 8429 8433,.literal (BitVec.ofNat 32 2162078206),.badd 8434 8435,.badd 8436 6284,.rotr 8422 2,.rotr 8422 13,.bxor 8438 8439,.rotr 8422 22,.bxor 8440 8441,.band 8422 8395,.band 8422 8368,.bxor 8443 8444,.band 8395 8368,.bxor 8445 8446,.badd 8442 8447,.badd 8437 8448,.badd 8341 8437,.rotr 8450 6,.rotr 8450 11,.bxor 8451 8452,.rotr 8450 25,.bxor 8453 8454,.badd 8369 8455,.band 8450 8423,.bnot 8450,.band 8458 8396,.bxor 8457 8459,.badd 8456 8460,.literal (BitVec.ofNat 32 2614888103),.badd 8461 8462,.badd 8463 6290,.rotr 8449 2,.rotr 8449 13,.bxor 8465 8466,.rotr 8449 22,.bxor 8467 8468,.band 8449 8422,.band 8449 8395,.bxor 8470 8471,.band 8422 8395,.bxor 8472 8473,.badd 8469 8474,.badd 8464 8475,.badd 8368 8464,.rotr 8477 6,.rotr 8477 11]
theorem partExact130 : partRows130=WordField.rows actualModulus 8416 partOps130 := by
  simp only [partRows130,partOps130,WordField.rows,rows8416,rows8417,rows8418,rows8419,rows8420,rows8421,rows8422,rows8423,rows8424,rows8425,rows8426,rows8427,rows8428,rows8429,rows8430,rows8431,rows8432,rows8433,rows8434,rows8435,rows8436,rows8437,rows8438,rows8439,rows8440,rows8441,rows8442,rows8443,rows8444,rows8445,rows8446,rows8447,rows8448,rows8449,rows8450,rows8451,rows8452,rows8453,rows8454,rows8455,rows8456,rows8457,rows8458,rows8459,rows8460,rows8461,rows8462,rows8463,rows8464,rows8465,rows8466,rows8467,rows8468,rows8469,rows8470,rows8471,rows8472,rows8473,rows8474,rows8475,rows8476,rows8477,rows8478,rows8479,List.append_assoc,List.append_nil]
theorem partLength130 : partOps130.length=64 := by decide
theorem partStats130 : partRows130.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows130=369504 := by
  simp only [partRows130,List.length_append,MatrixRowBlocks.rows_weight_append,stats8416.1,stats8416.2,stats8417.1,stats8417.2,stats8418.1,stats8418.2,stats8419.1,stats8419.2,stats8420.1,stats8420.2,stats8421.1,stats8421.2,stats8422.1,stats8422.2,stats8423.1,stats8423.2,stats8424.1,stats8424.2,stats8425.1,stats8425.2,stats8426.1,stats8426.2,stats8427.1,stats8427.2,stats8428.1,stats8428.2,stats8429.1,stats8429.2,stats8430.1,stats8430.2,stats8431.1,stats8431.2,stats8432.1,stats8432.2,stats8433.1,stats8433.2,stats8434.1,stats8434.2,stats8435.1,stats8435.2,stats8436.1,stats8436.2,stats8437.1,stats8437.2,stats8438.1,stats8438.2,stats8439.1,stats8439.2,stats8440.1,stats8440.2,stats8441.1,stats8441.2,stats8442.1,stats8442.2,stats8443.1,stats8443.2,stats8444.1,stats8444.2,stats8445.1,stats8445.2,stats8446.1,stats8446.2,stats8447.1,stats8447.2,stats8448.1,stats8448.2,stats8449.1,stats8449.2,stats8450.1,stats8450.2,stats8451.1,stats8451.2,stats8452.1,stats8452.2,stats8453.1,stats8453.2,stats8454.1,stats8454.2,stats8455.1,stats8455.2,stats8456.1,stats8456.2,stats8457.1,stats8457.2,stats8458.1,stats8458.2,stats8459.1,stats8459.2,stats8460.1,stats8460.2,stats8461.1,stats8461.2,stats8462.1,stats8462.2,stats8463.1,stats8463.2,stats8464.1,stats8464.2,stats8465.1,stats8465.2,stats8466.1,stats8466.2,stats8467.1,stats8467.2,stats8468.1,stats8468.2,stats8469.1,stats8469.2,stats8470.1,stats8470.2,stats8471.1,stats8471.2,stats8472.1,stats8472.2,stats8473.1,stats8473.2,stats8474.1,stats8474.2,stats8475.1,stats8475.2,stats8476.1,stats8476.2,stats8477.1,stats8477.2,stats8478.1,stats8478.2,stats8479.1,stats8479.2]
  decide
end QuotedPairedPathRoundCheckedRows
