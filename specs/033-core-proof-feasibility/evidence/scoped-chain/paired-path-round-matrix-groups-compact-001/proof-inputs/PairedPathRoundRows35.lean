import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData36
import PairedPathRoundInstructionMatrixData37
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2336 : actualRows2336=WordField.canonicalRows actualModulus 2336 (.band 2331 2335) := by core033_kernel_decide
theorem stats2336 : actualRows2336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2336=5124 := by core033_kernel_decide
theorem rows2337 : actualRows2337=WordField.canonicalRows actualModulus 2337 (.bxor 2328 2336) := by core033_kernel_decide
theorem stats2337 : actualRows2337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2337=7428 := by core033_kernel_decide
theorem rows2338 : actualRows2338=WordField.canonicalRows actualModulus 2338 (.shr 2337 31) := by core033_kernel_decide
theorem stats2338 : actualRows2338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2338=2892 := by core033_kernel_decide
theorem rows2339 : actualRows2339=WordField.canonicalRows actualModulus 2339 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2339 : actualRows2339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2339=2892 := by core033_kernel_decide
theorem rows2340 : actualRows2340=WordField.canonicalRows actualModulus 2340 (.bxor 2338 2339) := by core033_kernel_decide
theorem stats2340 : actualRows2340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2340=7428 := by core033_kernel_decide
theorem rows2341 : actualRows2341=WordField.canonicalRows actualModulus 2341 (.band 2325 2340) := by core033_kernel_decide
theorem stats2341 : actualRows2341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2341=5124 := by core033_kernel_decide
theorem rows2342 : actualRows2342=WordField.canonicalRows actualModulus 2342 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2342 : actualRows2342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2342=2820 := by core033_kernel_decide
theorem rows2343 : actualRows2343=WordField.canonicalRows actualModulus 2343 (.bnot 2342) := by core033_kernel_decide
theorem stats2343 : actualRows2343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2343=6276 := by core033_kernel_decide
theorem rows2344 : actualRows2344=WordField.canonicalRows actualModulus 2344 (.band 1615 2343) := by core033_kernel_decide
theorem stats2344 : actualRows2344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2344=5124 := by core033_kernel_decide
theorem rows2345 : actualRows2345=WordField.canonicalRows actualModulus 2345 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2345 : actualRows2345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2345=2820 := by core033_kernel_decide
theorem rows2346 : actualRows2346=WordField.canonicalRows actualModulus 2346 (.bnot 2345) := by core033_kernel_decide
theorem stats2346 : actualRows2346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2346=6276 := by core033_kernel_decide
theorem rows2347 : actualRows2347=WordField.canonicalRows actualModulus 2347 (.bxor 1615 2346) := by core033_kernel_decide
theorem stats2347 : actualRows2347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2347=7428 := by core033_kernel_decide
theorem rows2348 : actualRows2348=WordField.canonicalRows actualModulus 2348 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2348 : actualRows2348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2348=2820 := by core033_kernel_decide
theorem rows2349 : actualRows2349=WordField.canonicalRows actualModulus 2349 (.bnot 2348) := by core033_kernel_decide
theorem stats2349 : actualRows2349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2349=6276 := by core033_kernel_decide
theorem rows2350 : actualRows2350=WordField.canonicalRows actualModulus 2350 (.badd 1615 2349) := by core033_kernel_decide
theorem stats2350 : actualRows2350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2350=5388 := by core033_kernel_decide
theorem rows2351 : actualRows2351=WordField.canonicalRows actualModulus 2351 (.bnot 2350) := by core033_kernel_decide
theorem stats2351 : actualRows2351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2351=6276 := by core033_kernel_decide
theorem rows2352 : actualRows2352=WordField.canonicalRows actualModulus 2352 (.band 2347 2351) := by core033_kernel_decide
theorem stats2352 : actualRows2352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2352=5124 := by core033_kernel_decide
theorem rows2353 : actualRows2353=WordField.canonicalRows actualModulus 2353 (.bxor 2344 2352) := by core033_kernel_decide
theorem stats2353 : actualRows2353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2353=7428 := by core033_kernel_decide
theorem rows2354 : actualRows2354=WordField.canonicalRows actualModulus 2354 (.shr 2353 31) := by core033_kernel_decide
theorem stats2354 : actualRows2354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2354=2892 := by core033_kernel_decide
theorem rows2355 : actualRows2355=WordField.canonicalRows actualModulus 2355 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2355 : actualRows2355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2355=2892 := by core033_kernel_decide
theorem rows2356 : actualRows2356=WordField.canonicalRows actualModulus 2356 (.bxor 2354 2355) := by core033_kernel_decide
theorem stats2356 : actualRows2356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2356=7428 := by core033_kernel_decide
theorem rows2357 : actualRows2357=WordField.canonicalRows actualModulus 2357 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2357 : actualRows2357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2357=2892 := by core033_kernel_decide
theorem rows2358 : actualRows2358=WordField.canonicalRows actualModulus 2358 (.bnot 2357) := by core033_kernel_decide
theorem stats2358 : actualRows2358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2358=6276 := by core033_kernel_decide
theorem rows2359 : actualRows2359=WordField.canonicalRows actualModulus 2359 (.band 1605 2358) := by core033_kernel_decide
theorem stats2359 : actualRows2359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2359=5124 := by core033_kernel_decide
theorem rows2360 : actualRows2360=WordField.canonicalRows actualModulus 2360 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2360 : actualRows2360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2360=2892 := by core033_kernel_decide
theorem rows2361 : actualRows2361=WordField.canonicalRows actualModulus 2361 (.bnot 2360) := by core033_kernel_decide
theorem stats2361 : actualRows2361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2361=6276 := by core033_kernel_decide
theorem rows2362 : actualRows2362=WordField.canonicalRows actualModulus 2362 (.bxor 1605 2361) := by core033_kernel_decide
theorem stats2362 : actualRows2362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2362=7428 := by core033_kernel_decide
theorem rows2363 : actualRows2363=WordField.canonicalRows actualModulus 2363 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2363 : actualRows2363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2363=2892 := by core033_kernel_decide
theorem rows2364 : actualRows2364=WordField.canonicalRows actualModulus 2364 (.bnot 2363) := by core033_kernel_decide
theorem stats2364 : actualRows2364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2364=6276 := by core033_kernel_decide
theorem rows2365 : actualRows2365=WordField.canonicalRows actualModulus 2365 (.badd 1605 2364) := by core033_kernel_decide
theorem stats2365 : actualRows2365.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2365=5388 := by core033_kernel_decide
theorem rows2366 : actualRows2366=WordField.canonicalRows actualModulus 2366 (.bnot 2365) := by core033_kernel_decide
theorem stats2366 : actualRows2366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2366=6276 := by core033_kernel_decide
theorem rows2367 : actualRows2367=WordField.canonicalRows actualModulus 2367 (.band 2362 2366) := by core033_kernel_decide
theorem stats2367 : actualRows2367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2367=5124 := by core033_kernel_decide
theorem rows2368 : actualRows2368=WordField.canonicalRows actualModulus 2368 (.bxor 2359 2367) := by core033_kernel_decide
theorem stats2368 : actualRows2368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2368=7428 := by core033_kernel_decide
theorem rows2369 : actualRows2369=WordField.canonicalRows actualModulus 2369 (.shr 2368 31) := by core033_kernel_decide
theorem stats2369 : actualRows2369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2369=2892 := by core033_kernel_decide
theorem rows2370 : actualRows2370=WordField.canonicalRows actualModulus 2370 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2370 : actualRows2370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2370=2892 := by core033_kernel_decide
theorem rows2371 : actualRows2371=WordField.canonicalRows actualModulus 2371 (.bxor 2369 2370) := by core033_kernel_decide
theorem stats2371 : actualRows2371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2371=7428 := by core033_kernel_decide
theorem rows2372 : actualRows2372=WordField.canonicalRows actualModulus 2372 (.band 2356 2371) := by core033_kernel_decide
theorem stats2372 : actualRows2372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2372=5124 := by core033_kernel_decide
theorem rows2373 : actualRows2373=WordField.canonicalRows actualModulus 2373 (.band 2341 2372) := by core033_kernel_decide
theorem stats2373 : actualRows2373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2373=5124 := by core033_kernel_decide
theorem rows2374 : actualRows2374=WordField.canonicalRows actualModulus 2374 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2374 : actualRows2374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2374=5388 := by core033_kernel_decide
theorem rows2375 : actualRows2375=WordField.canonicalRows actualModulus 2375 (.band 1485 1605) := by core033_kernel_decide
theorem stats2375 : actualRows2375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2375=5124 := by core033_kernel_decide
theorem rows2376 : actualRows2376=WordField.canonicalRows actualModulus 2376 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2376 : actualRows2376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2376=7428 := by core033_kernel_decide
theorem rows2377 : actualRows2377=WordField.canonicalRows actualModulus 2377 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2377 : actualRows2377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2377=5388 := by core033_kernel_decide
theorem rows2378 : actualRows2378=WordField.canonicalRows actualModulus 2378 (.bnot 2377) := by core033_kernel_decide
theorem stats2378 : actualRows2378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2378=6276 := by core033_kernel_decide
theorem rows2379 : actualRows2379=WordField.canonicalRows actualModulus 2379 (.band 2376 2378) := by core033_kernel_decide
theorem stats2379 : actualRows2379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2379=5124 := by core033_kernel_decide
theorem rows2380 : actualRows2380=WordField.canonicalRows actualModulus 2380 (.bxor 2375 2379) := by core033_kernel_decide
theorem stats2380 : actualRows2380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2380=7428 := by core033_kernel_decide
theorem rows2381 : actualRows2381=WordField.canonicalRows actualModulus 2381 (.shr 2380 31) := by core033_kernel_decide
theorem stats2381 : actualRows2381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2381=2892 := by core033_kernel_decide
theorem rows2382 : actualRows2382=WordField.canonicalRows actualModulus 2382 (.badd 2374 2381) := by core033_kernel_decide
theorem stats2382 : actualRows2382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2382=5388 := by core033_kernel_decide
theorem rows2383 : actualRows2383=WordField.canonicalRows actualModulus 2383 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2383 : actualRows2383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2383=2820 := by core033_kernel_decide
theorem rows2384 : actualRows2384=WordField.canonicalRows actualModulus 2384 (.bnot 2383) := by core033_kernel_decide
theorem stats2384 : actualRows2384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2384=6276 := by core033_kernel_decide
theorem rows2385 : actualRows2385=WordField.canonicalRows actualModulus 2385 (.band 2382 2384) := by core033_kernel_decide
theorem stats2385 : actualRows2385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2385=5124 := by core033_kernel_decide
theorem rows2386 : actualRows2386=WordField.canonicalRows actualModulus 2386 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2386 : actualRows2386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2386=5388 := by core033_kernel_decide
theorem rows2387 : actualRows2387=WordField.canonicalRows actualModulus 2387 (.band 1485 1605) := by core033_kernel_decide
theorem stats2387 : actualRows2387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2387=5124 := by core033_kernel_decide
theorem rows2388 : actualRows2388=WordField.canonicalRows actualModulus 2388 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2388 : actualRows2388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2388=7428 := by core033_kernel_decide
theorem rows2389 : actualRows2389=WordField.canonicalRows actualModulus 2389 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2389 : actualRows2389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2389=5388 := by core033_kernel_decide
theorem rows2390 : actualRows2390=WordField.canonicalRows actualModulus 2390 (.bnot 2389) := by core033_kernel_decide
theorem stats2390 : actualRows2390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2390=6276 := by core033_kernel_decide
theorem rows2391 : actualRows2391=WordField.canonicalRows actualModulus 2391 (.band 2388 2390) := by core033_kernel_decide
theorem stats2391 : actualRows2391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2391=5124 := by core033_kernel_decide
theorem rows2392 : actualRows2392=WordField.canonicalRows actualModulus 2392 (.bxor 2387 2391) := by core033_kernel_decide
theorem stats2392 : actualRows2392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2392=7428 := by core033_kernel_decide
theorem rows2393 : actualRows2393=WordField.canonicalRows actualModulus 2393 (.shr 2392 31) := by core033_kernel_decide
theorem stats2393 : actualRows2393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2393=2892 := by core033_kernel_decide
theorem rows2394 : actualRows2394=WordField.canonicalRows actualModulus 2394 (.badd 2386 2393) := by core033_kernel_decide
theorem stats2394 : actualRows2394.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2394=5388 := by core033_kernel_decide
theorem rows2395 : actualRows2395=WordField.canonicalRows actualModulus 2395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2395 : actualRows2395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2395=2820 := by core033_kernel_decide
theorem rows2396 : actualRows2396=WordField.canonicalRows actualModulus 2396 (.bnot 2395) := by core033_kernel_decide
theorem stats2396 : actualRows2396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2396=6276 := by core033_kernel_decide
theorem rows2397 : actualRows2397=WordField.canonicalRows actualModulus 2397 (.bxor 2394 2396) := by core033_kernel_decide
theorem stats2397 : actualRows2397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2397=7428 := by core033_kernel_decide
theorem rows2398 : actualRows2398=WordField.canonicalRows actualModulus 2398 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2398 : actualRows2398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2398=5388 := by core033_kernel_decide
theorem rows2399 : actualRows2399=WordField.canonicalRows actualModulus 2399 (.band 1485 1605) := by core033_kernel_decide
theorem stats2399 : actualRows2399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2399=5124 := by core033_kernel_decide
def partRows35 : List R1CS.Row := actualRows2336++actualRows2337++actualRows2338++actualRows2339++actualRows2340++actualRows2341++actualRows2342++actualRows2343++actualRows2344++actualRows2345++actualRows2346++actualRows2347++actualRows2348++actualRows2349++actualRows2350++actualRows2351++actualRows2352++actualRows2353++actualRows2354++actualRows2355++actualRows2356++actualRows2357++actualRows2358++actualRows2359++actualRows2360++actualRows2361++actualRows2362++actualRows2363++actualRows2364++actualRows2365++actualRows2366++actualRows2367++actualRows2368++actualRows2369++actualRows2370++actualRows2371++actualRows2372++actualRows2373++actualRows2374++actualRows2375++actualRows2376++actualRows2377++actualRows2378++actualRows2379++actualRows2380++actualRows2381++actualRows2382++actualRows2383++actualRows2384++actualRows2385++actualRows2386++actualRows2387++actualRows2388++actualRows2389++actualRows2390++actualRows2391++actualRows2392++actualRows2393++actualRows2394++actualRows2395++actualRows2396++actualRows2397++actualRows2398++actualRows2399
def partOps35 : List WordIR.Op := [.band 2331 2335,.bxor 2328 2336,.shr 2337 31,.literal (BitVec.ofNat 32 1),.bxor 2338 2339,.band 2325 2340,.literal (BitVec.ofNat 32 0),.bnot 2342,.band 1615 2343,.literal (BitVec.ofNat 32 0),.bnot 2345,.bxor 1615 2346,.literal (BitVec.ofNat 32 0),.bnot 2348,.badd 1615 2349,.bnot 2350,.band 2347 2351,.bxor 2344 2352,.shr 2353 31,.literal (BitVec.ofNat 32 1),.bxor 2354 2355,.literal (BitVec.ofNat 32 1048576),.bnot 2357,.band 1605 2358,.literal (BitVec.ofNat 32 1048576),.bnot 2360,.bxor 1605 2361,.literal (BitVec.ofNat 32 1048576),.bnot 2363,.badd 1605 2364,.bnot 2365,.band 2362 2366,.bxor 2359 2367,.shr 2368 31,.literal (BitVec.ofNat 32 1),.bxor 2369 2370,.band 2356 2371,.band 2341 2372,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 2377,.band 2376 2378,.bxor 2375 2379,.shr 2380 31,.badd 2374 2381,.literal (BitVec.ofNat 32 0),.bnot 2383,.band 2382 2384,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 2389,.band 2388 2390,.bxor 2387 2391,.shr 2392 31,.badd 2386 2393,.literal (BitVec.ofNat 32 0),.bnot 2395,.bxor 2394 2396,.badd 1495 1615,.band 1485 1605]
theorem partExact35 : partRows35=WordField.rows actualModulus 2336 partOps35 := by
  simp only [partRows35,partOps35,WordField.rows,rows2336,rows2337,rows2338,rows2339,rows2340,rows2341,rows2342,rows2343,rows2344,rows2345,rows2346,rows2347,rows2348,rows2349,rows2350,rows2351,rows2352,rows2353,rows2354,rows2355,rows2356,rows2357,rows2358,rows2359,rows2360,rows2361,rows2362,rows2363,rows2364,rows2365,rows2366,rows2367,rows2368,rows2369,rows2370,rows2371,rows2372,rows2373,rows2374,rows2375,rows2376,rows2377,rows2378,rows2379,rows2380,rows2381,rows2382,rows2383,rows2384,rows2385,rows2386,rows2387,rows2388,rows2389,rows2390,rows2391,rows2392,rows2393,rows2394,rows2395,rows2396,rows2397,rows2398,rows2399,List.append_assoc,List.append_nil]
theorem partLength35 : partOps35.length=64 := by decide
theorem partStats35 : partRows35.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows35=338016 := by
  simp only [partRows35,List.length_append,MatrixRowBlocks.rows_weight_append,stats2336.1,stats2336.2,stats2337.1,stats2337.2,stats2338.1,stats2338.2,stats2339.1,stats2339.2,stats2340.1,stats2340.2,stats2341.1,stats2341.2,stats2342.1,stats2342.2,stats2343.1,stats2343.2,stats2344.1,stats2344.2,stats2345.1,stats2345.2,stats2346.1,stats2346.2,stats2347.1,stats2347.2,stats2348.1,stats2348.2,stats2349.1,stats2349.2,stats2350.1,stats2350.2,stats2351.1,stats2351.2,stats2352.1,stats2352.2,stats2353.1,stats2353.2,stats2354.1,stats2354.2,stats2355.1,stats2355.2,stats2356.1,stats2356.2,stats2357.1,stats2357.2,stats2358.1,stats2358.2,stats2359.1,stats2359.2,stats2360.1,stats2360.2,stats2361.1,stats2361.2,stats2362.1,stats2362.2,stats2363.1,stats2363.2,stats2364.1,stats2364.2,stats2365.1,stats2365.2,stats2366.1,stats2366.2,stats2367.1,stats2367.2,stats2368.1,stats2368.2,stats2369.1,stats2369.2,stats2370.1,stats2370.2,stats2371.1,stats2371.2,stats2372.1,stats2372.2,stats2373.1,stats2373.2,stats2374.1,stats2374.2,stats2375.1,stats2375.2,stats2376.1,stats2376.2,stats2377.1,stats2377.2,stats2378.1,stats2378.2,stats2379.1,stats2379.2,stats2380.1,stats2380.2,stats2381.1,stats2381.2,stats2382.1,stats2382.2,stats2383.1,stats2383.2,stats2384.1,stats2384.2,stats2385.1,stats2385.2,stats2386.1,stats2386.2,stats2387.1,stats2387.2,stats2388.1,stats2388.2,stats2389.1,stats2389.2,stats2390.1,stats2390.2,stats2391.1,stats2391.2,stats2392.1,stats2392.2,stats2393.1,stats2393.2,stats2394.1,stats2394.2,stats2395.1,stats2395.2,stats2396.1,stats2396.2,stats2397.1,stats2397.2,stats2398.1,stats2398.2,stats2399.1,stats2399.2]
  decide
end PairedPathRoundCheckedRows
