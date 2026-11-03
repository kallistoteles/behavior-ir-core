import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData146
import PairedPathRoundInstructionMatrixData147
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9376 : actualRows9376=WordField.canonicalRows actualModulus 9376 (.bnot 9368) := by core033_kernel_decide
theorem stats9376 : actualRows9376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9376=6276 := by core033_kernel_decide
theorem rows9377 : actualRows9377=WordField.canonicalRows actualModulus 9377 (.band 9376 9314) := by core033_kernel_decide
theorem stats9377 : actualRows9377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9377=5124 := by core033_kernel_decide
theorem rows9378 : actualRows9378=WordField.canonicalRows actualModulus 9378 (.bxor 9375 9377) := by core033_kernel_decide
theorem stats9378 : actualRows9378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9378=7428 := by core033_kernel_decide
theorem rows9379 : actualRows9379=WordField.canonicalRows actualModulus 9379 (.badd 9374 9378) := by core033_kernel_decide
theorem stats9379 : actualRows9379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9379=5388 := by core033_kernel_decide
theorem rows9380 : actualRows9380=WordField.canonicalRows actualModulus 9380 (.literal (BitVec.ofNat 32 430227734)) := by core033_kernel_decide
theorem stats9380 : actualRows9380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9380=3684 := by core033_kernel_decide
theorem rows9381 : actualRows9381=WordField.canonicalRows actualModulus 9381 (.badd 9379 9380) := by core033_kernel_decide
theorem stats9381 : actualRows9381.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9381=5388 := by core033_kernel_decide
theorem rows9382 : actualRows9382=WordField.canonicalRows actualModulus 9382 (.badd 9381 7877) := by core033_kernel_decide
theorem stats9382 : actualRows9382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9382=5388 := by core033_kernel_decide
theorem rows9383 : actualRows9383=WordField.canonicalRows actualModulus 9383 (.rotr 9367 2) := by core033_kernel_decide
theorem stats9383 : actualRows9383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9383=5124 := by core033_kernel_decide
theorem rows9384 : actualRows9384=WordField.canonicalRows actualModulus 9384 (.rotr 9367 13) := by core033_kernel_decide
theorem stats9384 : actualRows9384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9384=5124 := by core033_kernel_decide
theorem rows9385 : actualRows9385=WordField.canonicalRows actualModulus 9385 (.bxor 9383 9384) := by core033_kernel_decide
theorem stats9385 : actualRows9385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9385=7428 := by core033_kernel_decide
theorem rows9386 : actualRows9386=WordField.canonicalRows actualModulus 9386 (.rotr 9367 22) := by core033_kernel_decide
theorem stats9386 : actualRows9386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9386=5124 := by core033_kernel_decide
theorem rows9387 : actualRows9387=WordField.canonicalRows actualModulus 9387 (.bxor 9385 9386) := by core033_kernel_decide
theorem stats9387 : actualRows9387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9387=7428 := by core033_kernel_decide
theorem rows9388 : actualRows9388=WordField.canonicalRows actualModulus 9388 (.band 9367 9340) := by core033_kernel_decide
theorem stats9388 : actualRows9388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9388=5124 := by core033_kernel_decide
theorem rows9389 : actualRows9389=WordField.canonicalRows actualModulus 9389 (.band 9367 9313) := by core033_kernel_decide
theorem stats9389 : actualRows9389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9389=5124 := by core033_kernel_decide
theorem rows9390 : actualRows9390=WordField.canonicalRows actualModulus 9390 (.bxor 9388 9389) := by core033_kernel_decide
theorem stats9390 : actualRows9390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9390=7428 := by core033_kernel_decide
theorem rows9391 : actualRows9391=WordField.canonicalRows actualModulus 9391 (.band 9340 9313) := by core033_kernel_decide
theorem stats9391 : actualRows9391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9391=5124 := by core033_kernel_decide
theorem rows9392 : actualRows9392=WordField.canonicalRows actualModulus 9392 (.bxor 9390 9391) := by core033_kernel_decide
theorem stats9392 : actualRows9392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9392=7428 := by core033_kernel_decide
theorem rows9393 : actualRows9393=WordField.canonicalRows actualModulus 9393 (.badd 9387 9392) := by core033_kernel_decide
theorem stats9393 : actualRows9393.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9393=5388 := by core033_kernel_decide
theorem rows9394 : actualRows9394=WordField.canonicalRows actualModulus 9394 (.badd 9382 9393) := by core033_kernel_decide
theorem stats9394 : actualRows9394.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9394=5388 := by core033_kernel_decide
theorem rows9395 : actualRows9395=WordField.canonicalRows actualModulus 9395 (.badd 9286 9382) := by core033_kernel_decide
theorem stats9395 : actualRows9395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9395=5388 := by core033_kernel_decide
theorem rows9396 : actualRows9396=WordField.canonicalRows actualModulus 9396 (.rotr 9395 6) := by core033_kernel_decide
theorem stats9396 : actualRows9396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9396=5124 := by core033_kernel_decide
theorem rows9397 : actualRows9397=WordField.canonicalRows actualModulus 9397 (.rotr 9395 11) := by core033_kernel_decide
theorem stats9397 : actualRows9397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9397=5124 := by core033_kernel_decide
theorem rows9398 : actualRows9398=WordField.canonicalRows actualModulus 9398 (.bxor 9396 9397) := by core033_kernel_decide
theorem stats9398 : actualRows9398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9398=7428 := by core033_kernel_decide
theorem rows9399 : actualRows9399=WordField.canonicalRows actualModulus 9399 (.rotr 9395 25) := by core033_kernel_decide
theorem stats9399 : actualRows9399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9399=5124 := by core033_kernel_decide
theorem rows9400 : actualRows9400=WordField.canonicalRows actualModulus 9400 (.bxor 9398 9399) := by core033_kernel_decide
theorem stats9400 : actualRows9400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9400=7428 := by core033_kernel_decide
theorem rows9401 : actualRows9401=WordField.canonicalRows actualModulus 9401 (.badd 9314 9400) := by core033_kernel_decide
theorem stats9401 : actualRows9401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9401=5388 := by core033_kernel_decide
theorem rows9402 : actualRows9402=WordField.canonicalRows actualModulus 9402 (.band 9395 9368) := by core033_kernel_decide
theorem stats9402 : actualRows9402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9402=5124 := by core033_kernel_decide
theorem rows9403 : actualRows9403=WordField.canonicalRows actualModulus 9403 (.bnot 9395) := by core033_kernel_decide
theorem stats9403 : actualRows9403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9403=6276 := by core033_kernel_decide
theorem rows9404 : actualRows9404=WordField.canonicalRows actualModulus 9404 (.band 9403 9341) := by core033_kernel_decide
theorem stats9404 : actualRows9404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9404=5124 := by core033_kernel_decide
theorem rows9405 : actualRows9405=WordField.canonicalRows actualModulus 9405 (.bxor 9402 9404) := by core033_kernel_decide
theorem stats9405 : actualRows9405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9405=7428 := by core033_kernel_decide
theorem rows9406 : actualRows9406=WordField.canonicalRows actualModulus 9406 (.badd 9401 9405) := by core033_kernel_decide
theorem stats9406 : actualRows9406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9406=5388 := by core033_kernel_decide
theorem rows9407 : actualRows9407=WordField.canonicalRows actualModulus 9407 (.literal (BitVec.ofNat 32 506948616)) := by core033_kernel_decide
theorem stats9407 : actualRows9407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9407=3828 := by core033_kernel_decide
theorem rows9408 : actualRows9408=WordField.canonicalRows actualModulus 9408 (.badd 9406 9407) := by core033_kernel_decide
theorem stats9408 : actualRows9408.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9408=5388 := by core033_kernel_decide
theorem rows9409 : actualRows9409=WordField.canonicalRows actualModulus 9409 (.badd 9408 7890) := by core033_kernel_decide
theorem stats9409 : actualRows9409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9409=5388 := by core033_kernel_decide
theorem rows9410 : actualRows9410=WordField.canonicalRows actualModulus 9410 (.rotr 9394 2) := by core033_kernel_decide
theorem stats9410 : actualRows9410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9410=5124 := by core033_kernel_decide
theorem rows9411 : actualRows9411=WordField.canonicalRows actualModulus 9411 (.rotr 9394 13) := by core033_kernel_decide
theorem stats9411 : actualRows9411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9411=5124 := by core033_kernel_decide
theorem rows9412 : actualRows9412=WordField.canonicalRows actualModulus 9412 (.bxor 9410 9411) := by core033_kernel_decide
theorem stats9412 : actualRows9412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9412=7428 := by core033_kernel_decide
theorem rows9413 : actualRows9413=WordField.canonicalRows actualModulus 9413 (.rotr 9394 22) := by core033_kernel_decide
theorem stats9413 : actualRows9413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9413=5124 := by core033_kernel_decide
theorem rows9414 : actualRows9414=WordField.canonicalRows actualModulus 9414 (.bxor 9412 9413) := by core033_kernel_decide
theorem stats9414 : actualRows9414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9414=7428 := by core033_kernel_decide
theorem rows9415 : actualRows9415=WordField.canonicalRows actualModulus 9415 (.band 9394 9367) := by core033_kernel_decide
theorem stats9415 : actualRows9415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9415=5124 := by core033_kernel_decide
theorem rows9416 : actualRows9416=WordField.canonicalRows actualModulus 9416 (.band 9394 9340) := by core033_kernel_decide
theorem stats9416 : actualRows9416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9416=5124 := by core033_kernel_decide
theorem rows9417 : actualRows9417=WordField.canonicalRows actualModulus 9417 (.bxor 9415 9416) := by core033_kernel_decide
theorem stats9417 : actualRows9417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9417=7428 := by core033_kernel_decide
theorem rows9418 : actualRows9418=WordField.canonicalRows actualModulus 9418 (.band 9367 9340) := by core033_kernel_decide
theorem stats9418 : actualRows9418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9418=5124 := by core033_kernel_decide
theorem rows9419 : actualRows9419=WordField.canonicalRows actualModulus 9419 (.bxor 9417 9418) := by core033_kernel_decide
theorem stats9419 : actualRows9419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9419=7428 := by core033_kernel_decide
theorem rows9420 : actualRows9420=WordField.canonicalRows actualModulus 9420 (.badd 9414 9419) := by core033_kernel_decide
theorem stats9420 : actualRows9420.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9420=5388 := by core033_kernel_decide
theorem rows9421 : actualRows9421=WordField.canonicalRows actualModulus 9421 (.badd 9409 9420) := by core033_kernel_decide
theorem stats9421 : actualRows9421.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9421=5388 := by core033_kernel_decide
theorem rows9422 : actualRows9422=WordField.canonicalRows actualModulus 9422 (.badd 9313 9409) := by core033_kernel_decide
theorem stats9422 : actualRows9422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9422=5388 := by core033_kernel_decide
theorem rows9423 : actualRows9423=WordField.canonicalRows actualModulus 9423 (.rotr 9422 6) := by core033_kernel_decide
theorem stats9423 : actualRows9423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9423=5124 := by core033_kernel_decide
theorem rows9424 : actualRows9424=WordField.canonicalRows actualModulus 9424 (.rotr 9422 11) := by core033_kernel_decide
theorem stats9424 : actualRows9424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9424=5124 := by core033_kernel_decide
theorem rows9425 : actualRows9425=WordField.canonicalRows actualModulus 9425 (.bxor 9423 9424) := by core033_kernel_decide
theorem stats9425 : actualRows9425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9425=7428 := by core033_kernel_decide
theorem rows9426 : actualRows9426=WordField.canonicalRows actualModulus 9426 (.rotr 9422 25) := by core033_kernel_decide
theorem stats9426 : actualRows9426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9426=5124 := by core033_kernel_decide
theorem rows9427 : actualRows9427=WordField.canonicalRows actualModulus 9427 (.bxor 9425 9426) := by core033_kernel_decide
theorem stats9427 : actualRows9427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9427=7428 := by core033_kernel_decide
theorem rows9428 : actualRows9428=WordField.canonicalRows actualModulus 9428 (.badd 9341 9427) := by core033_kernel_decide
theorem stats9428 : actualRows9428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9428=5388 := by core033_kernel_decide
theorem rows9429 : actualRows9429=WordField.canonicalRows actualModulus 9429 (.band 9422 9395) := by core033_kernel_decide
theorem stats9429 : actualRows9429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9429=5124 := by core033_kernel_decide
theorem rows9430 : actualRows9430=WordField.canonicalRows actualModulus 9430 (.bnot 9422) := by core033_kernel_decide
theorem stats9430 : actualRows9430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9430=6276 := by core033_kernel_decide
theorem rows9431 : actualRows9431=WordField.canonicalRows actualModulus 9431 (.band 9430 9368) := by core033_kernel_decide
theorem stats9431 : actualRows9431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9431=5124 := by core033_kernel_decide
theorem rows9432 : actualRows9432=WordField.canonicalRows actualModulus 9432 (.bxor 9429 9431) := by core033_kernel_decide
theorem stats9432 : actualRows9432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9432=7428 := by core033_kernel_decide
theorem rows9433 : actualRows9433=WordField.canonicalRows actualModulus 9433 (.badd 9428 9432) := by core033_kernel_decide
theorem stats9433 : actualRows9433.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9433=5388 := by core033_kernel_decide
theorem rows9434 : actualRows9434=WordField.canonicalRows actualModulus 9434 (.literal (BitVec.ofNat 32 659060556)) := by core033_kernel_decide
theorem stats9434 : actualRows9434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9434=3900 := by core033_kernel_decide
theorem rows9435 : actualRows9435=WordField.canonicalRows actualModulus 9435 (.badd 9433 9434) := by core033_kernel_decide
theorem stats9435 : actualRows9435.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9435=5388 := by core033_kernel_decide
theorem rows9436 : actualRows9436=WordField.canonicalRows actualModulus 9436 (.badd 9435 7903) := by core033_kernel_decide
theorem stats9436 : actualRows9436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9436=5388 := by core033_kernel_decide
theorem rows9437 : actualRows9437=WordField.canonicalRows actualModulus 9437 (.rotr 9421 2) := by core033_kernel_decide
theorem stats9437 : actualRows9437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9437=5124 := by core033_kernel_decide
theorem rows9438 : actualRows9438=WordField.canonicalRows actualModulus 9438 (.rotr 9421 13) := by core033_kernel_decide
theorem stats9438 : actualRows9438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9438=5124 := by core033_kernel_decide
theorem rows9439 : actualRows9439=WordField.canonicalRows actualModulus 9439 (.bxor 9437 9438) := by core033_kernel_decide
theorem stats9439 : actualRows9439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9439=7428 := by core033_kernel_decide
def partRows145 : List R1CS.Row := actualRows9376++actualRows9377++actualRows9378++actualRows9379++actualRows9380++actualRows9381++actualRows9382++actualRows9383++actualRows9384++actualRows9385++actualRows9386++actualRows9387++actualRows9388++actualRows9389++actualRows9390++actualRows9391++actualRows9392++actualRows9393++actualRows9394++actualRows9395++actualRows9396++actualRows9397++actualRows9398++actualRows9399++actualRows9400++actualRows9401++actualRows9402++actualRows9403++actualRows9404++actualRows9405++actualRows9406++actualRows9407++actualRows9408++actualRows9409++actualRows9410++actualRows9411++actualRows9412++actualRows9413++actualRows9414++actualRows9415++actualRows9416++actualRows9417++actualRows9418++actualRows9419++actualRows9420++actualRows9421++actualRows9422++actualRows9423++actualRows9424++actualRows9425++actualRows9426++actualRows9427++actualRows9428++actualRows9429++actualRows9430++actualRows9431++actualRows9432++actualRows9433++actualRows9434++actualRows9435++actualRows9436++actualRows9437++actualRows9438++actualRows9439
def partOps145 : List WordIR.Op := [.bnot 9368,.band 9376 9314,.bxor 9375 9377,.badd 9374 9378,.literal (BitVec.ofNat 32 430227734),.badd 9379 9380,.badd 9381 7877,.rotr 9367 2,.rotr 9367 13,.bxor 9383 9384,.rotr 9367 22,.bxor 9385 9386,.band 9367 9340,.band 9367 9313,.bxor 9388 9389,.band 9340 9313,.bxor 9390 9391,.badd 9387 9392,.badd 9382 9393,.badd 9286 9382,.rotr 9395 6,.rotr 9395 11,.bxor 9396 9397,.rotr 9395 25,.bxor 9398 9399,.badd 9314 9400,.band 9395 9368,.bnot 9395,.band 9403 9341,.bxor 9402 9404,.badd 9401 9405,.literal (BitVec.ofNat 32 506948616),.badd 9406 9407,.badd 9408 7890,.rotr 9394 2,.rotr 9394 13,.bxor 9410 9411,.rotr 9394 22,.bxor 9412 9413,.band 9394 9367,.band 9394 9340,.bxor 9415 9416,.band 9367 9340,.bxor 9417 9418,.badd 9414 9419,.badd 9409 9420,.badd 9313 9409,.rotr 9422 6,.rotr 9422 11,.bxor 9423 9424,.rotr 9422 25,.bxor 9425 9426,.badd 9341 9427,.band 9422 9395,.bnot 9422,.band 9430 9368,.bxor 9429 9431,.badd 9428 9432,.literal (BitVec.ofNat 32 659060556),.badd 9433 9434,.badd 9435 7903,.rotr 9421 2,.rotr 9421 13,.bxor 9437 9438]
theorem partExact145 : partRows145=WordField.rows actualModulus 9376 partOps145 := by
  simp only [partRows145,partOps145,WordField.rows,rows9376,rows9377,rows9378,rows9379,rows9380,rows9381,rows9382,rows9383,rows9384,rows9385,rows9386,rows9387,rows9388,rows9389,rows9390,rows9391,rows9392,rows9393,rows9394,rows9395,rows9396,rows9397,rows9398,rows9399,rows9400,rows9401,rows9402,rows9403,rows9404,rows9405,rows9406,rows9407,rows9408,rows9409,rows9410,rows9411,rows9412,rows9413,rows9414,rows9415,rows9416,rows9417,rows9418,rows9419,rows9420,rows9421,rows9422,rows9423,rows9424,rows9425,rows9426,rows9427,rows9428,rows9429,rows9430,rows9431,rows9432,rows9433,rows9434,rows9435,rows9436,rows9437,rows9438,rows9439,List.append_assoc,List.append_nil]
theorem partLength145 : partOps145.length=64 := by decide
theorem partStats145 : partRows145.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows145=368784 := by
  simp only [partRows145,List.length_append,MatrixRowBlocks.rows_weight_append,stats9376.1,stats9376.2,stats9377.1,stats9377.2,stats9378.1,stats9378.2,stats9379.1,stats9379.2,stats9380.1,stats9380.2,stats9381.1,stats9381.2,stats9382.1,stats9382.2,stats9383.1,stats9383.2,stats9384.1,stats9384.2,stats9385.1,stats9385.2,stats9386.1,stats9386.2,stats9387.1,stats9387.2,stats9388.1,stats9388.2,stats9389.1,stats9389.2,stats9390.1,stats9390.2,stats9391.1,stats9391.2,stats9392.1,stats9392.2,stats9393.1,stats9393.2,stats9394.1,stats9394.2,stats9395.1,stats9395.2,stats9396.1,stats9396.2,stats9397.1,stats9397.2,stats9398.1,stats9398.2,stats9399.1,stats9399.2,stats9400.1,stats9400.2,stats9401.1,stats9401.2,stats9402.1,stats9402.2,stats9403.1,stats9403.2,stats9404.1,stats9404.2,stats9405.1,stats9405.2,stats9406.1,stats9406.2,stats9407.1,stats9407.2,stats9408.1,stats9408.2,stats9409.1,stats9409.2,stats9410.1,stats9410.2,stats9411.1,stats9411.2,stats9412.1,stats9412.2,stats9413.1,stats9413.2,stats9414.1,stats9414.2,stats9415.1,stats9415.2,stats9416.1,stats9416.2,stats9417.1,stats9417.2,stats9418.1,stats9418.2,stats9419.1,stats9419.2,stats9420.1,stats9420.2,stats9421.1,stats9421.2,stats9422.1,stats9422.2,stats9423.1,stats9423.2,stats9424.1,stats9424.2,stats9425.1,stats9425.2,stats9426.1,stats9426.2,stats9427.1,stats9427.2,stats9428.1,stats9428.2,stats9429.1,stats9429.2,stats9430.1,stats9430.2,stats9431.1,stats9431.2,stats9432.1,stats9432.2,stats9433.1,stats9433.2,stats9434.1,stats9434.2,stats9435.1,stats9435.2,stats9436.1,stats9436.2,stats9437.1,stats9437.2,stats9438.1,stats9438.2,stats9439.1,stats9439.2]
  decide
end QuotedPairedPathRoundCheckedRows
