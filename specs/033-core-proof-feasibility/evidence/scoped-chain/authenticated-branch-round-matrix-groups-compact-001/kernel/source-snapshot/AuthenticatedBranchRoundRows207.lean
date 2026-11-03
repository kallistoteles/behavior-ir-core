import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData208
import AuthenticatedBranchRoundInstructionMatrixData209
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13366 : actualRows13366=WordField.canonicalRows actualModulus 13366 (.bnot 13365) := by core033_kernel_decide
theorem stats13366 : actualRows13366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13366=6276 := by core033_kernel_decide
theorem rows13367 : actualRows13367=WordField.canonicalRows actualModulus 13367 (.badd 13364 13366) := by core033_kernel_decide
theorem stats13367 : actualRows13367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13367=5388 := by core033_kernel_decide
theorem rows13368 : actualRows13368=WordField.canonicalRows actualModulus 13368 (.bnot 13367) := by core033_kernel_decide
theorem stats13368 : actualRows13368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13368=6276 := by core033_kernel_decide
theorem rows13369 : actualRows13369=WordField.canonicalRows actualModulus 13369 (.band 13362 13368) := by core033_kernel_decide
theorem stats13369 : actualRows13369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13369=5124 := by core033_kernel_decide
theorem rows13370 : actualRows13370=WordField.canonicalRows actualModulus 13370 (.bxor 13357 13369) := by core033_kernel_decide
theorem stats13370 : actualRows13370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13370=7428 := by core033_kernel_decide
theorem rows13371 : actualRows13371=WordField.canonicalRows actualModulus 13371 (.shr 13370 31) := by core033_kernel_decide
theorem stats13371 : actualRows13371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13371=2892 := by core033_kernel_decide
theorem rows13372 : actualRows13372=WordField.canonicalRows actualModulus 13372 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13372 : actualRows13372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13372=2892 := by core033_kernel_decide
theorem rows13373 : actualRows13373=WordField.canonicalRows actualModulus 13373 (.bxor 13371 13372) := by core033_kernel_decide
theorem stats13373 : actualRows13373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13373=7428 := by core033_kernel_decide
theorem rows13374 : actualRows13374=WordField.canonicalRows actualModulus 13374 (.bnot 13373) := by core033_kernel_decide
theorem stats13374 : actualRows13374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13374=6276 := by core033_kernel_decide
theorem rows13375 : actualRows13375=WordField.canonicalRows actualModulus 13375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13375 : actualRows13375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13375=2892 := by core033_kernel_decide
theorem rows13376 : actualRows13376=WordField.canonicalRows actualModulus 13376 (.badd 13374 13375) := by core033_kernel_decide
theorem stats13376 : actualRows13376.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13376=5388 := by core033_kernel_decide
theorem rows13377 : actualRows13377=WordField.canonicalRows actualModulus 13377 (.band 13376 11027) := by core033_kernel_decide
theorem stats13377 : actualRows13377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13377=5124 := by core033_kernel_decide
theorem rows13378 : actualRows13378=WordField.canonicalRows actualModulus 13378 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13378 : actualRows13378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13378=2964 := by core033_kernel_decide
theorem rows13379 : actualRows13379=WordField.canonicalRows actualModulus 13379 (.bxor 693 13378) := by core033_kernel_decide
theorem stats13379 : actualRows13379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13379=7428 := by core033_kernel_decide
theorem rows13380 : actualRows13380=WordField.canonicalRows actualModulus 13380 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13380 : actualRows13380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13380=2820 := by core033_kernel_decide
theorem rows13381 : actualRows13381=WordField.canonicalRows actualModulus 13381 (.bnot 13380) := by core033_kernel_decide
theorem stats13381 : actualRows13381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13381=6276 := by core033_kernel_decide
theorem rows13382 : actualRows13382=WordField.canonicalRows actualModulus 13382 (.band 13379 13381) := by core033_kernel_decide
theorem stats13382 : actualRows13382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13382=5124 := by core033_kernel_decide
theorem rows13383 : actualRows13383=WordField.canonicalRows actualModulus 13383 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13383 : actualRows13383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13383=2964 := by core033_kernel_decide
theorem rows13384 : actualRows13384=WordField.canonicalRows actualModulus 13384 (.bxor 693 13383) := by core033_kernel_decide
theorem stats13384 : actualRows13384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13384=7428 := by core033_kernel_decide
theorem rows13385 : actualRows13385=WordField.canonicalRows actualModulus 13385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13385 : actualRows13385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13385=2820 := by core033_kernel_decide
theorem rows13386 : actualRows13386=WordField.canonicalRows actualModulus 13386 (.bnot 13385) := by core033_kernel_decide
theorem stats13386 : actualRows13386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13386=6276 := by core033_kernel_decide
theorem rows13387 : actualRows13387=WordField.canonicalRows actualModulus 13387 (.bxor 13384 13386) := by core033_kernel_decide
theorem stats13387 : actualRows13387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13387=7428 := by core033_kernel_decide
theorem rows13388 : actualRows13388=WordField.canonicalRows actualModulus 13388 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13388 : actualRows13388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13388=2964 := by core033_kernel_decide
theorem rows13389 : actualRows13389=WordField.canonicalRows actualModulus 13389 (.bxor 693 13388) := by core033_kernel_decide
theorem stats13389 : actualRows13389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13389=7428 := by core033_kernel_decide
theorem rows13390 : actualRows13390=WordField.canonicalRows actualModulus 13390 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13390 : actualRows13390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13390=2820 := by core033_kernel_decide
theorem rows13391 : actualRows13391=WordField.canonicalRows actualModulus 13391 (.bnot 13390) := by core033_kernel_decide
theorem stats13391 : actualRows13391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13391=6276 := by core033_kernel_decide
theorem rows13392 : actualRows13392=WordField.canonicalRows actualModulus 13392 (.badd 13389 13391) := by core033_kernel_decide
theorem stats13392 : actualRows13392.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13392=5388 := by core033_kernel_decide
theorem rows13393 : actualRows13393=WordField.canonicalRows actualModulus 13393 (.bnot 13392) := by core033_kernel_decide
theorem stats13393 : actualRows13393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13393=6276 := by core033_kernel_decide
theorem rows13394 : actualRows13394=WordField.canonicalRows actualModulus 13394 (.band 13387 13393) := by core033_kernel_decide
theorem stats13394 : actualRows13394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13394=5124 := by core033_kernel_decide
theorem rows13395 : actualRows13395=WordField.canonicalRows actualModulus 13395 (.bxor 13382 13394) := by core033_kernel_decide
theorem stats13395 : actualRows13395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13395=7428 := by core033_kernel_decide
theorem rows13396 : actualRows13396=WordField.canonicalRows actualModulus 13396 (.shr 13395 31) := by core033_kernel_decide
theorem stats13396 : actualRows13396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13396=2892 := by core033_kernel_decide
theorem rows13397 : actualRows13397=WordField.canonicalRows actualModulus 13397 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13397 : actualRows13397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13397=2892 := by core033_kernel_decide
theorem rows13398 : actualRows13398=WordField.canonicalRows actualModulus 13398 (.bxor 13396 13397) := by core033_kernel_decide
theorem stats13398 : actualRows13398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13398=7428 := by core033_kernel_decide
theorem rows13399 : actualRows13399=WordField.canonicalRows actualModulus 13399 (.bnot 13398) := by core033_kernel_decide
theorem stats13399 : actualRows13399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13399=6276 := by core033_kernel_decide
theorem rows13400 : actualRows13400=WordField.canonicalRows actualModulus 13400 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13400 : actualRows13400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13400=2892 := by core033_kernel_decide
theorem rows13401 : actualRows13401=WordField.canonicalRows actualModulus 13401 (.badd 13399 13400) := by core033_kernel_decide
theorem stats13401 : actualRows13401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13401=5388 := by core033_kernel_decide
theorem rows13402 : actualRows13402=WordField.canonicalRows actualModulus 13402 (.bnot 13401) := by core033_kernel_decide
theorem stats13402 : actualRows13402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13402=6276 := by core033_kernel_decide
theorem rows13403 : actualRows13403=WordField.canonicalRows actualModulus 13403 (.band 13402 10486) := by core033_kernel_decide
theorem stats13403 : actualRows13403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13403=5124 := by core033_kernel_decide
theorem rows13404 : actualRows13404=WordField.canonicalRows actualModulus 13404 (.bxor 13377 13403) := by core033_kernel_decide
theorem stats13404 : actualRows13404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13404=7428 := by core033_kernel_decide
theorem rows13405 : actualRows13405=WordField.canonicalRows actualModulus 13405 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13405 : actualRows13405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13405=2964 := by core033_kernel_decide
theorem rows13406 : actualRows13406=WordField.canonicalRows actualModulus 13406 (.bxor 693 13405) := by core033_kernel_decide
theorem stats13406 : actualRows13406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13406=7428 := by core033_kernel_decide
theorem rows13407 : actualRows13407=WordField.canonicalRows actualModulus 13407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13407 : actualRows13407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13407=2820 := by core033_kernel_decide
theorem rows13408 : actualRows13408=WordField.canonicalRows actualModulus 13408 (.bnot 13407) := by core033_kernel_decide
theorem stats13408 : actualRows13408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13408=6276 := by core033_kernel_decide
theorem rows13409 : actualRows13409=WordField.canonicalRows actualModulus 13409 (.band 13406 13408) := by core033_kernel_decide
theorem stats13409 : actualRows13409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13409=5124 := by core033_kernel_decide
theorem rows13410 : actualRows13410=WordField.canonicalRows actualModulus 13410 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13410 : actualRows13410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13410=2964 := by core033_kernel_decide
theorem rows13411 : actualRows13411=WordField.canonicalRows actualModulus 13411 (.bxor 693 13410) := by core033_kernel_decide
theorem stats13411 : actualRows13411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13411=7428 := by core033_kernel_decide
theorem rows13412 : actualRows13412=WordField.canonicalRows actualModulus 13412 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13412 : actualRows13412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13412=2820 := by core033_kernel_decide
theorem rows13413 : actualRows13413=WordField.canonicalRows actualModulus 13413 (.bnot 13412) := by core033_kernel_decide
theorem stats13413 : actualRows13413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13413=6276 := by core033_kernel_decide
theorem rows13414 : actualRows13414=WordField.canonicalRows actualModulus 13414 (.bxor 13411 13413) := by core033_kernel_decide
theorem stats13414 : actualRows13414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13414=7428 := by core033_kernel_decide
theorem rows13415 : actualRows13415=WordField.canonicalRows actualModulus 13415 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13415 : actualRows13415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13415=2964 := by core033_kernel_decide
theorem rows13416 : actualRows13416=WordField.canonicalRows actualModulus 13416 (.bxor 693 13415) := by core033_kernel_decide
theorem stats13416 : actualRows13416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13416=7428 := by core033_kernel_decide
theorem rows13417 : actualRows13417=WordField.canonicalRows actualModulus 13417 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13417 : actualRows13417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13417=2820 := by core033_kernel_decide
theorem rows13418 : actualRows13418=WordField.canonicalRows actualModulus 13418 (.bnot 13417) := by core033_kernel_decide
theorem stats13418 : actualRows13418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13418=6276 := by core033_kernel_decide
theorem rows13419 : actualRows13419=WordField.canonicalRows actualModulus 13419 (.badd 13416 13418) := by core033_kernel_decide
theorem stats13419 : actualRows13419.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13419=5388 := by core033_kernel_decide
theorem rows13420 : actualRows13420=WordField.canonicalRows actualModulus 13420 (.bnot 13419) := by core033_kernel_decide
theorem stats13420 : actualRows13420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13420=6276 := by core033_kernel_decide
theorem rows13421 : actualRows13421=WordField.canonicalRows actualModulus 13421 (.band 13414 13420) := by core033_kernel_decide
theorem stats13421 : actualRows13421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13421=5124 := by core033_kernel_decide
theorem rows13422 : actualRows13422=WordField.canonicalRows actualModulus 13422 (.bxor 13409 13421) := by core033_kernel_decide
theorem stats13422 : actualRows13422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13422=7428 := by core033_kernel_decide
theorem rows13423 : actualRows13423=WordField.canonicalRows actualModulus 13423 (.shr 13422 31) := by core033_kernel_decide
theorem stats13423 : actualRows13423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13423=2892 := by core033_kernel_decide
theorem rows13424 : actualRows13424=WordField.canonicalRows actualModulus 13424 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13424 : actualRows13424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13424=2892 := by core033_kernel_decide
theorem rows13425 : actualRows13425=WordField.canonicalRows actualModulus 13425 (.bxor 13423 13424) := by core033_kernel_decide
theorem stats13425 : actualRows13425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13425=7428 := by core033_kernel_decide
theorem rows13426 : actualRows13426=WordField.canonicalRows actualModulus 13426 (.bnot 13425) := by core033_kernel_decide
theorem stats13426 : actualRows13426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13426=6276 := by core033_kernel_decide
theorem rows13427 : actualRows13427=WordField.canonicalRows actualModulus 13427 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13427 : actualRows13427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13427=2892 := by core033_kernel_decide
theorem rows13428 : actualRows13428=WordField.canonicalRows actualModulus 13428 (.badd 13426 13427) := by core033_kernel_decide
theorem stats13428 : actualRows13428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13428=5388 := by core033_kernel_decide
theorem rows13429 : actualRows13429=WordField.canonicalRows actualModulus 13429 (.band 13428 11038) := by core033_kernel_decide
theorem stats13429 : actualRows13429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13429=5124 := by core033_kernel_decide
def partRows207 : List R1CS.Row := actualRows13366++actualRows13367++actualRows13368++actualRows13369++actualRows13370++actualRows13371++actualRows13372++actualRows13373++actualRows13374++actualRows13375++actualRows13376++actualRows13377++actualRows13378++actualRows13379++actualRows13380++actualRows13381++actualRows13382++actualRows13383++actualRows13384++actualRows13385++actualRows13386++actualRows13387++actualRows13388++actualRows13389++actualRows13390++actualRows13391++actualRows13392++actualRows13393++actualRows13394++actualRows13395++actualRows13396++actualRows13397++actualRows13398++actualRows13399++actualRows13400++actualRows13401++actualRows13402++actualRows13403++actualRows13404++actualRows13405++actualRows13406++actualRows13407++actualRows13408++actualRows13409++actualRows13410++actualRows13411++actualRows13412++actualRows13413++actualRows13414++actualRows13415++actualRows13416++actualRows13417++actualRows13418++actualRows13419++actualRows13420++actualRows13421++actualRows13422++actualRows13423++actualRows13424++actualRows13425++actualRows13426++actualRows13427++actualRows13428++actualRows13429
def partOps207 : List WordIR.Op := [.bnot 13365,.badd 13364 13366,.bnot 13367,.band 13362 13368,.bxor 13357 13369,.shr 13370 31,.literal (BitVec.ofNat 32 1),.bxor 13371 13372,.bnot 13373,.literal (BitVec.ofNat 32 1),.badd 13374 13375,.band 13376 11027,.literal (BitVec.ofNat 32 3),.bxor 693 13378,.literal (BitVec.ofNat 32 0),.bnot 13380,.band 13379 13381,.literal (BitVec.ofNat 32 3),.bxor 693 13383,.literal (BitVec.ofNat 32 0),.bnot 13385,.bxor 13384 13386,.literal (BitVec.ofNat 32 3),.bxor 693 13388,.literal (BitVec.ofNat 32 0),.bnot 13390,.badd 13389 13391,.bnot 13392,.band 13387 13393,.bxor 13382 13394,.shr 13395 31,.literal (BitVec.ofNat 32 1),.bxor 13396 13397,.bnot 13398,.literal (BitVec.ofNat 32 1),.badd 13399 13400,.bnot 13401,.band 13402 10486,.bxor 13377 13403,.literal (BitVec.ofNat 32 3),.bxor 693 13405,.literal (BitVec.ofNat 32 0),.bnot 13407,.band 13406 13408,.literal (BitVec.ofNat 32 3),.bxor 693 13410,.literal (BitVec.ofNat 32 0),.bnot 13412,.bxor 13411 13413,.literal (BitVec.ofNat 32 3),.bxor 693 13415,.literal (BitVec.ofNat 32 0),.bnot 13417,.badd 13416 13418,.bnot 13419,.band 13414 13420,.bxor 13409 13421,.shr 13422 31,.literal (BitVec.ofNat 32 1),.bxor 13423 13424,.bnot 13425,.literal (BitVec.ofNat 32 1),.badd 13426 13427,.band 13428 11038]
theorem partExact207 : partRows207=WordField.rows actualModulus 13366 partOps207 := by
  simp only [partRows207,partOps207,WordField.rows,rows13366,rows13367,rows13368,rows13369,rows13370,rows13371,rows13372,rows13373,rows13374,rows13375,rows13376,rows13377,rows13378,rows13379,rows13380,rows13381,rows13382,rows13383,rows13384,rows13385,rows13386,rows13387,rows13388,rows13389,rows13390,rows13391,rows13392,rows13393,rows13394,rows13395,rows13396,rows13397,rows13398,rows13399,rows13400,rows13401,rows13402,rows13403,rows13404,rows13405,rows13406,rows13407,rows13408,rows13409,rows13410,rows13411,rows13412,rows13413,rows13414,rows13415,rows13416,rows13417,rows13418,rows13419,rows13420,rows13421,rows13422,rows13423,rows13424,rows13425,rows13426,rows13427,rows13428,rows13429,List.append_assoc,List.append_nil]
theorem partLength207 : partOps207.length=64 := by decide
theorem partStats207 : partRows207.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows207=333336 := by
  simp only [partRows207,List.length_append,MatrixRowBlocks.rows_weight_append,stats13366.1,stats13366.2,stats13367.1,stats13367.2,stats13368.1,stats13368.2,stats13369.1,stats13369.2,stats13370.1,stats13370.2,stats13371.1,stats13371.2,stats13372.1,stats13372.2,stats13373.1,stats13373.2,stats13374.1,stats13374.2,stats13375.1,stats13375.2,stats13376.1,stats13376.2,stats13377.1,stats13377.2,stats13378.1,stats13378.2,stats13379.1,stats13379.2,stats13380.1,stats13380.2,stats13381.1,stats13381.2,stats13382.1,stats13382.2,stats13383.1,stats13383.2,stats13384.1,stats13384.2,stats13385.1,stats13385.2,stats13386.1,stats13386.2,stats13387.1,stats13387.2,stats13388.1,stats13388.2,stats13389.1,stats13389.2,stats13390.1,stats13390.2,stats13391.1,stats13391.2,stats13392.1,stats13392.2,stats13393.1,stats13393.2,stats13394.1,stats13394.2,stats13395.1,stats13395.2,stats13396.1,stats13396.2,stats13397.1,stats13397.2,stats13398.1,stats13398.2,stats13399.1,stats13399.2,stats13400.1,stats13400.2,stats13401.1,stats13401.2,stats13402.1,stats13402.2,stats13403.1,stats13403.2,stats13404.1,stats13404.2,stats13405.1,stats13405.2,stats13406.1,stats13406.2,stats13407.1,stats13407.2,stats13408.1,stats13408.2,stats13409.1,stats13409.2,stats13410.1,stats13410.2,stats13411.1,stats13411.2,stats13412.1,stats13412.2,stats13413.1,stats13413.2,stats13414.1,stats13414.2,stats13415.1,stats13415.2,stats13416.1,stats13416.2,stats13417.1,stats13417.2,stats13418.1,stats13418.2,stats13419.1,stats13419.2,stats13420.1,stats13420.2,stats13421.1,stats13421.2,stats13422.1,stats13422.2,stats13423.1,stats13423.2,stats13424.1,stats13424.2,stats13425.1,stats13425.2,stats13426.1,stats13426.2,stats13427.1,stats13427.2,stats13428.1,stats13428.2,stats13429.1,stats13429.2]
  decide
end AuthenticatedBranchRoundCheckedRows
