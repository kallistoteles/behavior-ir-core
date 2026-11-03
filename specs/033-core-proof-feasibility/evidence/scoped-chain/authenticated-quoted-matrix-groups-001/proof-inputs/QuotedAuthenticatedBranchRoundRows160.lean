import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData161
import AuthenticatedBranchRoundInstructionMatrixData162
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10358 : actualRows10358=WordField.canonicalRows actualModulus 10358 (.bxor 10355 10357) := by core033_kernel_decide
theorem stats10358 : actualRows10358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10358=7428 := by core033_kernel_decide
theorem rows10359 : actualRows10359=WordField.canonicalRows actualModulus 10359 (.badd 10354 10358) := by core033_kernel_decide
theorem stats10359 : actualRows10359.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10359=5388 := by core033_kernel_decide
theorem rows10360 : actualRows10360=WordField.canonicalRows actualModulus 10360 (.literal (BitVec.ofNat 32 2361852424)) := by core033_kernel_decide
theorem stats10360 : actualRows10360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10360=3540 := by core033_kernel_decide
theorem rows10361 : actualRows10361=WordField.canonicalRows actualModulus 10361 (.badd 10359 10360) := by core033_kernel_decide
theorem stats10361 : actualRows10361.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10361=5388 := by core033_kernel_decide
theorem rows10362 : actualRows10362=WordField.canonicalRows actualModulus 10362 (.badd 10361 8703) := by core033_kernel_decide
theorem stats10362 : actualRows10362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10362=5388 := by core033_kernel_decide
theorem rows10363 : actualRows10363=WordField.canonicalRows actualModulus 10363 (.rotr 10347 2) := by core033_kernel_decide
theorem stats10363 : actualRows10363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10363=5124 := by core033_kernel_decide
theorem rows10364 : actualRows10364=WordField.canonicalRows actualModulus 10364 (.rotr 10347 13) := by core033_kernel_decide
theorem stats10364 : actualRows10364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10364=5124 := by core033_kernel_decide
theorem rows10365 : actualRows10365=WordField.canonicalRows actualModulus 10365 (.bxor 10363 10364) := by core033_kernel_decide
theorem stats10365 : actualRows10365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10365=7428 := by core033_kernel_decide
theorem rows10366 : actualRows10366=WordField.canonicalRows actualModulus 10366 (.rotr 10347 22) := by core033_kernel_decide
theorem stats10366 : actualRows10366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10366=5124 := by core033_kernel_decide
theorem rows10367 : actualRows10367=WordField.canonicalRows actualModulus 10367 (.bxor 10365 10366) := by core033_kernel_decide
theorem stats10367 : actualRows10367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10367=7428 := by core033_kernel_decide
theorem rows10368 : actualRows10368=WordField.canonicalRows actualModulus 10368 (.band 10347 10320) := by core033_kernel_decide
theorem stats10368 : actualRows10368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10368=5124 := by core033_kernel_decide
theorem rows10369 : actualRows10369=WordField.canonicalRows actualModulus 10369 (.band 10347 10293) := by core033_kernel_decide
theorem stats10369 : actualRows10369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10369=5124 := by core033_kernel_decide
theorem rows10370 : actualRows10370=WordField.canonicalRows actualModulus 10370 (.bxor 10368 10369) := by core033_kernel_decide
theorem stats10370 : actualRows10370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10370=7428 := by core033_kernel_decide
theorem rows10371 : actualRows10371=WordField.canonicalRows actualModulus 10371 (.band 10320 10293) := by core033_kernel_decide
theorem stats10371 : actualRows10371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10371=5124 := by core033_kernel_decide
theorem rows10372 : actualRows10372=WordField.canonicalRows actualModulus 10372 (.bxor 10370 10371) := by core033_kernel_decide
theorem stats10372 : actualRows10372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10372=7428 := by core033_kernel_decide
theorem rows10373 : actualRows10373=WordField.canonicalRows actualModulus 10373 (.badd 10367 10372) := by core033_kernel_decide
theorem stats10373 : actualRows10373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10373=5388 := by core033_kernel_decide
theorem rows10374 : actualRows10374=WordField.canonicalRows actualModulus 10374 (.badd 10362 10373) := by core033_kernel_decide
theorem stats10374 : actualRows10374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10374=5388 := by core033_kernel_decide
theorem rows10375 : actualRows10375=WordField.canonicalRows actualModulus 10375 (.badd 10266 10362) := by core033_kernel_decide
theorem stats10375 : actualRows10375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10375=5388 := by core033_kernel_decide
theorem rows10376 : actualRows10376=WordField.canonicalRows actualModulus 10376 (.rotr 10375 6) := by core033_kernel_decide
theorem stats10376 : actualRows10376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10376=5124 := by core033_kernel_decide
theorem rows10377 : actualRows10377=WordField.canonicalRows actualModulus 10377 (.rotr 10375 11) := by core033_kernel_decide
theorem stats10377 : actualRows10377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10377=5124 := by core033_kernel_decide
theorem rows10378 : actualRows10378=WordField.canonicalRows actualModulus 10378 (.bxor 10376 10377) := by core033_kernel_decide
theorem stats10378 : actualRows10378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10378=7428 := by core033_kernel_decide
theorem rows10379 : actualRows10379=WordField.canonicalRows actualModulus 10379 (.rotr 10375 25) := by core033_kernel_decide
theorem stats10379 : actualRows10379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10379=5124 := by core033_kernel_decide
theorem rows10380 : actualRows10380=WordField.canonicalRows actualModulus 10380 (.bxor 10378 10379) := by core033_kernel_decide
theorem stats10380 : actualRows10380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10380=7428 := by core033_kernel_decide
theorem rows10381 : actualRows10381=WordField.canonicalRows actualModulus 10381 (.badd 10294 10380) := by core033_kernel_decide
theorem stats10381 : actualRows10381.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10381=5388 := by core033_kernel_decide
theorem rows10382 : actualRows10382=WordField.canonicalRows actualModulus 10382 (.band 10375 10348) := by core033_kernel_decide
theorem stats10382 : actualRows10382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10382=5124 := by core033_kernel_decide
theorem rows10383 : actualRows10383=WordField.canonicalRows actualModulus 10383 (.bnot 10375) := by core033_kernel_decide
theorem stats10383 : actualRows10383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10383=6276 := by core033_kernel_decide
theorem rows10384 : actualRows10384=WordField.canonicalRows actualModulus 10384 (.band 10383 10321) := by core033_kernel_decide
theorem stats10384 : actualRows10384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10384=5124 := by core033_kernel_decide
theorem rows10385 : actualRows10385=WordField.canonicalRows actualModulus 10385 (.bxor 10382 10384) := by core033_kernel_decide
theorem stats10385 : actualRows10385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10385=7428 := by core033_kernel_decide
theorem rows10386 : actualRows10386=WordField.canonicalRows actualModulus 10386 (.badd 10381 10385) := by core033_kernel_decide
theorem stats10386 : actualRows10386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10386=5388 := by core033_kernel_decide
theorem rows10387 : actualRows10387=WordField.canonicalRows actualModulus 10387 (.literal (BitVec.ofNat 32 2428436474)) := by core033_kernel_decide
theorem stats10387 : actualRows10387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10387=4404 := by core033_kernel_decide
theorem rows10388 : actualRows10388=WordField.canonicalRows actualModulus 10388 (.badd 10386 10387) := by core033_kernel_decide
theorem stats10388 : actualRows10388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10388=5388 := by core033_kernel_decide
theorem rows10389 : actualRows10389=WordField.canonicalRows actualModulus 10389 (.badd 10388 8716) := by core033_kernel_decide
theorem stats10389 : actualRows10389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10389=5388 := by core033_kernel_decide
theorem rows10390 : actualRows10390=WordField.canonicalRows actualModulus 10390 (.rotr 10374 2) := by core033_kernel_decide
theorem stats10390 : actualRows10390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10390=5124 := by core033_kernel_decide
theorem rows10391 : actualRows10391=WordField.canonicalRows actualModulus 10391 (.rotr 10374 13) := by core033_kernel_decide
theorem stats10391 : actualRows10391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10391=5124 := by core033_kernel_decide
theorem rows10392 : actualRows10392=WordField.canonicalRows actualModulus 10392 (.bxor 10390 10391) := by core033_kernel_decide
theorem stats10392 : actualRows10392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10392=7428 := by core033_kernel_decide
theorem rows10393 : actualRows10393=WordField.canonicalRows actualModulus 10393 (.rotr 10374 22) := by core033_kernel_decide
theorem stats10393 : actualRows10393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10393=5124 := by core033_kernel_decide
theorem rows10394 : actualRows10394=WordField.canonicalRows actualModulus 10394 (.bxor 10392 10393) := by core033_kernel_decide
theorem stats10394 : actualRows10394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10394=7428 := by core033_kernel_decide
theorem rows10395 : actualRows10395=WordField.canonicalRows actualModulus 10395 (.band 10374 10347) := by core033_kernel_decide
theorem stats10395 : actualRows10395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10395=5124 := by core033_kernel_decide
theorem rows10396 : actualRows10396=WordField.canonicalRows actualModulus 10396 (.band 10374 10320) := by core033_kernel_decide
theorem stats10396 : actualRows10396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10396=5124 := by core033_kernel_decide
theorem rows10397 : actualRows10397=WordField.canonicalRows actualModulus 10397 (.bxor 10395 10396) := by core033_kernel_decide
theorem stats10397 : actualRows10397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10397=7428 := by core033_kernel_decide
theorem rows10398 : actualRows10398=WordField.canonicalRows actualModulus 10398 (.band 10347 10320) := by core033_kernel_decide
theorem stats10398 : actualRows10398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10398=5124 := by core033_kernel_decide
theorem rows10399 : actualRows10399=WordField.canonicalRows actualModulus 10399 (.bxor 10397 10398) := by core033_kernel_decide
theorem stats10399 : actualRows10399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10399=7428 := by core033_kernel_decide
theorem rows10400 : actualRows10400=WordField.canonicalRows actualModulus 10400 (.badd 10394 10399) := by core033_kernel_decide
theorem stats10400 : actualRows10400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10400=5388 := by core033_kernel_decide
theorem rows10401 : actualRows10401=WordField.canonicalRows actualModulus 10401 (.badd 10389 10400) := by core033_kernel_decide
theorem stats10401 : actualRows10401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10401=5388 := by core033_kernel_decide
theorem rows10402 : actualRows10402=WordField.canonicalRows actualModulus 10402 (.badd 10293 10389) := by core033_kernel_decide
theorem stats10402 : actualRows10402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10402=5388 := by core033_kernel_decide
theorem rows10403 : actualRows10403=WordField.canonicalRows actualModulus 10403 (.rotr 10402 6) := by core033_kernel_decide
theorem stats10403 : actualRows10403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10403=5124 := by core033_kernel_decide
theorem rows10404 : actualRows10404=WordField.canonicalRows actualModulus 10404 (.rotr 10402 11) := by core033_kernel_decide
theorem stats10404 : actualRows10404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10404=5124 := by core033_kernel_decide
theorem rows10405 : actualRows10405=WordField.canonicalRows actualModulus 10405 (.bxor 10403 10404) := by core033_kernel_decide
theorem stats10405 : actualRows10405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10405=7428 := by core033_kernel_decide
theorem rows10406 : actualRows10406=WordField.canonicalRows actualModulus 10406 (.rotr 10402 25) := by core033_kernel_decide
theorem stats10406 : actualRows10406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10406=5124 := by core033_kernel_decide
theorem rows10407 : actualRows10407=WordField.canonicalRows actualModulus 10407 (.bxor 10405 10406) := by core033_kernel_decide
theorem stats10407 : actualRows10407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10407=7428 := by core033_kernel_decide
theorem rows10408 : actualRows10408=WordField.canonicalRows actualModulus 10408 (.badd 10321 10407) := by core033_kernel_decide
theorem stats10408 : actualRows10408.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10408=5388 := by core033_kernel_decide
theorem rows10409 : actualRows10409=WordField.canonicalRows actualModulus 10409 (.band 10402 10375) := by core033_kernel_decide
theorem stats10409 : actualRows10409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10409=5124 := by core033_kernel_decide
theorem rows10410 : actualRows10410=WordField.canonicalRows actualModulus 10410 (.bnot 10402) := by core033_kernel_decide
theorem stats10410 : actualRows10410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10410=6276 := by core033_kernel_decide
theorem rows10411 : actualRows10411=WordField.canonicalRows actualModulus 10411 (.band 10410 10348) := by core033_kernel_decide
theorem stats10411 : actualRows10411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10411=5124 := by core033_kernel_decide
theorem rows10412 : actualRows10412=WordField.canonicalRows actualModulus 10412 (.bxor 10409 10411) := by core033_kernel_decide
theorem stats10412 : actualRows10412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10412=7428 := by core033_kernel_decide
theorem rows10413 : actualRows10413=WordField.canonicalRows actualModulus 10413 (.badd 10408 10412) := by core033_kernel_decide
theorem stats10413 : actualRows10413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10413=5388 := by core033_kernel_decide
theorem rows10414 : actualRows10414=WordField.canonicalRows actualModulus 10414 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats10414 : actualRows10414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10414=3900 := by core033_kernel_decide
theorem rows10415 : actualRows10415=WordField.canonicalRows actualModulus 10415 (.badd 10413 10414) := by core033_kernel_decide
theorem stats10415 : actualRows10415.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10415=5388 := by core033_kernel_decide
theorem rows10416 : actualRows10416=WordField.canonicalRows actualModulus 10416 (.badd 10415 8729) := by core033_kernel_decide
theorem stats10416 : actualRows10416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10416=5388 := by core033_kernel_decide
theorem rows10417 : actualRows10417=WordField.canonicalRows actualModulus 10417 (.rotr 10401 2) := by core033_kernel_decide
theorem stats10417 : actualRows10417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10417=5124 := by core033_kernel_decide
theorem rows10418 : actualRows10418=WordField.canonicalRows actualModulus 10418 (.rotr 10401 13) := by core033_kernel_decide
theorem stats10418 : actualRows10418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10418=5124 := by core033_kernel_decide
theorem rows10419 : actualRows10419=WordField.canonicalRows actualModulus 10419 (.bxor 10417 10418) := by core033_kernel_decide
theorem stats10419 : actualRows10419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10419=7428 := by core033_kernel_decide
theorem rows10420 : actualRows10420=WordField.canonicalRows actualModulus 10420 (.rotr 10401 22) := by core033_kernel_decide
theorem stats10420 : actualRows10420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10420=5124 := by core033_kernel_decide
theorem rows10421 : actualRows10421=WordField.canonicalRows actualModulus 10421 (.bxor 10419 10420) := by core033_kernel_decide
theorem stats10421 : actualRows10421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10421=7428 := by core033_kernel_decide
def partRows160 : List R1CS.Row := actualRows10358++actualRows10359++actualRows10360++actualRows10361++actualRows10362++actualRows10363++actualRows10364++actualRows10365++actualRows10366++actualRows10367++actualRows10368++actualRows10369++actualRows10370++actualRows10371++actualRows10372++actualRows10373++actualRows10374++actualRows10375++actualRows10376++actualRows10377++actualRows10378++actualRows10379++actualRows10380++actualRows10381++actualRows10382++actualRows10383++actualRows10384++actualRows10385++actualRows10386++actualRows10387++actualRows10388++actualRows10389++actualRows10390++actualRows10391++actualRows10392++actualRows10393++actualRows10394++actualRows10395++actualRows10396++actualRows10397++actualRows10398++actualRows10399++actualRows10400++actualRows10401++actualRows10402++actualRows10403++actualRows10404++actualRows10405++actualRows10406++actualRows10407++actualRows10408++actualRows10409++actualRows10410++actualRows10411++actualRows10412++actualRows10413++actualRows10414++actualRows10415++actualRows10416++actualRows10417++actualRows10418++actualRows10419++actualRows10420++actualRows10421
def partOps160 : List WordIR.Op := [.bxor 10355 10357,.badd 10354 10358,.literal (BitVec.ofNat 32 2361852424),.badd 10359 10360,.badd 10361 8703,.rotr 10347 2,.rotr 10347 13,.bxor 10363 10364,.rotr 10347 22,.bxor 10365 10366,.band 10347 10320,.band 10347 10293,.bxor 10368 10369,.band 10320 10293,.bxor 10370 10371,.badd 10367 10372,.badd 10362 10373,.badd 10266 10362,.rotr 10375 6,.rotr 10375 11,.bxor 10376 10377,.rotr 10375 25,.bxor 10378 10379,.badd 10294 10380,.band 10375 10348,.bnot 10375,.band 10383 10321,.bxor 10382 10384,.badd 10381 10385,.literal (BitVec.ofNat 32 2428436474),.badd 10386 10387,.badd 10388 8716,.rotr 10374 2,.rotr 10374 13,.bxor 10390 10391,.rotr 10374 22,.bxor 10392 10393,.band 10374 10347,.band 10374 10320,.bxor 10395 10396,.band 10347 10320,.bxor 10397 10398,.badd 10394 10399,.badd 10389 10400,.badd 10293 10389,.rotr 10402 6,.rotr 10402 11,.bxor 10403 10404,.rotr 10402 25,.bxor 10405 10406,.badd 10321 10407,.band 10402 10375,.bnot 10402,.band 10410 10348,.bxor 10409 10411,.badd 10408 10412,.literal (BitVec.ofNat 32 2756734187),.badd 10413 10414,.badd 10415 8729,.rotr 10401 2,.rotr 10401 13,.bxor 10417 10418,.rotr 10401 22,.bxor 10419 10420]
theorem partExact160 : partRows160=WordField.rows actualModulus 10358 partOps160 := by
  simp only [partRows160,partOps160,WordField.rows,rows10358,rows10359,rows10360,rows10361,rows10362,rows10363,rows10364,rows10365,rows10366,rows10367,rows10368,rows10369,rows10370,rows10371,rows10372,rows10373,rows10374,rows10375,rows10376,rows10377,rows10378,rows10379,rows10380,rows10381,rows10382,rows10383,rows10384,rows10385,rows10386,rows10387,rows10388,rows10389,rows10390,rows10391,rows10392,rows10393,rows10394,rows10395,rows10396,rows10397,rows10398,rows10399,rows10400,rows10401,rows10402,rows10403,rows10404,rows10405,rows10406,rows10407,rows10408,rows10409,rows10410,rows10411,rows10412,rows10413,rows10414,rows10415,rows10416,rows10417,rows10418,rows10419,rows10420,rows10421,List.append_assoc,List.append_nil]
theorem partLength160 : partOps160.length=64 := by decide
theorem partStats160 : partRows160.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows160=370368 := by
  simp only [partRows160,List.length_append,MatrixRowBlocks.rows_weight_append,stats10358.1,stats10358.2,stats10359.1,stats10359.2,stats10360.1,stats10360.2,stats10361.1,stats10361.2,stats10362.1,stats10362.2,stats10363.1,stats10363.2,stats10364.1,stats10364.2,stats10365.1,stats10365.2,stats10366.1,stats10366.2,stats10367.1,stats10367.2,stats10368.1,stats10368.2,stats10369.1,stats10369.2,stats10370.1,stats10370.2,stats10371.1,stats10371.2,stats10372.1,stats10372.2,stats10373.1,stats10373.2,stats10374.1,stats10374.2,stats10375.1,stats10375.2,stats10376.1,stats10376.2,stats10377.1,stats10377.2,stats10378.1,stats10378.2,stats10379.1,stats10379.2,stats10380.1,stats10380.2,stats10381.1,stats10381.2,stats10382.1,stats10382.2,stats10383.1,stats10383.2,stats10384.1,stats10384.2,stats10385.1,stats10385.2,stats10386.1,stats10386.2,stats10387.1,stats10387.2,stats10388.1,stats10388.2,stats10389.1,stats10389.2,stats10390.1,stats10390.2,stats10391.1,stats10391.2,stats10392.1,stats10392.2,stats10393.1,stats10393.2,stats10394.1,stats10394.2,stats10395.1,stats10395.2,stats10396.1,stats10396.2,stats10397.1,stats10397.2,stats10398.1,stats10398.2,stats10399.1,stats10399.2,stats10400.1,stats10400.2,stats10401.1,stats10401.2,stats10402.1,stats10402.2,stats10403.1,stats10403.2,stats10404.1,stats10404.2,stats10405.1,stats10405.2,stats10406.1,stats10406.2,stats10407.1,stats10407.2,stats10408.1,stats10408.2,stats10409.1,stats10409.2,stats10410.1,stats10410.2,stats10411.1,stats10411.2,stats10412.1,stats10412.2,stats10413.1,stats10413.2,stats10414.1,stats10414.2,stats10415.1,stats10415.2,stats10416.1,stats10416.2,stats10417.1,stats10417.2,stats10418.1,stats10418.2,stats10419.1,stats10419.2,stats10420.1,stats10420.2,stats10421.1,stats10421.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
