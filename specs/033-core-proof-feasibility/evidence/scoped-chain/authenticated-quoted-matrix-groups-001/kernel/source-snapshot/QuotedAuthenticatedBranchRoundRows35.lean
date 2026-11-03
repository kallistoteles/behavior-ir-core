import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData36
import AuthenticatedBranchRoundInstructionMatrixData37
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2358 : actualRows2358=WordField.canonicalRows actualModulus 2358 (.bxor 2349 2357) := by core033_kernel_decide
theorem stats2358 : actualRows2358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2358=7428 := by core033_kernel_decide
theorem rows2359 : actualRows2359=WordField.canonicalRows actualModulus 2359 (.shr 2358 31) := by core033_kernel_decide
theorem stats2359 : actualRows2359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2359=2892 := by core033_kernel_decide
theorem rows2360 : actualRows2360=WordField.canonicalRows actualModulus 2360 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2360 : actualRows2360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2360=2892 := by core033_kernel_decide
theorem rows2361 : actualRows2361=WordField.canonicalRows actualModulus 2361 (.bxor 2359 2360) := by core033_kernel_decide
theorem stats2361 : actualRows2361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2361=7428 := by core033_kernel_decide
theorem rows2362 : actualRows2362=WordField.canonicalRows actualModulus 2362 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2362 : actualRows2362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2362=2892 := by core033_kernel_decide
theorem rows2363 : actualRows2363=WordField.canonicalRows actualModulus 2363 (.bnot 2362) := by core033_kernel_decide
theorem stats2363 : actualRows2363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2363=6276 := by core033_kernel_decide
theorem rows2364 : actualRows2364=WordField.canonicalRows actualModulus 2364 (.band 2168 2363) := by core033_kernel_decide
theorem stats2364 : actualRows2364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2364=5124 := by core033_kernel_decide
theorem rows2365 : actualRows2365=WordField.canonicalRows actualModulus 2365 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2365 : actualRows2365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2365=2892 := by core033_kernel_decide
theorem rows2366 : actualRows2366=WordField.canonicalRows actualModulus 2366 (.bnot 2365) := by core033_kernel_decide
theorem stats2366 : actualRows2366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2366=6276 := by core033_kernel_decide
theorem rows2367 : actualRows2367=WordField.canonicalRows actualModulus 2367 (.bxor 2168 2366) := by core033_kernel_decide
theorem stats2367 : actualRows2367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2367=7428 := by core033_kernel_decide
theorem rows2368 : actualRows2368=WordField.canonicalRows actualModulus 2368 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2368 : actualRows2368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2368=2892 := by core033_kernel_decide
theorem rows2369 : actualRows2369=WordField.canonicalRows actualModulus 2369 (.bnot 2368) := by core033_kernel_decide
theorem stats2369 : actualRows2369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2369=6276 := by core033_kernel_decide
theorem rows2370 : actualRows2370=WordField.canonicalRows actualModulus 2370 (.badd 2168 2369) := by core033_kernel_decide
theorem stats2370 : actualRows2370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2370=5388 := by core033_kernel_decide
theorem rows2371 : actualRows2371=WordField.canonicalRows actualModulus 2371 (.bnot 2370) := by core033_kernel_decide
theorem stats2371 : actualRows2371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2371=6276 := by core033_kernel_decide
theorem rows2372 : actualRows2372=WordField.canonicalRows actualModulus 2372 (.band 2367 2371) := by core033_kernel_decide
theorem stats2372 : actualRows2372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2372=5124 := by core033_kernel_decide
theorem rows2373 : actualRows2373=WordField.canonicalRows actualModulus 2373 (.bxor 2364 2372) := by core033_kernel_decide
theorem stats2373 : actualRows2373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2373=7428 := by core033_kernel_decide
theorem rows2374 : actualRows2374=WordField.canonicalRows actualModulus 2374 (.shr 2373 31) := by core033_kernel_decide
theorem stats2374 : actualRows2374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2374=2892 := by core033_kernel_decide
theorem rows2375 : actualRows2375=WordField.canonicalRows actualModulus 2375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2375 : actualRows2375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2375=2892 := by core033_kernel_decide
theorem rows2376 : actualRows2376=WordField.canonicalRows actualModulus 2376 (.bxor 2374 2375) := by core033_kernel_decide
theorem stats2376 : actualRows2376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2376=7428 := by core033_kernel_decide
theorem rows2377 : actualRows2377=WordField.canonicalRows actualModulus 2377 (.band 2361 2376) := by core033_kernel_decide
theorem stats2377 : actualRows2377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2377=5124 := by core033_kernel_decide
theorem rows2378 : actualRows2378=WordField.canonicalRows actualModulus 2378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2378 : actualRows2378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2378=2820 := by core033_kernel_decide
theorem rows2379 : actualRows2379=WordField.canonicalRows actualModulus 2379 (.bnot 2378) := by core033_kernel_decide
theorem stats2379 : actualRows2379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2379=6276 := by core033_kernel_decide
theorem rows2380 : actualRows2380=WordField.canonicalRows actualModulus 2380 (.band 2298 2379) := by core033_kernel_decide
theorem stats2380 : actualRows2380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2380=5124 := by core033_kernel_decide
theorem rows2381 : actualRows2381=WordField.canonicalRows actualModulus 2381 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2381 : actualRows2381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2381=2820 := by core033_kernel_decide
theorem rows2382 : actualRows2382=WordField.canonicalRows actualModulus 2382 (.bnot 2381) := by core033_kernel_decide
theorem stats2382 : actualRows2382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2382=6276 := by core033_kernel_decide
theorem rows2383 : actualRows2383=WordField.canonicalRows actualModulus 2383 (.bxor 2298 2382) := by core033_kernel_decide
theorem stats2383 : actualRows2383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2383=7428 := by core033_kernel_decide
theorem rows2384 : actualRows2384=WordField.canonicalRows actualModulus 2384 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2384 : actualRows2384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2384=2820 := by core033_kernel_decide
theorem rows2385 : actualRows2385=WordField.canonicalRows actualModulus 2385 (.bnot 2384) := by core033_kernel_decide
theorem stats2385 : actualRows2385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2385=6276 := by core033_kernel_decide
theorem rows2386 : actualRows2386=WordField.canonicalRows actualModulus 2386 (.badd 2298 2385) := by core033_kernel_decide
theorem stats2386 : actualRows2386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2386=5388 := by core033_kernel_decide
theorem rows2387 : actualRows2387=WordField.canonicalRows actualModulus 2387 (.bnot 2386) := by core033_kernel_decide
theorem stats2387 : actualRows2387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2387=6276 := by core033_kernel_decide
theorem rows2388 : actualRows2388=WordField.canonicalRows actualModulus 2388 (.band 2383 2387) := by core033_kernel_decide
theorem stats2388 : actualRows2388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2388=5124 := by core033_kernel_decide
theorem rows2389 : actualRows2389=WordField.canonicalRows actualModulus 2389 (.bxor 2380 2388) := by core033_kernel_decide
theorem stats2389 : actualRows2389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2389=7428 := by core033_kernel_decide
theorem rows2390 : actualRows2390=WordField.canonicalRows actualModulus 2390 (.shr 2389 31) := by core033_kernel_decide
theorem stats2390 : actualRows2390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2390=2892 := by core033_kernel_decide
theorem rows2391 : actualRows2391=WordField.canonicalRows actualModulus 2391 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2391 : actualRows2391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2391=2892 := by core033_kernel_decide
theorem rows2392 : actualRows2392=WordField.canonicalRows actualModulus 2392 (.bxor 2390 2391) := by core033_kernel_decide
theorem stats2392 : actualRows2392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2392=7428 := by core033_kernel_decide
theorem rows2393 : actualRows2393=WordField.canonicalRows actualModulus 2393 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2393 : actualRows2393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2393=2892 := by core033_kernel_decide
theorem rows2394 : actualRows2394=WordField.canonicalRows actualModulus 2394 (.bnot 2393) := by core033_kernel_decide
theorem stats2394 : actualRows2394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2394=6276 := by core033_kernel_decide
theorem rows2395 : actualRows2395=WordField.canonicalRows actualModulus 2395 (.band 2288 2394) := by core033_kernel_decide
theorem stats2395 : actualRows2395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2395=5124 := by core033_kernel_decide
theorem rows2396 : actualRows2396=WordField.canonicalRows actualModulus 2396 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2396 : actualRows2396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2396=2892 := by core033_kernel_decide
theorem rows2397 : actualRows2397=WordField.canonicalRows actualModulus 2397 (.bnot 2396) := by core033_kernel_decide
theorem stats2397 : actualRows2397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2397=6276 := by core033_kernel_decide
theorem rows2398 : actualRows2398=WordField.canonicalRows actualModulus 2398 (.bxor 2288 2397) := by core033_kernel_decide
theorem stats2398 : actualRows2398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2398=7428 := by core033_kernel_decide
theorem rows2399 : actualRows2399=WordField.canonicalRows actualModulus 2399 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2399 : actualRows2399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2399=2892 := by core033_kernel_decide
theorem rows2400 : actualRows2400=WordField.canonicalRows actualModulus 2400 (.bnot 2399) := by core033_kernel_decide
theorem stats2400 : actualRows2400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2400=6276 := by core033_kernel_decide
theorem rows2401 : actualRows2401=WordField.canonicalRows actualModulus 2401 (.badd 2288 2400) := by core033_kernel_decide
theorem stats2401 : actualRows2401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2401=5388 := by core033_kernel_decide
theorem rows2402 : actualRows2402=WordField.canonicalRows actualModulus 2402 (.bnot 2401) := by core033_kernel_decide
theorem stats2402 : actualRows2402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2402=6276 := by core033_kernel_decide
theorem rows2403 : actualRows2403=WordField.canonicalRows actualModulus 2403 (.band 2398 2402) := by core033_kernel_decide
theorem stats2403 : actualRows2403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2403=5124 := by core033_kernel_decide
theorem rows2404 : actualRows2404=WordField.canonicalRows actualModulus 2404 (.bxor 2395 2403) := by core033_kernel_decide
theorem stats2404 : actualRows2404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2404=7428 := by core033_kernel_decide
theorem rows2405 : actualRows2405=WordField.canonicalRows actualModulus 2405 (.shr 2404 31) := by core033_kernel_decide
theorem stats2405 : actualRows2405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2405=2892 := by core033_kernel_decide
theorem rows2406 : actualRows2406=WordField.canonicalRows actualModulus 2406 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2406 : actualRows2406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2406=2892 := by core033_kernel_decide
theorem rows2407 : actualRows2407=WordField.canonicalRows actualModulus 2407 (.bxor 2405 2406) := by core033_kernel_decide
theorem stats2407 : actualRows2407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2407=7428 := by core033_kernel_decide
theorem rows2408 : actualRows2408=WordField.canonicalRows actualModulus 2408 (.band 2392 2407) := by core033_kernel_decide
theorem stats2408 : actualRows2408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2408=5124 := by core033_kernel_decide
theorem rows2409 : actualRows2409=WordField.canonicalRows actualModulus 2409 (.band 2377 2408) := by core033_kernel_decide
theorem stats2409 : actualRows2409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2409=5124 := by core033_kernel_decide
theorem rows2410 : actualRows2410=WordField.canonicalRows actualModulus 2410 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2410 : actualRows2410.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2410=5388 := by core033_kernel_decide
theorem rows2411 : actualRows2411=WordField.canonicalRows actualModulus 2411 (.band 2168 2288) := by core033_kernel_decide
theorem stats2411 : actualRows2411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2411=5124 := by core033_kernel_decide
theorem rows2412 : actualRows2412=WordField.canonicalRows actualModulus 2412 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2412 : actualRows2412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2412=7428 := by core033_kernel_decide
theorem rows2413 : actualRows2413=WordField.canonicalRows actualModulus 2413 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2413 : actualRows2413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2413=5388 := by core033_kernel_decide
theorem rows2414 : actualRows2414=WordField.canonicalRows actualModulus 2414 (.bnot 2413) := by core033_kernel_decide
theorem stats2414 : actualRows2414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2414=6276 := by core033_kernel_decide
theorem rows2415 : actualRows2415=WordField.canonicalRows actualModulus 2415 (.band 2412 2414) := by core033_kernel_decide
theorem stats2415 : actualRows2415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2415=5124 := by core033_kernel_decide
theorem rows2416 : actualRows2416=WordField.canonicalRows actualModulus 2416 (.bxor 2411 2415) := by core033_kernel_decide
theorem stats2416 : actualRows2416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2416=7428 := by core033_kernel_decide
theorem rows2417 : actualRows2417=WordField.canonicalRows actualModulus 2417 (.shr 2416 31) := by core033_kernel_decide
theorem stats2417 : actualRows2417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2417=2892 := by core033_kernel_decide
theorem rows2418 : actualRows2418=WordField.canonicalRows actualModulus 2418 (.badd 2410 2417) := by core033_kernel_decide
theorem stats2418 : actualRows2418.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2418=5388 := by core033_kernel_decide
theorem rows2419 : actualRows2419=WordField.canonicalRows actualModulus 2419 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2419 : actualRows2419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2419=2820 := by core033_kernel_decide
theorem rows2420 : actualRows2420=WordField.canonicalRows actualModulus 2420 (.bnot 2419) := by core033_kernel_decide
theorem stats2420 : actualRows2420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2420=6276 := by core033_kernel_decide
theorem rows2421 : actualRows2421=WordField.canonicalRows actualModulus 2421 (.band 2418 2420) := by core033_kernel_decide
theorem stats2421 : actualRows2421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2421=5124 := by core033_kernel_decide
def partRows35 : List R1CS.Row := actualRows2358++actualRows2359++actualRows2360++actualRows2361++actualRows2362++actualRows2363++actualRows2364++actualRows2365++actualRows2366++actualRows2367++actualRows2368++actualRows2369++actualRows2370++actualRows2371++actualRows2372++actualRows2373++actualRows2374++actualRows2375++actualRows2376++actualRows2377++actualRows2378++actualRows2379++actualRows2380++actualRows2381++actualRows2382++actualRows2383++actualRows2384++actualRows2385++actualRows2386++actualRows2387++actualRows2388++actualRows2389++actualRows2390++actualRows2391++actualRows2392++actualRows2393++actualRows2394++actualRows2395++actualRows2396++actualRows2397++actualRows2398++actualRows2399++actualRows2400++actualRows2401++actualRows2402++actualRows2403++actualRows2404++actualRows2405++actualRows2406++actualRows2407++actualRows2408++actualRows2409++actualRows2410++actualRows2411++actualRows2412++actualRows2413++actualRows2414++actualRows2415++actualRows2416++actualRows2417++actualRows2418++actualRows2419++actualRows2420++actualRows2421
def partOps35 : List WordIR.Op := [.bxor 2349 2357,.shr 2358 31,.literal (BitVec.ofNat 32 1),.bxor 2359 2360,.literal (BitVec.ofNat 32 1048576),.bnot 2362,.band 2168 2363,.literal (BitVec.ofNat 32 1048576),.bnot 2365,.bxor 2168 2366,.literal (BitVec.ofNat 32 1048576),.bnot 2368,.badd 2168 2369,.bnot 2370,.band 2367 2371,.bxor 2364 2372,.shr 2373 31,.literal (BitVec.ofNat 32 1),.bxor 2374 2375,.band 2361 2376,.literal (BitVec.ofNat 32 0),.bnot 2378,.band 2298 2379,.literal (BitVec.ofNat 32 0),.bnot 2381,.bxor 2298 2382,.literal (BitVec.ofNat 32 0),.bnot 2384,.badd 2298 2385,.bnot 2386,.band 2383 2387,.bxor 2380 2388,.shr 2389 31,.literal (BitVec.ofNat 32 1),.bxor 2390 2391,.literal (BitVec.ofNat 32 1048576),.bnot 2393,.band 2288 2394,.literal (BitVec.ofNat 32 1048576),.bnot 2396,.bxor 2288 2397,.literal (BitVec.ofNat 32 1048576),.bnot 2399,.badd 2288 2400,.bnot 2401,.band 2398 2402,.bxor 2395 2403,.shr 2404 31,.literal (BitVec.ofNat 32 1),.bxor 2405 2406,.band 2392 2407,.band 2377 2408,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2413,.band 2412 2414,.bxor 2411 2415,.shr 2416 31,.badd 2410 2417,.literal (BitVec.ofNat 32 0),.bnot 2419,.band 2418 2420]
theorem partExact35 : partRows35=WordField.rows actualModulus 2358 partOps35 := by
  simp only [partRows35,partOps35,WordField.rows,rows2358,rows2359,rows2360,rows2361,rows2362,rows2363,rows2364,rows2365,rows2366,rows2367,rows2368,rows2369,rows2370,rows2371,rows2372,rows2373,rows2374,rows2375,rows2376,rows2377,rows2378,rows2379,rows2380,rows2381,rows2382,rows2383,rows2384,rows2385,rows2386,rows2387,rows2388,rows2389,rows2390,rows2391,rows2392,rows2393,rows2394,rows2395,rows2396,rows2397,rows2398,rows2399,rows2400,rows2401,rows2402,rows2403,rows2404,rows2405,rows2406,rows2407,rows2408,rows2409,rows2410,rows2411,rows2412,rows2413,rows2414,rows2415,rows2416,rows2417,rows2418,rows2419,rows2420,rows2421,List.append_assoc,List.append_nil]
theorem partLength35 : partOps35.length=64 := by decide
theorem partStats35 : partRows35.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows35=332904 := by
  simp only [partRows35,List.length_append,MatrixRowBlocks.rows_weight_append,stats2358.1,stats2358.2,stats2359.1,stats2359.2,stats2360.1,stats2360.2,stats2361.1,stats2361.2,stats2362.1,stats2362.2,stats2363.1,stats2363.2,stats2364.1,stats2364.2,stats2365.1,stats2365.2,stats2366.1,stats2366.2,stats2367.1,stats2367.2,stats2368.1,stats2368.2,stats2369.1,stats2369.2,stats2370.1,stats2370.2,stats2371.1,stats2371.2,stats2372.1,stats2372.2,stats2373.1,stats2373.2,stats2374.1,stats2374.2,stats2375.1,stats2375.2,stats2376.1,stats2376.2,stats2377.1,stats2377.2,stats2378.1,stats2378.2,stats2379.1,stats2379.2,stats2380.1,stats2380.2,stats2381.1,stats2381.2,stats2382.1,stats2382.2,stats2383.1,stats2383.2,stats2384.1,stats2384.2,stats2385.1,stats2385.2,stats2386.1,stats2386.2,stats2387.1,stats2387.2,stats2388.1,stats2388.2,stats2389.1,stats2389.2,stats2390.1,stats2390.2,stats2391.1,stats2391.2,stats2392.1,stats2392.2,stats2393.1,stats2393.2,stats2394.1,stats2394.2,stats2395.1,stats2395.2,stats2396.1,stats2396.2,stats2397.1,stats2397.2,stats2398.1,stats2398.2,stats2399.1,stats2399.2,stats2400.1,stats2400.2,stats2401.1,stats2401.2,stats2402.1,stats2402.2,stats2403.1,stats2403.2,stats2404.1,stats2404.2,stats2405.1,stats2405.2,stats2406.1,stats2406.2,stats2407.1,stats2407.2,stats2408.1,stats2408.2,stats2409.1,stats2409.2,stats2410.1,stats2410.2,stats2411.1,stats2411.2,stats2412.1,stats2412.2,stats2413.1,stats2413.2,stats2414.1,stats2414.2,stats2415.1,stats2415.2,stats2416.1,stats2416.2,stats2417.1,stats2417.2,stats2418.1,stats2418.2,stats2419.1,stats2419.2,stats2420.1,stats2420.2,stats2421.1,stats2421.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
