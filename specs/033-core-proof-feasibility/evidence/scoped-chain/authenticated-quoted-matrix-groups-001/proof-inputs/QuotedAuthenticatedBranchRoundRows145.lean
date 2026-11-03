import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData146
import AuthenticatedBranchRoundInstructionMatrixData147
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9398 : actualRows9398=WordField.canonicalRows actualModulus 9398 (.bxor 9396 9397) := by core033_kernel_decide
theorem stats9398 : actualRows9398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9398=7428 := by core033_kernel_decide
theorem rows9399 : actualRows9399=WordField.canonicalRows actualModulus 9399 (.band 9348 9321) := by core033_kernel_decide
theorem stats9399 : actualRows9399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9399=5124 := by core033_kernel_decide
theorem rows9400 : actualRows9400=WordField.canonicalRows actualModulus 9400 (.bxor 9398 9399) := by core033_kernel_decide
theorem stats9400 : actualRows9400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9400=7428 := by core033_kernel_decide
theorem rows9401 : actualRows9401=WordField.canonicalRows actualModulus 9401 (.badd 9395 9400) := by core033_kernel_decide
theorem stats9401 : actualRows9401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9401=5388 := by core033_kernel_decide
theorem rows9402 : actualRows9402=WordField.canonicalRows actualModulus 9402 (.badd 9390 9401) := by core033_kernel_decide
theorem stats9402 : actualRows9402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9402=5388 := by core033_kernel_decide
theorem rows9403 : actualRows9403=WordField.canonicalRows actualModulus 9403 (.badd 9294 9390) := by core033_kernel_decide
theorem stats9403 : actualRows9403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9403=5388 := by core033_kernel_decide
theorem rows9404 : actualRows9404=WordField.canonicalRows actualModulus 9404 (.rotr 9403 6) := by core033_kernel_decide
theorem stats9404 : actualRows9404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9404=5124 := by core033_kernel_decide
theorem rows9405 : actualRows9405=WordField.canonicalRows actualModulus 9405 (.rotr 9403 11) := by core033_kernel_decide
theorem stats9405 : actualRows9405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9405=5124 := by core033_kernel_decide
theorem rows9406 : actualRows9406=WordField.canonicalRows actualModulus 9406 (.bxor 9404 9405) := by core033_kernel_decide
theorem stats9406 : actualRows9406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9406=7428 := by core033_kernel_decide
theorem rows9407 : actualRows9407=WordField.canonicalRows actualModulus 9407 (.rotr 9403 25) := by core033_kernel_decide
theorem stats9407 : actualRows9407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9407=5124 := by core033_kernel_decide
theorem rows9408 : actualRows9408=WordField.canonicalRows actualModulus 9408 (.bxor 9406 9407) := by core033_kernel_decide
theorem stats9408 : actualRows9408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9408=7428 := by core033_kernel_decide
theorem rows9409 : actualRows9409=WordField.canonicalRows actualModulus 9409 (.badd 9322 9408) := by core033_kernel_decide
theorem stats9409 : actualRows9409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9409=5388 := by core033_kernel_decide
theorem rows9410 : actualRows9410=WordField.canonicalRows actualModulus 9410 (.band 9403 9376) := by core033_kernel_decide
theorem stats9410 : actualRows9410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9410=5124 := by core033_kernel_decide
theorem rows9411 : actualRows9411=WordField.canonicalRows actualModulus 9411 (.bnot 9403) := by core033_kernel_decide
theorem stats9411 : actualRows9411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9411=6276 := by core033_kernel_decide
theorem rows9412 : actualRows9412=WordField.canonicalRows actualModulus 9412 (.band 9411 9349) := by core033_kernel_decide
theorem stats9412 : actualRows9412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9412=5124 := by core033_kernel_decide
theorem rows9413 : actualRows9413=WordField.canonicalRows actualModulus 9413 (.bxor 9410 9412) := by core033_kernel_decide
theorem stats9413 : actualRows9413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9413=7428 := by core033_kernel_decide
theorem rows9414 : actualRows9414=WordField.canonicalRows actualModulus 9414 (.badd 9409 9413) := by core033_kernel_decide
theorem stats9414 : actualRows9414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9414=5388 := by core033_kernel_decide
theorem rows9415 : actualRows9415=WordField.canonicalRows actualModulus 9415 (.literal (BitVec.ofNat 32 2554220882)) := by core033_kernel_decide
theorem stats9415 : actualRows9415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9415=3828 := by core033_kernel_decide
theorem rows9416 : actualRows9416=WordField.canonicalRows actualModulus 9416 (.badd 9414 9415) := by core033_kernel_decide
theorem stats9416 : actualRows9416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9416=5388 := by core033_kernel_decide
theorem rows9417 : actualRows9417=WordField.canonicalRows actualModulus 9417 (.badd 9416 8248) := by core033_kernel_decide
theorem stats9417 : actualRows9417.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9417=5388 := by core033_kernel_decide
theorem rows9418 : actualRows9418=WordField.canonicalRows actualModulus 9418 (.rotr 9402 2) := by core033_kernel_decide
theorem stats9418 : actualRows9418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9418=5124 := by core033_kernel_decide
theorem rows9419 : actualRows9419=WordField.canonicalRows actualModulus 9419 (.rotr 9402 13) := by core033_kernel_decide
theorem stats9419 : actualRows9419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9419=5124 := by core033_kernel_decide
theorem rows9420 : actualRows9420=WordField.canonicalRows actualModulus 9420 (.bxor 9418 9419) := by core033_kernel_decide
theorem stats9420 : actualRows9420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9420=7428 := by core033_kernel_decide
theorem rows9421 : actualRows9421=WordField.canonicalRows actualModulus 9421 (.rotr 9402 22) := by core033_kernel_decide
theorem stats9421 : actualRows9421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9421=5124 := by core033_kernel_decide
theorem rows9422 : actualRows9422=WordField.canonicalRows actualModulus 9422 (.bxor 9420 9421) := by core033_kernel_decide
theorem stats9422 : actualRows9422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9422=7428 := by core033_kernel_decide
theorem rows9423 : actualRows9423=WordField.canonicalRows actualModulus 9423 (.band 9402 9375) := by core033_kernel_decide
theorem stats9423 : actualRows9423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9423=5124 := by core033_kernel_decide
theorem rows9424 : actualRows9424=WordField.canonicalRows actualModulus 9424 (.band 9402 9348) := by core033_kernel_decide
theorem stats9424 : actualRows9424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9424=5124 := by core033_kernel_decide
theorem rows9425 : actualRows9425=WordField.canonicalRows actualModulus 9425 (.bxor 9423 9424) := by core033_kernel_decide
theorem stats9425 : actualRows9425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9425=7428 := by core033_kernel_decide
theorem rows9426 : actualRows9426=WordField.canonicalRows actualModulus 9426 (.band 9375 9348) := by core033_kernel_decide
theorem stats9426 : actualRows9426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9426=5124 := by core033_kernel_decide
theorem rows9427 : actualRows9427=WordField.canonicalRows actualModulus 9427 (.bxor 9425 9426) := by core033_kernel_decide
theorem stats9427 : actualRows9427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9427=7428 := by core033_kernel_decide
theorem rows9428 : actualRows9428=WordField.canonicalRows actualModulus 9428 (.badd 9422 9427) := by core033_kernel_decide
theorem stats9428 : actualRows9428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9428=5388 := by core033_kernel_decide
theorem rows9429 : actualRows9429=WordField.canonicalRows actualModulus 9429 (.badd 9417 9428) := by core033_kernel_decide
theorem stats9429 : actualRows9429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9429=5388 := by core033_kernel_decide
theorem rows9430 : actualRows9430=WordField.canonicalRows actualModulus 9430 (.badd 9321 9417) := by core033_kernel_decide
theorem stats9430 : actualRows9430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9430=5388 := by core033_kernel_decide
theorem rows9431 : actualRows9431=WordField.canonicalRows actualModulus 9431 (.rotr 9430 6) := by core033_kernel_decide
theorem stats9431 : actualRows9431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9431=5124 := by core033_kernel_decide
theorem rows9432 : actualRows9432=WordField.canonicalRows actualModulus 9432 (.rotr 9430 11) := by core033_kernel_decide
theorem stats9432 : actualRows9432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9432=5124 := by core033_kernel_decide
theorem rows9433 : actualRows9433=WordField.canonicalRows actualModulus 9433 (.bxor 9431 9432) := by core033_kernel_decide
theorem stats9433 : actualRows9433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9433=7428 := by core033_kernel_decide
theorem rows9434 : actualRows9434=WordField.canonicalRows actualModulus 9434 (.rotr 9430 25) := by core033_kernel_decide
theorem stats9434 : actualRows9434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9434=5124 := by core033_kernel_decide
theorem rows9435 : actualRows9435=WordField.canonicalRows actualModulus 9435 (.bxor 9433 9434) := by core033_kernel_decide
theorem stats9435 : actualRows9435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9435=7428 := by core033_kernel_decide
theorem rows9436 : actualRows9436=WordField.canonicalRows actualModulus 9436 (.badd 9349 9435) := by core033_kernel_decide
theorem stats9436 : actualRows9436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9436=5388 := by core033_kernel_decide
theorem rows9437 : actualRows9437=WordField.canonicalRows actualModulus 9437 (.band 9430 9403) := by core033_kernel_decide
theorem stats9437 : actualRows9437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9437=5124 := by core033_kernel_decide
theorem rows9438 : actualRows9438=WordField.canonicalRows actualModulus 9438 (.bnot 9430) := by core033_kernel_decide
theorem stats9438 : actualRows9438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9438=6276 := by core033_kernel_decide
theorem rows9439 : actualRows9439=WordField.canonicalRows actualModulus 9439 (.band 9438 9376) := by core033_kernel_decide
theorem stats9439 : actualRows9439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9439=5124 := by core033_kernel_decide
theorem rows9440 : actualRows9440=WordField.canonicalRows actualModulus 9440 (.bxor 9437 9439) := by core033_kernel_decide
theorem stats9440 : actualRows9440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9440=7428 := by core033_kernel_decide
theorem rows9441 : actualRows9441=WordField.canonicalRows actualModulus 9441 (.badd 9436 9440) := by core033_kernel_decide
theorem stats9441 : actualRows9441.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9441=5388 := by core033_kernel_decide
theorem rows9442 : actualRows9442=WordField.canonicalRows actualModulus 9442 (.literal (BitVec.ofNat 32 2821834349)) := by core033_kernel_decide
theorem stats9442 : actualRows9442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9442=3900 := by core033_kernel_decide
theorem rows9443 : actualRows9443=WordField.canonicalRows actualModulus 9443 (.badd 9441 9442) := by core033_kernel_decide
theorem stats9443 : actualRows9443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9443=5388 := by core033_kernel_decide
theorem rows9444 : actualRows9444=WordField.canonicalRows actualModulus 9444 (.badd 9443 8261) := by core033_kernel_decide
theorem stats9444 : actualRows9444.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9444=5388 := by core033_kernel_decide
theorem rows9445 : actualRows9445=WordField.canonicalRows actualModulus 9445 (.rotr 9429 2) := by core033_kernel_decide
theorem stats9445 : actualRows9445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9445=5124 := by core033_kernel_decide
theorem rows9446 : actualRows9446=WordField.canonicalRows actualModulus 9446 (.rotr 9429 13) := by core033_kernel_decide
theorem stats9446 : actualRows9446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9446=5124 := by core033_kernel_decide
theorem rows9447 : actualRows9447=WordField.canonicalRows actualModulus 9447 (.bxor 9445 9446) := by core033_kernel_decide
theorem stats9447 : actualRows9447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9447=7428 := by core033_kernel_decide
theorem rows9448 : actualRows9448=WordField.canonicalRows actualModulus 9448 (.rotr 9429 22) := by core033_kernel_decide
theorem stats9448 : actualRows9448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9448=5124 := by core033_kernel_decide
theorem rows9449 : actualRows9449=WordField.canonicalRows actualModulus 9449 (.bxor 9447 9448) := by core033_kernel_decide
theorem stats9449 : actualRows9449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9449=7428 := by core033_kernel_decide
theorem rows9450 : actualRows9450=WordField.canonicalRows actualModulus 9450 (.band 9429 9402) := by core033_kernel_decide
theorem stats9450 : actualRows9450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9450=5124 := by core033_kernel_decide
theorem rows9451 : actualRows9451=WordField.canonicalRows actualModulus 9451 (.band 9429 9375) := by core033_kernel_decide
theorem stats9451 : actualRows9451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9451=5124 := by core033_kernel_decide
theorem rows9452 : actualRows9452=WordField.canonicalRows actualModulus 9452 (.bxor 9450 9451) := by core033_kernel_decide
theorem stats9452 : actualRows9452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9452=7428 := by core033_kernel_decide
theorem rows9453 : actualRows9453=WordField.canonicalRows actualModulus 9453 (.band 9402 9375) := by core033_kernel_decide
theorem stats9453 : actualRows9453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9453=5124 := by core033_kernel_decide
theorem rows9454 : actualRows9454=WordField.canonicalRows actualModulus 9454 (.bxor 9452 9453) := by core033_kernel_decide
theorem stats9454 : actualRows9454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9454=7428 := by core033_kernel_decide
theorem rows9455 : actualRows9455=WordField.canonicalRows actualModulus 9455 (.badd 9449 9454) := by core033_kernel_decide
theorem stats9455 : actualRows9455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9455=5388 := by core033_kernel_decide
theorem rows9456 : actualRows9456=WordField.canonicalRows actualModulus 9456 (.badd 9444 9455) := by core033_kernel_decide
theorem stats9456 : actualRows9456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9456=5388 := by core033_kernel_decide
theorem rows9457 : actualRows9457=WordField.canonicalRows actualModulus 9457 (.badd 9348 9444) := by core033_kernel_decide
theorem stats9457 : actualRows9457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9457=5388 := by core033_kernel_decide
theorem rows9458 : actualRows9458=WordField.canonicalRows actualModulus 9458 (.rotr 9457 6) := by core033_kernel_decide
theorem stats9458 : actualRows9458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9458=5124 := by core033_kernel_decide
theorem rows9459 : actualRows9459=WordField.canonicalRows actualModulus 9459 (.rotr 9457 11) := by core033_kernel_decide
theorem stats9459 : actualRows9459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9459=5124 := by core033_kernel_decide
theorem rows9460 : actualRows9460=WordField.canonicalRows actualModulus 9460 (.bxor 9458 9459) := by core033_kernel_decide
theorem stats9460 : actualRows9460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9460=7428 := by core033_kernel_decide
theorem rows9461 : actualRows9461=WordField.canonicalRows actualModulus 9461 (.rotr 9457 25) := by core033_kernel_decide
theorem stats9461 : actualRows9461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9461=5124 := by core033_kernel_decide
def partRows145 : List R1CS.Row := actualRows9398++actualRows9399++actualRows9400++actualRows9401++actualRows9402++actualRows9403++actualRows9404++actualRows9405++actualRows9406++actualRows9407++actualRows9408++actualRows9409++actualRows9410++actualRows9411++actualRows9412++actualRows9413++actualRows9414++actualRows9415++actualRows9416++actualRows9417++actualRows9418++actualRows9419++actualRows9420++actualRows9421++actualRows9422++actualRows9423++actualRows9424++actualRows9425++actualRows9426++actualRows9427++actualRows9428++actualRows9429++actualRows9430++actualRows9431++actualRows9432++actualRows9433++actualRows9434++actualRows9435++actualRows9436++actualRows9437++actualRows9438++actualRows9439++actualRows9440++actualRows9441++actualRows9442++actualRows9443++actualRows9444++actualRows9445++actualRows9446++actualRows9447++actualRows9448++actualRows9449++actualRows9450++actualRows9451++actualRows9452++actualRows9453++actualRows9454++actualRows9455++actualRows9456++actualRows9457++actualRows9458++actualRows9459++actualRows9460++actualRows9461
def partOps145 : List WordIR.Op := [.bxor 9396 9397,.band 9348 9321,.bxor 9398 9399,.badd 9395 9400,.badd 9390 9401,.badd 9294 9390,.rotr 9403 6,.rotr 9403 11,.bxor 9404 9405,.rotr 9403 25,.bxor 9406 9407,.badd 9322 9408,.band 9403 9376,.bnot 9403,.band 9411 9349,.bxor 9410 9412,.badd 9409 9413,.literal (BitVec.ofNat 32 2554220882),.badd 9414 9415,.badd 9416 8248,.rotr 9402 2,.rotr 9402 13,.bxor 9418 9419,.rotr 9402 22,.bxor 9420 9421,.band 9402 9375,.band 9402 9348,.bxor 9423 9424,.band 9375 9348,.bxor 9425 9426,.badd 9422 9427,.badd 9417 9428,.badd 9321 9417,.rotr 9430 6,.rotr 9430 11,.bxor 9431 9432,.rotr 9430 25,.bxor 9433 9434,.badd 9349 9435,.band 9430 9403,.bnot 9430,.band 9438 9376,.bxor 9437 9439,.badd 9436 9440,.literal (BitVec.ofNat 32 2821834349),.badd 9441 9442,.badd 9443 8261,.rotr 9429 2,.rotr 9429 13,.bxor 9445 9446,.rotr 9429 22,.bxor 9447 9448,.band 9429 9402,.band 9429 9375,.bxor 9450 9451,.band 9402 9375,.bxor 9452 9453,.badd 9449 9454,.badd 9444 9455,.badd 9348 9444,.rotr 9457 6,.rotr 9457 11,.bxor 9458 9459,.rotr 9457 25]
theorem partExact145 : partRows145=WordField.rows actualModulus 9398 partOps145 := by
  simp only [partRows145,partOps145,WordField.rows,rows9398,rows9399,rows9400,rows9401,rows9402,rows9403,rows9404,rows9405,rows9406,rows9407,rows9408,rows9409,rows9410,rows9411,rows9412,rows9413,rows9414,rows9415,rows9416,rows9417,rows9418,rows9419,rows9420,rows9421,rows9422,rows9423,rows9424,rows9425,rows9426,rows9427,rows9428,rows9429,rows9430,rows9431,rows9432,rows9433,rows9434,rows9435,rows9436,rows9437,rows9438,rows9439,rows9440,rows9441,rows9442,rows9443,rows9444,rows9445,rows9446,rows9447,rows9448,rows9449,rows9450,rows9451,rows9452,rows9453,rows9454,rows9455,rows9456,rows9457,rows9458,rows9459,rows9460,rows9461,List.append_assoc,List.append_nil]
theorem partLength145 : partOps145.length=64 := by decide
theorem partStats145 : partRows145.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows145=371376 := by
  simp only [partRows145,List.length_append,MatrixRowBlocks.rows_weight_append,stats9398.1,stats9398.2,stats9399.1,stats9399.2,stats9400.1,stats9400.2,stats9401.1,stats9401.2,stats9402.1,stats9402.2,stats9403.1,stats9403.2,stats9404.1,stats9404.2,stats9405.1,stats9405.2,stats9406.1,stats9406.2,stats9407.1,stats9407.2,stats9408.1,stats9408.2,stats9409.1,stats9409.2,stats9410.1,stats9410.2,stats9411.1,stats9411.2,stats9412.1,stats9412.2,stats9413.1,stats9413.2,stats9414.1,stats9414.2,stats9415.1,stats9415.2,stats9416.1,stats9416.2,stats9417.1,stats9417.2,stats9418.1,stats9418.2,stats9419.1,stats9419.2,stats9420.1,stats9420.2,stats9421.1,stats9421.2,stats9422.1,stats9422.2,stats9423.1,stats9423.2,stats9424.1,stats9424.2,stats9425.1,stats9425.2,stats9426.1,stats9426.2,stats9427.1,stats9427.2,stats9428.1,stats9428.2,stats9429.1,stats9429.2,stats9430.1,stats9430.2,stats9431.1,stats9431.2,stats9432.1,stats9432.2,stats9433.1,stats9433.2,stats9434.1,stats9434.2,stats9435.1,stats9435.2,stats9436.1,stats9436.2,stats9437.1,stats9437.2,stats9438.1,stats9438.2,stats9439.1,stats9439.2,stats9440.1,stats9440.2,stats9441.1,stats9441.2,stats9442.1,stats9442.2,stats9443.1,stats9443.2,stats9444.1,stats9444.2,stats9445.1,stats9445.2,stats9446.1,stats9446.2,stats9447.1,stats9447.2,stats9448.1,stats9448.2,stats9449.1,stats9449.2,stats9450.1,stats9450.2,stats9451.1,stats9451.2,stats9452.1,stats9452.2,stats9453.1,stats9453.2,stats9454.1,stats9454.2,stats9455.1,stats9455.2,stats9456.1,stats9456.2,stats9457.1,stats9457.2,stats9458.1,stats9458.2,stats9459.1,stats9459.2,stats9460.1,stats9460.2,stats9461.1,stats9461.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
