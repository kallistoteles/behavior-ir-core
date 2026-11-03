import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData36
import FrameHashControllerInstructionMatrixData37
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2347 : actualRows2347=WordField.canonicalRows actualModulus 2347 (.bnot 2346) := by core033_kernel_decide
theorem stats2347 : actualRows2347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2347=6276 := by core033_kernel_decide
theorem rows2348 : actualRows2348=WordField.canonicalRows actualModulus 2348 (.band 2345 2347) := by core033_kernel_decide
theorem stats2348 : actualRows2348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2348=5124 := by core033_kernel_decide
theorem rows2349 : actualRows2349=WordField.canonicalRows actualModulus 2349 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2349 : actualRows2349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2349=2892 := by core033_kernel_decide
theorem rows2350 : actualRows2350=WordField.canonicalRows actualModulus 2350 (.bxor 0 2349) := by core033_kernel_decide
theorem stats2350 : actualRows2350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2350=7428 := by core033_kernel_decide
theorem rows2351 : actualRows2351=WordField.canonicalRows actualModulus 2351 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2351 : actualRows2351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2351=2820 := by core033_kernel_decide
theorem rows2352 : actualRows2352=WordField.canonicalRows actualModulus 2352 (.bnot 2351) := by core033_kernel_decide
theorem stats2352 : actualRows2352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2352=6276 := by core033_kernel_decide
theorem rows2353 : actualRows2353=WordField.canonicalRows actualModulus 2353 (.bxor 2350 2352) := by core033_kernel_decide
theorem stats2353 : actualRows2353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2353=7428 := by core033_kernel_decide
theorem rows2354 : actualRows2354=WordField.canonicalRows actualModulus 2354 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2354 : actualRows2354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2354=2892 := by core033_kernel_decide
theorem rows2355 : actualRows2355=WordField.canonicalRows actualModulus 2355 (.bxor 0 2354) := by core033_kernel_decide
theorem stats2355 : actualRows2355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2355=7428 := by core033_kernel_decide
theorem rows2356 : actualRows2356=WordField.canonicalRows actualModulus 2356 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2356 : actualRows2356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2356=2820 := by core033_kernel_decide
theorem rows2357 : actualRows2357=WordField.canonicalRows actualModulus 2357 (.bnot 2356) := by core033_kernel_decide
theorem stats2357 : actualRows2357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2357=6276 := by core033_kernel_decide
theorem rows2358 : actualRows2358=WordField.canonicalRows actualModulus 2358 (.badd 2355 2357) := by core033_kernel_decide
theorem stats2358 : actualRows2358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2358=5388 := by core033_kernel_decide
theorem rows2359 : actualRows2359=WordField.canonicalRows actualModulus 2359 (.bnot 2358) := by core033_kernel_decide
theorem stats2359 : actualRows2359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2359=6276 := by core033_kernel_decide
theorem rows2360 : actualRows2360=WordField.canonicalRows actualModulus 2360 (.band 2353 2359) := by core033_kernel_decide
theorem stats2360 : actualRows2360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2360=5124 := by core033_kernel_decide
theorem rows2361 : actualRows2361=WordField.canonicalRows actualModulus 2361 (.bxor 2348 2360) := by core033_kernel_decide
theorem stats2361 : actualRows2361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2361=7428 := by core033_kernel_decide
theorem rows2362 : actualRows2362=WordField.canonicalRows actualModulus 2362 (.shr 2361 31) := by core033_kernel_decide
theorem stats2362 : actualRows2362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2362=2892 := by core033_kernel_decide
theorem rows2363 : actualRows2363=WordField.canonicalRows actualModulus 2363 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2363 : actualRows2363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2363=2892 := by core033_kernel_decide
theorem rows2364 : actualRows2364=WordField.canonicalRows actualModulus 2364 (.bxor 2362 2363) := by core033_kernel_decide
theorem stats2364 : actualRows2364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2364=7428 := by core033_kernel_decide
theorem rows2365 : actualRows2365=WordField.canonicalRows actualModulus 2365 (.bnot 2364) := by core033_kernel_decide
theorem stats2365 : actualRows2365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2365=6276 := by core033_kernel_decide
theorem rows2366 : actualRows2366=WordField.canonicalRows actualModulus 2366 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2366 : actualRows2366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2366=2892 := by core033_kernel_decide
theorem rows2367 : actualRows2367=WordField.canonicalRows actualModulus 2367 (.badd 2365 2366) := by core033_kernel_decide
theorem stats2367 : actualRows2367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2367=5388 := by core033_kernel_decide
theorem rows2368 : actualRows2368=WordField.canonicalRows actualModulus 2368 (.band 2367 1007) := by core033_kernel_decide
theorem stats2368 : actualRows2368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2368=5124 := by core033_kernel_decide
theorem rows2369 : actualRows2369=WordField.canonicalRows actualModulus 2369 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2369 : actualRows2369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2369=2892 := by core033_kernel_decide
theorem rows2370 : actualRows2370=WordField.canonicalRows actualModulus 2370 (.bxor 0 2369) := by core033_kernel_decide
theorem stats2370 : actualRows2370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2370=7428 := by core033_kernel_decide
theorem rows2371 : actualRows2371=WordField.canonicalRows actualModulus 2371 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2371 : actualRows2371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2371=2820 := by core033_kernel_decide
theorem rows2372 : actualRows2372=WordField.canonicalRows actualModulus 2372 (.bnot 2371) := by core033_kernel_decide
theorem stats2372 : actualRows2372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2372=6276 := by core033_kernel_decide
theorem rows2373 : actualRows2373=WordField.canonicalRows actualModulus 2373 (.band 2370 2372) := by core033_kernel_decide
theorem stats2373 : actualRows2373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2373=5124 := by core033_kernel_decide
theorem rows2374 : actualRows2374=WordField.canonicalRows actualModulus 2374 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2374 : actualRows2374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2374=2892 := by core033_kernel_decide
theorem rows2375 : actualRows2375=WordField.canonicalRows actualModulus 2375 (.bxor 0 2374) := by core033_kernel_decide
theorem stats2375 : actualRows2375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2375=7428 := by core033_kernel_decide
theorem rows2376 : actualRows2376=WordField.canonicalRows actualModulus 2376 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2376 : actualRows2376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2376=2820 := by core033_kernel_decide
theorem rows2377 : actualRows2377=WordField.canonicalRows actualModulus 2377 (.bnot 2376) := by core033_kernel_decide
theorem stats2377 : actualRows2377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2377=6276 := by core033_kernel_decide
theorem rows2378 : actualRows2378=WordField.canonicalRows actualModulus 2378 (.bxor 2375 2377) := by core033_kernel_decide
theorem stats2378 : actualRows2378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2378=7428 := by core033_kernel_decide
theorem rows2379 : actualRows2379=WordField.canonicalRows actualModulus 2379 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2379 : actualRows2379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2379=2892 := by core033_kernel_decide
theorem rows2380 : actualRows2380=WordField.canonicalRows actualModulus 2380 (.bxor 0 2379) := by core033_kernel_decide
theorem stats2380 : actualRows2380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2380=7428 := by core033_kernel_decide
theorem rows2381 : actualRows2381=WordField.canonicalRows actualModulus 2381 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2381 : actualRows2381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2381=2820 := by core033_kernel_decide
theorem rows2382 : actualRows2382=WordField.canonicalRows actualModulus 2382 (.bnot 2381) := by core033_kernel_decide
theorem stats2382 : actualRows2382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2382=6276 := by core033_kernel_decide
theorem rows2383 : actualRows2383=WordField.canonicalRows actualModulus 2383 (.badd 2380 2382) := by core033_kernel_decide
theorem stats2383 : actualRows2383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2383=5388 := by core033_kernel_decide
theorem rows2384 : actualRows2384=WordField.canonicalRows actualModulus 2384 (.bnot 2383) := by core033_kernel_decide
theorem stats2384 : actualRows2384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2384=6276 := by core033_kernel_decide
theorem rows2385 : actualRows2385=WordField.canonicalRows actualModulus 2385 (.band 2378 2384) := by core033_kernel_decide
theorem stats2385 : actualRows2385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2385=5124 := by core033_kernel_decide
theorem rows2386 : actualRows2386=WordField.canonicalRows actualModulus 2386 (.bxor 2373 2385) := by core033_kernel_decide
theorem stats2386 : actualRows2386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2386=7428 := by core033_kernel_decide
theorem rows2387 : actualRows2387=WordField.canonicalRows actualModulus 2387 (.shr 2386 31) := by core033_kernel_decide
theorem stats2387 : actualRows2387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2387=2892 := by core033_kernel_decide
theorem rows2388 : actualRows2388=WordField.canonicalRows actualModulus 2388 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2388 : actualRows2388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2388=2892 := by core033_kernel_decide
theorem rows2389 : actualRows2389=WordField.canonicalRows actualModulus 2389 (.bxor 2387 2388) := by core033_kernel_decide
theorem stats2389 : actualRows2389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2389=7428 := by core033_kernel_decide
theorem rows2390 : actualRows2390=WordField.canonicalRows actualModulus 2390 (.bnot 2389) := by core033_kernel_decide
theorem stats2390 : actualRows2390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2390=6276 := by core033_kernel_decide
theorem rows2391 : actualRows2391=WordField.canonicalRows actualModulus 2391 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2391 : actualRows2391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2391=2892 := by core033_kernel_decide
theorem rows2392 : actualRows2392=WordField.canonicalRows actualModulus 2392 (.badd 2390 2391) := by core033_kernel_decide
theorem stats2392 : actualRows2392.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2392=5388 := by core033_kernel_decide
theorem rows2393 : actualRows2393=WordField.canonicalRows actualModulus 2393 (.bnot 2392) := by core033_kernel_decide
theorem stats2393 : actualRows2393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2393=6276 := by core033_kernel_decide
theorem rows2394 : actualRows2394=WordField.canonicalRows actualModulus 2394 (.band 2393 837) := by core033_kernel_decide
theorem stats2394 : actualRows2394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2394=5124 := by core033_kernel_decide
theorem rows2395 : actualRows2395=WordField.canonicalRows actualModulus 2395 (.bxor 2368 2394) := by core033_kernel_decide
theorem stats2395 : actualRows2395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2395=7428 := by core033_kernel_decide
theorem rows2396 : actualRows2396=WordField.canonicalRows actualModulus 2396 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2396 : actualRows2396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2396=2892 := by core033_kernel_decide
theorem rows2397 : actualRows2397=WordField.canonicalRows actualModulus 2397 (.bxor 0 2396) := by core033_kernel_decide
theorem stats2397 : actualRows2397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2397=7428 := by core033_kernel_decide
theorem rows2398 : actualRows2398=WordField.canonicalRows actualModulus 2398 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2398 : actualRows2398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2398=2820 := by core033_kernel_decide
theorem rows2399 : actualRows2399=WordField.canonicalRows actualModulus 2399 (.bnot 2398) := by core033_kernel_decide
theorem stats2399 : actualRows2399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2399=6276 := by core033_kernel_decide
theorem rows2400 : actualRows2400=WordField.canonicalRows actualModulus 2400 (.band 2397 2399) := by core033_kernel_decide
theorem stats2400 : actualRows2400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2400=5124 := by core033_kernel_decide
theorem rows2401 : actualRows2401=WordField.canonicalRows actualModulus 2401 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2401 : actualRows2401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2401=2892 := by core033_kernel_decide
theorem rows2402 : actualRows2402=WordField.canonicalRows actualModulus 2402 (.bxor 0 2401) := by core033_kernel_decide
theorem stats2402 : actualRows2402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2402=7428 := by core033_kernel_decide
theorem rows2403 : actualRows2403=WordField.canonicalRows actualModulus 2403 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2403 : actualRows2403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2403=2820 := by core033_kernel_decide
theorem rows2404 : actualRows2404=WordField.canonicalRows actualModulus 2404 (.bnot 2403) := by core033_kernel_decide
theorem stats2404 : actualRows2404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2404=6276 := by core033_kernel_decide
theorem rows2405 : actualRows2405=WordField.canonicalRows actualModulus 2405 (.bxor 2402 2404) := by core033_kernel_decide
theorem stats2405 : actualRows2405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2405=7428 := by core033_kernel_decide
theorem rows2406 : actualRows2406=WordField.canonicalRows actualModulus 2406 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2406 : actualRows2406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2406=2892 := by core033_kernel_decide
theorem rows2407 : actualRows2407=WordField.canonicalRows actualModulus 2407 (.bxor 0 2406) := by core033_kernel_decide
theorem stats2407 : actualRows2407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2407=7428 := by core033_kernel_decide
theorem rows2408 : actualRows2408=WordField.canonicalRows actualModulus 2408 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2408 : actualRows2408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2408=2820 := by core033_kernel_decide
theorem rows2409 : actualRows2409=WordField.canonicalRows actualModulus 2409 (.bnot 2408) := by core033_kernel_decide
theorem stats2409 : actualRows2409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2409=6276 := by core033_kernel_decide
theorem rows2410 : actualRows2410=WordField.canonicalRows actualModulus 2410 (.badd 2407 2409) := by core033_kernel_decide
theorem stats2410 : actualRows2410.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2410=5388 := by core033_kernel_decide
def partRows36 : List R1CS.Row := actualRows2347++actualRows2348++actualRows2349++actualRows2350++actualRows2351++actualRows2352++actualRows2353++actualRows2354++actualRows2355++actualRows2356++actualRows2357++actualRows2358++actualRows2359++actualRows2360++actualRows2361++actualRows2362++actualRows2363++actualRows2364++actualRows2365++actualRows2366++actualRows2367++actualRows2368++actualRows2369++actualRows2370++actualRows2371++actualRows2372++actualRows2373++actualRows2374++actualRows2375++actualRows2376++actualRows2377++actualRows2378++actualRows2379++actualRows2380++actualRows2381++actualRows2382++actualRows2383++actualRows2384++actualRows2385++actualRows2386++actualRows2387++actualRows2388++actualRows2389++actualRows2390++actualRows2391++actualRows2392++actualRows2393++actualRows2394++actualRows2395++actualRows2396++actualRows2397++actualRows2398++actualRows2399++actualRows2400++actualRows2401++actualRows2402++actualRows2403++actualRows2404++actualRows2405++actualRows2406++actualRows2407++actualRows2408++actualRows2409++actualRows2410
def partOps36 : List WordIR.Op := [.bnot 2346,.band 2345 2347,.literal (BitVec.ofNat 32 2),.bxor 0 2349,.literal (BitVec.ofNat 32 0),.bnot 2351,.bxor 2350 2352,.literal (BitVec.ofNat 32 2),.bxor 0 2354,.literal (BitVec.ofNat 32 0),.bnot 2356,.badd 2355 2357,.bnot 2358,.band 2353 2359,.bxor 2348 2360,.shr 2361 31,.literal (BitVec.ofNat 32 1),.bxor 2362 2363,.bnot 2364,.literal (BitVec.ofNat 32 1),.badd 2365 2366,.band 2367 1007,.literal (BitVec.ofNat 32 2),.bxor 0 2369,.literal (BitVec.ofNat 32 0),.bnot 2371,.band 2370 2372,.literal (BitVec.ofNat 32 2),.bxor 0 2374,.literal (BitVec.ofNat 32 0),.bnot 2376,.bxor 2375 2377,.literal (BitVec.ofNat 32 2),.bxor 0 2379,.literal (BitVec.ofNat 32 0),.bnot 2381,.badd 2380 2382,.bnot 2383,.band 2378 2384,.bxor 2373 2385,.shr 2386 31,.literal (BitVec.ofNat 32 1),.bxor 2387 2388,.bnot 2389,.literal (BitVec.ofNat 32 1),.badd 2390 2391,.bnot 2392,.band 2393 837,.bxor 2368 2394,.literal (BitVec.ofNat 32 2),.bxor 0 2396,.literal (BitVec.ofNat 32 0),.bnot 2398,.band 2397 2399,.literal (BitVec.ofNat 32 2),.bxor 0 2401,.literal (BitVec.ofNat 32 0),.bnot 2403,.bxor 2402 2404,.literal (BitVec.ofNat 32 2),.bxor 0 2406,.literal (BitVec.ofNat 32 0),.bnot 2408,.badd 2407 2409]
theorem partExact36 : partRows36=WordField.rows actualModulus 2347 partOps36 := by
  simp only [partRows36,partOps36,WordField.rows,rows2347,rows2348,rows2349,rows2350,rows2351,rows2352,rows2353,rows2354,rows2355,rows2356,rows2357,rows2358,rows2359,rows2360,rows2361,rows2362,rows2363,rows2364,rows2365,rows2366,rows2367,rows2368,rows2369,rows2370,rows2371,rows2372,rows2373,rows2374,rows2375,rows2376,rows2377,rows2378,rows2379,rows2380,rows2381,rows2382,rows2383,rows2384,rows2385,rows2386,rows2387,rows2388,rows2389,rows2390,rows2391,rows2392,rows2393,rows2394,rows2395,rows2396,rows2397,rows2398,rows2399,rows2400,rows2401,rows2402,rows2403,rows2404,rows2405,rows2406,rows2407,rows2408,rows2409,rows2410,List.append_assoc,List.append_nil]
theorem partLength36 : partOps36.length=64 := by decide
theorem partStats36 : partRows36.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows36=332568 := by
  simp only [partRows36,List.length_append,MatrixRowBlocks.rows_weight_append,stats2347.1,stats2347.2,stats2348.1,stats2348.2,stats2349.1,stats2349.2,stats2350.1,stats2350.2,stats2351.1,stats2351.2,stats2352.1,stats2352.2,stats2353.1,stats2353.2,stats2354.1,stats2354.2,stats2355.1,stats2355.2,stats2356.1,stats2356.2,stats2357.1,stats2357.2,stats2358.1,stats2358.2,stats2359.1,stats2359.2,stats2360.1,stats2360.2,stats2361.1,stats2361.2,stats2362.1,stats2362.2,stats2363.1,stats2363.2,stats2364.1,stats2364.2,stats2365.1,stats2365.2,stats2366.1,stats2366.2,stats2367.1,stats2367.2,stats2368.1,stats2368.2,stats2369.1,stats2369.2,stats2370.1,stats2370.2,stats2371.1,stats2371.2,stats2372.1,stats2372.2,stats2373.1,stats2373.2,stats2374.1,stats2374.2,stats2375.1,stats2375.2,stats2376.1,stats2376.2,stats2377.1,stats2377.2,stats2378.1,stats2378.2,stats2379.1,stats2379.2,stats2380.1,stats2380.2,stats2381.1,stats2381.2,stats2382.1,stats2382.2,stats2383.1,stats2383.2,stats2384.1,stats2384.2,stats2385.1,stats2385.2,stats2386.1,stats2386.2,stats2387.1,stats2387.2,stats2388.1,stats2388.2,stats2389.1,stats2389.2,stats2390.1,stats2390.2,stats2391.1,stats2391.2,stats2392.1,stats2392.2,stats2393.1,stats2393.2,stats2394.1,stats2394.2,stats2395.1,stats2395.2,stats2396.1,stats2396.2,stats2397.1,stats2397.2,stats2398.1,stats2398.2,stats2399.1,stats2399.2,stats2400.1,stats2400.2,stats2401.1,stats2401.2,stats2402.1,stats2402.2,stats2403.1,stats2403.2,stats2404.1,stats2404.2,stats2405.1,stats2405.2,stats2406.1,stats2406.2,stats2407.1,stats2407.2,stats2408.1,stats2408.2,stats2409.1,stats2409.2,stats2410.1,stats2410.2]
  decide
end FrameHashControllerCheckedRows
