import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData161
import PairedPathRoundInstructionMatrixData162
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10336 : actualRows10336=WordField.canonicalRows actualModulus 10336 (.badd 10334 10335) := by core033_kernel_decide
theorem stats10336 : actualRows10336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10336=5388 := by core033_kernel_decide
theorem rows10337 : actualRows10337=WordField.canonicalRows actualModulus 10337 (.band 10336 49) := by core033_kernel_decide
theorem stats10337 : actualRows10337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10337=5124 := by core033_kernel_decide
theorem rows10338 : actualRows10338=WordField.canonicalRows actualModulus 10338 (.bnot 9926) := by core033_kernel_decide
theorem stats10338 : actualRows10338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10338=6276 := by core033_kernel_decide
theorem rows10339 : actualRows10339=WordField.canonicalRows actualModulus 10339 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10339 : actualRows10339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10339=2892 := by core033_kernel_decide
theorem rows10340 : actualRows10340=WordField.canonicalRows actualModulus 10340 (.badd 10338 10339) := by core033_kernel_decide
theorem stats10340 : actualRows10340.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10340=5388 := by core033_kernel_decide
theorem rows10341 : actualRows10341=WordField.canonicalRows actualModulus 10341 (.bnot 10340) := by core033_kernel_decide
theorem stats10341 : actualRows10341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10341=6276 := by core033_kernel_decide
theorem rows10342 : actualRows10342=WordField.canonicalRows actualModulus 10342 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10342 : actualRows10342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10342=2820 := by core033_kernel_decide
theorem rows10343 : actualRows10343=WordField.canonicalRows actualModulus 10343 (.band 10341 10342) := by core033_kernel_decide
theorem stats10343 : actualRows10343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10343=5124 := by core033_kernel_decide
theorem rows10344 : actualRows10344=WordField.canonicalRows actualModulus 10344 (.bxor 10337 10343) := by core033_kernel_decide
theorem stats10344 : actualRows10344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10344=7428 := by core033_kernel_decide
theorem rows10345 : actualRows10345=WordField.canonicalRows actualModulus 10345 (.bnot 9926) := by core033_kernel_decide
theorem stats10345 : actualRows10345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10345=6276 := by core033_kernel_decide
theorem rows10346 : actualRows10346=WordField.canonicalRows actualModulus 10346 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10346 : actualRows10346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10346=2892 := by core033_kernel_decide
theorem rows10347 : actualRows10347=WordField.canonicalRows actualModulus 10347 (.badd 10345 10346) := by core033_kernel_decide
theorem stats10347 : actualRows10347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10347=5388 := by core033_kernel_decide
theorem rows10348 : actualRows10348=WordField.canonicalRows actualModulus 10348 (.band 10347 50) := by core033_kernel_decide
theorem stats10348 : actualRows10348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10348=5124 := by core033_kernel_decide
theorem rows10349 : actualRows10349=WordField.canonicalRows actualModulus 10349 (.bnot 9926) := by core033_kernel_decide
theorem stats10349 : actualRows10349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10349=6276 := by core033_kernel_decide
theorem rows10350 : actualRows10350=WordField.canonicalRows actualModulus 10350 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10350 : actualRows10350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10350=2892 := by core033_kernel_decide
theorem rows10351 : actualRows10351=WordField.canonicalRows actualModulus 10351 (.badd 10349 10350) := by core033_kernel_decide
theorem stats10351 : actualRows10351.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10351=5388 := by core033_kernel_decide
theorem rows10352 : actualRows10352=WordField.canonicalRows actualModulus 10352 (.bnot 10351) := by core033_kernel_decide
theorem stats10352 : actualRows10352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10352=6276 := by core033_kernel_decide
theorem rows10353 : actualRows10353=WordField.canonicalRows actualModulus 10353 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10353 : actualRows10353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10353=2820 := by core033_kernel_decide
theorem rows10354 : actualRows10354=WordField.canonicalRows actualModulus 10354 (.band 10352 10353) := by core033_kernel_decide
theorem stats10354 : actualRows10354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10354=5124 := by core033_kernel_decide
theorem rows10355 : actualRows10355=WordField.canonicalRows actualModulus 10355 (.bxor 10348 10354) := by core033_kernel_decide
theorem stats10355 : actualRows10355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10355=7428 := by core033_kernel_decide
theorem rows10356 : actualRows10356=WordField.canonicalRows actualModulus 10356 (.bnot 9926) := by core033_kernel_decide
theorem stats10356 : actualRows10356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10356=6276 := by core033_kernel_decide
theorem rows10357 : actualRows10357=WordField.canonicalRows actualModulus 10357 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10357 : actualRows10357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10357=2892 := by core033_kernel_decide
theorem rows10358 : actualRows10358=WordField.canonicalRows actualModulus 10358 (.badd 10356 10357) := by core033_kernel_decide
theorem stats10358 : actualRows10358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10358=5388 := by core033_kernel_decide
theorem rows10359 : actualRows10359=WordField.canonicalRows actualModulus 10359 (.band 10358 51) := by core033_kernel_decide
theorem stats10359 : actualRows10359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10359=5124 := by core033_kernel_decide
theorem rows10360 : actualRows10360=WordField.canonicalRows actualModulus 10360 (.bnot 9926) := by core033_kernel_decide
theorem stats10360 : actualRows10360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10360=6276 := by core033_kernel_decide
theorem rows10361 : actualRows10361=WordField.canonicalRows actualModulus 10361 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10361 : actualRows10361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10361=2892 := by core033_kernel_decide
theorem rows10362 : actualRows10362=WordField.canonicalRows actualModulus 10362 (.badd 10360 10361) := by core033_kernel_decide
theorem stats10362 : actualRows10362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10362=5388 := by core033_kernel_decide
theorem rows10363 : actualRows10363=WordField.canonicalRows actualModulus 10363 (.bnot 10362) := by core033_kernel_decide
theorem stats10363 : actualRows10363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10363=6276 := by core033_kernel_decide
theorem rows10364 : actualRows10364=WordField.canonicalRows actualModulus 10364 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10364 : actualRows10364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10364=2820 := by core033_kernel_decide
theorem rows10365 : actualRows10365=WordField.canonicalRows actualModulus 10365 (.band 10363 10364) := by core033_kernel_decide
theorem stats10365 : actualRows10365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10365=5124 := by core033_kernel_decide
theorem rows10366 : actualRows10366=WordField.canonicalRows actualModulus 10366 (.bxor 10359 10365) := by core033_kernel_decide
theorem stats10366 : actualRows10366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10366=7428 := by core033_kernel_decide
theorem rows10367 : actualRows10367=WordField.canonicalRows actualModulus 10367 (.bnot 9926) := by core033_kernel_decide
theorem stats10367 : actualRows10367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10367=6276 := by core033_kernel_decide
theorem rows10368 : actualRows10368=WordField.canonicalRows actualModulus 10368 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10368 : actualRows10368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10368=2892 := by core033_kernel_decide
theorem rows10369 : actualRows10369=WordField.canonicalRows actualModulus 10369 (.badd 10367 10368) := by core033_kernel_decide
theorem stats10369 : actualRows10369.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10369=5388 := by core033_kernel_decide
theorem rows10370 : actualRows10370=WordField.canonicalRows actualModulus 10370 (.band 10369 52) := by core033_kernel_decide
theorem stats10370 : actualRows10370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10370=5124 := by core033_kernel_decide
theorem rows10371 : actualRows10371=WordField.canonicalRows actualModulus 10371 (.bnot 9926) := by core033_kernel_decide
theorem stats10371 : actualRows10371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10371=6276 := by core033_kernel_decide
theorem rows10372 : actualRows10372=WordField.canonicalRows actualModulus 10372 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10372 : actualRows10372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10372=2892 := by core033_kernel_decide
theorem rows10373 : actualRows10373=WordField.canonicalRows actualModulus 10373 (.badd 10371 10372) := by core033_kernel_decide
theorem stats10373 : actualRows10373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10373=5388 := by core033_kernel_decide
theorem rows10374 : actualRows10374=WordField.canonicalRows actualModulus 10374 (.bnot 10373) := by core033_kernel_decide
theorem stats10374 : actualRows10374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10374=6276 := by core033_kernel_decide
theorem rows10375 : actualRows10375=WordField.canonicalRows actualModulus 10375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10375 : actualRows10375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10375=2820 := by core033_kernel_decide
theorem rows10376 : actualRows10376=WordField.canonicalRows actualModulus 10376 (.band 10374 10375) := by core033_kernel_decide
theorem stats10376 : actualRows10376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10376=5124 := by core033_kernel_decide
theorem rows10377 : actualRows10377=WordField.canonicalRows actualModulus 10377 (.bxor 10370 10376) := by core033_kernel_decide
theorem stats10377 : actualRows10377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10377=7428 := by core033_kernel_decide
theorem rows10378 : actualRows10378=WordField.canonicalRows actualModulus 10378 (.bnot 9926) := by core033_kernel_decide
theorem stats10378 : actualRows10378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10378=6276 := by core033_kernel_decide
theorem rows10379 : actualRows10379=WordField.canonicalRows actualModulus 10379 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10379 : actualRows10379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10379=2892 := by core033_kernel_decide
theorem rows10380 : actualRows10380=WordField.canonicalRows actualModulus 10380 (.badd 10378 10379) := by core033_kernel_decide
theorem stats10380 : actualRows10380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10380=5388 := by core033_kernel_decide
theorem rows10381 : actualRows10381=WordField.canonicalRows actualModulus 10381 (.band 10380 53) := by core033_kernel_decide
theorem stats10381 : actualRows10381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10381=5124 := by core033_kernel_decide
theorem rows10382 : actualRows10382=WordField.canonicalRows actualModulus 10382 (.bnot 9926) := by core033_kernel_decide
theorem stats10382 : actualRows10382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10382=6276 := by core033_kernel_decide
theorem rows10383 : actualRows10383=WordField.canonicalRows actualModulus 10383 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10383 : actualRows10383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10383=2892 := by core033_kernel_decide
theorem rows10384 : actualRows10384=WordField.canonicalRows actualModulus 10384 (.badd 10382 10383) := by core033_kernel_decide
theorem stats10384 : actualRows10384.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10384=5388 := by core033_kernel_decide
theorem rows10385 : actualRows10385=WordField.canonicalRows actualModulus 10385 (.bnot 10384) := by core033_kernel_decide
theorem stats10385 : actualRows10385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10385=6276 := by core033_kernel_decide
theorem rows10386 : actualRows10386=WordField.canonicalRows actualModulus 10386 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10386 : actualRows10386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10386=2820 := by core033_kernel_decide
theorem rows10387 : actualRows10387=WordField.canonicalRows actualModulus 10387 (.band 10385 10386) := by core033_kernel_decide
theorem stats10387 : actualRows10387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10387=5124 := by core033_kernel_decide
theorem rows10388 : actualRows10388=WordField.canonicalRows actualModulus 10388 (.bxor 10381 10387) := by core033_kernel_decide
theorem stats10388 : actualRows10388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10388=7428 := by core033_kernel_decide
theorem rows10389 : actualRows10389=WordField.canonicalRows actualModulus 10389 (.bnot 9926) := by core033_kernel_decide
theorem stats10389 : actualRows10389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10389=6276 := by core033_kernel_decide
theorem rows10390 : actualRows10390=WordField.canonicalRows actualModulus 10390 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10390 : actualRows10390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10390=2892 := by core033_kernel_decide
theorem rows10391 : actualRows10391=WordField.canonicalRows actualModulus 10391 (.badd 10389 10390) := by core033_kernel_decide
theorem stats10391 : actualRows10391.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10391=5388 := by core033_kernel_decide
theorem rows10392 : actualRows10392=WordField.canonicalRows actualModulus 10392 (.band 10391 54) := by core033_kernel_decide
theorem stats10392 : actualRows10392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10392=5124 := by core033_kernel_decide
theorem rows10393 : actualRows10393=WordField.canonicalRows actualModulus 10393 (.bnot 9926) := by core033_kernel_decide
theorem stats10393 : actualRows10393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10393=6276 := by core033_kernel_decide
theorem rows10394 : actualRows10394=WordField.canonicalRows actualModulus 10394 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10394 : actualRows10394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10394=2892 := by core033_kernel_decide
theorem rows10395 : actualRows10395=WordField.canonicalRows actualModulus 10395 (.badd 10393 10394) := by core033_kernel_decide
theorem stats10395 : actualRows10395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10395=5388 := by core033_kernel_decide
theorem rows10396 : actualRows10396=WordField.canonicalRows actualModulus 10396 (.bnot 10395) := by core033_kernel_decide
theorem stats10396 : actualRows10396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10396=6276 := by core033_kernel_decide
theorem rows10397 : actualRows10397=WordField.canonicalRows actualModulus 10397 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10397 : actualRows10397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10397=2820 := by core033_kernel_decide
theorem rows10398 : actualRows10398=WordField.canonicalRows actualModulus 10398 (.band 10396 10397) := by core033_kernel_decide
theorem stats10398 : actualRows10398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10398=5124 := by core033_kernel_decide
theorem rows10399 : actualRows10399=WordField.canonicalRows actualModulus 10399 (.bxor 10392 10398) := by core033_kernel_decide
theorem stats10399 : actualRows10399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10399=7428 := by core033_kernel_decide
def partRows160 : List R1CS.Row := actualRows10336++actualRows10337++actualRows10338++actualRows10339++actualRows10340++actualRows10341++actualRows10342++actualRows10343++actualRows10344++actualRows10345++actualRows10346++actualRows10347++actualRows10348++actualRows10349++actualRows10350++actualRows10351++actualRows10352++actualRows10353++actualRows10354++actualRows10355++actualRows10356++actualRows10357++actualRows10358++actualRows10359++actualRows10360++actualRows10361++actualRows10362++actualRows10363++actualRows10364++actualRows10365++actualRows10366++actualRows10367++actualRows10368++actualRows10369++actualRows10370++actualRows10371++actualRows10372++actualRows10373++actualRows10374++actualRows10375++actualRows10376++actualRows10377++actualRows10378++actualRows10379++actualRows10380++actualRows10381++actualRows10382++actualRows10383++actualRows10384++actualRows10385++actualRows10386++actualRows10387++actualRows10388++actualRows10389++actualRows10390++actualRows10391++actualRows10392++actualRows10393++actualRows10394++actualRows10395++actualRows10396++actualRows10397++actualRows10398++actualRows10399
def partOps160 : List WordIR.Op := [.badd 10334 10335,.band 10336 49,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10338 10339,.bnot 10340,.literal (BitVec.ofNat 32 0),.band 10341 10342,.bxor 10337 10343,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10345 10346,.band 10347 50,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10349 10350,.bnot 10351,.literal (BitVec.ofNat 32 0),.band 10352 10353,.bxor 10348 10354,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10356 10357,.band 10358 51,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10360 10361,.bnot 10362,.literal (BitVec.ofNat 32 0),.band 10363 10364,.bxor 10359 10365,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10367 10368,.band 10369 52,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10371 10372,.bnot 10373,.literal (BitVec.ofNat 32 0),.band 10374 10375,.bxor 10370 10376,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10378 10379,.band 10380 53,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10382 10383,.bnot 10384,.literal (BitVec.ofNat 32 0),.band 10385 10386,.bxor 10381 10387,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10389 10390,.band 10391 54,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10393 10394,.bnot 10395,.literal (BitVec.ofNat 32 0),.band 10396 10397,.bxor 10392 10398]
theorem partExact160 : partRows160=WordField.rows actualModulus 10336 partOps160 := by
  simp only [partRows160,partOps160,WordField.rows,rows10336,rows10337,rows10338,rows10339,rows10340,rows10341,rows10342,rows10343,rows10344,rows10345,rows10346,rows10347,rows10348,rows10349,rows10350,rows10351,rows10352,rows10353,rows10354,rows10355,rows10356,rows10357,rows10358,rows10359,rows10360,rows10361,rows10362,rows10363,rows10364,rows10365,rows10366,rows10367,rows10368,rows10369,rows10370,rows10371,rows10372,rows10373,rows10374,rows10375,rows10376,rows10377,rows10378,rows10379,rows10380,rows10381,rows10382,rows10383,rows10384,rows10385,rows10386,rows10387,rows10388,rows10389,rows10390,rows10391,rows10392,rows10393,rows10394,rows10395,rows10396,rows10397,rows10398,rows10399,List.append_assoc,List.append_nil]
theorem partLength160 : partOps160.length=64 := by decide
theorem partStats160 : partRows160.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows160=326136 := by
  simp only [partRows160,List.length_append,MatrixRowBlocks.rows_weight_append,stats10336.1,stats10336.2,stats10337.1,stats10337.2,stats10338.1,stats10338.2,stats10339.1,stats10339.2,stats10340.1,stats10340.2,stats10341.1,stats10341.2,stats10342.1,stats10342.2,stats10343.1,stats10343.2,stats10344.1,stats10344.2,stats10345.1,stats10345.2,stats10346.1,stats10346.2,stats10347.1,stats10347.2,stats10348.1,stats10348.2,stats10349.1,stats10349.2,stats10350.1,stats10350.2,stats10351.1,stats10351.2,stats10352.1,stats10352.2,stats10353.1,stats10353.2,stats10354.1,stats10354.2,stats10355.1,stats10355.2,stats10356.1,stats10356.2,stats10357.1,stats10357.2,stats10358.1,stats10358.2,stats10359.1,stats10359.2,stats10360.1,stats10360.2,stats10361.1,stats10361.2,stats10362.1,stats10362.2,stats10363.1,stats10363.2,stats10364.1,stats10364.2,stats10365.1,stats10365.2,stats10366.1,stats10366.2,stats10367.1,stats10367.2,stats10368.1,stats10368.2,stats10369.1,stats10369.2,stats10370.1,stats10370.2,stats10371.1,stats10371.2,stats10372.1,stats10372.2,stats10373.1,stats10373.2,stats10374.1,stats10374.2,stats10375.1,stats10375.2,stats10376.1,stats10376.2,stats10377.1,stats10377.2,stats10378.1,stats10378.2,stats10379.1,stats10379.2,stats10380.1,stats10380.2,stats10381.1,stats10381.2,stats10382.1,stats10382.2,stats10383.1,stats10383.2,stats10384.1,stats10384.2,stats10385.1,stats10385.2,stats10386.1,stats10386.2,stats10387.1,stats10387.2,stats10388.1,stats10388.2,stats10389.1,stats10389.2,stats10390.1,stats10390.2,stats10391.1,stats10391.2,stats10392.1,stats10392.2,stats10393.1,stats10393.2,stats10394.1,stats10394.2,stats10395.1,stats10395.2,stats10396.1,stats10396.2,stats10397.1,stats10397.2,stats10398.1,stats10398.2,stats10399.1,stats10399.2]
  decide
end PairedPathRoundCheckedRows
