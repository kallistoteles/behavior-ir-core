import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData146
import PathRoundDispatchInstructionMatrixData147
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9387 : actualRows9387=WordField.canonicalRows actualModulus 9387 (.bxor 0 9386) := by core033_kernel_decide
theorem stats9387 : actualRows9387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9387=7428 := by core033_kernel_decide
theorem rows9388 : actualRows9388=WordField.canonicalRows actualModulus 9388 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9388 : actualRows9388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9388=2820 := by core033_kernel_decide
theorem rows9389 : actualRows9389=WordField.canonicalRows actualModulus 9389 (.bnot 9388) := by core033_kernel_decide
theorem stats9389 : actualRows9389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9389=6276 := by core033_kernel_decide
theorem rows9390 : actualRows9390=WordField.canonicalRows actualModulus 9390 (.band 9387 9389) := by core033_kernel_decide
theorem stats9390 : actualRows9390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9390=5124 := by core033_kernel_decide
theorem rows9391 : actualRows9391=WordField.canonicalRows actualModulus 9391 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9391 : actualRows9391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9391=2964 := by core033_kernel_decide
theorem rows9392 : actualRows9392=WordField.canonicalRows actualModulus 9392 (.bxor 0 9391) := by core033_kernel_decide
theorem stats9392 : actualRows9392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9392=7428 := by core033_kernel_decide
theorem rows9393 : actualRows9393=WordField.canonicalRows actualModulus 9393 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9393 : actualRows9393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9393=2820 := by core033_kernel_decide
theorem rows9394 : actualRows9394=WordField.canonicalRows actualModulus 9394 (.bnot 9393) := by core033_kernel_decide
theorem stats9394 : actualRows9394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9394=6276 := by core033_kernel_decide
theorem rows9395 : actualRows9395=WordField.canonicalRows actualModulus 9395 (.bxor 9392 9394) := by core033_kernel_decide
theorem stats9395 : actualRows9395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9395=7428 := by core033_kernel_decide
theorem rows9396 : actualRows9396=WordField.canonicalRows actualModulus 9396 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9396 : actualRows9396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9396=2964 := by core033_kernel_decide
theorem rows9397 : actualRows9397=WordField.canonicalRows actualModulus 9397 (.bxor 0 9396) := by core033_kernel_decide
theorem stats9397 : actualRows9397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9397=7428 := by core033_kernel_decide
theorem rows9398 : actualRows9398=WordField.canonicalRows actualModulus 9398 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9398 : actualRows9398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9398=2820 := by core033_kernel_decide
theorem rows9399 : actualRows9399=WordField.canonicalRows actualModulus 9399 (.bnot 9398) := by core033_kernel_decide
theorem stats9399 : actualRows9399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9399=6276 := by core033_kernel_decide
theorem rows9400 : actualRows9400=WordField.canonicalRows actualModulus 9400 (.badd 9397 9399) := by core033_kernel_decide
theorem stats9400 : actualRows9400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9400=5388 := by core033_kernel_decide
theorem rows9401 : actualRows9401=WordField.canonicalRows actualModulus 9401 (.bnot 9400) := by core033_kernel_decide
theorem stats9401 : actualRows9401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9401=6276 := by core033_kernel_decide
theorem rows9402 : actualRows9402=WordField.canonicalRows actualModulus 9402 (.band 9395 9401) := by core033_kernel_decide
theorem stats9402 : actualRows9402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9402=5124 := by core033_kernel_decide
theorem rows9403 : actualRows9403=WordField.canonicalRows actualModulus 9403 (.bxor 9390 9402) := by core033_kernel_decide
theorem stats9403 : actualRows9403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9403=7428 := by core033_kernel_decide
theorem rows9404 : actualRows9404=WordField.canonicalRows actualModulus 9404 (.shr 9403 31) := by core033_kernel_decide
theorem stats9404 : actualRows9404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9404=2892 := by core033_kernel_decide
theorem rows9405 : actualRows9405=WordField.canonicalRows actualModulus 9405 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9405 : actualRows9405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9405=2892 := by core033_kernel_decide
theorem rows9406 : actualRows9406=WordField.canonicalRows actualModulus 9406 (.bxor 9404 9405) := by core033_kernel_decide
theorem stats9406 : actualRows9406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9406=7428 := by core033_kernel_decide
theorem rows9407 : actualRows9407=WordField.canonicalRows actualModulus 9407 (.bnot 9406) := by core033_kernel_decide
theorem stats9407 : actualRows9407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9407=6276 := by core033_kernel_decide
theorem rows9408 : actualRows9408=WordField.canonicalRows actualModulus 9408 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9408 : actualRows9408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9408=2892 := by core033_kernel_decide
theorem rows9409 : actualRows9409=WordField.canonicalRows actualModulus 9409 (.badd 9407 9408) := by core033_kernel_decide
theorem stats9409 : actualRows9409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9409=5388 := by core033_kernel_decide
theorem rows9410 : actualRows9410=WordField.canonicalRows actualModulus 9410 (.band 9409 0) := by core033_kernel_decide
theorem stats9410 : actualRows9410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9410=5124 := by core033_kernel_decide
theorem rows9411 : actualRows9411=WordField.canonicalRows actualModulus 9411 (.bnot 9406) := by core033_kernel_decide
theorem stats9411 : actualRows9411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9411=6276 := by core033_kernel_decide
theorem rows9412 : actualRows9412=WordField.canonicalRows actualModulus 9412 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9412 : actualRows9412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9412=2892 := by core033_kernel_decide
theorem rows9413 : actualRows9413=WordField.canonicalRows actualModulus 9413 (.badd 9411 9412) := by core033_kernel_decide
theorem stats9413 : actualRows9413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9413=5388 := by core033_kernel_decide
theorem rows9414 : actualRows9414=WordField.canonicalRows actualModulus 9414 (.bnot 9413) := by core033_kernel_decide
theorem stats9414 : actualRows9414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9414=6276 := by core033_kernel_decide
theorem rows9415 : actualRows9415=WordField.canonicalRows actualModulus 9415 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9415 : actualRows9415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9415=2964 := by core033_kernel_decide
theorem rows9416 : actualRows9416=WordField.canonicalRows actualModulus 9416 (.band 9414 9415) := by core033_kernel_decide
theorem stats9416 : actualRows9416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9416=5124 := by core033_kernel_decide
theorem rows9417 : actualRows9417=WordField.canonicalRows actualModulus 9417 (.bxor 9410 9416) := by core033_kernel_decide
theorem stats9417 : actualRows9417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9417=7428 := by core033_kernel_decide
theorem rows9418 : actualRows9418=WordField.canonicalRows actualModulus 9418 (.bnot 9406) := by core033_kernel_decide
theorem stats9418 : actualRows9418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9418=6276 := by core033_kernel_decide
theorem rows9419 : actualRows9419=WordField.canonicalRows actualModulus 9419 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9419 : actualRows9419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9419=2892 := by core033_kernel_decide
theorem rows9420 : actualRows9420=WordField.canonicalRows actualModulus 9420 (.badd 9418 9419) := by core033_kernel_decide
theorem stats9420 : actualRows9420.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9420=5388 := by core033_kernel_decide
theorem rows9421 : actualRows9421=WordField.canonicalRows actualModulus 9421 (.band 9420 1) := by core033_kernel_decide
theorem stats9421 : actualRows9421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9421=5124 := by core033_kernel_decide
theorem rows9422 : actualRows9422=WordField.canonicalRows actualModulus 9422 (.bnot 9406) := by core033_kernel_decide
theorem stats9422 : actualRows9422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9422=6276 := by core033_kernel_decide
theorem rows9423 : actualRows9423=WordField.canonicalRows actualModulus 9423 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9423 : actualRows9423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9423=2892 := by core033_kernel_decide
theorem rows9424 : actualRows9424=WordField.canonicalRows actualModulus 9424 (.badd 9422 9423) := by core033_kernel_decide
theorem stats9424 : actualRows9424.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9424=5388 := by core033_kernel_decide
theorem rows9425 : actualRows9425=WordField.canonicalRows actualModulus 9425 (.bnot 9424) := by core033_kernel_decide
theorem stats9425 : actualRows9425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9425=6276 := by core033_kernel_decide
theorem rows9426 : actualRows9426=WordField.canonicalRows actualModulus 9426 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9426 : actualRows9426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9426=2892 := by core033_kernel_decide
theorem rows9427 : actualRows9427=WordField.canonicalRows actualModulus 9427 (.band 9425 9426) := by core033_kernel_decide
theorem stats9427 : actualRows9427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9427=5124 := by core033_kernel_decide
theorem rows9428 : actualRows9428=WordField.canonicalRows actualModulus 9428 (.bxor 9421 9427) := by core033_kernel_decide
theorem stats9428 : actualRows9428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9428=7428 := by core033_kernel_decide
theorem rows9429 : actualRows9429=WordField.canonicalRows actualModulus 9429 (.bnot 9406) := by core033_kernel_decide
theorem stats9429 : actualRows9429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9429=6276 := by core033_kernel_decide
theorem rows9430 : actualRows9430=WordField.canonicalRows actualModulus 9430 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9430 : actualRows9430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9430=2892 := by core033_kernel_decide
theorem rows9431 : actualRows9431=WordField.canonicalRows actualModulus 9431 (.badd 9429 9430) := by core033_kernel_decide
theorem stats9431 : actualRows9431.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9431=5388 := by core033_kernel_decide
theorem rows9432 : actualRows9432=WordField.canonicalRows actualModulus 9432 (.band 9431 2) := by core033_kernel_decide
theorem stats9432 : actualRows9432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9432=5124 := by core033_kernel_decide
theorem rows9433 : actualRows9433=WordField.canonicalRows actualModulus 9433 (.bnot 9406) := by core033_kernel_decide
theorem stats9433 : actualRows9433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9433=6276 := by core033_kernel_decide
theorem rows9434 : actualRows9434=WordField.canonicalRows actualModulus 9434 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9434 : actualRows9434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9434=2892 := by core033_kernel_decide
theorem rows9435 : actualRows9435=WordField.canonicalRows actualModulus 9435 (.badd 9433 9434) := by core033_kernel_decide
theorem stats9435 : actualRows9435.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9435=5388 := by core033_kernel_decide
theorem rows9436 : actualRows9436=WordField.canonicalRows actualModulus 9436 (.bnot 9435) := by core033_kernel_decide
theorem stats9436 : actualRows9436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9436=6276 := by core033_kernel_decide
theorem rows9437 : actualRows9437=WordField.canonicalRows actualModulus 9437 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9437 : actualRows9437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9437=2820 := by core033_kernel_decide
theorem rows9438 : actualRows9438=WordField.canonicalRows actualModulus 9438 (.band 9436 9437) := by core033_kernel_decide
theorem stats9438 : actualRows9438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9438=5124 := by core033_kernel_decide
theorem rows9439 : actualRows9439=WordField.canonicalRows actualModulus 9439 (.bxor 9432 9438) := by core033_kernel_decide
theorem stats9439 : actualRows9439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9439=7428 := by core033_kernel_decide
theorem rows9440 : actualRows9440=WordField.canonicalRows actualModulus 9440 (.bnot 9406) := by core033_kernel_decide
theorem stats9440 : actualRows9440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9440=6276 := by core033_kernel_decide
theorem rows9441 : actualRows9441=WordField.canonicalRows actualModulus 9441 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9441 : actualRows9441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9441=2892 := by core033_kernel_decide
theorem rows9442 : actualRows9442=WordField.canonicalRows actualModulus 9442 (.badd 9440 9441) := by core033_kernel_decide
theorem stats9442 : actualRows9442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9442=5388 := by core033_kernel_decide
theorem rows9443 : actualRows9443=WordField.canonicalRows actualModulus 9443 (.band 9442 3) := by core033_kernel_decide
theorem stats9443 : actualRows9443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9443=5124 := by core033_kernel_decide
theorem rows9444 : actualRows9444=WordField.canonicalRows actualModulus 9444 (.bnot 9406) := by core033_kernel_decide
theorem stats9444 : actualRows9444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9444=6276 := by core033_kernel_decide
theorem rows9445 : actualRows9445=WordField.canonicalRows actualModulus 9445 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9445 : actualRows9445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9445=2892 := by core033_kernel_decide
theorem rows9446 : actualRows9446=WordField.canonicalRows actualModulus 9446 (.badd 9444 9445) := by core033_kernel_decide
theorem stats9446 : actualRows9446.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9446=5388 := by core033_kernel_decide
theorem rows9447 : actualRows9447=WordField.canonicalRows actualModulus 9447 (.bnot 9446) := by core033_kernel_decide
theorem stats9447 : actualRows9447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9447=6276 := by core033_kernel_decide
theorem rows9448 : actualRows9448=WordField.canonicalRows actualModulus 9448 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9448 : actualRows9448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9448=2820 := by core033_kernel_decide
theorem rows9449 : actualRows9449=WordField.canonicalRows actualModulus 9449 (.band 9447 9448) := by core033_kernel_decide
theorem stats9449 : actualRows9449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9449=5124 := by core033_kernel_decide
theorem rows9450 : actualRows9450=WordField.canonicalRows actualModulus 9450 (.bxor 9443 9449) := by core033_kernel_decide
theorem stats9450 : actualRows9450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9450=7428 := by core033_kernel_decide
def partRows146 : List R1CS.Row := actualRows9387++actualRows9388++actualRows9389++actualRows9390++actualRows9391++actualRows9392++actualRows9393++actualRows9394++actualRows9395++actualRows9396++actualRows9397++actualRows9398++actualRows9399++actualRows9400++actualRows9401++actualRows9402++actualRows9403++actualRows9404++actualRows9405++actualRows9406++actualRows9407++actualRows9408++actualRows9409++actualRows9410++actualRows9411++actualRows9412++actualRows9413++actualRows9414++actualRows9415++actualRows9416++actualRows9417++actualRows9418++actualRows9419++actualRows9420++actualRows9421++actualRows9422++actualRows9423++actualRows9424++actualRows9425++actualRows9426++actualRows9427++actualRows9428++actualRows9429++actualRows9430++actualRows9431++actualRows9432++actualRows9433++actualRows9434++actualRows9435++actualRows9436++actualRows9437++actualRows9438++actualRows9439++actualRows9440++actualRows9441++actualRows9442++actualRows9443++actualRows9444++actualRows9445++actualRows9446++actualRows9447++actualRows9448++actualRows9449++actualRows9450
def partOps146 : List WordIR.Op := [.bxor 0 9386,.literal (BitVec.ofNat 32 0),.bnot 9388,.band 9387 9389,.literal (BitVec.ofNat 32 3),.bxor 0 9391,.literal (BitVec.ofNat 32 0),.bnot 9393,.bxor 9392 9394,.literal (BitVec.ofNat 32 3),.bxor 0 9396,.literal (BitVec.ofNat 32 0),.bnot 9398,.badd 9397 9399,.bnot 9400,.band 9395 9401,.bxor 9390 9402,.shr 9403 31,.literal (BitVec.ofNat 32 1),.bxor 9404 9405,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9407 9408,.band 9409 0,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9411 9412,.bnot 9413,.literal (BitVec.ofNat 32 3),.band 9414 9415,.bxor 9410 9416,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9418 9419,.band 9420 1,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9422 9423,.bnot 9424,.literal (BitVec.ofNat 32 1),.band 9425 9426,.bxor 9421 9427,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9429 9430,.band 9431 2,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9433 9434,.bnot 9435,.literal (BitVec.ofNat 32 0),.band 9436 9437,.bxor 9432 9438,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9440 9441,.band 9442 3,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9444 9445,.bnot 9446,.literal (BitVec.ofNat 32 0),.band 9447 9448,.bxor 9443 9449]
theorem partExact146 : partRows146=WordField.rows actualModulus 9387 partOps146 := by
  simp only [partRows146,partOps146,WordField.rows,rows9387,rows9388,rows9389,rows9390,rows9391,rows9392,rows9393,rows9394,rows9395,rows9396,rows9397,rows9398,rows9399,rows9400,rows9401,rows9402,rows9403,rows9404,rows9405,rows9406,rows9407,rows9408,rows9409,rows9410,rows9411,rows9412,rows9413,rows9414,rows9415,rows9416,rows9417,rows9418,rows9419,rows9420,rows9421,rows9422,rows9423,rows9424,rows9425,rows9426,rows9427,rows9428,rows9429,rows9430,rows9431,rows9432,rows9433,rows9434,rows9435,rows9436,rows9437,rows9438,rows9439,rows9440,rows9441,rows9442,rows9443,rows9444,rows9445,rows9446,rows9447,rows9448,rows9449,rows9450,List.append_assoc,List.append_nil]
theorem partLength146 : partOps146.length=64 := by decide
theorem partStats146 : partRows146.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows146=329232 := by
  simp only [partRows146,List.length_append,MatrixRowBlocks.rows_weight_append,stats9387.1,stats9387.2,stats9388.1,stats9388.2,stats9389.1,stats9389.2,stats9390.1,stats9390.2,stats9391.1,stats9391.2,stats9392.1,stats9392.2,stats9393.1,stats9393.2,stats9394.1,stats9394.2,stats9395.1,stats9395.2,stats9396.1,stats9396.2,stats9397.1,stats9397.2,stats9398.1,stats9398.2,stats9399.1,stats9399.2,stats9400.1,stats9400.2,stats9401.1,stats9401.2,stats9402.1,stats9402.2,stats9403.1,stats9403.2,stats9404.1,stats9404.2,stats9405.1,stats9405.2,stats9406.1,stats9406.2,stats9407.1,stats9407.2,stats9408.1,stats9408.2,stats9409.1,stats9409.2,stats9410.1,stats9410.2,stats9411.1,stats9411.2,stats9412.1,stats9412.2,stats9413.1,stats9413.2,stats9414.1,stats9414.2,stats9415.1,stats9415.2,stats9416.1,stats9416.2,stats9417.1,stats9417.2,stats9418.1,stats9418.2,stats9419.1,stats9419.2,stats9420.1,stats9420.2,stats9421.1,stats9421.2,stats9422.1,stats9422.2,stats9423.1,stats9423.2,stats9424.1,stats9424.2,stats9425.1,stats9425.2,stats9426.1,stats9426.2,stats9427.1,stats9427.2,stats9428.1,stats9428.2,stats9429.1,stats9429.2,stats9430.1,stats9430.2,stats9431.1,stats9431.2,stats9432.1,stats9432.2,stats9433.1,stats9433.2,stats9434.1,stats9434.2,stats9435.1,stats9435.2,stats9436.1,stats9436.2,stats9437.1,stats9437.2,stats9438.1,stats9438.2,stats9439.1,stats9439.2,stats9440.1,stats9440.2,stats9441.1,stats9441.2,stats9442.1,stats9442.2,stats9443.1,stats9443.2,stats9444.1,stats9444.2,stats9445.1,stats9445.2,stats9446.1,stats9446.2,stats9447.1,stats9447.2,stats9448.1,stats9448.2,stats9449.1,stats9449.2,stats9450.1,stats9450.2]
  decide
end PathRoundDispatchCheckedRows
