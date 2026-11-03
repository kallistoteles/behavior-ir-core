import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData83
import AuthenticatedBranchRoundInstructionMatrixData84
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5366 : actualRows5366=WordField.canonicalRows actualModulus 5366 (.bnot 5365) := by core033_kernel_decide
theorem stats5366 : actualRows5366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5366=6276 := by core033_kernel_decide
theorem rows5367 : actualRows5367=WordField.canonicalRows actualModulus 5367 (.band 5364 5366) := by core033_kernel_decide
theorem stats5367 : actualRows5367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5367=5124 := by core033_kernel_decide
theorem rows5368 : actualRows5368=WordField.canonicalRows actualModulus 5368 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5368 : actualRows5368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5368=2892 := by core033_kernel_decide
theorem rows5369 : actualRows5369=WordField.canonicalRows actualModulus 5369 (.bxor 1299 5368) := by core033_kernel_decide
theorem stats5369 : actualRows5369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5369=7428 := by core033_kernel_decide
theorem rows5370 : actualRows5370=WordField.canonicalRows actualModulus 5370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5370 : actualRows5370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5370=2820 := by core033_kernel_decide
theorem rows5371 : actualRows5371=WordField.canonicalRows actualModulus 5371 (.bnot 5370) := by core033_kernel_decide
theorem stats5371 : actualRows5371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5371=6276 := by core033_kernel_decide
theorem rows5372 : actualRows5372=WordField.canonicalRows actualModulus 5372 (.bxor 5369 5371) := by core033_kernel_decide
theorem stats5372 : actualRows5372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5372=7428 := by core033_kernel_decide
theorem rows5373 : actualRows5373=WordField.canonicalRows actualModulus 5373 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5373 : actualRows5373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5373=2892 := by core033_kernel_decide
theorem rows5374 : actualRows5374=WordField.canonicalRows actualModulus 5374 (.bxor 1299 5373) := by core033_kernel_decide
theorem stats5374 : actualRows5374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5374=7428 := by core033_kernel_decide
theorem rows5375 : actualRows5375=WordField.canonicalRows actualModulus 5375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5375 : actualRows5375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5375=2820 := by core033_kernel_decide
theorem rows5376 : actualRows5376=WordField.canonicalRows actualModulus 5376 (.bnot 5375) := by core033_kernel_decide
theorem stats5376 : actualRows5376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5376=6276 := by core033_kernel_decide
theorem rows5377 : actualRows5377=WordField.canonicalRows actualModulus 5377 (.badd 5374 5376) := by core033_kernel_decide
theorem stats5377 : actualRows5377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5377=5388 := by core033_kernel_decide
theorem rows5378 : actualRows5378=WordField.canonicalRows actualModulus 5378 (.bnot 5377) := by core033_kernel_decide
theorem stats5378 : actualRows5378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5378=6276 := by core033_kernel_decide
theorem rows5379 : actualRows5379=WordField.canonicalRows actualModulus 5379 (.band 5372 5378) := by core033_kernel_decide
theorem stats5379 : actualRows5379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5379=5124 := by core033_kernel_decide
theorem rows5380 : actualRows5380=WordField.canonicalRows actualModulus 5380 (.bxor 5367 5379) := by core033_kernel_decide
theorem stats5380 : actualRows5380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5380=7428 := by core033_kernel_decide
theorem rows5381 : actualRows5381=WordField.canonicalRows actualModulus 5381 (.shr 5380 31) := by core033_kernel_decide
theorem stats5381 : actualRows5381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5381=2892 := by core033_kernel_decide
theorem rows5382 : actualRows5382=WordField.canonicalRows actualModulus 5382 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5382 : actualRows5382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5382=2892 := by core033_kernel_decide
theorem rows5383 : actualRows5383=WordField.canonicalRows actualModulus 5383 (.bxor 5381 5382) := by core033_kernel_decide
theorem stats5383 : actualRows5383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5383=7428 := by core033_kernel_decide
theorem rows5384 : actualRows5384=WordField.canonicalRows actualModulus 5384 (.bnot 5383) := by core033_kernel_decide
theorem stats5384 : actualRows5384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5384=6276 := by core033_kernel_decide
theorem rows5385 : actualRows5385=WordField.canonicalRows actualModulus 5385 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5385 : actualRows5385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5385=2892 := by core033_kernel_decide
theorem rows5386 : actualRows5386=WordField.canonicalRows actualModulus 5386 (.badd 5384 5385) := by core033_kernel_decide
theorem stats5386 : actualRows5386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5386=5388 := by core033_kernel_decide
theorem rows5387 : actualRows5387=WordField.canonicalRows actualModulus 5387 (.band 5386 2801) := by core033_kernel_decide
theorem stats5387 : actualRows5387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5387=5124 := by core033_kernel_decide
theorem rows5388 : actualRows5388=WordField.canonicalRows actualModulus 5388 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5388 : actualRows5388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5388=2892 := by core033_kernel_decide
theorem rows5389 : actualRows5389=WordField.canonicalRows actualModulus 5389 (.bxor 1299 5388) := by core033_kernel_decide
theorem stats5389 : actualRows5389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5389=7428 := by core033_kernel_decide
theorem rows5390 : actualRows5390=WordField.canonicalRows actualModulus 5390 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5390 : actualRows5390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5390=2820 := by core033_kernel_decide
theorem rows5391 : actualRows5391=WordField.canonicalRows actualModulus 5391 (.bnot 5390) := by core033_kernel_decide
theorem stats5391 : actualRows5391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5391=6276 := by core033_kernel_decide
theorem rows5392 : actualRows5392=WordField.canonicalRows actualModulus 5392 (.band 5389 5391) := by core033_kernel_decide
theorem stats5392 : actualRows5392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5392=5124 := by core033_kernel_decide
theorem rows5393 : actualRows5393=WordField.canonicalRows actualModulus 5393 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5393 : actualRows5393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5393=2892 := by core033_kernel_decide
theorem rows5394 : actualRows5394=WordField.canonicalRows actualModulus 5394 (.bxor 1299 5393) := by core033_kernel_decide
theorem stats5394 : actualRows5394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5394=7428 := by core033_kernel_decide
theorem rows5395 : actualRows5395=WordField.canonicalRows actualModulus 5395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5395 : actualRows5395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5395=2820 := by core033_kernel_decide
theorem rows5396 : actualRows5396=WordField.canonicalRows actualModulus 5396 (.bnot 5395) := by core033_kernel_decide
theorem stats5396 : actualRows5396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5396=6276 := by core033_kernel_decide
theorem rows5397 : actualRows5397=WordField.canonicalRows actualModulus 5397 (.bxor 5394 5396) := by core033_kernel_decide
theorem stats5397 : actualRows5397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5397=7428 := by core033_kernel_decide
theorem rows5398 : actualRows5398=WordField.canonicalRows actualModulus 5398 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5398 : actualRows5398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5398=2892 := by core033_kernel_decide
theorem rows5399 : actualRows5399=WordField.canonicalRows actualModulus 5399 (.bxor 1299 5398) := by core033_kernel_decide
theorem stats5399 : actualRows5399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5399=7428 := by core033_kernel_decide
theorem rows5400 : actualRows5400=WordField.canonicalRows actualModulus 5400 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5400 : actualRows5400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5400=2820 := by core033_kernel_decide
theorem rows5401 : actualRows5401=WordField.canonicalRows actualModulus 5401 (.bnot 5400) := by core033_kernel_decide
theorem stats5401 : actualRows5401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5401=6276 := by core033_kernel_decide
theorem rows5402 : actualRows5402=WordField.canonicalRows actualModulus 5402 (.badd 5399 5401) := by core033_kernel_decide
theorem stats5402 : actualRows5402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5402=5388 := by core033_kernel_decide
theorem rows5403 : actualRows5403=WordField.canonicalRows actualModulus 5403 (.bnot 5402) := by core033_kernel_decide
theorem stats5403 : actualRows5403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5403=6276 := by core033_kernel_decide
theorem rows5404 : actualRows5404=WordField.canonicalRows actualModulus 5404 (.band 5397 5403) := by core033_kernel_decide
theorem stats5404 : actualRows5404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5404=5124 := by core033_kernel_decide
theorem rows5405 : actualRows5405=WordField.canonicalRows actualModulus 5405 (.bxor 5392 5404) := by core033_kernel_decide
theorem stats5405 : actualRows5405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5405=7428 := by core033_kernel_decide
theorem rows5406 : actualRows5406=WordField.canonicalRows actualModulus 5406 (.shr 5405 31) := by core033_kernel_decide
theorem stats5406 : actualRows5406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5406=2892 := by core033_kernel_decide
theorem rows5407 : actualRows5407=WordField.canonicalRows actualModulus 5407 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5407 : actualRows5407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5407=2892 := by core033_kernel_decide
theorem rows5408 : actualRows5408=WordField.canonicalRows actualModulus 5408 (.bxor 5406 5407) := by core033_kernel_decide
theorem stats5408 : actualRows5408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5408=7428 := by core033_kernel_decide
theorem rows5409 : actualRows5409=WordField.canonicalRows actualModulus 5409 (.bnot 5408) := by core033_kernel_decide
theorem stats5409 : actualRows5409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5409=6276 := by core033_kernel_decide
theorem rows5410 : actualRows5410=WordField.canonicalRows actualModulus 5410 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5410 : actualRows5410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5410=2892 := by core033_kernel_decide
theorem rows5411 : actualRows5411=WordField.canonicalRows actualModulus 5411 (.badd 5409 5410) := by core033_kernel_decide
theorem stats5411 : actualRows5411.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5411=5388 := by core033_kernel_decide
theorem rows5412 : actualRows5412=WordField.canonicalRows actualModulus 5412 (.bnot 5411) := by core033_kernel_decide
theorem stats5412 : actualRows5412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5412=6276 := by core033_kernel_decide
theorem rows5413 : actualRows5413=WordField.canonicalRows actualModulus 5413 (.band 5412 2609) := by core033_kernel_decide
theorem stats5413 : actualRows5413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5413=5124 := by core033_kernel_decide
theorem rows5414 : actualRows5414=WordField.canonicalRows actualModulus 5414 (.bxor 5387 5413) := by core033_kernel_decide
theorem stats5414 : actualRows5414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5414=7428 := by core033_kernel_decide
theorem rows5415 : actualRows5415=WordField.canonicalRows actualModulus 5415 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5415 : actualRows5415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5415=2892 := by core033_kernel_decide
theorem rows5416 : actualRows5416=WordField.canonicalRows actualModulus 5416 (.bxor 1299 5415) := by core033_kernel_decide
theorem stats5416 : actualRows5416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5416=7428 := by core033_kernel_decide
theorem rows5417 : actualRows5417=WordField.canonicalRows actualModulus 5417 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5417 : actualRows5417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5417=2820 := by core033_kernel_decide
theorem rows5418 : actualRows5418=WordField.canonicalRows actualModulus 5418 (.bnot 5417) := by core033_kernel_decide
theorem stats5418 : actualRows5418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5418=6276 := by core033_kernel_decide
theorem rows5419 : actualRows5419=WordField.canonicalRows actualModulus 5419 (.band 5416 5418) := by core033_kernel_decide
theorem stats5419 : actualRows5419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5419=5124 := by core033_kernel_decide
theorem rows5420 : actualRows5420=WordField.canonicalRows actualModulus 5420 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5420 : actualRows5420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5420=2892 := by core033_kernel_decide
theorem rows5421 : actualRows5421=WordField.canonicalRows actualModulus 5421 (.bxor 1299 5420) := by core033_kernel_decide
theorem stats5421 : actualRows5421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5421=7428 := by core033_kernel_decide
theorem rows5422 : actualRows5422=WordField.canonicalRows actualModulus 5422 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5422 : actualRows5422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5422=2820 := by core033_kernel_decide
theorem rows5423 : actualRows5423=WordField.canonicalRows actualModulus 5423 (.bnot 5422) := by core033_kernel_decide
theorem stats5423 : actualRows5423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5423=6276 := by core033_kernel_decide
theorem rows5424 : actualRows5424=WordField.canonicalRows actualModulus 5424 (.bxor 5421 5423) := by core033_kernel_decide
theorem stats5424 : actualRows5424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5424=7428 := by core033_kernel_decide
theorem rows5425 : actualRows5425=WordField.canonicalRows actualModulus 5425 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5425 : actualRows5425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5425=2892 := by core033_kernel_decide
theorem rows5426 : actualRows5426=WordField.canonicalRows actualModulus 5426 (.bxor 1299 5425) := by core033_kernel_decide
theorem stats5426 : actualRows5426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5426=7428 := by core033_kernel_decide
theorem rows5427 : actualRows5427=WordField.canonicalRows actualModulus 5427 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5427 : actualRows5427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5427=2820 := by core033_kernel_decide
theorem rows5428 : actualRows5428=WordField.canonicalRows actualModulus 5428 (.bnot 5427) := by core033_kernel_decide
theorem stats5428 : actualRows5428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5428=6276 := by core033_kernel_decide
theorem rows5429 : actualRows5429=WordField.canonicalRows actualModulus 5429 (.badd 5426 5428) := by core033_kernel_decide
theorem stats5429 : actualRows5429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5429=5388 := by core033_kernel_decide
def partRows82 : List R1CS.Row := actualRows5366++actualRows5367++actualRows5368++actualRows5369++actualRows5370++actualRows5371++actualRows5372++actualRows5373++actualRows5374++actualRows5375++actualRows5376++actualRows5377++actualRows5378++actualRows5379++actualRows5380++actualRows5381++actualRows5382++actualRows5383++actualRows5384++actualRows5385++actualRows5386++actualRows5387++actualRows5388++actualRows5389++actualRows5390++actualRows5391++actualRows5392++actualRows5393++actualRows5394++actualRows5395++actualRows5396++actualRows5397++actualRows5398++actualRows5399++actualRows5400++actualRows5401++actualRows5402++actualRows5403++actualRows5404++actualRows5405++actualRows5406++actualRows5407++actualRows5408++actualRows5409++actualRows5410++actualRows5411++actualRows5412++actualRows5413++actualRows5414++actualRows5415++actualRows5416++actualRows5417++actualRows5418++actualRows5419++actualRows5420++actualRows5421++actualRows5422++actualRows5423++actualRows5424++actualRows5425++actualRows5426++actualRows5427++actualRows5428++actualRows5429
def partOps82 : List WordIR.Op := [.bnot 5365,.band 5364 5366,.literal (BitVec.ofNat 32 2),.bxor 1299 5368,.literal (BitVec.ofNat 32 0),.bnot 5370,.bxor 5369 5371,.literal (BitVec.ofNat 32 2),.bxor 1299 5373,.literal (BitVec.ofNat 32 0),.bnot 5375,.badd 5374 5376,.bnot 5377,.band 5372 5378,.bxor 5367 5379,.shr 5380 31,.literal (BitVec.ofNat 32 1),.bxor 5381 5382,.bnot 5383,.literal (BitVec.ofNat 32 1),.badd 5384 5385,.band 5386 2801,.literal (BitVec.ofNat 32 2),.bxor 1299 5388,.literal (BitVec.ofNat 32 0),.bnot 5390,.band 5389 5391,.literal (BitVec.ofNat 32 2),.bxor 1299 5393,.literal (BitVec.ofNat 32 0),.bnot 5395,.bxor 5394 5396,.literal (BitVec.ofNat 32 2),.bxor 1299 5398,.literal (BitVec.ofNat 32 0),.bnot 5400,.badd 5399 5401,.bnot 5402,.band 5397 5403,.bxor 5392 5404,.shr 5405 31,.literal (BitVec.ofNat 32 1),.bxor 5406 5407,.bnot 5408,.literal (BitVec.ofNat 32 1),.badd 5409 5410,.bnot 5411,.band 5412 2609,.bxor 5387 5413,.literal (BitVec.ofNat 32 2),.bxor 1299 5415,.literal (BitVec.ofNat 32 0),.bnot 5417,.band 5416 5418,.literal (BitVec.ofNat 32 2),.bxor 1299 5420,.literal (BitVec.ofNat 32 0),.bnot 5422,.bxor 5421 5423,.literal (BitVec.ofNat 32 2),.bxor 1299 5425,.literal (BitVec.ofNat 32 0),.bnot 5427,.badd 5426 5428]
theorem partExact82 : partRows82=WordField.rows actualModulus 5366 partOps82 := by
  simp only [partRows82,partOps82,WordField.rows,rows5366,rows5367,rows5368,rows5369,rows5370,rows5371,rows5372,rows5373,rows5374,rows5375,rows5376,rows5377,rows5378,rows5379,rows5380,rows5381,rows5382,rows5383,rows5384,rows5385,rows5386,rows5387,rows5388,rows5389,rows5390,rows5391,rows5392,rows5393,rows5394,rows5395,rows5396,rows5397,rows5398,rows5399,rows5400,rows5401,rows5402,rows5403,rows5404,rows5405,rows5406,rows5407,rows5408,rows5409,rows5410,rows5411,rows5412,rows5413,rows5414,rows5415,rows5416,rows5417,rows5418,rows5419,rows5420,rows5421,rows5422,rows5423,rows5424,rows5425,rows5426,rows5427,rows5428,rows5429,List.append_assoc,List.append_nil]
theorem partLength82 : partOps82.length=64 := by decide
theorem partStats82 : partRows82.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows82=332568 := by
  simp only [partRows82,List.length_append,MatrixRowBlocks.rows_weight_append,stats5366.1,stats5366.2,stats5367.1,stats5367.2,stats5368.1,stats5368.2,stats5369.1,stats5369.2,stats5370.1,stats5370.2,stats5371.1,stats5371.2,stats5372.1,stats5372.2,stats5373.1,stats5373.2,stats5374.1,stats5374.2,stats5375.1,stats5375.2,stats5376.1,stats5376.2,stats5377.1,stats5377.2,stats5378.1,stats5378.2,stats5379.1,stats5379.2,stats5380.1,stats5380.2,stats5381.1,stats5381.2,stats5382.1,stats5382.2,stats5383.1,stats5383.2,stats5384.1,stats5384.2,stats5385.1,stats5385.2,stats5386.1,stats5386.2,stats5387.1,stats5387.2,stats5388.1,stats5388.2,stats5389.1,stats5389.2,stats5390.1,stats5390.2,stats5391.1,stats5391.2,stats5392.1,stats5392.2,stats5393.1,stats5393.2,stats5394.1,stats5394.2,stats5395.1,stats5395.2,stats5396.1,stats5396.2,stats5397.1,stats5397.2,stats5398.1,stats5398.2,stats5399.1,stats5399.2,stats5400.1,stats5400.2,stats5401.1,stats5401.2,stats5402.1,stats5402.2,stats5403.1,stats5403.2,stats5404.1,stats5404.2,stats5405.1,stats5405.2,stats5406.1,stats5406.2,stats5407.1,stats5407.2,stats5408.1,stats5408.2,stats5409.1,stats5409.2,stats5410.1,stats5410.2,stats5411.1,stats5411.2,stats5412.1,stats5412.2,stats5413.1,stats5413.2,stats5414.1,stats5414.2,stats5415.1,stats5415.2,stats5416.1,stats5416.2,stats5417.1,stats5417.2,stats5418.1,stats5418.2,stats5419.1,stats5419.2,stats5420.1,stats5420.2,stats5421.1,stats5421.2,stats5422.1,stats5422.2,stats5423.1,stats5423.2,stats5424.1,stats5424.2,stats5425.1,stats5425.2,stats5426.1,stats5426.2,stats5427.1,stats5427.2,stats5428.1,stats5428.2,stats5429.1,stats5429.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
